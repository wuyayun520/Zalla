import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'dart:async';
import '../constants/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class SubscriptionsPage extends StatefulWidget {
  final int initialIndex;
  const SubscriptionsPage({super.key, this.initialIndex = 0});

  @override
  State<SubscriptionsPage> createState() => _SubscriptionsPageState();
}

class _SubscriptionsPageState extends State<SubscriptionsPage> {
  final InAppPurchase _inAppPurchase = InAppPurchase.instance;
  late StreamSubscription<List<PurchaseDetails>> _subscription;
  List<ProductDetails> _products = [];
  bool _isLoading = true;
  bool _purchasePending = false;
  String? _purchaseError;
  int _selectedIndex = 0;
  bool _isVip = false;
  DateTime? _vipExpiry;
  DateTime? _lastSnackBarTime;

  // 订阅商品配置（如需区分可扩展）
  final List<_VipPlan> _plans = [
    _VipPlan(
      title: '12.99',
      subTitle: 'Per week',
      total: 'Total \$12.99',
      desc: '+7 Days VIP',
      productId: 'ZallaWeekVIP',
    ),
    _VipPlan(
      title: '49.99',
      subTitle: 'Per month',
      total: 'Total \$49.99',
      desc: '+30 Days VIP',
      productId: 'ZallaMonthVIP',
    ),
  ];

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex;
    final Stream<List<PurchaseDetails>> purchaseUpdated = _inAppPurchase.purchaseStream;
    _subscription = purchaseUpdated.listen(_listenToPurchaseUpdated, onDone: () {
      _subscription.cancel();
    }, onError: (error) {
      print("Error in IAP Stream: $error");
    });
    _initInAppPurchase();
    _loadVipStatus();
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  Future<void> _initInAppPurchase() async {
    final bool isAvailable = await _inAppPurchase.isAvailable();
    if (!isAvailable) {
      setState(() {
        _isLoading = false;
        _purchaseError = "Store is not available.";
      });
      return;
    }
    final Set<String> productIds = _plans.map((e) => e.productId).toSet();
    try {
      final ProductDetailsResponse response = await _inAppPurchase.queryProductDetails(productIds);
      setState(() {
        _products = response.productDetails;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
        _purchaseError = "Failed to load products: $e";
      });
    }
  }

  Future<void> _loadVipStatus() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _isVip = prefs.getBool('isVip') ?? false;
      final expiryStr = prefs.getString('vipExpiry');
      _vipExpiry = expiryStr != null ? DateTime.tryParse(expiryStr) : null;
    });
  }

  Future<void> _listenToPurchaseUpdated(List<PurchaseDetails> purchaseDetailsList) async {
    for (var purchaseDetails in purchaseDetailsList) {
      if (purchaseDetails.status == PurchaseStatus.pending) {
        setState(() {
          _purchasePending = true;
        });
      } else {
        if (purchaseDetails.status == PurchaseStatus.error) {
          setState(() {
            _purchasePending = false;
            _purchaseError = purchaseDetails.error?.message ?? "Unknown error occurred";
          });
          _showSnackBar("Purchase failed: ${purchaseDetails.error?.message ?? 'Unknown error'}");
        } else if (purchaseDetails.status == PurchaseStatus.purchased ||
            purchaseDetails.status == PurchaseStatus.restored) {
          _handleSuccessfulPurchase(purchaseDetails);
        } else if (purchaseDetails.status == PurchaseStatus.canceled) {
          setState(() {
            _purchasePending = false;
          });
        }
        if (purchaseDetails.pendingCompletePurchase) {
          await _inAppPurchase.completePurchase(purchaseDetails);
        }
      }
    }
  }

  Future<void> _handleSuccessfulPurchase(PurchaseDetails purchaseDetails) async {
    setState(() {
      _purchasePending = false;
    });
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isVip', true);
    // 计算有效期
    DateTime now = DateTime.now();
    DateTime expiry;
    if (purchaseDetails.productID == 'ZallaWeekVIP') {
      expiry = now.add(const Duration(days: 7));
    } else if (purchaseDetails.productID == 'ZallaMonthVIP') {
      expiry = now.add(const Duration(days: 30));
    } else {
      expiry = now;
    }
    await prefs.setString('vipExpiry', expiry.toIso8601String());
    _showSnackBar("VIP activated!");
    await _loadVipStatus();
  }

  void _showSnackBar(String msg) {
    final now = DateTime.now();
    if (_lastSnackBarTime != null && now.difference(_lastSnackBarTime!).inSeconds < 3) {
      return;
    }
    _lastSnackBarTime = now;
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(msg)),
      );
    }
  }

  Future<void> _processPurchase() async {
    final plan = _plans[_selectedIndex];
    final ProductDetails? product = _products.firstWhereOrNull((p) => p.id == plan.productId);
    if (product == null) {
      _showSnackBar("Product not available");
      return;
    }
    setState(() {
      _purchasePending = true;
    });
    try {
      final PurchaseParam purchaseParam = PurchaseParam(productDetails: product);
      await _inAppPurchase.buyNonConsumable(purchaseParam: purchaseParam);
    } catch (e) {
      setState(() {
        _purchasePending = false;
      });
      _showSnackBar("Error starting purchase: $e");
    }
  }

  Future<void> _restorePurchases() async {
    setState(() {
      _purchasePending = true;
    });
    try {
      await _inAppPurchase.restorePurchases();
      _showSnackBar("Restoring purchases...");
    } catch (e) {
      setState(() {
        _purchasePending = false;
      });
      _showSnackBar("Error restoring purchases: $e");
    }
  }

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      _showSnackBar('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    final double statusBar = MediaQuery.of(context).padding.top;
    // Define privileges for each plan
    final List<List<_Privilege>> planPrivileges = [
      // Weekly
      [
        _Privilege(icon: Icons.visibility, text: 'View works infinitely'),
        _Privilege(icon: Icons.no_adult_content, text: 'Eliminate in-app advertising'),
      ],
      // Monthly
      [
        _Privilege(icon: Icons.visibility, text: 'View works infinitely'),
        _Privilege(icon: Icons.no_adult_content, text: 'Eliminate in-app advertising'),
      ],
    ];
    final privileges = planPrivileges[_selectedIndex];
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FB),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black87),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: statusBar + 8),
                      if (_isVip && _vipExpiry != null) ...[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [AppColors.primary, Color(0xFFB3E892)],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                  color: AppColors.primary.withOpacity(0.3),
                                  blurRadius: 12,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Icons.local_florist, color: AppColors.buttonText, size: 28),
                                const SizedBox(width: 12),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Premium Active',
                                      style: TextStyle(
                                        color: AppColors.buttonText,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        letterSpacing: 0.5,
                                      ),
                                    ),
                                    const SizedBox(height: 2),
                                    Text(
                                      'Valid until: ${_vipExpiry!.year}-${_vipExpiry!.month.toString().padLeft(2, '0')}-${_vipExpiry!.day.toString().padLeft(2, '0')}',
                                      style: const TextStyle(
                                        color: AppColors.buttonText,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(height: 2),
                                    Text(
                                      '(${_vipExpiry!.difference(DateTime.now()).inDays} days remaining)',
                                      style: const TextStyle(
                                        color: AppColors.buttonText,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                      const Text(
                        'Garden Master Premium',
                        style: TextStyle(
                          color: AppColors.buttonText,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Unlock your garden privileges',
                        style: TextStyle(
                          color: Color(0xFF6B7280),
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [AppColors.primary, Color(0xFFB3E892)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.primary.withOpacity(0.3),
                              blurRadius: 12,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: const Icon(Icons.local_florist, color: AppColors.buttonText, size: 44),
                      ),
                      const SizedBox(height: 8),
                      // Subscription cards
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        child: Row(
                          children: List.generate(_plans.length, (i) {
                            final plan = _plans[i];
                            final selected = i == _selectedIndex;
                            return Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _selectedIndex = i;
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.only(right: i == 0 ? 12 : 0, left: i == 1 ? 12 : 0),
                                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
                                  decoration: BoxDecoration(
                                    gradient: selected 
                                        ? const LinearGradient(
                                            colors: [AppColors.primary, Color(0xFF4CAF50)],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          )
                                        : null,
                                    color: selected ? null : Colors.white,
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(
                                      color: selected ? Colors.transparent : const Color(0xFFE5E7EB),
                                      width: selected ? 2 : 1,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: selected 
                                            ? AppColors.primary.withOpacity(0.3)
                                            : Colors.black.withOpacity(0.08),
                                        blurRadius: selected ? 12 : 8,
                                        offset: const Offset(0, 4),
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        '\$${plan.title}',
                                        style: TextStyle(
                                          color: selected ? Colors.white : const Color(0xFF1F2937),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        plan.subTitle,
                                        style: TextStyle(
                                          color: selected ? Colors.white.withOpacity(0.9) : const Color(0xFF6B7280),
                                          fontSize: 15,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        plan.total,
                                        style: TextStyle(
                                          color: selected ? Colors.white.withOpacity(0.7) : const Color(0xFF9CA3AF),
                                          fontSize: 13,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        plan.desc,
                                        style: TextStyle(
                                          color: selected ? const Color(0xFFE8F5E8) : AppColors.primary,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                      const SizedBox(height: 18),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Exclusive VIP Privileges',
                            style: TextStyle(
                              color: const Color(0xFF1F2937),
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(18),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.08),
                                blurRadius: 12,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
                          child: Column(
                            children: [
                              for (int i = 0; i < privileges.length; i++) ...[
                                _VipPrivilegeItem(
                                  icon: privileges[i].icon,
                                  text: privileges[i].text,
                                ),
                                if (i != privileges.length - 1) const SizedBox(height: 16),
                              ],
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: SizedBox(
                          width: double.infinity,
                          height: 54,
                          child: GestureDetector(
                            onTap: _purchasePending ? null : _processPurchase,
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [AppColors.primary, Color(0xFF4CAF50)],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                borderRadius: BorderRadius.circular(28),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.primary.withOpacity(0.3),
                                    blurRadius: 12,
                                    offset: const Offset(0, 4),
                                  ),
                                ],
                              ),
                              alignment: Alignment.center,
                              child: _purchasePending
                                  ? const SizedBox(
                                      width: 24,
                                      height: 24,
                                      child: CircularProgressIndicator(
                                        color: Colors.white,
                                        strokeWidth: 2,
                                      ),
                                    )
                                  : const Text(
                                      'Confirm',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        letterSpacing: 1.2,
                                      ),
                                    ),
                            ),
                          ),
                        ),
                      ),
                      if (!_isVip) ...[
                        const SizedBox(height: 16),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: TextButton(
                            onPressed: _purchasePending ? null : _restorePurchases,
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                            ),
                            child: const Text(
                              'Restore Purchases',
                              style: TextStyle(
                                color: Color(0xFF6B7280),
                                fontSize: 16,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                      ],
                      const SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () => _launchURL('https://sites.google.com/view/zallaprivacy/home'),
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                            ),
                            child: const Text(
                              'Privacy Policy',
                              style: TextStyle(
                                color: Color(0xFF6B7280),
                                fontSize: 14,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                          Container(
                            width: 1,
                            height: 16,
                            color: Color(0xFFE5E7EB),
                          ),
                          TextButton(
                            onPressed: () => _launchURL('https://www.apple.com/legal/internet-services/itunes/dev/stdeula'),
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                            ),
                            child: const Text(
                              'EULA',
                              style: TextStyle(
                                color: Color(0xFF6B7280),
                                fontSize: 14,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Subscription Terms',
                              style: TextStyle(
                                color: Color(0xFF1F2937),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 12),
                            Text(
                              '• Weekly subscription: \$12.99 per week\n'
                              '• Monthly subscription: \$49.99 per month\n\n'
                              'Payment will be charged to your Apple ID account at the confirmation of purchase. Your subscription automatically renews unless auto-renew is turned off at least 24 hours before the end of the current period. You can manage and cancel your subscriptions by going to your App Store account settings after purchase.\n\n'
                              'To cancel your subscription:\n'
                              '1. Open the Settings app\n'
                              '2. Tap your Apple ID at the top\n'
                              '3. Tap Subscriptions\n'
                              '4. Find Zalla in the list\n'
                              '5. Tap Cancel Subscription',
                              style: TextStyle(
                                color: Color(0xFF6B7280),
                                fontSize: 13,
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}

class _VipPlan {
  final String title;
  final String subTitle;
  final String total;
  final String desc;
  final String productId;
  const _VipPlan({
    required this.title,
    required this.subTitle,
    required this.total,
    required this.desc,
    required this.productId,
  });
}

class _VipPrivilegeItem extends StatelessWidget {
  final IconData icon;
  final String text;
  const _VipPrivilegeItem({required this.icon, required this.text});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFF4F46E5).withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.all(8),
          child: Icon(icon, color: const Color(0xFF4F46E5), size: 22),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              color: Color(0xFF1F2937),
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}

extension FirstWhereOrNullExtension<E> on List<E> {
  E? firstWhereOrNull(bool Function(E) test) {
    for (final element in this) {
      if (test(element)) return element;
    }
    return null;
  }
}

class _Privilege {
  final IconData icon;
  final String text;
  const _Privilege({required this.icon, required this.text});
}