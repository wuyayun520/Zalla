
//: Declare String Begin

/*: "/dist/loungePlus/index.html" :*/
fileprivate let str_countData:String = "to value/dist/"
fileprivate let str_sinceName:String = "gePlmake cell player"
fileprivate let str_colorData:String = "else birth view rightx.html"

/*: "PremiumStarPlanBanner" :*/
fileprivate let str_cancelData:String = "PremiumStlet send"
fileprivate let str_situationTitle:String = "detail to observerarPlan"

/*: "uid" :*/
fileprivate let str_effectName:String = "uidata"

/*: "mfChatGift" :*/
fileprivate let str_serverTitle:[Character] = ["m","f","C","h","a","t","G"]
fileprivate let str_pointData:String = "idistance"

/*: "mfChat" :*/
fileprivate let str_makeValue:[Character] = ["m","f","C","h","a","t"]

/*: "user" :*/
fileprivate let str_toContent:String = "ucountr"

/*: "Please verification first" :*/
fileprivate let str_sectionEmptyTitle:[Character] = ["P","l","e","a","s","e"," ","v","e"]
fileprivate let str_hungData:[Character] = ["r","i","f"]
fileprivate let str_shouldContent:String = "ICAT"
fileprivate let str_buttonTitle:String = "iequalst"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CurrentModelType.swift
//  AbroadTalking
//
//  Created by young on 2022/9/9.
//

//: import UIKit
import UIKit

//: struct SocialAdBannerModel: HandyJSON {
struct CurrentModelType: HandyJSON {
    // 广告图
    //: var pic: String = ""
    var pic: String = ""
    // 跳转链接
    //: var url: String = ""
    var url: String = ""
    // 跳转类型 0=无，1=跳转网页，2=跳转原生页面，3=游戏跳转，4=外部网页
    //: var type = 0
    var type = 0
    // 游戏宽高
    //: var widthHeight: Double?
    var widthHeight: Double?
    // 广告小图
    //: var thumbnail: String = ""
    var thumbnail: String = ""
}

// MARK: - Event

//: extension SocialAdBannerModel {
extension CurrentModelType {
    /// 跳转事件
    //: static func jumpEvent(model: SocialAdBannerModel) {
    static func titleRemove(model: CurrentModelType) {
        //: if model.type == 1 {
        if model.type == 1 { // 网页跳转
            //: let newUrl: String = model.url
            let newUrl: String = model.url
            //: if newUrl.contains("/dist/loungePlus/index.html") {
            if newUrl.contains((String(str_countData.suffix(6)) + "loun" + String(str_sinceName.prefix(4)) + "us/inde" + String(str_colorData.suffix(6)))) {
                //: IndoorsPushManager.share.func__pushToSubscribePageWebVC()
                IndoorsPushManager.share.timeText()
                //: return
                return
            }
            //: IndoorsPushManager.share.func__pushToWebVC(urlStr: model.url)
            IndoorsPushManager.share.feather(urlStr: model.url)

            //: } else if model.type == 2 {
        } else if model.type == 2 { // 原生跳转
            //: guard let url = URL(string: model.url),
            guard let url = URL(string: model.url),
                  //: let components = URLComponents(url: url, resolvingAgainstBaseURL: false) else {
                  let components = URLComponents(url: url, resolvingAgainstBaseURL: false)
            else {
                //: return
                return
            }
            //: if model.url.contains("PremiumStarPlanBanner") { // 巨星计划
            if model.url.contains((String(str_cancelData.prefix(9)) + String(str_situationTitle.suffix(6)) + "Banner")) { // 巨星计划
                //: SocialAdBannerModel.premiumStarPlanBanner()
                CurrentModelType.marginOfError()
                //: return
                return
            }

            //: if let uidItem = components.queryItems?.first(where: { $0.name == "uid" }) {
            if let uidItem = components.queryItems?.first(where: { $0.name == (str_effectName.replacingOccurrences(of: "data", with: "d")) }) {
                //: let uid = uidItem.value ?? ""
                let uid = uidItem.value ?? ""
                //: if model.url.contains("mfChatGift") { // 私聊打开礼物面板
                if model.url.contains((String(str_serverTitle) + str_pointData.replacingOccurrences(of: "distance", with: "ft"))) { // 私聊打开礼物面板
                    //: IndoorsPushManager.share.func__pushToPriveteChatVC(chatID: uid) { vc in
                    IndoorsPushManager.share.executeMention(chatID: uid) { vc in
                        //: vc.msgInputView.clickgiftBtn()
                        vc.msgInputView.tvBtn()
                    }
                    //: } else if model.url.contains("mfChat") { // 私聊
                } else if model.url.contains((String(str_makeValue))) { // 私聊
                    //: IndoorsPushManager.share.func__pushToPriveteChatVC(chatID: uid)
                    IndoorsPushManager.share.executeMention(chatID: uid)
                    //: } else if model.url.contains("user") { // 用户详情
                } else if model.url.contains((str_toContent.replacingOccurrences(of: "count", with: "se"))) { // 用户详情
                    //: IndoorsPushManager.share.func__pushToUserDetailVC(uid: uid)
                    IndoorsPushManager.share.digitiserView(uid: uid)
                }
            }

            //: } else if model.type == 3 {
        } else if model.type == 3 { // 游戏跳转
            //: var config = TalkingWebConfig()
            var config = ReloadConfig()
            //: config.widthHeight = model.widthHeight
            config.widthHeight = model.widthHeight
            //: config.clearBgColor = true
            config.clearBgColor = true
            //: IndoorsPushManager.share.func__pushToWebVC(urlStr: model.url, webConfig: config)
            IndoorsPushManager.share.feather(urlStr: model.url, webConfig: config)

            //: } else if model.type == 4 {
        } else if model.type == 4 { // 外部网页
            //: if let url = URL(string: model.url) {
            if let url = URL(string: model.url) {
                //: UIApplication.shared.open(url, options: [:], completionHandler: nil)
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }

    /// 加入巨星计划
    //: static func premiumStarPlanBanner() {
    static func marginOfError() {
        //: if WatercourseThen.share.loginUserMode.isTPAuth == TPUserAuth.isSuccessed.rawValue ||
        if WatercourseThen.share.loginUserMode.isTPAuth == CommandCompatibleValue.isSuccessed.rawValue ||
            //: WatercourseThen.share.loginUserMode.isRealPersonAuth == false {
            WatercourseThen.share.loginUserMode.isRealPersonAuth == false
        { // 真人认证成功 || 不需要真人认证
            //: if WatercourseThen.share.loginUserMode.premiumStarApplyStatus != PStarStatus.isOnGoing.rawValue {
            if WatercourseThen.share.loginUserMode.premiumStarApplyStatus != GiantExpressionConvertible.isOnGoing.rawValue {
                //: IndoorsPushManager.share.func__pushToWebVC(webViewType: .StarPlanIndex)
                IndoorsPushManager.share.pushType(webViewType: .StarPlanIndex)
                //: } else {
            } else {
                //: IndoorsPushManager.share.func__pushToWebVC(webViewType: .StarPlanAudit)
                IndoorsPushManager.share.pushType(webViewType: .StarPlanAudit)
            }
            //: } else if WatercourseThen.share.loginUserMode.isTPAuth == TPUserAuth.isOnGoing.rawValue {
        } else if WatercourseThen.share.loginUserMode.isTPAuth == CommandCompatibleValue.isOnGoing.rawValue { // 真人认证审核中
            //: NSObject().func__showStatusBarSuccessMsg(showMsg: "Please verification first".localized)
            NSObject().sizeExecuteMsg(showMsg: (String(str_sectionEmptyTitle) + String(str_hungData) + str_shouldContent.lowercased() + "ion f" + str_buttonTitle.replacingOccurrences(of: "equal", with: "r")).localized)
            //: let vc = TalkingFinalVerificationVC()
            let vc = KeyReactiveCompatible()
            //: IndoorsPushManager.share.func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
            IndoorsPushManager.share.queryEqual()?.navigationController?.pushViewController(vc, animated: true)
            //: } else {
        } else {
            //: NSObject().func__showStatusBarSuccessMsg(showMsg: "Please verification first".localized)
            NSObject().sizeExecuteMsg(showMsg: (String(str_sectionEmptyTitle) + String(str_hungData) + str_shouldContent.lowercased() + "ion f" + str_buttonTitle.replacingOccurrences(of: "equal", with: "r")).localized)
            //: IndoorsPushManager.share.func__pushUserVerifyController(toast: nil)
            IndoorsPushManager.share.overwhelm(toast: nil)
        }
    }
}
