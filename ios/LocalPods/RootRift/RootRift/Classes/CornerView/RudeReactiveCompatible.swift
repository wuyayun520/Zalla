
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_makeTitle:[UInt8] = [0x1,0x6,0x1,0x1c,0x40,0xb,0x7,0xc,0xd,0x1a,0x52,0x41,0x48,0x0,0x9,0x1b,0x48,0x6,0x7,0x1c,0x48,0xa,0xd,0xd,0x6,0x48,0x1,0x5,0x18,0x4,0xd,0x5,0xd,0x6,0x1c,0xd,0xc]

private func firstShared(manager num: UInt8) -> UInt8 {
    return num ^ 104
}

/*: "#EEEEEE" :*/
fileprivate let str_popName:String = "#EEEEEEimage at leading"

/*: "tabBar" :*/
fileprivate let str_meName:String = "error withtabBa"
fileprivate let str_modelValue:[Character] = ["r"]

/*: "home" :*/
fileprivate let str_professionalName:String = "toolme"

/*: "user" :*/
fileprivate let str_hiddenValue:[Character] = ["u","s","e","r"]

/*: "icon" :*/
fileprivate let str_effectValue:String = "sizeon"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RudeReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

//: class TalkingTabBarViewController: UITabBarController, UITabBarControllerDelegate {
class RudeReactiveCompatible: UITabBarController, UITabBarControllerDelegate {
    //: var tabBarVCType: TarBarControllerViewType?
    var tabBarVCType: HeadBarViewType?
    //: var tabBarView = TalkingTabBar()
    var tabBarView = MessageTabBar()

    //: init(tabBarType: TarBarControllerViewType) {
    init(tabBarType: HeadBarViewType) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: self.delegate = self
        self.delegate = self
        //: self.tabBarVCType = tabBarType
        self.tabBarVCType = tabBarType
        //: if tabBarType == .Taking {
        if tabBarType == .Taking {
            //: setupTabBar()
            publicHouse()
            //: ProgressHUD.show()
            AtAdView.sizeUp()
            //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in
            ResultReactiveCompatible.videoOf { succeed, _, _ in
                //: ProgressHUD.dismiss()
                AtAdView.toAction()
                //: TalkingV2Listener.shared.func__addDelegate(self)
                TalkingV2Listener.shared.modelDelegate(self)
                //: let tarItemTypes = self.tabBarConentTypes()
                let tarItemTypes = self.share()
                //: self.tabBarView.setupItemsWithArr(itemTypes: tarItemTypes as! Array<TabBarItemType>)
                self.tabBarView.types(itemTypes: tarItemTypes as! [MediaCustomReflectable])
                //: self.func__setupControllersWith(itemTypes: tarItemTypes)
                self.physics(itemTypes: tarItemTypes)
                //: if WatercourseThen.share.loginUserMode.sex == Gender.male.rawValue && WatercourseThen.share.appStatus == AppSkinStatus.normal.rawValue {
                if WatercourseThen.share.loginUserMode.sex == PushDownStackScalarLiteral.male.rawValue && WatercourseThen.share.appStatus == PublishWidthTotal.normal.rawValue {
                    //: self.selectTabbar(type: 0)
                    self.decideCoverType(type: 0)
                }
                //: self.func__configViewDidLoad()
                self.extendedCollection()

                //: if succeed && WatercourseThen.share.loginUserMode.remindBindEmail == true {
                if succeed && WatercourseThen.share.loginUserMode.remindBindEmail == true { // 需要绑定邮箱
                    //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        //: IndoorsPushManager.share.func__pushToLockUserEmailVC(isShowBack: false)
                        IndoorsPushManager.share.modelProgress(isShowBack: false)
                    }
                }
            }
            //: } else {
        } else {
            //: func__setupControllersWith(itemTypes: self.tabBarConentTypes())
            physics(itemTypes: self.share())
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_makeTitle.map{firstShared(manager: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        /// H5刷新index/getConfig配置信息接口
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__getLoginUserConfig),
                                               selector: #selector(localFormatCenter),
                                               //: name: REFRESH_INDEX_GETCONFIG_NOTIFICATION,
                                               name: kLet_replaceText,
                                               //: object: nil)
                                               object: nil)

        /// 直播状态变更通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(switchLiveTabBarImage),
                                               selector: #selector(tentArea),
                                               //: name: LIVE_STATUS_CHANGE_NOTIFICATION,
                                               name: kLet_recordScreenData,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(openLive),
                                               selector: #selector(reside),
                                               //: name: LIVE_NEED_OPEN_NOTIFICATION,
                                               name: kLet_nextTitle,
                                               //: object: nil)
                                               object: nil)

        /// 语聊房状态变更通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(switchLiveTabBarImage),
                                               selector: #selector(tentArea),
                                               //: name: PARTY_STATUS_CHANGE_NOTIFICATION,
                                               name: kLet_inviteName,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(switchTabbarHomeParty),
                                               selector: #selector(fromClose),
                                               //: name: SWITCH_TABBAR_HOME_PARTY_NOTIFICATION,
                                               name: kLet_endContent,
                                               //: object: nil)
                                               object: nil)
    }

    //: override func viewDidLayoutSubviews() {
    override func viewDidLayoutSubviews() {
        //: super.viewDidLayoutSubviews()
        super.viewDidLayoutSubviews()
        //: tabBar.frame = CGRect(origin: CGPoint(x: 0, y: ScreenHeight-TabBarViewHeight), size: CGSize(width: ScreenWidth, height: TabBarViewHeight))
        tabBar.frame = CGRect(origin: CGPoint(x: 0, y: kLet_environmentText - kLet_descriptionValue), size: CGSize(width: kLet_scaleName, height: kLet_descriptionValue))
    }

    /// 初始化tabbar
    //: func setupTabBar() {
    func publicHouse() {
        //: tabBarView.frame = CGRect(origin: CGPoint(x: 0, y: ScreenHeight-TabBarViewHeight), size: CGSize(width: ScreenWidth, height: TabBarViewHeight))
        tabBarView.frame = CGRect(origin: CGPoint(x: 0, y: kLet_environmentText - kLet_descriptionValue), size: CGSize(width: kLet_scaleName, height: kLet_descriptionValue))
        //: tabBarView.backgroundColor = .white
        tabBarView.backgroundColor = .white
        //: let backgroundImage = UIImage.imageFillColor(color: .white, size: CGSize(width: ScreenWidth, height: TabBarViewHeight))
        let backgroundImage = UIImage.dueDate(color: .white, size: CGSize(width: kLet_scaleName, height: kLet_descriptionValue))
        //: tabBarView.backgroundImage = backgroundImage
        tabBarView.backgroundImage = backgroundImage

        //: let shadowImage = UIImage.imageFillColor(color: UIColor(hex: "#EEEEEE")!, size: CGSize(width: ScreenWidth, height: 0.5))
        let shadowImage = UIImage.dueDate(color: UIColor(hex: (String(str_popName.prefix(7))))!, size: CGSize(width: kLet_scaleName, height: 0.5))
        //: tabBarView.shadowImage = shadowImage
        tabBarView.shadowImage = shadowImage

        //: if #available(iOS 13.0, *) {
        if #available(iOS 13.0, *) {
            //: let tabBarAppearance = UITabBarAppearance()
            let tabBarAppearance = UITabBarAppearance()
            //: tabBarAppearance.backgroundColor = .white
            tabBarAppearance.backgroundColor = .white
            //: tabBarAppearance.backgroundEffect = nil
            tabBarAppearance.backgroundEffect = nil
            //: tabBarAppearance.shadowColor = UIColor.separatorLineColor()
            tabBarAppearance.shadowColor = UIColor.tablePoint()
            //: tabBarView.standardAppearance = tabBarAppearance
            tabBarView.standardAppearance = tabBarAppearance
        }
        //: setValue(tabBarView, forKey: "tabBar")
        setValue(tabBarView, forKey: (String(str_meName.suffix(5)) + String(str_modelValue)))
    }

    //: func tabBarConentTypes() -> NSArray {
    func share() -> NSArray {
        //: if tabBarVCType == TarBarControllerViewType.Login {
        if tabBarVCType == HeadBarViewType.Login {
            //: return [TabBarItemType.Login]
            return [MediaCustomReflectable.Login]
            //: } else {
        } else {
            //: if WatercourseThen.share.appStatus == AppSkinStatus.special.rawValue {
            if WatercourseThen.share.appStatus == PublishWidthTotal.special.rawValue {
                //: return [TabBarItemType.Social,
                return [MediaCustomReflectable.Social,
                        //: TabBarItemType.Moment,
                        MediaCustomReflectable.Moment,
                        //: TabBarItemType.Message,
                        MediaCustomReflectable.Message,
                        //: TabBarItemType.Account]
                        MediaCustomReflectable.Account]
                //: } else {
            } else {
                //: if WatercourseThen.share.loginUserMode.sex == Gender.female.rawValue {
                if WatercourseThen.share.loginUserMode.sex == PushDownStackScalarLiteral.female.rawValue { // 女性
                    //: return [TabBarItemType.Social,
                    return [MediaCustomReflectable.Social,
                            //: TabBarItemType.Moment,
                            MediaCustomReflectable.Moment,
                            //: TabBarItemType.Live,
                            MediaCustomReflectable.Live,
                            //: TabBarItemType.Message,
                            MediaCustomReflectable.Message,
                            //: TabBarItemType.Account]
                            MediaCustomReflectable.Account]
                    //: } else {
                } else { // 男性
                    //: return [TabBarItemType.Social,
                    return [MediaCustomReflectable.Social,
                            //: TabBarItemType.Moment,
                            MediaCustomReflectable.Moment,
                            //: TabBarItemType.Randow,
                            MediaCustomReflectable.Randow,
                            //: TabBarItemType.Message,
                            MediaCustomReflectable.Message,
                            //: TabBarItemType.Account]
                            MediaCustomReflectable.Account]
                }
            }
        }
    }

    //: func func__setupControllersWith(itemTypes: NSArray) {
    func physics(itemTypes: NSArray) {
        //: let tmp = NSMutableArray()
        let tmp = NSMutableArray()
        //: for itemType in itemTypes {
        for itemType in itemTypes {
            //: let VC = rootViewControllerFor(itemType: itemType as! TabBarItemType)
            let VC = straddleOf(itemType: itemType as! MediaCustomReflectable)
            //: let navVC = TalkingNavigationController(rootViewController: VC)
            let navVC = UnbeknownstRecognizerDelegate(rootViewController: VC)
            //: navVC.tabBarType = (itemType as! TabBarItemType)
            navVC.tabBarType = (itemType as! MediaCustomReflectable)
            //: tmp.add(navVC)
            tmp.add(navVC)
        }
        //: setViewControllers(tmp as? [UIViewController], animated: true)
        setViewControllers(tmp as? [UIViewController], animated: true)
    }

    //: func rootViewControllerFor(itemType: TabBarItemType) -> UIViewController {
    func straddleOf(itemType: MediaCustomReflectable) -> UIViewController {
        //: let ret: UIViewController
        let ret: UIViewController
        //: switch itemType {
        switch itemType {
        //: case .Social:
        case .Social:
            //: ret = TalkingSocialViewController()
            ret = ToObjectProtocol()

        //: case .Moment:
        case .Moment:
            //: ret = TalkingMomentViewController()
            ret = StreamRecognizerDelegate()

        //: case .FreeMoment:
        case .FreeMoment:
            //: ret = UIViewController()
            ret = UIViewController()
            /// 使用view，会导致VC的viewDidLoad调用，避免别的控制器没显示时，就调用viewDidLoad
            /// 虚拟的VC根据tag，正常的VC可以根据class判断

        //: case .Live:
        case .Live:
            //: ret = UIViewController()
            ret = UIViewController()

        //: case .Message:
        case .Message:
            //: ret = TalkingMessageViewController()
            ret = MusicLabelReactiveCompatible()

        //: case .Account:
        case .Account:
            //: ret = TalkingMeViewController()
            ret = StrideRecognizerDelegate()

        //: case .Login:
        case .Login:
            //: ret = TalkingLoginMainViewController()
            ret = ControllerThen()
            //: ret.hidesBottomBarWhenPushed = true
            ret.hidesBottomBarWhenPushed = true

        //: case .Randow:
        case .Randow:
            //: ret = TalkingMaleStaticRandomVideoVC()
            ret = RemoveViewController()

        //: case .meet:
        case .meet:
            //: ret = UIViewController()
            ret = UIViewController()
        }

        //: ret.view.tag = itemType.rawValue
        ret.view.tag = itemType.rawValue
        //: return ret
        return ret
    }

    //: override var selectedViewController: UIViewController? {
    override var selectedViewController: UIViewController? {
        //: willSet {
        willSet {
            //: let nav = newValue as! TalkingNavigationController
            let nav = newValue as! UnbeknownstRecognizerDelegate
            //: tabBarView.setSelectedTabItem(itemType: nav.tabBarType!)
            tabBarView.toType(itemType: nav.tabBarType!)
        }
    }
}

// MARK: - Event

//: extension TalkingTabBarViewController {
extension RudeReactiveCompatible {
    /// 切换到tab-party
    //: @objc func switchTabbarHomeParty() {
    @objc func fromClose() {
        //: getNavigationController()?.popToRootViewController(animated: false)
        trimDown()?.popToRootViewController(animated: false)
        //: selectTabbar(type: 0)
        decideCoverType(type: 0)
        //: if let vc = currentViewController(), vc is TalkingSocialViewController {
        if let vc = toController(), vc is ToObjectProtocol {
            //: (vc as! TalkingSocialViewController).switchParty()
            (vc as! ToObjectProtocol).messageParty()
        }
    }

    /// tabbar直播按钮点击事件
    //: @objc private func liveButtonClick() {
    @objc private func liveClick() {
        //: guard TalkingVoiceRoomManager.shared().isParty == false else {
        guard DateRangeThen.portion().isParty == false else { // 语聊房
            //: if String(TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid) == WatercourseThen.share.loginUid {
            if String(DateRangeThen.portion().partyModel.streamerInfo.uid) == WatercourseThen.share.loginUid {
                //: TalkingVoiceRoomManager.shared().voiceRoom_goback()
                DateRangeThen.portion().errorModel()
                //: } else {
            } else {
                //: func__showStatusBarErrorMsg(showMsg: kMessage_party_limit)
                detailKey(showMsg: kLet_statusScreenValue)
            }
            //: return
            return
        }
        //: guard TalkingLiveManager.shared().isLive == false else {
        guard ListThen.deleteItem().isLive == false else { // 直播间
            //: func__showStatusBarErrorMsg(showMsg: kMessage_live_limit)
            detailKey(showMsg: kLet_changeText)
            //: return
            return
        }
        //: let tabView = TalkingTabLiveView()
        let tabView = PerformanceLiveView()
        //: tabView.show()
        tabView.showClick()
    }

    //: func func__configViewDidLoad() {
    func extendedCollection() {
        //: TalkingAPNSManager.share.func__listenAPNSInit()
        AdVoiceReactiveCompatible.share.dataFunc()
        //: AppManagerRequest.func__reportDeviceID()
        ResultReactiveCompatible.counteractionSize()
        //: func__getLoginUserConfig(true)
        localFormatCenter(true)
    }

    //: func selectTabbar(type: Int) {
    func decideCoverType(type: Int) {
        //: guard type < viewControllers?.count ?? 0 else { return }
        guard type < viewControllers?.count ?? 0 else { return }
        //: let vc = viewControllers?[type]
        let vc = viewControllers?[type]
        //: selectedIndex = type
        selectedIndex = type
        //: selectedViewController = vc
        selectedViewController = vc
    }

    /// 切换直播tabBar图标
    //: @objc private func switchLiveTabBarImage() {
    @objc private func tentArea() {
        //: tabBarView.switchLiveTabBarImage()
        tabBarView.statusTable()
    }

    /// 唤起直播功能
    //: @objc private func openLive() {
    @objc private func reside() {
        //: guard TalkingPermissionTool.isLiveOrPartyActive() == false else { return }
        guard ColorPermissionTool.messageConversationContainer() == false else { return }

        // 展示说明页（如果展示过，则直接开播）
        //: let isShow = Defaults.bool(forKey: TalkingLiveTabExplainIsShow)
        let isShow = kLet_timeContent.bool(forKey: kLet_senseScreenName)
        //: guard isShow != true else {
        guard isShow != true else {
            //: TalkingLiveManager.shared().checkLiveAuthAndTurnOn()
            ListThen.deleteItem().needEnable()
            //: return
            return
        }
        //: Defaults.set(true, forKey: TalkingLiveTabExplainIsShow)
        kLet_timeContent.set(true, forKey: kLet_senseScreenName)
        //: let explainView = TalkingLiveExplainViewController()
        let explainView = LogRecognizerDelegate()
        //: explainView.modalPresentationStyle = .fullScreen
        explainView.modalPresentationStyle = .fullScreen
        //: present(explainView, animated: true)
        present(explainView, animated: true)
    }

    /// 切换RandowtabBar图标
    //: @objc private func switchRandowTabBarImage(isHidde: Bool) {
    @objc private func sharedListen(isHidde: Bool) {
        //: tabBarView.switchRandowTabBarImage(isHidde: isHidde)
        tabBarView.afterPlayer(isHidde: isHidde)
    }

    /// 连接socket
    //: private func linkWebCocket() {
    private func playInput() {
        // 连接socket【放在这里是为了保证app/getConfig调用成功拿到ws信息】
        //: TalkingSocketManager.shared.updateWebSocket()
        NameSocketManager.shared.lagniappe()
    }

    /// 切换tab时判断是否需要展示直播开播提醒弹窗
    /// - Returns: 是否展示结果
    //: @discardableResult
    @discardableResult
    //: private func needShowLiveAlertView(type: TabBarItemType = .Social) -> Bool {
    private func streetwiseType(type: MediaCustomReflectable = .Social) -> Bool {
        //: guard WatercourseThen.share.appStatus == AppSkinStatus.normal.rawValue else { return false }
        guard WatercourseThen.share.appStatus == PublishWidthTotal.normal.rawValue else { return false }
        //: guard WatercourseThen.share.loginUserMode.sex == Gender.female.rawValue else { return false }
        guard WatercourseThen.share.loginUserMode.sex == PushDownStackScalarLiteral.female.rawValue else { return false }
        //: guard WatercourseThen.share.appUserConfigMode.userCountryType == 1 else { return false }
        guard WatercourseThen.share.appUserConfigMode.userCountryType == 1 else { return false }
        //: guard WatercourseThen.share.appUserConfigMode.popLiveTabArr.count > 0 else { return false }
        guard WatercourseThen.share.appUserConfigMode.popLiveTabArr.count > 0 else { return false }
        //: guard !TalkingVoiceRoomManager.shared().isParty,
        guard !DateRangeThen.portion().isParty,
              //: !TalkingLiveManager.shared().isLive,
              !ListThen.deleteItem().isLive,
              //: !TalkingSocketManager.shared.isTalking,
              !NameSocketManager.shared.isTalking,
              //: !TalkingSocketManager.shared.isCalling else { return false }
              !NameSocketManager.shared.isCalling else { return false }
        //: let arr = WatercourseThen.share.appUserConfigMode.popLiveTabArr
        let arr = WatercourseThen.share.appUserConfigMode.popLiveTabArr
        //: let shouldShowPopup = (arr.contains("1") && type == .Social) ||
        let shouldShowPopup = (arr.contains("1") && type == .Social) ||
            //: (arr.contains("2") && type == .Moment) ||
            (arr.contains("2") && type == .Moment) ||
            //: (arr.contains("3") && type == .Message)
            (arr.contains("3") && type == .Message)
        //: if shouldShowPopup {
        if shouldShowPopup {
            //: TalkingPopupWindowManager.shared.startLivePopUpWindow()
            AdministratorReactiveCompatible.shared.cuttingEdgeKey()
            //: return true
            return true
        }

        //: return false
        return false
    }
}

// MARK: - 通知事件

//: extension TalkingTabBarViewController {
extension RudeReactiveCompatible {
    /// 更新index/getConfig接口
    /// - Parameter showLiveToast: 是否展示live提示（只有创建Tab时展示）
    //: @objc func func__getLoginUserConfig(_ showLiveToast: Bool = false) {
    @objc func localFormatCenter(_ showLiveToast: Bool = false) {
        //: AppManagerRequest.func__requestUserConfig { succeed, _, _ in
        ResultReactiveCompatible.sum { succeed, _, _ in
            //: if showLiveToast {
            if showLiveToast {
                // 连接socket
                //: self.linkWebCocket()
                self.playInput()
                //: if WatercourseThen.share.appStatus == AppSkinStatus.normal.rawValue {
                if WatercourseThen.share.appStatus == PublishWidthTotal.normal.rawValue {
                    //: self.tabBarView.showFemaleLiveTurnOnToast()
                    self.tabBarView.dismissShow()
                    //: self.needShowLiveAlertView()
                    self.streetwiseType()
                    //: self.func__selectClubTabbar()
                    self.giftTabbar()
                }
                //: if succeed {
                if succeed {
                    //: self.func__reqPopUpWindow()
                    self.cornerShould()
                }
            }
        }
    }

    //: func func__selectClubTabbar() {
    func giftTabbar() {
        //: if WatercourseThen.share.loginUserMode.jumpType == 1 {
        if WatercourseThen.share.loginUserMode.jumpType == 1 {
            //: return
            return
        }
        //: switchRandowTabBarImage(isHidde: true)
        sharedListen(isHidde: true)
        //: if WatercourseThen.share.loginUserMode.sex == Gender.male.rawValue, WatercourseThen.share.appUserConfigMode.homeTab == "home" {
        if WatercourseThen.share.loginUserMode.sex == PushDownStackScalarLiteral.male.rawValue, WatercourseThen.share.appUserConfigMode.homeTab == (str_professionalName.replacingOccurrences(of: "tool", with: "ho")) {
            //: let type = 2
            let type = 2
            //: selectTabbar(type: type)
            decideCoverType(type: type)
            //: switchRandowTabBarImage(isHidde: false)
            sharedListen(isHidde: false)
        }
    }

    /// 弹窗
    //: func func__reqPopUpWindow() {
    func cornerShould() {
        //: guard WatercourseThen.share.loginUserMode.updateInfo == true else {
        guard WatercourseThen.share.loginUserMode.updateInfo == true else {
            //: return
            return
        }
        //: let manager = TalkingPopupWindowManager.shared
        let manager = AdministratorReactiveCompatible.shared
        //: manager.setHomePopUpWindow()
        manager.checkedSize()

        //: if WatercourseThen.share.loginUserMode.jumpType == 2, WatercourseThen.share.loginUserMode.sex == Gender.male.rawValue {
        if WatercourseThen.share.loginUserMode.jumpType == 2, WatercourseThen.share.loginUserMode.sex == PushDownStackScalarLiteral.male.rawValue {
            /// 主动拨打视频弹窗
            //: TalkingVideoInitivCallManager.shared.setObserver()
            MakeReactiveCompatible.shared.equalCorner()
        }
    }
}

// MARK: - UITabBarControllerDelegate

//: extension TalkingTabBarViewController {
extension RudeReactiveCompatible {
    //: func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
    func tabBarController(_: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        //: if WatercourseThen.share.appStatus == AppSkinStatus.special.rawValue {
        if WatercourseThen.share.appStatus == PublishWidthTotal.special.rawValue {
            //: return true
            return true
        }
        //: if let vc = viewController.children.first, let tabbarType = TabBarItemType(rawValue: vc.view.tag) {
        if let vc = viewController.children.first, let tabbarType = MediaCustomReflectable(rawValue: vc.view.tag) {
            // 点击直播虚拟按钮，不切换tabbar
            //: if tabbarType == .Live {
            if tabbarType == .Live {
                //: liveButtonClick()
                liveClick()
                //: return false
                return false
            }
            //: switchRandowTabBarImage(isHidde: tabbarType != .Randow)
            sharedListen(isHidde: tabbarType != .Randow)
            // 展示直播开播提醒弹窗，不切换tabbar
            //: if needShowLiveAlertView(type: tabbarType) {
            if streetwiseType(type: tabbarType) {
                //: return false
                return false
            }
        }

        //: return true
        return true
    }

    //: func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        //: if tabBarView.isHidden {
        if tabBarView.isHidden {
            //: tabBarView.isHidden = false
            tabBarView.isHidden = false
        }

        //: if WatercourseThen.share.appStatus == AppSkinStatus.special.rawValue {
        if WatercourseThen.share.appStatus == PublishWidthTotal.special.rawValue {
            //: return
            return
        }

        //: uploadTabSelete()
        sumEnd()

        // 消息列表切换到Intimate时，再次切回要默认选中all
        //: if tabBarView.currentTabType == TabBarItemType.Message.rawValue {
        if tabBarView.currentTabType == MediaCustomReflectable.Message.rawValue {
            //: let vc = viewController.children.first as? TalkingMessageViewController
            let vc = viewController.children.first as? MusicLabelReactiveCompatible
            //: if vc?.isNoChangeTop == false {
            if vc?.isNoChangeTop == false {
                //: vc?.isNoChangeTop = true
                vc?.isNoChangeTop = true
                //: vc?.setIsTopAll()
                vc?.queryStubAll()
            }
            //: } else {
        } else {
            //: if let vcArrs = tabBarController.viewControllers {
            if let vcArrs = tabBarController.viewControllers {
                //: for vc in vcArrs {
                for vc in vcArrs {
                    //: if let firstVc = vc.children.first {
                    if let firstVc = vc.children.first {
                        //: if firstVc.isKind(of: TalkingMessageViewController.self) {
                        if firstVc.isKind(of: MusicLabelReactiveCompatible.self) {
                            //: (firstVc as! TalkingMessageViewController).isNoChangeTop = false
                            (firstVc as! MusicLabelReactiveCompatible).isNoChangeTop = false
                            //: break
                            break
                        }
                    }
                }
            }
        }
    }

    //: func uploadTabSelete() {
    func sumEnd() {
        //: switch tabBarView.currentTabType {
        switch tabBarView.currentTabType {
        //: case TabBarItemType.Social.rawValue:
        case MediaCustomReflectable.Social.rawValue:
            //: uploadRecord.uploadRecordEvent(eventID: ClickHomeTabButton)
            kLet_depthIconValue.mightHaveBeenStubZapErrorUploadTo(eventID: kLet_informationStatusViewTitle)
        //: case TabBarItemType.Randow.rawValue: break
        case MediaCustomReflectable.Randow.rawValue: break
//            uploadRecord.uploadRecordEvent(eventID: ClickMatchTabButton)
        //: case TabBarItemType.Moment.rawValue:
        case MediaCustomReflectable.Moment.rawValue:
            //: uploadRecord.uploadRecordEvent(eventID: ClickMomentTabButton)
            kLet_depthIconValue.mightHaveBeenStubZapErrorUploadTo(eventID: kLet_licenseText)
        //: case TabBarItemType.Message.rawValue:
        case MediaCustomReflectable.Message.rawValue:
            //: uploadRecord.uploadRecordEvent(eventID: ClickMassagesTabButton)
            kLet_depthIconValue.mightHaveBeenStubZapErrorUploadTo(eventID: kLet_noPackageText)
        //: case TabBarItemType.Account.rawValue:
        case MediaCustomReflectable.Account.rawValue:
            //: uploadRecord.uploadRecordEvent(eventID: ClickMeTabButton)
            kLet_depthIconValue.mightHaveBeenStubZapErrorUploadTo(eventID: kLet_successScaleTitle)
        //: default:
        default:
            //: break
            break
        }
    }
}

// MARK: - NameManagerDelegate

//: extension TalkingTabBarViewController: IMManagerDelegate {
extension RudeReactiveCompatible: NameManagerDelegate {
    //: func onUnreadMsgCountChanged(count: Int) {
    func explainUp(count _: Int) {
        //: refreshUnreadIMMessageCount()
        session()
    }

    //: func onRecvNewMessage(msg: V2TIMMessage) {
    func colorful(msg: V2TIMMessage) {
        //: let extra = String(data: msg.customElem.data, encoding: .utf8)
        let extra = String(data: msg.customElem.data, encoding: .utf8)
        //: let json = JSON(parseJSON: extra!)
        let json = JSON(parseJSON: extra!)
        //: let userInfo = json["user"]
        let userInfo = json[(String(str_hiddenValue))]
        //: let headUrlStr = userInfo["icon"].stringValue
        let headUrlStr = userInfo[(str_effectValue.replacingOccurrences(of: "size", with: "ic"))].stringValue
        //: if headUrlStr.isEmptyString {
        if headUrlStr.isEmptyString {
            //: return
            return
        }

        //: tabBarView.showNewMessageUser(headPic: headUrlStr)
        tabBarView.userPic(headPic: headUrlStr)
    }

    //: func refreshUnreadIMMessageCount() {
    func session() {
        //: if TalkingV2Listener.shared.isConnection {
        if TalkingV2Listener.shared.isConnection {
            //: let unreadMsgCount = WatercourseThen.share.unreadMessageNum
            let unreadMsgCount = WatercourseThen.share.unreadMessageNum
            //: tabBarView.refreshBadgeLayoutWith(unread: unreadMsgCount, barType: .Message)
            tabBarView.formatDetail(unread: unreadMsgCount, barType: .Message)
        }
    }
}
