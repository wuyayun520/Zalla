
//: Declare String Begin

/*: "app/getConfig" :*/
fileprivate let str_borderValue:String = "app/bag content view listen"
fileprivate let str_checkData:String = "nfishow"

/*: "mf/user/getMyInfo" :*/
fileprivate let str_pairValue:[Character] = ["m","f","/","u","s","e","r","/","g","e","t"]
fileprivate let str_giftName:[Character] = ["M"]
fileprivate let str_viewSexLogValue:String = "to bubbleyInfo"

/*: "mf/user/getInfoColumn" :*/
fileprivate let str_jumpValue:String = "mf/utap user"
fileprivate let str_infoBeyondTitle:[Character] = ["t","I","n","f","o","C","o","l","u","m","n"]

/*: "%.2f" :*/
fileprivate let str_whiteValue:[Character] = ["%",".","2","f"]

/*: "mfCoin" :*/
fileprivate let str_conversationTitle:String = "scale"
fileprivate let str_contentTitle:String = "fCoinif manager manager"

/*: "mf/index/getConfig" :*/
fileprivate let str_modePathVarData:[Character] = ["m","f","/","i","n","d","e"]
fileprivate let str_viewValue:String = "x/getCmake add icon gift"

/*: _ :*/
fileprivate let str_selectedSkinData:[Character] = ["_"]

/*: "baseinfo =  :*/
fileprivate let str_iconTitle:[Character] = ["b","a","s","e","i","n","f","o"," ","="," "]

/*: "UserBasicInfoSetting" :*/
fileprivate let str_makeSumeractionData:[Character] = ["U","s"]
fileprivate let str_managerValue:String = "gift execute view lab liveerBa"
fileprivate let str_videoTitle:String = "finish last giftfoSe"

/*: "/userTag.json" :*/
fileprivate let str_succeedTextTitle:String = "/usereturn lab var selection"
fileprivate let str_sendValue:[Character] = ["s","o","n"]

/*: "json 解析失败" :*/
fileprivate let str_firstValue:[Character] = ["j","s","o"]
fileprivate let str_pathTitle:String = "n \u{89e3}析\u{5931}败"

/*: "app/reportDeviceId" :*/
fileprivate let str_barIconValue:String = "app/repocontainer white stop"
fileprivate let str_inputColorText:[Character] = ["r","t","D","e","v","i","c","e","I","d"]

/*: "p0" :*/
fileprivate let str_leadingFullTitle:String = "index"

/*: "token" :*/
fileprivate let str_bubbleName:[UInt8] = [0x8e,0x95,0x91,0x9f,0x94]

private func sizeManager(session num: UInt8) -> UInt8 {
    return num ^ 250
}

/*: "app/reportFcmPushToken" :*/
fileprivate let str_uponTitle:String = "app/respeak layer height"
fileprivate let str_timeSureValue:String = "name toPushToken"

/*: "app/init" :*/
fileprivate let str_matchPhotoContent:String = "app/iniempty self true"
fileprivate let str_cookieData:[Character] = ["t"]

/*: "app/ping" :*/
fileprivate let str_interactionTitle:[Character] = ["a","p","p","/","p","i","n","g"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ResultReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/3/25.
//

//: import Adjust
import Adjust
//: import Alamofire
import Alamofire
//: import FirebaseMessaging
import FirebaseMessaging
//: import UIKit
import UIKit

//: var isRequestingInit = false
var kLet_environmentData = false

//: var isRetryDeviceIdTime = 3.0
var kLet_progressText = 3.0

//: class AppManagerRequest: NSObject {
class ResultReactiveCompatible: NSObject {
    /// 请求app配置信息【无需登录】
    //: class func requestAppConfig(completion: @escaping FinishBlock) {
    class func labelBoard(completion: @escaping FinishBlock) {
        //: let requestModel = TalkingRequestModel.init()
        let requestModel = IndexRequestModel()
        //: requestModel.requestPath = "app/getConfig"
        requestModel.requestPath = (String(str_borderValue.prefix(4)) + "getCo" + str_checkData.replacingOccurrences(of: "show", with: "g"))
        //: requestModel.showErrorStatusBar = false
        requestModel.showErrorStatusBar = false
        //: ProgressHUD.show()
        AtAdView.sizeUp()
        //: GJ.startRequest(model: requestModel) { succeed, result, errorModel in
        kLet_endVersionTitle.getStarted(model: requestModel) { succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            AtAdView.toAction()
            //: if succeed {
            if succeed {
                //: Defaults.set(result, forKey: TalkingAppConfigKey)
                kLet_timeContent.set(result, forKey: kLet_restoreData)
                //: if let configModel = JSONDeserializer<AppConfigModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                if let configModel = JSONDeserializer<RawModelType>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                    //: WatercourseThen.share.appConfigMode = configModel
                    WatercourseThen.share.appConfigMode = configModel
                    // 通知
                    //: NotificationCenter.default.post(name: UPDATE_APP_GETCONFIG_NOTIFICATION, object: nil)
                    NotificationCenter.default.post(name: kLet_informationTimeName, object: nil)
                    //: completion(succeed, result, errorModel)
                    completion(succeed, result, errorModel)
                }
                //: } else {
            } else {
                //: let configInfo = Defaults.dictionary(forKey: TalkingAppConfigKey)
                let configInfo = kLet_timeContent.dictionary(forKey: kLet_restoreData)
                //: if let configModel = JSONDeserializer<AppConfigModel>.deserializeFrom(dict: configInfo, designatedPath: nil) {
                if let configModel = JSONDeserializer<RawModelType>.deserializeFrom(dict: configInfo, designatedPath: nil) {
                    //: WatercourseThen.share.appConfigMode = configModel
                    WatercourseThen.share.appConfigMode = configModel
                    //: NotificationCenter.default.post(name: UPDATE_APP_GETCONFIG_NOTIFICATION, object: nil)
                    NotificationCenter.default.post(name: kLet_informationTimeName, object: nil)
                    //: completion(true, result, errorModel)
                    completion(true, result, errorModel)
                }
            }
        }
    }

    //: class func func__requestUserInfo(completion: @escaping FinishBlock) {
    class func videoOf(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = IndexRequestModel()
        //: reqModel.requestPath = "mf/user/getMyInfo"
        reqModel.requestPath = (String(str_pairValue) + String(str_giftName) + String(str_viewSexLogValue.suffix(5)))
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_endVersionTitle.getStarted(model: reqModel) { succeed, result, errorModel in
            //: if succeed {
            if succeed {
                //: Defaults.set(result, forKey: TalkingLoginUserInfoCacheKey)
                kLet_timeContent.set(result, forKey: kLet_micValue)
                //: if let userModel = JSONDeserializer<LoginUserModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                if let userModel = JSONDeserializer<TableMeasurable>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                    //: WatercourseThen.share.loginUserMode = userModel
                    WatercourseThen.share.loginUserMode = userModel
                }
            }
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 查询用户余额
    //: class func func__getInfoColumn(completion: @escaping FinishBlock) {
    class func solicitation(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = IndexRequestModel()
        //: reqModel.requestPath = "mf/user/getInfoColumn"
        reqModel.requestPath = (String(str_jumpValue.prefix(4)) + "ser/ge" + String(str_infoBeyondTitle))
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_endVersionTitle.getStarted(model: reqModel) { succeed, result, errorModel in
            //: if succeed {
            if succeed {
                //: let json = JSON(result ?? [String: Any]())
                let json = JSON(result ?? [String: Any]())
                //: WatercourseThen.share.loginUserMode.mf_coin = String(format: "%.2f", json["mfCoin"].doubleValue)
                WatercourseThen.share.loginUserMode.mf_coin = String(format: "%.2f", json[(str_conversationTitle.replacingOccurrences(of: "scale", with: "m") + String(str_contentTitle.prefix(5)))].doubleValue)
            }
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    //: class func func__requestUserConfig(completion: @escaping FinishBlock) {
    class func sum(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = IndexRequestModel()
        //: reqModel.requestPath = "mf/index/getConfig"
        reqModel.requestPath = (String(str_modePathVarData) + String(str_viewValue.prefix(6)) + "onfig")
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_endVersionTitle.getStarted(model: reqModel) { succeed, result, errorModel in
            //: let configKey = "\(TalkingLoginUserConfigKey)_\(String(describing: WatercourseThen.share.loginUserMode.sex))"
            let configKey = "\(kLet_successButtonData)_\(String(describing: WatercourseThen.share.loginUserMode.sex))"
            //: if succeed {
            if succeed {
                //: Defaults.set(result, forKey: configKey)
                kLet_timeContent.set(result, forKey: configKey)
                //: if let userModel = JSONDeserializer<AppUserConfigModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                if let userModel = JSONDeserializer<EqualMeasurable>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                    //: WatercourseThen.share.appUserConfigMode = userModel
                    WatercourseThen.share.appUserConfigMode = userModel
                    //: TalkingV2Listener.shared.func__LogingIn()
                    TalkingV2Listener.shared.mutualCompletion()
                    //: func__checkUserBaseinfoFileVersionWithURL(baseinfo: WatercourseThen.share.appUserConfigMode.baseInfo)
                    speech(baseinfo: WatercourseThen.share.appUserConfigMode.baseInfo)
                    // 上传用户日志
                    //: if userModel.needUploadLog == true {
                    if userModel.needUploadLog == true {
                        //: UploadLogTool.shared.uploadLog(false)
                        EnableReactiveCompatible.shared.sharedWood(false)
                    }
                    // 上报女性用户busy状态
                    //: (TalkingApplication.shared as! TalkingApplication).femaleBusyStatusReport()
                    (CurrentApplication.shared as! CurrentApplication).upTo()
                }
                //: } else {
            } else {
                //: let configInfo = Defaults.dictionary(forKey: configKey)
                let configInfo = kLet_timeContent.dictionary(forKey: configKey)
                //: if let userModel = JSONDeserializer<AppUserConfigModel>.deserializeFrom(dict: configInfo, designatedPath: nil) {
                if let userModel = JSONDeserializer<EqualMeasurable>.deserializeFrom(dict: configInfo, designatedPath: nil) {
                    //: WatercourseThen.share.appUserConfigMode = userModel
                    WatercourseThen.share.appUserConfigMode = userModel
                    //: TalkingV2Listener.shared.func__LogingIn()
                    TalkingV2Listener.shared.mutualCompletion()
                }
            }
            //: NotificationCenter.default.post(name: UPDATE_INDEX_GETCONFIG_NOTIFICATION, object: nil)
            NotificationCenter.default.post(name: kLet_inviteData, object: nil)
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    //: class func func__checkUserBaseinfoFileVersionWithURL(baseinfo: String) {
    class func speech(baseinfo: String) {
        //: let cacheUrl = Defaults.string(forKey: TalkingUserTagCacheUrlKey)
        let cacheUrl = kLet_timeContent.string(forKey: kLet_robotTimeMeetingData)
        //: printLog(message: "baseinfo = \(baseinfo)")
        printLog(message: (String(str_iconTitle)) + "\(baseinfo)")
        //: if cacheUrl != baseinfo {
        if cacheUrl != baseinfo {
            //: AF.request(baseinfo, method: .get).responseData { responseData in
            AF.request(baseinfo, method: .get).responseData { responseData in
                //: switch responseData.result {
                switch responseData.result {
                //: case .success:
                case .success:
                    //: let responseJson = String(data: responseData.data!, encoding: .utf8)
                    let responseJson = String(data: responseData.data!, encoding: .utf8)
                    //: if let responseModel = JSONDeserializer<UserTagModel>.deserializeFrom(json: responseJson) {
                    if let responseModel = JSONDeserializer<EndUserMeasurable>.deserializeFrom(json: responseJson) {
                        //: Defaults.set(baseinfo, forKey: TalkingUserTagCacheUrlKey)
                        kLet_timeContent.set(baseinfo, forKey: kLet_robotTimeMeetingData)
                        //: let jsonPath = FileManager.CachesDirectory()+"UserBasicInfoSetting"
                        let jsonPath = FileManager.brisance() + (String(str_makeSumeractionData) + String(str_managerValue.suffix(4)) + "sicIn" + String(str_videoTitle.suffix(4)) + "tting")
                        //: if FileManager.createFolder(folderPath: jsonPath) {
                        if FileManager.differentialCostPath(folderPath: jsonPath) {
                            //: FileManager.writeStringToFile(content: responseJson!, writePath: jsonPath+"/userTag.json")
                            FileManager.gestureTime(content: responseJson!, writePath: jsonPath + (String(str_succeedTextTitle.prefix(4)) + "rTag.j" + String(str_sendValue)))
                            //: WatercourseThen.share.func__loadUserTagCacheData()
                            WatercourseThen.share.cacheModel()
                        }
                        //: } else {
                    } else {
                        //: printLog(message: "json 解析失败")
                        printLog(message: (String(str_firstValue) + str_pathTitle))
                    }
                //: break
                //: case .failure:
                case .failure:

                    //: break
                    break
                }
            }
            //: } else {
        } else {
            //: WatercourseThen.share.func__loadUserTagCacheData()
            WatercourseThen.share.cacheModel()
        }
    }

    // 登录后上报FCM跟Device
    //: class func func__reportDeviceID() {
    class func counteractionSize() {
        //: func__reportDeviceIdentifier()
        funcLikeInstance()
    }

    /// 上报adid
    //: class func func__reportDeviceIdentifier() {
    class func funcLikeInstance() {
        //: let adid = Adjust.adid() ?? ""
        let adid = Adjust.adid() ?? ""
        //: if !adid.isEmptyString {
        if !adid.isEmptyString {
            //: let reqModel = TalkingRequestModel.init()
            let reqModel = IndexRequestModel()
            //: reqModel.requestType = .POST
            reqModel.requestType = .POST
            //: reqModel.requestPath = "app/reportDeviceId"
            reqModel.requestPath = (String(str_barIconValue.prefix(8)) + String(str_inputColorText))
            //: reqModel.showErrorStatusBar = false
            reqModel.showErrorStatusBar = false
            //: var params = UIDevice.deviceInfoDic
            var params = UIDevice.deviceInfoDic
            //: if let poStr = params["p0"] {
            if let poStr = params["p0"] {
                //: let token = NSDate.getCurrentTimeStamp()
                let token = NSDate.willStamp()
                //: reqModel.addHeaderToken = token
                reqModel.addHeaderToken = token
                //: let key = token.appending(TokenSaltStr)
                let key = token.appending(kLet_imageBarTitle)
                //: params["p0"] = (poStr as? String)?.encrypt(withKey: key)
                params["p0"] = (poStr as? String)?.mentalImage(key)
            }
            //: reqModel.params = params
            reqModel.params = params
            //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
            kLet_endVersionTitle.getStarted(model: reqModel) { _, _, _ in
            }
            //: }else {
        } else {
            //: if isRetryDeviceIdTime <= 384 {
            if kLet_progressText <= 384 {
                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + isRetryDeviceIdTime) {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + kLet_progressText) {
                    //: isRetryDeviceIdTime *= 2
                    kLet_progressText *= 2
                    //: self.func__reportDeviceIdentifier()
                    self.funcLikeInstance()
                }
            }
        }
    }

    //: class func func__reportFCMID() {
    class func cuttingEdge() {
        //: Messaging.messaging().token { token, error in
        Messaging.messaging().token { token, _ in
            //: if let token = token {
            if let token = token {
                //: let params = ["token": token]
                let params = [String(bytes: str_bubbleName.map{sizeManager(session: $0)}, encoding: .utf8)!: token]
                //: let reqModel = TalkingRequestModel.init()
                let reqModel = IndexRequestModel()
                //: reqModel.requestType = .POST
                reqModel.requestType = .POST
                //: reqModel.requestPath = "app/reportFcmPushToken"
                reqModel.requestPath = (String(str_uponTitle.prefix(6)) + "portFcm" + String(str_timeSureValue.suffix(9)))
                //: reqModel.params = params
                reqModel.params = params
                //: reqModel.showErrorStatusBar = false
                reqModel.showErrorStatusBar = false
                //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
                kLet_endVersionTitle.getStarted(model: reqModel) { _, _, _ in
                }
            }
        }
    }

    //: class func func__initAppRequest() {
    class func regard() {
        //: if isRequestingInit {
        if kLet_environmentData {
            //: return
            return
        }
        //: isRequestingInit = true
        kLet_environmentData = true
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = IndexRequestModel()
        //: reqModel.requestPath = "app/init"
        reqModel.requestPath = (String(str_matchPhotoContent.prefix(7)) + String(str_cookieData))
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_endVersionTitle.getStarted(model: reqModel) { succeed, _, _ in
            //: isRequestingInit =  false
            kLet_environmentData = false
            //: if succeed && WatercourseThen.share.request_HasInit == false {
            if succeed && WatercourseThen.share.request_HasInit == false {
                //: WatercourseThen.share.request_HasInit = true
                WatercourseThen.share.request_HasInit = true
            }
        }
    }

    //: class func func__initRequestHost(completion: @escaping FinishBlock) {
    class func nameAcross(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = IndexRequestModel()
        //: reqModel.requestPath = "app/ping"
        reqModel.requestPath = (String(str_interactionTitle))
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_endVersionTitle.getStarted(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
