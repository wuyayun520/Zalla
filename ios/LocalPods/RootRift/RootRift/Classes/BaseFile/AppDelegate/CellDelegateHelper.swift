
//: Declare String Begin

/*: "www.apple.com" :*/
fileprivate let str_addName:String = "crop"
fileprivate let str_postRowColorData:String = "ww.appimport var appear view index"

/*: "后台播放音乐模式异常:  :*/
fileprivate let str_modelTitle:String = "frame播放音乐模式"
fileprivate let str_intimateText:String = "异\u{5e38}: "

/*: ." :*/
fileprivate let str_errorValue:[Character] = ["."]

/*: "click_id" :*/
fileprivate let str_alongVideoValue:[Character] = ["c","l","i","c","k","_","i","d"]

/*: "lkme.cc" :*/
fileprivate let str_succeedValue:String = "let environment class min crushlkme.cc"

/*: "key_uid" :*/
fileprivate let str_saveData:String = "K"
fileprivate let str_cellRawViewValue:String = "ey_uidcenter view guard top check"

/*: "Reachable via WiFi" :*/
fileprivate let str_equalName:String = "Reavideo else layer let path"
fileprivate let str_toolValue:String = "chapresentation"
fileprivate let str_sizeTitle:String = "ia WiFireturn layer"

/*: "Reachable via Cellular" :*/
fileprivate let str_textName:[Character] = ["R","e","a","c","h","a","b","l","e"," ","v","i","a"," ","C","e","l"]
fileprivate let str_topValue:[Character] = ["l","u","l","a","r"]

/*: "Current network unavailable" :*/
fileprivate let str_tagTitle:[Character] = ["C","u","r","r","e","n","t"," ","n","e","t","w","o","r","k"," ","u"]
fileprivate let str_upValue:String = "coverva"

/*: "Network none" :*/
fileprivate let str_makeName:String = "lab var false ifNetwor"

/*: "call_response_bgm" :*/
fileprivate let str_statusActionData:String = "let my sizecall_r"
fileprivate let str_cellGiftText:String = "in frame explain longse_bgm"

/*: "Error playing BMG audio:  :*/
fileprivate let str_containerTitle:[Character] = ["E","r","r","o","r"," ","p","l","a","y","i","n","g"," ","B","M","G"," ","a","u","d","i"]
fileprivate let str_pointName:String = "top icono: "

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CellDelegateHelper.swift
//  AbroadTalking
//
//  Created by DouXiu on 2024/5/30.
//

//: import AVFAudio
import AVFAudio
//: import FirebaseCrashlytics
import FirebaseCrashlytics
//: import UIKit
import UIKit
//: import WebKit
import WebKit

//: public class AppDelegateHelper: NSObject {
public class CellDelegateHelper: NSObject {
    // 后台下载
    //: var backgroundSessionCompletionHandler: (() -> Void)?
    var backgroundSessionCompletionHandler: (() -> Void)?
    //: private var window: UIWindow?
    private var window: UIWindow?
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private let networkManager = NetworkReachabilityManager(host: "www.apple.com")
    private let networkManager = NetworkReachabilityManager(host: (str_addName.replacingOccurrences(of: "crop", with: "w") + String(str_postRowColorData.prefix(6)) + "le.com"))
    //: private var backTaskIdentifier = UIBackgroundTaskIdentifier.invalid
    private var backTaskIdentifier = UIBackgroundTaskIdentifier.invalid // 后台任务名称
    //: private var bgmPlayer: AVAudioPlayer?
    private var bgmPlayer: AVAudioPlayer? // 音视频通话后台播放音频
    //: private var currApplication: UIApplication?
    private var currApplication: UIApplication? // 当前application
    // singleton
    //: static let shared = AppDelegateHelper()
    static let shared = CellDelegateHelper()
    //: override private init() {
    override private init() {
        //: super.init()
        super.init()
        //: self.window?.rootViewController = NormalWaitingController()
        self.window?.rootViewController = DigitizerViewController()
        //: self.window?.makeKeyAndVisible()
        self.window?.makeKeyAndVisible()
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(initRootController),
                                               selector: #selector(arrayFile),
                                               //: name: UPDATE_APP_GETCONFIG_NOTIFICATION,
                                               name: kLet_informationTimeName,
                                               //: object: nil)
                                               object: nil)
    }
}

// MARK: - 系统API

//: public extension AppDelegateHelper {
public extension CellDelegateHelper {
    //: class func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?, window: UIWindow?) -> Bool {
    class func listLocal(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?, window: UIWindow?) -> Bool {
        //: AppDelegateHelper.shared.window = window
        CellDelegateHelper.shared.window = window
        //: AppDelegateHelper.shared.initLinkedME(launchOptions: launchOptions)
        CellDelegateHelper.shared.foundSecond(launchOptions: launchOptions)
        //: TalkingRequestAddrTool.share.func__setAppCookies()
        GazetteThen.share.managerCookies()
        //: AppDelegateHelper.shared.installNotificationObservers()
        CellDelegateHelper.shared.removeName()
        //: AppDelegateHelper.shared.initGetCache()
        CellDelegateHelper.shared.roundTap()
        //: TalkingRequestAddrTool.share.checkServerUrl()
        GazetteThen.share.restaurantAttendantOff()
        //: AppDelegateHelper.shared.currApplication = application
        CellDelegateHelper.shared.currApplication = application
        // 支持后台播放音乐
        //: do {
        do {
            //: try AVAudioSession.sharedInstance().setCategory(.playback)
            try AVAudioSession.sharedInstance().setCategory(.playback)
            //: try AVAudioSession.sharedInstance().setActive(true)
            try AVAudioSession.sharedInstance().setActive(true)
            //: } catch {
        } catch {
            //: UploadLogTool.writeLog(msg: "后台播放音乐模式异常: \(error).")
            EnableReactiveCompatible.nameBy(msg: (str_modelTitle.replacingOccurrences(of: "frame", with: "后台") + str_intimateText) + "\(error).")
        }

        //: if #available(iOS 15.0, *) {
        if #available(iOS 15.0, *) {
            //: UITableView.appearance().sectionHeaderTopPadding = 0
            UITableView.appearance().sectionHeaderTopPadding = 0
        }
        //: return true
        return true
    }

    //: class func applicationDidEnterBackground(_ application: UIApplication) {
    class func allRange(_: UIApplication) {
        // 开启后台任务，增加app后台运行时间
        //: AppDelegateHelper.shared.startBackgroundTask()
        CellDelegateHelper.shared.chapiter()
    }

    //: class func applicationWillEnterForeground(_ application: UIApplication) {
    class func dataNeed(_: UIApplication) {
        //: AppDelegateHelper.shared.stopPlayBGM()
        CellDelegateHelper.shared.squareBlock()
        // 进入前台，结束后台任务
        //: AppDelegateHelper.shared.checkAndEndBackgroundTask()
        CellDelegateHelper.shared.permission()
    }

    //: class func applicationWillResignActive(_ application: UIApplication) {
    class func petText(_ application: UIApplication) {
        //: let unreadMsgCount = WatercourseThen.share.unreadMessageNum
        let unreadMsgCount = WatercourseThen.share.unreadMessageNum
        //: application.applicationIconBadgeNumber = unreadMsgCount
        application.applicationIconBadgeNumber = unreadMsgCount
    }

    //: class func applicationDidReceiveMemoryWarning(_ application: UIApplication) {
    class func imageRepresentation(_: UIApplication) {
        //: URLCache.shared.removeAllCachedResponses()
        URLCache.shared.removeAllCachedResponses()
        //: URLCache.shared.diskCapacity = 0
        URLCache.shared.diskCapacity = 0
        //: URLCache.shared.memoryCapacity = 0
        URLCache.shared.memoryCapacity = 0
        //: let typeSet: Set<String> = [WKWebsiteDataTypeLocalStorage, WKWebsiteDataTypeDiskCache]
        let typeSet: Set<String> = [WKWebsiteDataTypeLocalStorage, WKWebsiteDataTypeDiskCache]
        //: WKWebsiteDataStore.default().removeData(ofTypes: typeSet, modifiedSince: Date(timeIntervalSince1970: 0)) {}
        WKWebsiteDataStore.default().removeData(ofTypes: typeSet, modifiedSince: Date(timeIntervalSince1970: 0)) {}
    }

    //: class func application(_ application: UIApplication, handleEventsForBackgroundURLSession identifier: String, completionHandler: @escaping () -> Void) {
    class func isFill(_: UIApplication, handleEventsForBackgroundURLSession _: String, completionHandler: @escaping () -> Void) {
        //: AppDelegateHelper.shared.backgroundSessionCompletionHandler = completionHandler
        CellDelegateHelper.shared.backgroundSessionCompletionHandler = completionHandler
    }
}

// MARK: - openURL

//: public extension AppDelegateHelper {
public extension CellDelegateHelper {
    //: class func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool {
    class func unbarView(_: UIApplication, open url: URL, options _: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool {
        //: if url.absoluteString.components(separatedBy: "click_id").count > 1 {
        if url.absoluteString.components(separatedBy: (String(str_alongVideoValue))).count > 1 {
            // 判断是否是通过LinkedME的UrlScheme唤起App
            //: return LinkedME.getInstance().handleDeepLink(url)
            return LinkedME.getInstance().handleDeepLink(url)
        }

        //: return true
        return true
    }

    // URI Scheme 实现深度链接技术
    //: class func application(app: UIApplication, openURL url: NSURL, options: [String: AnyObject]) -> Bool {
    class func elite(app _: UIApplication, openURL url: NSURL, options _: [String: AnyObject]) -> Bool {
        // 判断是否是通过LinkedME的UrlScheme唤起App
        //: if (url.absoluteString?.components(separatedBy: "click_id").count)! > 1 {
        if (url.absoluteString?.components(separatedBy: (String(str_alongVideoValue))).count)! > 1 {
            // 判断是否是通过LinkedME的UrlScheme唤起App
            //: return LinkedME.getInstance().handleDeepLink(url as URL)
            return LinkedME.getInstance().handleDeepLink(url as URL)
        }
        //: return true
        return true
    }

    // Universal Links 通用链接实现深度链接技术
    //: class func application(_ application: UIApplication, continue userActivity: NSUserActivity, restorationHandler: @escaping ([UIUserActivityRestoring]?) -> Void) -> Bool {
    class func nameHandler(_: UIApplication, continue userActivity: NSUserActivity, restorationHandler _: @escaping ([UIUserActivityRestoring]?) -> Void) -> Bool {
        // 判断是否是通过LinkedME的Universal Links唤起App
        //: if (userActivity.webpageURL?.absoluteString.components(separatedBy: "lkme.cc").count)! > 1 {
        if (userActivity.webpageURL?.absoluteString.components(separatedBy: (String(str_succeedValue.suffix(7)))).count)! > 1 {
            // 判断是否是通过LinkedME的UrlScheme唤起App
            //: return LinkedME.getInstance().continue(userActivity)
            return LinkedME.getInstance().continue(userActivity)
        }
        //: return true
        return true
    }

    //: class func application(_ application: UIApplication, open url: URL, sourceApplication: String?, annotation: Any) -> Bool {
    class func used(_: UIApplication, open url: URL, sourceApplication _: String?, annotation _: Any) -> Bool {
        //: if url.absoluteString.components(separatedBy: "click_id").count > 1 {
        if url.absoluteString.components(separatedBy: (String(str_alongVideoValue))).count > 1 {
            // 判断是否是通过LinkedME的UrlScheme唤起App
            //: return LinkedME.getInstance().handleDeepLink(url)
            return LinkedME.getInstance().handleDeepLink(url)
        }
        //: return true
        return true
    }
}

// MARK: - 控制器初始化方法

//: extension AppDelegateHelper {
extension CellDelegateHelper {
    /// 获取config和userinfo缓存
    //: private func initGetCache() {
    private func roundTap() {
        //: WatercourseThen.share.func__checkAppConfigModeNeedUpdate()
        WatercourseThen.share.modelClose()
        //: WatercourseThen.share.func__loadCurrentLoginInfoData()
        WatercourseThen.share.limit()
    }

    //: @objc private func initRootController() {
    @objc private func arrayFile() {
        // 延后初始化三方sdk, 防止首次安装时无网络初始化失败
        //: if currApplication != nil {
        if currApplication != nil {
            //: AppDelegateHelper.shared.initThirdPartySetup(currApplication!)
            CellDelegateHelper.shared.clickOfSetup(currApplication!)
        }
        //: WatercourseThen.share.func__listenRequestHasInit()
        WatercourseThen.share.funcText()
        //: window = UIWindow(frame: UIScreen.main.bounds)
        window = UIWindow(frame: UIScreen.main.bounds)
        //: window?.backgroundColor = .white
        window?.backgroundColor = .white
        //: window?.makeKeyAndVisible()
        window?.makeKeyAndVisible()

        //: let uid = (Defaults.string(forKey: TalkingLoginUidCacheKey)) ?? ""
        let uid = (kLet_timeContent.string(forKey: kLet_userGiftHeightTitle)) ?? ""
        //: if !uid.isEmptyString, Int(uid)! > 0 {
        if !uid.isEmptyString, Int(uid)! > 0 { // 登录状态
            //: func__setupTakingViewController()
            onUser()

            // 统计崩溃用户Id
            //: Crashlytics.crashlytics().setUserID(WatercourseThen.share.loginUid)
            Crashlytics.crashlytics().setUserID(WatercourseThen.share.loginUid)
            //: Crashlytics.crashlytics().setCustomValue(WatercourseThen.share.loginUid, forKey: "key_uid")
            Crashlytics.crashlytics().setCustomValue(WatercourseThen.share.loginUid, forKey: (str_saveData.lowercased() + String(str_cellRawViewValue.prefix(6))))
            // 检查是否有未完成的支付订单
            //: AppleIAPManager.shared.iap_checkUnfinishedTransactions()
            NameLikeTransactionObserver.shared.withTransactions()
            //: WatercourseThen.share.request_HasInit = false
            WatercourseThen.share.request_HasInit = false
            // 清除礼物缓存
            //: TalkingChatGiftManager.share.gift_clearMemoryCache(showRed: false)
            ExaggerateReactiveCompatible.share.starNote(showRed: false)
            // firebase上报token
            //: AppManagerRequest.func__reportFCMID()
            ResultReactiveCompatible.cuttingEdge()
            //: } else {
        } else {
            //: if WatercourseThen.share.loginSessionId.count > 0 {
            if WatercourseThen.share.loginSessionId.count > 0 {
                //: TalkingLoginRequestTool.req_loginOut { _ in
                WhiteIndexReactiveCompatible.showCompletion { _ in
                }
                //: WatercourseThen.share.func__cleanPrevLoginData()
                WatercourseThen.share.roundOut()
            }
            //: func__setupLoginViewController()
            loginClickTarget()
            //: WatercourseThen.share.request_HasInit = true
            WatercourseThen.share.request_HasInit = true
        }
    }

    //: private func func__setupTakingViewController() {
    private func onUser() {
        //: func__setupRootViewController(type: .Taking)
        applicationOf(type: .Taking)
    }

    //: private func func__setupLoginViewController() {
    private func loginClickTarget() {
        //: func__setupRootViewController(type: .Login)
        applicationOf(type: .Login)
    }

    //: private func func__setupRootViewController(type: TarBarControllerViewType) {
    private func applicationOf(type: HeadBarViewType) {
        //: if Thread.current.isMainThread {
        if Thread.current.isMainThread {
            //: func__setWindowRootViewController(type: type)
            ingot(type: type)
            //: } else {
        } else {
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: self.func__setWindowRootViewController(type: type)
                self.ingot(type: type)
            }
        }
    }

    //: private func func__setWindowRootViewController(type: TarBarControllerViewType) {
    private func ingot(type: HeadBarViewType) {
        //: if checkRootTarBarController(type: type) {
        if deviceType(type: type) {
            //: return
            return
                //: } else {
        } else {
            //: let tabbar = TalkingTabBarViewController(tabBarType: type)
            let tabbar = RudeReactiveCompatible(tabBarType: type)
            //: window?.rootViewController = tabbar
            window?.rootViewController = tabbar
        }
    }

    //: private func checkRootTarBarController(type: TarBarControllerViewType) -> Bool {
    private func deviceType(type: HeadBarViewType) -> Bool {
        //: let rootVC = window?.rootViewController
        let rootVC = window?.rootViewController
        //: if rootVC is TalkingTabBarViewController {
        if rootVC is RudeReactiveCompatible {
            //: if let rootVC1 = rootVC as? TalkingTabBarViewController {
            if let rootVC1 = rootVC as? RudeReactiveCompatible {
                //: if rootVC1.tabBarVCType == type {
                if rootVC1.tabBarVCType == type {
                    //: return true
                    return true
                }
            }
        }
        //: return false
        return false
    }
}

// MARK: - 通知监听

//: extension AppDelegateHelper {
extension CellDelegateHelper {
    /// 初始化通知监听
    //: private func installNotificationObservers() {
    private func removeName() {
        // 网络状态监听
        //: WatercourseThen.share.startNotifierNetwork()
        WatercourseThen.share.notifier()

        //: NotificationCenter.default.addObserver(self, selector: #selector(reachabilityChanged(note:)), name: .reachabilityChanged, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(breakNote(note:)), name: .reachabilityChanged, object: nil)

        // 登录成功通知
        //: NotificationCenter.default.rx
        NotificationCenter.default.rx
            //: .notification(DID_LOGIN_SUCCESS_NOTIFICATION)
            .notification(kLet_iconBottomTitle)
            //: .take(until: rx.deallocated)
            .take(until: rx.deallocated)
            //: .subscribe(onNext: { _ in
            .subscribe(onNext: { _ in

                /// 重新打开数据库
                //: WCDBManager.shared.connectDatabase()
                AdReactiveCompatible.shared.startChange()
                //: self.func__setupTakingViewController()
                self.onUser()
                //: WatercourseThen.share.func__UserLoginChanged(isLogin: true)
                WatercourseThen.share.partner(isLogin: true)

                // 统计崩溃用户Id
                //: Crashlytics.crashlytics().setUserID(WatercourseThen.share.loginUid)
                Crashlytics.crashlytics().setUserID(WatercourseThen.share.loginUid)
                //: Crashlytics.crashlytics().setCustomValue(WatercourseThen.share.loginUid, forKey: "key_uid")
                Crashlytics.crashlytics().setCustomValue(WatercourseThen.share.loginUid, forKey: (str_saveData.lowercased() + String(str_cellRawViewValue.prefix(6))))
                // 检查是否有末完成的支付订单
                //: AppleIAPManager.shared.iap_checkUnfinishedTransactions()
                NameLikeTransactionObserver.shared.withTransactions()
                //: if !WatercourseThen.share.request_HasInit {
                if !WatercourseThen.share.request_HasInit {
                    //: WatercourseThen.share.request_HasInit = true
                    WatercourseThen.share.request_HasInit = true
                }
                // firebase上报token
                //: AppManagerRequest.func__reportFCMID()
                ResultReactiveCompatible.cuttingEdge()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)

        // 退出登录通知
        //: NotificationCenter.default.rx
        NotificationCenter.default.rx
            //: .notification(DID_LOGIN_OUT_SUCCESS_NOTIFICATION)
            .notification(kLet_screenPathName)
            //: .take(until: rx.deallocated)
            .take(until: rx.deallocated)
            //: .subscribe(onNext: { _ in
            .subscribe(onNext: { _ in
                //: WatercourseThen.share.func__UserLoginChanged(isLogin: false)
                WatercourseThen.share.partner(isLogin: false)
                //: TalkingSocketManager.shared.closeWebSocket(userLoginOut: true)
                NameSocketManager.shared.sizeOff(userLoginOut: true)
                //: self.func__setupLoginViewController()
                self.loginClickTarget()
                //: (TalkingApplication.shared as! TalkingApplication).destroy()
                (CurrentApplication.shared as! CurrentApplication).noneDoingce()

                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)

        // 刷新个人资料
        //: NotificationCenter.default.rx.notification(UPDATE_USER_GETMYINFO_NOTIFICATION)
        NotificationCenter.default.rx.notification(kLet_limitName)
            //: .take(until: rx.deallocated)
            .take(until: rx.deallocated)
            //: .subscribe(onNext: { _ in
            .subscribe(onNext: { _ in
                //: AppManagerRequest.func__requestUserInfo { succeed, _, _ in
                ResultReactiveCompatible.videoOf { succeed, _, _ in
                    //: guard succeed else { return }
                    guard succeed else { return }
                    // 个人信息请求成功发送通知
                    //: NotificationCenter.default.post(name: USER_GETMYINFO_SUCCEED_NOTIFICATION, object: nil)
                    NotificationCenter.default.post(name: kLet_qualityName, object: nil)
                }
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }

    //: @objc private func reachabilityChanged(note: Notification) {
    @objc private func breakNote(note: Notification) {
        //: let reachability = note.object as! Reachability
        let reachability = note.object as! Reachability
        //: switch reachability.connection {
        switch reachability.connection {
        //: case .wifi:
        case .wifi:
            //: printLog(message: "Reachable via WiFi")
            printLog(message: (String(str_equalName.prefix(3)) + str_toolValue.replacingOccurrences(of: "presentation", with: "b") + "le v" + String(str_sizeTitle.prefix(7))))
        //: case .cellular:
        case .cellular:
            //: printLog(message: "Reachable via Cellular")
            printLog(message: (String(str_textName) + String(str_topValue)))
        //: case .unavailable:
        case .unavailable:
            // 网络不可用，全局提示用户
            //: func__showStatusBarErrorMsg(showMsg: "Current network unavailable".localized)
            detailKey(showMsg: (String(str_tagTitle) + str_upValue.replacingOccurrences(of: "cover", with: "na") + "ilable").localized)
        //: case .none:
        case .none:
            //: printLog(message: "Network none")
            printLog(message: (String(str_makeName.suffix(6)) + "k none"))
        }
    }
}

// MARK: - 后台任务

//: extension AppDelegateHelper {
extension CellDelegateHelper {
    // 开启后台任务
    //: private func startBackgroundTask() {
    private func chapiter() {
        //: checkAndEndBackgroundTask()
        permission()
        //: if backTaskIdentifier == .invalid {
        if backTaskIdentifier == .invalid {
            //: backTaskIdentifier = UIApplication.shared.beginBackgroundTask {
            backTaskIdentifier = UIApplication.shared.beginBackgroundTask {
                //: self.checkAndEndBackgroundTask()
                self.permission()
            }
        }
    }

    /// 结束后台任务
    //: private func checkAndEndBackgroundTask() {
    private func permission() {
        //: if backTaskIdentifier != .invalid {
        if backTaskIdentifier != .invalid {
            //: UIApplication.shared.endBackgroundTask(backTaskIdentifier)
            UIApplication.shared.endBackgroundTask(backTaskIdentifier)
            //: backTaskIdentifier = .invalid
            backTaskIdentifier = .invalid
        }
    }

    /// 开始播放背景音乐
    //: func startPlayBGM() {
    func nameProduct() {
        //: let filePath = SVGAEffectTool.default.getMp3Path(name: "call_response_bgm")
        let filePath = StreamReactiveCompatible.default.repossessType(name: (String(str_statusActionData.suffix(6)) + "espon" + String(str_cellGiftText.suffix(6))))

        //: let fileURL = URL(fileURLWithPath: filePath)
        let fileURL = URL(fileURLWithPath: filePath)
        //: do {
        do {
            //: bgmPlayer = try AVAudioPlayer(contentsOf: fileURL)
            bgmPlayer = try AVAudioPlayer(contentsOf: fileURL)
            //: bgmPlayer?.play()
            bgmPlayer?.play()
            //: startSystemVibrate()
            systemOpen()
            //: } catch {
        } catch {
            //: printLog(message: "Error playing BMG audio: \(error.localizedDescription)")
            printLog(message: (String(str_containerTitle) + String(str_pointName.suffix(3))) + "\(error.localizedDescription)")
        }
    }

    ///  停止播放背景音乐
    //: func stopPlayBGM() {
    func squareBlock() {
        //: stopSystemVibrate()
        imageService()
        //: guard bgmPlayer != nil else { return }
        guard bgmPlayer != nil else { return }
        //: bgmPlayer?.stop()
        bgmPlayer?.stop()
        //: bgmPlayer = nil
        bgmPlayer = nil
    }

    /// 开始震动
    //: private func startSystemVibrate() {
    private func systemOpen() {
        //: AudioServicesAddSystemSoundCompletion(kSystemSoundID_Vibrate, nil, nil, { _, _ in
        AudioServicesAddSystemSoundCompletion(kSystemSoundID_Vibrate, nil, nil, { _, _ in
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                //: AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
                AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
            }
            //: }, nil)
        }, nil)
        //: AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
    }

    /// 停止震动
    //: private func stopSystemVibrate() {
    private func imageService() {
        //: AudioServicesRemoveSystemSoundCompletion(kSystemSoundID_Vibrate)
        AudioServicesRemoveSystemSoundCompletion(kSystemSoundID_Vibrate)
        //: AudioServicesDisposeSystemSoundID(kSystemSoundID_Vibrate)
        AudioServicesDisposeSystemSoundID(kSystemSoundID_Vibrate)
    }
}
