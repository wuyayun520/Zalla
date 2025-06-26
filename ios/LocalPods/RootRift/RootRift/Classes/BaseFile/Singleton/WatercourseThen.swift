
//: Declare String Begin

/*: "PHPSESSID" :*/
fileprivate let str_viewValue:[Character] = ["P","H","P","S","E"]
fileprivate let str_itemText:String = "SSIfirst"

/*: "UID" :*/
fileprivate let str_leadingContent:String = "hiddenD"

/*: "Any" :*/
fileprivate let str_imageGestureData:[Character] = ["A","n","y"]

/*: "UserBasicInfoSetting/userTag.json" :*/
fileprivate let str_timeText:[UInt8] = [0x96,0xb0,0xa6,0xb1,0x81,0xa2,0xb0,0xaa,0xa0,0x8a,0xad,0xa5,0xac,0x90,0xa6,0xb7,0xb7,0xaa,0xad,0xa4,0xec,0xb6,0xb0,0xa6,0xb1,0x97,0xa2,0xa4,0xed,0xa9,0xb0,0xac,0xad]

private func dataConverter(model num: UInt8) -> UInt8 {
    return num ^ 195
}

/*: "获取数据" :*/
fileprivate let str_yetContent:String = "explain数据"

/*: "json 解析失败" :*/
fileprivate let str_toolData:String = "json 解析失败left succeed"

/*: "request_HasInit" :*/
fileprivate let str_keyValue:String = "rmodeue"
fileprivate let str_directionValue:String = "view table service withasInit"

/*: "Reachable via WiFi" :*/
fileprivate let str_plusText:String = "Reacobject if in"
fileprivate let str_insideName:String = " viaback view to size class"
fileprivate let str_targetData:String = " WiFistatus model style"

/*: "Reachable via Cellular" :*/
fileprivate let str_infoData:String = "Reachaerror item screen add"
fileprivate let str_cellValue:String = "full in pagea Ce"

/*: "Network not reachable" :*/
fileprivate let str_fundingData:String = "return top iconNe"
fileprivate let str_contentName:[Character] = ["t","w","o","r","k"," ","n","o","t"," ","r","e","a","c","h","a","b","l","e"]

/*: "Not reachable" :*/
fileprivate let str_emptyText:String = "smart false equal log sizeNot "
fileprivate let str_executeTitle:String = "reagroup"

/*: "Unable to start notifier" :*/
fileprivate let str_currentValue:String = "type user no selfUnabl"
fileprivate let str_createTitle:[Character] = ["e"," ","t","o"," ","s"]
fileprivate let str_headName:String = "touch else model stringtart n"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WatercourseThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/26.
//

//: import UIKit
import UIKit

//: public class WatercourseThen: NSObject {
public class WatercourseThen: NSObject {
    //: @objc static public let share = WatercourseThen()
    @objc public static let share = WatercourseThen()
    //: private override init() {}
    override private init() {}

    //: @objc public var loginUserMode = LoginUserModel()
    @objc public var loginUserMode = TableMeasurable() // 用户登录的信息
    //: @objc public var appUserConfigMode = AppUserConfigModel()
    @objc public var appUserConfigMode = EqualMeasurable() // App 用户配置信息
    //: var showWindow = false
    var showWindow = false // 是否需要展示巨星邀请引导弹窗【只在注册更新资料流程中才返回】
    //: var userFillInfoMode = UserFillInfoModel.init()
    var userFillInfoMode = ResultInfoModel() // 用户完善资料缓存
    //: var appConfigMode = AppConfigModel()
    var appConfigMode = RawModelType() // App 配置信息
    //: var reachability: Reachability?
    var reachability: Reachability? // 网络监听
    //: @objc public dynamic var networkStatus: AppNetworkStatus = .Unavailable
    @objc public dynamic var networkStatus: RangeInsetTarget = .Unavailable // 网络状态

    //: @objc public dynamic var request_HasInit: Bool = false
    @objc public dynamic var request_HasInit: Bool = false

    //: @objc public var appStatus: Int {
    @objc public var appStatus: Int { // 审核状态
        //: if loginUserMode.status == 0, appConfigMode.status == 0 {
        if loginUserMode.status == 0, appConfigMode.status == 0 {
            //: return AppSkinStatus.normal.rawValue
            return PublishWidthTotal.normal.rawValue
            //: } else {
        } else {
            //: return AppSkinStatus.special.rawValue
            return PublishWidthTotal.special.rawValue
        }
    }

    //: @objc public dynamic var unreadMessageNum: Int = 0
    @objc public dynamic var unreadMessageNum: Int = 0

    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: var loginSessionId: String {
    var loginSessionId: String {
        //: let url = URL.init(string: TalkingRequestAddrTool.share.serverUrlStr)!
        let url = URL(string: GazetteThen.share.serverUrlStr)!
        //: let cookieArr: Array<HTTPCookie> = HTTPCookieStorage.shared.cookies(for: url)!
        let cookieArr: [HTTPCookie] = HTTPCookieStorage.shared.cookies(for: url)!
        //: for cookie in cookieArr {
        for cookie in cookieArr {
            //: if cookie.name.uppercased() == "PHPSESSID" {
            if cookie.name.uppercased() == (String(str_viewValue) + str_itemText.replacingOccurrences(of: "first", with: "D")) {
                //: return cookie.value
                return cookie.value
            }
        }
        //: return ""
        return ""
    }

    //: var loginUid: String {
    var loginUid: String {
        //: let url = URL.init(string: TalkingRequestAddrTool.share.serverUrlStr)!
        let url = URL(string: GazetteThen.share.serverUrlStr)!
        //: let cookieArr: Array<HTTPCookie> = HTTPCookieStorage.shared.cookies(for: url)!
        let cookieArr: [HTTPCookie] = HTTPCookieStorage.shared.cookies(for: url)!
        //: for cookie in cookieArr {
        for cookie in cookieArr {
            //: if cookie.name.uppercased() == "UID" {
            if cookie.name.uppercased() == (str_leadingContent.replacingOccurrences(of: "hidden", with: "UI")) {
                //: return cookie.value
                return cookie.value
            }
        }
        //: return ""
        return ""
    }

    // 重置参数
    //: func func__reSet() {
    func beginPromptSet() {
        //: loginUserMode = LoginUserModel.init()
        loginUserMode = TableMeasurable()
        // 首页列表筛选条件
        //: SEARCH_AGE = "Any".localized
        kLet_onData = (String(str_imageGestureData)).localized
        //: SEARCH_VIDEOCOVER = "Any".localized
        kLet_backText = (String(str_imageGestureData)).localized
    }
}

//: extension WatercourseThen {
extension WatercourseThen {
    /// 更改用户登录状态
    /// - Parameter isLogin: 是否登录
    //: func func__UserLoginChanged(isLogin: Bool) {
    func partner(isLogin: Bool) {
        //: if isLogin {
        if isLogin {
            //: Defaults.set(WatercourseThen.share.loginUserMode.userID, forKey: TalkingLoginUidCacheKey)
            kLet_timeContent.set(WatercourseThen.share.loginUserMode.userID, forKey: kLet_userGiftHeightTitle)
            //: } else {
        } else {
            //: TalkingV2Listener.shared.func__LogingOut()
            TalkingV2Listener.shared.modelDownItem()
            //: Defaults.removeObject(forKey: TalkingLoginUidCacheKey)
            kLet_timeContent.removeObject(forKey: kLet_userGiftHeightTitle)
            //: func__cleanPrevLoginData()
            roundOut()
//            GazetteThen.share.func__removeAllCookies()
            // 清除礼物缓存
            //: TalkingChatGiftManager.share.gift_clearMemoryCache(showRed: false)
            ExaggerateReactiveCompatible.share.starNote(showRed: false)
        }
    }

    //: func func__checkAppConfigModeNeedUpdate() {
    func modelClose() {
        //: let configInfo = Defaults.dictionary(forKey: TalkingAppConfigKey)
        let configInfo = kLet_timeContent.dictionary(forKey: kLet_restoreData)
        //: if let configModel = JSONDeserializer<AppConfigModel>.deserializeFrom(dict: configInfo, designatedPath: nil) {
        if let configModel = JSONDeserializer<RawModelType>.deserializeFrom(dict: configInfo, designatedPath: nil) {
            //: WatercourseThen.share.appConfigMode = configModel
            WatercourseThen.share.appConfigMode = configModel
        }
        //: if let status = WatercourseThen.share.reachability?.connection, status != .unavailable {
        if let status = WatercourseThen.share.reachability?.connection, status != .unavailable {
            //: func__loadAppConfigData()
            priceMagnitude()
            //: } else {
        } else {
            //: NotificationCenter.default.addObserver(self, selector: #selector(reachabilityChanged(note:)), name: .reachabilityChanged, object: nil)
            NotificationCenter.default.addObserver(self, selector: #selector(toNote(note:)), name: .reachabilityChanged, object: nil)
        }
    }

    //: func func__loadAppConfigData() {
    func priceMagnitude() {
        //: AppManagerRequest.requestAppConfig { succeed, result, errorModel in
        ResultReactiveCompatible.labelBoard { succeed, _, _ in
            //: if succeed {
            if succeed {
                //: NotificationCenter.default.removeObserver(self, name: .reachabilityChanged, object: nil)
                NotificationCenter.default.removeObserver(self, name: .reachabilityChanged, object: nil)
            }
        }
    }

    //: func func__loadCurrentLoginInfoData() {
    func limit() {
        //: let userInfo = Defaults.dictionary(forKey: TalkingLoginUserInfoCacheKey)
        let userInfo = kLet_timeContent.dictionary(forKey: kLet_micValue)
        //: if let userModel = JSONDeserializer<LoginUserModel>.deserializeFrom(dict: userInfo, designatedPath: nil) {
        if let userModel = JSONDeserializer<TableMeasurable>.deserializeFrom(dict: userInfo, designatedPath: nil) {
            //: loginUserMode = userModel
            loginUserMode = userModel
        }
    }

    //: func func__cleanPrevLoginData() {
    func roundOut() {
        //: func__reSet()
        beginPromptSet()
        //: Defaults.removeObject(forKey: TalkingLoginUserInfoCacheKey)
        kLet_timeContent.removeObject(forKey: kLet_micValue)
//        let oldServerUrl: String = GazetteThen.share.serverUrlStr
//        if oldServerUrl.count > 0 {
//            let oldCookies: [HTTPCookie] = HTTPCookieStorage.shared.cookies(for: URL.init(string: oldServerUrl)!)!
//            for cookies in oldCookies {
//                if cookies.name.uppercased() == "PHPSESSID" {
//                    HTTPCookieStorage.shared.deleteCookie(cookies)
//                } else if(cookies.name.uppercased() == "UID") {
//                    HTTPCookieStorage.shared.deleteCookie(cookies)
//                }
//            }
//        }
    }

    //: func func__loadUserTagCacheData() -> Any? {
    func cacheModel() -> Any? {
        // MARK: 数据的读取

        //: let jsonPath = FileManager.CachesDirectory()+"UserBasicInfoSetting/userTag.json"
        let jsonPath = FileManager.brisance() + String(bytes: str_timeText.map{dataConverter(model: $0)}, encoding: .utf8)!
        //: if FileManager.judgeFileOrFolderExists(filePath: jsonPath) {
        if FileManager.statuteName(filePath: jsonPath) {
            //: let dataInfo = FileManager.default.contents(atPath: jsonPath)
            let dataInfo = FileManager.default.contents(atPath: jsonPath)
            //: let readStr = String.init(data: dataInfo!, encoding: .utf8)
            let readStr = String(data: dataInfo!, encoding: .utf8)
            //: if let tagModel = JSONDeserializer<UserTagModel>.deserializeFrom(json: readStr) {
            if let tagModel = JSONDeserializer<EndUserMeasurable>.deserializeFrom(json: readStr) {
                //: printLog(message: "获取数据")
                printLog(message: (str_yetContent.replacingOccurrences(of: "explain", with: "获取")))
                //: return tagModel
                return tagModel
                //: } else {
            } else {
                //: printLog(message: "json 解析失败")
                printLog(message: (String(str_toolData.prefix(9))))
            }
        }
        //: return nil
        return nil
    }

    //: func func__listenRequestHasInit() {
    func funcText() {
        //: self.rx.observeWeakly(Bool.self, "request_HasInit")
        self.rx.observeWeakly(Bool.self, (str_keyValue.replacingOccurrences(of: "mode", with: "eq") + "st_H" + String(str_directionValue.suffix(6))))
            //: .subscribe(onNext: { (value) in
            .subscribe(onNext: { value in
                //: let valueBool = value ?? false
                let valueBool = value ?? false
                //: if valueBool {
                if valueBool {
                    //: } else {
                } else {
                    //: AppManagerRequest.func__initAppRequest()
                    ResultReactiveCompatible.regard()
                }
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }

    /// 网络状态监测
    //: func startNotifierNetwork() {
    func notifier() {
        //: if self.reachability == nil {
        if self.reachability == nil {
            //: guard let reachability = try? Reachability() else { return }
            guard let reachability = try? Reachability() else { return }
            //: self.reachability = reachability
            self.reachability = reachability
            //: reachability.whenReachable = { reach in
            reachability.whenReachable = { reach in
                //: switch reach.connection {
                switch reach.connection {
                //: case .wifi:
                case .wifi:
                    //: self.networkStatus = .Wifi
                    self.networkStatus = .Wifi
                    //: printLog(message: "Reachable via WiFi")
                    printLog(message: (String(str_plusText.prefix(4)) + "hable" + String(str_insideName.prefix(4)) + String(str_targetData.prefix(5))))
                //: case .cellular:
                case .cellular:
                    //: self.networkStatus = .Cellular
                    self.networkStatus = .Cellular
                    //: printLog(message: "Reachable via Cellular")
                    printLog(message: (String(str_infoData.prefix(6)) + "ble vi" + String(str_cellValue.suffix(4)) + "llular"))
                //: default:
                default:
                    //: self.networkStatus = .Unavailable
                    self.networkStatus = .Unavailable
                    //: printLog(message: "Network not reachable")
                    printLog(message: (String(str_fundingData.suffix(2)) + String(str_contentName)))
                }
            }
            //: reachability.whenUnreachable = { _ in
            reachability.whenUnreachable = { _ in
                //: self.networkStatus = .Unavailable
                self.networkStatus = .Unavailable
                //: printLog(message: "Not reachable")
                printLog(message: (String(str_emptyText.suffix(4)) + str_executeTitle.replacingOccurrences(of: "group", with: "ch") + "able"))
            }

            //: do {
            do {
                //: try reachability.startNotifier()
                try reachability.startNotifier()
                //: } catch {
            } catch {
                //: printLog(message: "Unable to start notifier")
                printLog(message: (String(str_currentValue.suffix(5)) + String(str_createTitle) + String(str_headName.suffix(6)) + "otifier"))
            }
        }
    }

    //: @objc func reachabilityChanged(note: Notification) {
    @objc func toNote(note: Notification) {
        //: let reachability = note.object as? Reachability
        let reachability = note.object as? Reachability
        //: if reachability?.connection != .unavailable {
        if reachability?.connection != .unavailable {
            //: func__loadAppConfigData()
            priceMagnitude()
        }
    }
}
