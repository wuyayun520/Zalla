
//: Declare String Begin

/*: "WEBVIEW_THIRD_REFRESHCOIN_NOTIFICATION" :*/
fileprivate let str_selectedData:[UInt8] = [0x94,0x86,0x81,0x95,0x8a,0x86,0x94,0x9c,0x97,0x8b,0x8a,0x91,0x87,0x9c,0x91,0x86,0x85,0x91,0x86,0x90,0x8b,0x80,0x8c,0x8a,0x8d,0x9c,0x8d,0x8c,0x97,0x8a,0x85,0x8a,0x80,0x82,0x97,0x8a,0x8c,0x8d]

private func ofValue(share num: UInt8) -> UInt8 {
    return num ^ 195
}

/*: "goodsId" :*/
fileprivate let str_infoValue:[Character] = ["g","o","o","d","s","I","d"]

/*: "source" :*/
fileprivate let str_componentName:String = "sourbutton"
fileprivate let str_toData:String = "photo"

/*: "type" :*/
fileprivate let str_equalVoiceName:String = "tymaine"

/*: "title" :*/
fileprivate let str_stopAName:[Character] = ["t","i","t","l","e"]

/*: "url" :*/
fileprivate let str_senseValue:[Character] = ["u","r","l"]

/*: "money" :*/
fileprivate let str_makeValue:[Character] = ["m","o","n","e","y"]

/*: "Other" :*/
fileprivate let str_indexData:String = "Othercircle in"

/*: "show" :*/
fileprivate let str_pushValue:[Character] = ["s","h","o","w"]

/*: "target" :*/
fileprivate let str_dropValue:String = "tacommitet"

/*: "eventName" :*/
fileprivate let str_executeTitle:[Character] = ["e","v","e","n","t","N","a","m","e"]

/*: "jsonString" :*/
fileprivate let str_withImageInTitle:String = "request will color return letjsonS"

/*: "coin" :*/
fileprivate let str_videoName:[Character] = ["c","o","i","n"]

/*: "uid" :*/
fileprivate let str_succeedData:[Character] = ["u","i","d"]

/*: "未实现的js事件： :*/
fileprivate let str_textValue:[Character] = ["未","实","现","的","j","s","事","\u{4ef6}","："]

/*: "PurchaseClick" :*/
fileprivate let str_appName:[Character] = ["P","u","r","c","h","a","s","e","C","l"]
fileprivate let str_whiteMyText:String = "icurrent"

/*: "Retry After or Go to " :*/
fileprivate let str_sharedValue:[Character] = ["R","e","t","r","y"," ","A","f","t","e","r"," ","o","r"," ","G"]
fileprivate let str_indexName:[Character] = ["o"," ","t","o"," "]

/*: "Feedback" :*/
fileprivate let str_frameTitle:String = "Feedbacmessage place me tap"
fileprivate let str_versionData:[Character] = ["k"]

/*: " to contact us" :*/
fileprivate let str_backgroundValue:String = "in time to to co"
fileprivate let str_requestContent:[Character] = ["n","t","a","c","t"," ","u","s"]

/*: "Apple" :*/
fileprivate let str_addValue:[Character] = ["A","p","p","l","e"]

/*: " apple支付充值失败： :*/
fileprivate let str_pathValue:[Character] = [""," ","a","p","p","l","e","支"]
fileprivate let str_colorText:[Character] = ["付","充","值","\u{5931}","\u{8d25}","："]

/*: "payResultCallback();" :*/
fileprivate let str_rankValue:[Character] = ["p","a","y","R","e","s","u","l","t","C","a","l","l","b","a","c","k","(",")",";"]

/*: "USD" :*/
fileprivate let str_cardData:[Character] = ["U","S","D"]

/*: "amount" :*/
fileprivate let str_pathText:[UInt8] = [0x74,0x6e,0x75,0x6f,0x6d,0x61]

/*: "getSystemNotificationtStatus(true)" :*/
fileprivate let str_haveText:[UInt8] = [0x29,0x65,0x75,0x72,0x74,0x28,0x73,0x75,0x74,0x61,0x74,0x53,0x74,0x6e,0x6f,0x69,0x74,0x61,0x63,0x69,0x66,0x69,0x74,0x6f,0x4e,0x6d,0x65,0x74,0x73,0x79,0x53,0x74,0x65,0x67]

/*: "getSystemNotificationtStatus(false)" :*/
fileprivate let str_voiceValue:[UInt8] = [0xb7,0xb5,0xa4,0x83,0xa9,0xa3,0xa4,0xb5,0xbd,0x9e,0xbf,0xa4,0xb9,0xb6,0xb9,0xb3,0xb1,0xa4,0xb9,0xbf,0xbe,0xa4,0x83,0xa4,0xb1,0xa4,0xa5,0xa3,0xf8,0xb6,0xb1,0xbc,0xa3,0xb5,0xf9]

private func letReturn(list num: UInt8) -> UInt8 {
    return num ^ 208
}

/*: "mfBean" :*/
fileprivate let str_tempName:[UInt8] = [0x2f,0x28,0x4,0x27,0x23,0x30]

fileprivate func colorEmpty(vertical num: UInt8) -> UInt8 {
    let value = Int(num) - 194
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "%.2f" :*/
fileprivate let str_timeName:String = "%.2findex lab"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AtDelegate+JSEvent.swift
//  AbroadTalking
//
//  Created by young on 2022/9/6.
//

//: import UIKit
import UIKit
//: import WebKit
import WebKit

// 通知三方H5刷新金币
//: public let WEBVIEW_THIRD_REFRESHCOIN_NOTIFICATION = NSNotification.Name(rawValue: "WEBVIEW_THIRD_REFRESHCOIN_NOTIFICATION")
public let kLet_userPositionName = NSNotification.Name(rawValue: String(bytes: str_selectedData.map{ofValue(share: $0)}, encoding: .utf8)!)

//: extension TalkingWebViewController {
extension AtDelegate {
    /// 处理JS事件
    /// - Parameters:
    ///   - message: 消息
    //: func HandleScriptMessage(_ message: WKScriptMessage) {
    func doScreenplayMessage(_ message: WKScriptMessage) {
        //: let type = WebMethodType(rawValue: message.name)
        let type = MethodValueConvertible(rawValue: message.name)
        //: let json = JSON(message.body)
        let json = JSON(message.body)
        //: switch type {
        switch type {
        //: case .MethodType_Exit:
        case .MethodType_Exit:
            //: self.func__closeAction(sender: nil)
            self.coverFrom(sender: nil)

        //: case .MethodType_needLogin:
        case .MethodType_needLogin:
            //: needLogin()
            bindWill()

        //: case .MethodType_apPay:
        case .MethodType_apPay:
            //: applePay(productId: json["goodsId"].stringValue, source: json["source"].intValue, payType: .Pay)
            cutRecord(productId: json[(String(str_infoValue))].stringValue, source: json[(str_componentName.replacingOccurrences(of: "button", with: "c") + str_toData.replacingOccurrences(of: "photo", with: "e"))].intValue, payType: .Pay)

        //: case .MethodType_apPay_subscribe:
        case .MethodType_apPay_subscribe:
            //: if json["type"].stringValue == "6" {
            if json[(str_equalVoiceName.replacingOccurrences(of: "main", with: "p"))].stringValue == "6" {
                //: isVideoCallRechargeHalfPage = true
                isVideoCallRechargeHalfPage = true
                //: RECHARGE_CLICK_EVENT = subscribtionRecordButton
                kLet_detailImageData = kLet_tableDoingdText
                //: } else if json["type"].stringValue == "7" { // 点击订阅弹窗的订阅按钮
            } else if json[(str_equalVoiceName.replacingOccurrences(of: "main", with: "p"))].stringValue == "7" { // 点击订阅弹窗的订阅按钮
                //: RECHARGE_CLICK_EVENT = subscribtionRecordButton
                kLet_detailImageData = kLet_tableDoingdText
            }
            //: applePay_subscribe(type: json["type"].stringValue, productId: json["goodsId"].stringValue, payType: .Subscribe)
            appActivity(type: json[(str_equalVoiceName.replacingOccurrences(of: "main", with: "p"))].stringValue, productId: json[(String(str_infoValue))].stringValue, payType: .Subscribe)

        //: case .MethodType_changeMenuButton:
        case .MethodType_changeMenuButton:
            //: changeRightMenuButton(title: json["title"].stringValue, url: json["url"].stringValue)
            changeEnableUrl(title: json[(String(str_stopAName))].stringValue, url: json[(String(str_senseValue))].stringValue)

        //: case .MethodType_refreshCoin:
        case .MethodType_refreshCoin:
            //: refreshCoin(price: Double(json["money"].stringValue) ?? 0, payType: "Other")
            beyondContent(price: Double(json[(String(str_makeValue))].stringValue) ?? 0, payMode: (String(str_indexData.prefix(5))), scene: json["scene"].stringValue)

        //: case .MethodType_appearsOnGiftBroadcast:
        case .MethodType_appearsOnGiftBroadcast:
            //: appearsOnGiftBroadcast(show: json["show"].boolValue)
            appearsAwake(show: json[(String(str_pushValue))].boolValue)

        //: case.MethodType_ToUrl:
        case .MethodType_ToUrl:
            //: openTourl(url: json.rawString() ?? "")
            valueUrl(url: json.rawString() ?? "")

        //: case .MethodType_customerService:
        case .MethodType_customerService:
            //: IndoorsPushManager.share.func__pushToPriveteChatVC(chatID: ListMacroDefine.getCustomerServiceID())
            IndoorsPushManager.share.executeMention(chatID: ListMacroDefine.storageMediumId())

        //: case.setRightMenuButton:
        case .setRightMenuButton:
            //: break
            break

        //: case .MethodType_taskCenter:
        case .MethodType_taskCenter:
            //: let target = json["target"].intValue
            let target = json[(str_dropValue.replacingOccurrences(of: "commit", with: "rg"))].intValue
            //: self.reloadInputViews()
            self.reloadInputViews()
            //: switch target {
            switch target {
            //: case 1:
            case 1: /// 签到领金币页
                //: IndoorsPushManager.share.func__pushToSubscribePageWebVC()
                IndoorsPushManager.share.timeText()

            //: case 2:
            case 2: /// 个人信息编辑页面
                //: let vc = TalkingEditProfilesVC.init()
                let vc = AutomaticallyPhotoDelegate()
                //: self.navigationController?.pushViewController(vc, animated: true)
                self.navigationController?.pushViewController(vc, animated: true)

            //: case 3:
            case 3: /// 真人认证页面
                //: verifyBtnClick()
                storageBuild()
            //: case 4:
            case 4: /// 发布动态页面
                //: tabberSelete(type: TabBarItemType.Moment.rawValue)
                seleteInfoKind(type: MediaCustomReflectable.Moment.rawValue)
                /// 防止动态首页广播还没创建
                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                    //: NotificationCenter.default.post(name: FREEBTN_UPLOAD_POST_NOTIFICATION,
                    NotificationCenter.default.post(name: kLet_screenSuccessNoText,
                                                    //: object: nil,
                                                    object: nil,
                                                    //: userInfo: nil)
                                                    userInfo: nil)
                }
            //: case 5:
            case 5: /// 我的页面
                //: tabberSelete(type: TabBarItemType.Account.rawValue)
                seleteInfoKind(type: MediaCustomReflectable.Account.rawValue)
            //: case 6:
            case 6: /// 首页
                //: tabberSelete(type: TabBarItemType.Social.rawValue)
                seleteInfoKind(type: MediaCustomReflectable.Social.rawValue)
            //: case 7:
            case 7: /// 消息列表页
                //: tabberSelete(type: TabBarItemType.Message.rawValue)
                seleteInfoKind(type: MediaCustomReflectable.Message.rawValue)
            //: case 8:
            case 8: /// Greet setting页
                //: let vc = TalkingAutoGreetSettingVC()
                let vc = UnknownDataSource()
                //: navigationController?.pushViewController(vc, animated: true)
                navigationController?.pushViewController(vc, animated: true)
            //: case 9:
            case 9: /// 动态列表页
                //: tabberSelete(type: TabBarItemType.Moment.rawValue)
                seleteInfoKind(type: MediaCustomReflectable.Moment.rawValue)
            //: default:
            default:
                //: break
                break
            }
        //: case .MethodType_systemNotification:
        case .MethodType_systemNotification:
            //: let type = json["type"].intValue
            let type = json[(str_equalVoiceName.replacingOccurrences(of: "main", with: "p"))].intValue
            //: changeNotifaStatus(type: type)
            moreFor(type: type)

        //: case .MethodType_refreshPoint:
        case .MethodType_refreshPoint:
            //: refreshPoint()
            appErase()

        //: case .MethodType_onEvent:
        case .MethodType_onEvent:
            //: reportEvent(eventName: json["eventName"].stringValue, jsonStr: json["jsonString"].stringValue)
            socialEvent(eventName: json[(String(str_executeTitle))].stringValue, jsonStr: json[(String(str_withImageInTitle.suffix(5)) + "tring")].stringValue)

        //: case .MethodType_refreshCoinAll:
        case .MethodType_refreshCoinAll:
            //: req_refreshCoinAll(coin: json["coin"].stringValue)
            arouse(coin: json[(String(str_videoName))].stringValue)

        //: case .MethodType_refreshPackage:
        case .MethodType_refreshPackage:
            //: req_refreshPackage()
            below()

        //: case .MethodType_vibrate:
        case .MethodType_vibrate:
            //: phoneVibrate()
            mouthpiece()

        //: case .MethodType_goFreeVideo:
        case .MethodType_goFreeVideo:
            //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in
            ResultReactiveCompatible.videoOf { _, _, _ in
                //: if WatercourseThen.share.loginUserMode.jumpType == 1 {
                if WatercourseThen.share.loginUserMode.jumpType == 1 {
                    //: self.func__closeAction(sender: nil)
                    self.coverFrom(sender: nil)
                    //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                        //: IndoorsPushManager.share.func__pushToRandomVideoVC(isBeginRand: false)
                        IndoorsPushManager.share.rand(isBeginRand: false)
                    }
                }
            }

        //: case .MethodType_goMessageDetail:
        case .MethodType_goMessageDetail:
            //: IndoorsPushManager.share.func__pushToPriveteChatVC(chatID: json["uid"].stringValue)
            IndoorsPushManager.share.executeMention(chatID: json[(String(str_succeedData))].stringValue)

        //: case .MethodType_goPersonInfo:
        case .MethodType_goPersonInfo:
            //: IndoorsPushManager.share.func__pushToUserDetailVC(uid: json["uid"].stringValue)
            IndoorsPushManager.share.digitiserView(uid: json[(String(str_succeedData))].stringValue)

        //: case .MethodType_showRechargeDialog:
        case .MethodType_showRechargeDialog:
            //: IndoorsPushManager.share.func__pushToHalfWebVC(webViewType: .RechargeHalfPage)
            IndoorsPushManager.share.afterRandom(webViewType: .RechargeHalfPage)

        //: case .OpenRetainPopup:
        case .OpenRetainPopup:
            //: self.func__closeAction(sender: nil)
            self.coverFrom(sender: nil)
        //: case .openBrowserWithUrl:
        case .openBrowserWithUrl:
            //: openToOutUrl(url: json.rawString() ?? "")
            userSex(url: json.rawString() ?? "")
        //: case .none:
        case .none:
            //: printLog(message: "未实现的js事件：\(message.name)")
            printLog(message: (String(str_textValue)) + "\(message.name)")
        }
    }

    // MARK: - Event

    /// 苹果订阅
    /// - Parameters:
    ///   - type: 订阅入口；1：首页banner，2：全屏充值页，3：半屏充值页，4：领取金币弹窗
    ///   - productId: 商品Id
    ///   - payType: 支付类型
    //: private func applePay_subscribe(type: String, productId: String, payType: ApplePayType) {
    private func appActivity(type _: String, productId: String, payType: MixedType) {
        //: applePay(productId: productId, payType: payType)
        cutRecord(productId: productId, payType: payType)
    }

    /// 苹果支付/订阅
    /// - Parameters:
    ///   - productId: productId: 商品Id
    ///   - source: 充值来源
    //: private func applePay(productId: String, source: Int = -1, payType: ApplePayType) {
    private func cutRecord(productId: String, source: Int = -1, payType: MixedType) {
        //: if WatercourseThen.share.loginUid.isEmptyString {
        if WatercourseThen.share.loginUid.isEmptyString {
            //: return
            return
        }
        //: FirebaseAnalyticsManager.share.logEvent(name: "PurchaseClick")
        CellAnalyticsManager.share.sawLogLayer(name: (String(str_appName) + str_whiteMyText.replacingOccurrences(of: "current", with: "ck")))

        //: ProgressHUD.show()
        AtAdView.sizeUp()
        //: var index = isVideoCallRechargeHalfPage ? 1: 0
        var index = isVideoCallRechargeHalfPage ? 1 : 0
        //: if source != -1 {
        if source != -1 {
            //: index = source
            index = source
        }
        //: AppleIAPManager.shared.iap_startPurchase(productId: productId, payType: payType, source: index) { type, reportMoney in
        NameLikeTransactionObserver.shared.above(productId: productId, payType: payType, source: index) { type, reportMoney, payType in
            //: ProgressHUD.dismiss()
            AtAdView.toAction()
            //: DispatchQueue.main.async { [self] in
            DispatchQueue.main.async { [self] in
                //: switch type {
                switch type {
                //: case .verityFail:
                case .verityFail:
                    //: ProgressHUD.toast( "Retry After or Go to \"Feedback\" to contact us".localized)
                    AtAdView.doToast((String(str_sharedValue) + String(str_indexName)) + "\"" + (String(str_frameTitle.prefix(7)) + String(str_versionData)) + "\"" + (String(str_backgroundValue.suffix(6)) + String(str_requestContent)).localized)
                //: case .veritySucceed:
                case .veritySucceed:
                    //: appleIAPVeritySucceed(price: reportMoney)
                    overdoPrice(price: reportMoney, payType: payType)
                //: case .renewSucceed:
                case .renewSucceed:
                    //: refreshCoin(price: reportMoney, payType: "Apple")
                    let scene = (payType == .Subscribe) ? "1":"2"
                    beyondContent(price: reportMoney, payMode: (String(str_addValue)), scene: scene)
                //: default:
                default:
                    //: printLog(message: " apple支付充值失败：\(type.rawValue)")
                    printLog(message: (String(str_pathValue) + String(str_colorText)) + "\(type.rawValue)")
                }
            }
        }
    }

    /// 设置导航右侧按钮
    /// - Parameters:
    ///   - title: 标题
    ///   - url: 地址
    //: private func changeRightMenuButton(title: String, url: String) {
    private func changeEnableUrl(title: String, url: String) {
        //: let rightBtn = TalkingButton()
        let rightBtn = MediaControl()
        //: rightBtn.titleLabel?.font = .systemFont(ofSize: 14)
        rightBtn.titleLabel?.font = .systemFont(ofSize: 14)
        //: rightBtn.setTitle(title, for: .normal)
        rightBtn.setTitle(title, for: .normal)
        //: rightBtn.setTitleColor(.RGBA(51, 51, 51, 1), for: .normal)
        rightBtn.setTitleColor(.nearComponentRgba(51, 51, 51, 1), for: .normal)
        //: rightBtn.addTarget(self, action: #selector(rightButtonClick), for: .touchUpInside)
        rightBtn.addTarget(self, action: #selector(headButton), for: .touchUpInside)
        //: rightBtn.sizeToFit()
        rightBtn.sizeToFit()
        //: rightBtn.userInfo = ["url": url]
        rightBtn.userInfo = [(String(str_senseValue)): url]
        //: self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: rightBtn)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: rightBtn)
    }

    //: @objc func rightButtonClick(button: TalkingButton) {
    @objc func headButton(button: MediaControl) {
        //: guard let urlString = button.userInfo?["url"] as? String else {
        guard let urlString = button.userInfo?[(String(str_senseValue))] as? String else {
            //: return
            return
        }

        //: self.urlStr = urlString
        self.urlStr = urlString
        //: func__startRequest()
        timeRequest()
    }

    /// 退出登录
    //: private func needLogin() {
    private func bindWill() {
        //: guard Int(WatercourseThen.share.loginUid) ?? 0 > 0 else {
        guard Int(WatercourseThen.share.loginUid) ?? 0 > 0 else {
            //: self.webView.reload()
            self.webView.reload()
            //: return
            return
        }

        //: NotificationCenter.default.post(name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION,
        NotificationCenter.default.post(name: kLet_screenPathName,
                                        //: object: nil,
                                        object: nil,
                                        //: userInfo: nil)
                                        userInfo: nil)
    }

    /// 苹果 支付/订阅 成功验证通过
    /// - Parameter price: 充值金额
    //: func appleIAPVeritySucceed(price: Double) {
    func overdoPrice(price: Double, payType: MixedType) {
        //: self.webView.evaluateJavaScript("payResultCallback();") { data, error in
        self.webView.evaluateJavaScript((String(str_rankValue))) { _, _ in
        }
        //: refreshCoin(price: price, payType: "Apple")
        let scene = (payType == .Subscribe) ? "1":"2"
        beyondContent(price: price, payMode: (String(str_addValue)), scene: scene)
    }

    /// 支付/订阅 成功刷新个人信息【apple/paypal】
    /// - Parameters:
    ///   - price: 充值金额
    ///   - payMode: 类型
    //: private func refreshCoin(price: Double, payType: String) {
    private func beyondContent(price: Double, payMode: String, scene: String) {
        //: NotificationCenter.default.post(name: UPDATE_USER_GETMYINFO_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: kLet_limitName, object: nil)
        //: NotificationCenter.default.post(name: UPDATE_USER_GETINFOCOLUMN_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: kLet_tabLimitData, object: nil)
        //: NotificationCenter.default.post(name: REFRESH_INDEX_GETCONFIG_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: kLet_replaceText, object: nil)
        //: NotificationCenter.default.post(name: USER_UPDATE_LOUNGEPLUSINFO_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: kLet_partyFailValue, object: nil)
        // 成功埋点
        if scene == "1" {
            NamesAdjustManager.share.addSubscribeEvent(price: price, currency: "USD")
        } else {
            //: TalkingAdjustManager.share.addPurchasedEvent(price: price, currency: "USD")
            NamesAdjustManager.share.full(price: price, currency: (String(str_cardData)))
        }
        //: FirebaseAnalyticsManager.share.trackPurchase(payType: payType, price: price, currency: "USD")
        CellAnalyticsManager.share.sectionBy(payType: payMode, price: price, currency: (String(str_cardData)))

        // 半屏充值成功埋点
        //: if RECHARGE_CLICK_EVENT.count > 0 {
        if kLet_detailImageData.count > 0 {
            //: uploadRecord.uploadRecordEvent(eventID: RECHARGE_CLICK_EVENT, parameterStr: ["amount": price])
            kLet_depthIconValue.fromCell(eventID: kLet_detailImageData, parameterStr: [String(bytes: str_pathText.reversed(), encoding: .utf8)!: price])
        }

        // 支付成功发送通知，调用三方js事件
        //: NotificationCenter.default.post(name: WEBVIEW_THIRD_REFRESHCOIN_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: kLet_userPositionName, object: nil)
    }

    /// 广播设置
    /// - Parameter show: 是否上广播
    //: private func appearsOnGiftBroadcast(show: Bool) {
    private func appearsAwake(show _: Bool) {}

    //: private func verifyBtnClick() {
    private func storageBuild() {
        //: if WatercourseThen.share.loginUserMode.isTPAuth == TPUserAuth.isSuccessed.rawValue {
        if WatercourseThen.share.loginUserMode.isTPAuth == CommandCompatibleValue.isSuccessed.rawValue {
            //: return
            return
                //: } else if WatercourseThen.share.loginUserMode.isTPAuth == TPUserAuth.unknown.rawValue {
        } else if WatercourseThen.share.loginUserMode.isTPAuth == CommandCompatibleValue.unknown.rawValue {
            //: IndoorsPushManager.share.func__pushUserVerifyController(toast: nil)
            IndoorsPushManager.share.overwhelm(toast: nil)
            //: } else if WatercourseThen.share.loginUserMode.isTPAuth == TPUserAuth.isOnGoing.rawValue {
        } else if WatercourseThen.share.loginUserMode.isTPAuth == CommandCompatibleValue.isOnGoing.rawValue {
            //: let vc = TalkingFinalVerificationVC()
            let vc = KeyReactiveCompatible()
            //: IndoorsPushManager.share.func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
            IndoorsPushManager.share.queryEqual()?.navigationController?.pushViewController(vc, animated: true)
            //: } else {
        } else {
            //: IndoorsPushManager.share.func__pushUserVerifyController(toast: nil)
            IndoorsPushManager.share.overwhelm(toast: nil)
        }
    }

    /// 底部tabbar切换
    //: private func tabberSelete(type: Int) {
    private func seleteInfoKind(type: Int) {
        //: guard type < self.tabBarController?.viewControllers?.count ?? 0 else { return }
        guard type < self.tabBarController?.viewControllers?.count ?? 0 else { return }
        //: let vc = self.tabBarController?.viewControllers?[type]
        let vc = self.tabBarController?.viewControllers?[type]
        //: self.tabBarController?.tabBar.isHidden = false
        self.tabBarController?.tabBar.isHidden = false
        //: self.tabBarController?.selectedIndex = type
        self.tabBarController?.selectedIndex = type
        //: self.tabBarController?.selectedViewController = vc
        self.tabBarController?.selectedViewController = vc
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }

    /// 获取系统通知状态
    //: private func changeNotifaStatus(type: Int) {
    private func moreFor(type: Int) {
        //: if type == 0 {
        if type == 0 {
            //: if let url = URL(string: UIApplication.openSettingsURLString), UIApplication.shared.canOpenURL(url) {
            if let url = URL(string: UIApplication.openSettingsURLString), UIApplication.shared.canOpenURL(url) {
                //: if #available(iOS 10.0, *) {
                if #available(iOS 10.0, *) {
                    //: UIApplication.shared.open(url, options: [:], completionHandler: nil)
                    UIApplication.shared.open(url, options: [:], completionHandler: nil)
                    //: } else {
                } else {
                    //: if UIApplication.shared.canOpenURL(url) {
                    if UIApplication.shared.canOpenURL(url) {
                        //: UIApplication.shared.openURL(url)
                        UIApplication.shared.openURL(url)
                    }
                }
            }
            //: } else if type == 1 {
        } else if type == 1 {
            //: AppManagerRequest.func__requestUserConfig { succeed, result, errorModel in }
            ResultReactiveCompatible.sum { _, _, _ in }
            //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in }
            ResultReactiveCompatible.videoOf { _, _, _ in }
            //: TalkingPermissionTool.checkPushNotification { isShow in
            ColorPermissionTool.selectedStatus { isShow in
                //: DispatchQueue.main.sync {
                DispatchQueue.main.sync {
                    //: let str = isShow ? "getSystemNotificationtStatus(true)" : "getSystemNotificationtStatus(false)"
                    let str = isShow ? String(bytes: str_haveText.reversed(), encoding: .utf8)! : String(bytes: str_voiceValue.map{letReturn(list: $0)}, encoding: .utf8)!
                    //: self.webView.evaluateJavaScript(str) { data, error in
                    self.webView.evaluateJavaScript(str) { _, _ in
                    }
                }
            }
        }
    }

    //: private func refreshPoint() {
    private func appErase() {
        //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in
        ResultReactiveCompatible.videoOf { _, _, _ in
            //: if TalkingLiveManager.shared().isLive {
            if ListThen.deleteItem().isLive {
                //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": 0.0])
                NotificationCenter.default.post(name: kLet_errorBottomValue, object: nil, userInfo: [String(bytes: str_tempName.map{colorEmpty(vertical: $0)}, encoding: .utf8)!: 0.0])
            }
        }
    }

    /// 刷新金币
    /// - Parameter coin: 传' ', 刷新接口；传其他，进行相加（含负数））
    //: private func req_refreshCoinAll(coin: String) {
    private func arouse(coin: String) {
        //: let value: Double = Double(coin) ?? 0
        let value = Double(coin) ?? 0
        //: if value == 0 {
        if value == 0 { // 刷新接口
            //: AppManagerRequest.func__getInfoColumn { succeed, result, errorModel in
            ResultReactiveCompatible.solicitation { _, _, _ in
            }
            //: } else {
        } else { // 加减
            //: let newCoin = Double(WatercourseThen.share.loginUserMode.mf_coin)! + value
            let newCoin = Double(WatercourseThen.share.loginUserMode.mf_coin)! + value
            //: WatercourseThen.share.loginUserMode.mf_coin = String(format: "%.2f", newCoin)
            WatercourseThen.share.loginUserMode.mf_coin = String(format: "%.2f", newCoin)
        }
    }

    /// 刷新礼物背包
    //: private func req_refreshPackage() {
    private func below() {
        //: NotificationCenter.default.post(name: GIFT_REFRESHPACKAGE_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: kLet_systemScreenTitle, object: nil)
    }

    /// 事件上报
    /// - Parameters:
    ///   - eventName: 事件名称
    ///   - jsonStr: 事件参数
    //: private func reportEvent(eventName: String, jsonStr: String) {
    private func socialEvent(eventName: String, jsonStr: String) {
        //: uploadRecord.uploadRecordEvent(eventID: eventName, toUid: "", jsonStr: jsonStr)
        kLet_depthIconValue.mightHaveBeenStubZapErrorUploadTo(eventID: eventName, toUid: "", jsonStr: jsonStr)
    }

    /// 手机震动
    //: private func phoneVibrate() {
    private func mouthpiece() {
        //: AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
    }
}
