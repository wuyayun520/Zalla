
//: Declare String Begin

/*: "0,0" :*/
fileprivate let str_backColorAngleText:[Character] = ["0",",","0"]

/*: "dist/loungePlus" :*/
fileprivate let str_halfData:[Character] = ["d","i","s","t","/","l","o"]
fileprivate let str_cancelTitle:[Character] = ["u"]
fileprivate let str_pastContent:String = "ngePluscount media"

/*: "mf/freeCall/getVideoInfo" :*/
fileprivate let str_editValue:String = "mf/frimport view"
fileprivate let str_makeName:String = "view name privacyll/ge"
fileprivate let str_modelValue:String = "equal title view modeoInfo"

/*: "fromType" :*/
fileprivate let str_buttonAppValue:[UInt8] = [0x2d,0x39,0x24,0x26,0x1f,0x32,0x3b,0x2e]

private func infoAdd(send num: UInt8) -> UInt8 {
    return num ^ 75
}

/*: "videoId" :*/
fileprivate let str_managerTextData:String = "center audience errorvideoId"

/*: "uid" :*/
fileprivate let str_shareViewPairValue:String = "uenter"

/*: "type" :*/
fileprivate let str_frameName:String = "tylocation"

/*: "logId" :*/
fileprivate let str_infoTitle:String = "logIdlast view false view let"

/*: "duration" :*/
fileprivate let str_touchValue:String = "dbarrati"
fileprivate let str_pathName:[Character] = ["o","n"]

/*: "stopUid" :*/
fileprivate let str_temporaryData:[Character] = ["s","t","o","p","U","i","d"]

/*: "mf/freeCall/operation" :*/
fileprivate let str_itemName:String = "mf/fvar point"
fileprivate let str_managerValue:String = "ll/operself import return class kit"
fileprivate let str_colorData:[Character] = ["a","t","i","o","n"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MakeReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/6.
//

//: import UIKit
import UIKit

/// 主动拨打视频弹窗管理
//: class TalkingVideoInitivCallManager: NSObject {
class MakeReactiveCompatible: NSObject {
    //: private var videoCallTimer: Timer?
    private var videoCallTimer: Timer? /// timer
    //: var videoCallModel = TalkingVideoInitivCallModel.init()
    var videoCallModel = UnknownModel()
    //: private var countDown = 0
    private var countDown = 0 /// x秒后显示主动拨打弹窗
    //: private var intervalDown = 0
    private var intervalDown = 0 /// 间隔时间x秒
    //: private var timer_Duration: TimeInterval = 0
    private var timer_Duration: TimeInterval = 0 /// 时间间隔 初次3s，后续90s

    //: static let shared = TalkingVideoInitivCallManager()
    static let shared = MakeReactiveCompatible()

    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(stop_VideoCallTimer),
                                               selector: #selector(towardPositionColor),
                                               //: name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION,
                                               name: kLet_screenPathName,
                                               //: object: nil)
                                               object: nil)
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

// MARK: - Event

//: extension TalkingVideoInitivCallManager {
extension MakeReactiveCompatible {
    //: private func distroryNotif() {
    private func resource() {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: func setObserver() {
    func equalCorner() {
        //: guard WatercourseThen.share.loginUserMode.callPopupSetting != "0,0" else {
        guard WatercourseThen.share.loginUserMode.callPopupSetting != "0,0" else {
            //: distroryNotif()
            resource()
            //: return
            return
        }
        //: let arr = WatercourseThen.share.loginUserMode.callPopupSetting .split(separator: ",")
        let arr = WatercourseThen.share.loginUserMode.callPopupSetting.split(separator: ",")
        //: if arr.count > 1 {
        if arr.count > 1 {
            //: countDown = Int(arr[0]) ?? 0
            countDown = Int(arr[0]) ?? 0
            //: intervalDown = Int(arr[1]) ?? 0
            intervalDown = Int(arr[1]) ?? 0
        }
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+Double(countDown)) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + Double(countDown)) {
            //: self.req_getVideoInfo()
            self.clickModel()
        }
        /// 充值/订阅成功
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(paySuccessTool),
                                               selector: #selector(successTo),
                                               //: name: USER_UPDATE_LOUNGEPLUSINFO_NOTIFICATION,
                                               name: kLet_partyFailValue,
                                               //: object: nil)
                                               object: nil)
    }

    /// 开启x秒倒计时
    //: func initVideoCallTimer() {
    func sleeplessTimer() {
        //: self.timer_Duration = TimeInterval(intervalDown)
        self.timer_Duration = TimeInterval(intervalDown)
        //: if videoCallTimer == nil {
        if videoCallTimer == nil {
            //: videoCallTimer = Timer.scheduledTimer(timeInterval: timer_Duration, target: self, selector: #selector(req_getVideoInfo), userInfo: nil, repeats: true)
            videoCallTimer = Timer.scheduledTimer(timeInterval: timer_Duration, target: self, selector: #selector(clickModel), userInfo: nil, repeats: true)
            //: RunLoop.current.add(videoCallTimer!, forMode: RunLoop.Mode.common)
            RunLoop.current.add(videoCallTimer!, forMode: RunLoop.Mode.common)
        }
    }

    //: private func videoCallTimerPopView() {
    private func viewPath() {
        /// 当前显示半屏充值页或订阅页时，不显示弹窗
        //: if currentViewController()?.isKind(of: TalkingWebViewController.self) == true {
        if toController()?.isKind(of: AtDelegate.self) == true {
            //: let vc = currentViewController() as! TalkingWebViewController
            let vc = toController() as! AtDelegate
            //: if vc.urlStr.contains(WebUrlType.RechargeToVideoInitivHalfPage.rawValue) || vc.urlStr.contains("dist/loungePlus") {
            if vc.urlStr.contains(VoicePublishNameConvertible.RechargeToVideoInitivHalfPage.rawValue) || vc.urlStr.contains((String(str_halfData) + String(str_cancelTitle) + String(str_pastContent.prefix(7)))) {
                //: return
                return
            }
        }
        /// 当前在随机匹配页，视频通话页，不显示弹窗
        //: if currentViewController()?.isKind(of: TalkingRandomVideoViewController.self) == true || currentViewController()?.isKind(of: TalkingVideoInitivCallVC.self) == true {
        if toController()?.isKind(of: ReadFactoryReactiveCompatible.self) == true || toController()?.isKind(of: TalkingPlayerDelegate.self) == true {
            //: return
            return
        }
        //: TalkingPopupWindowManager.shared.videoCallPopUpWindow()
        AdministratorReactiveCompatible.shared.imageWindow()
        //: stop_VideoCallTimer()
        towardPositionColor()
    }

    /// 停止
    //: @objc func stop_VideoCallTimer() {
    @objc func towardPositionColor() {
        //: if self.videoCallTimer != nil {
        if self.videoCallTimer != nil {
            //: self.videoCallTimer?.invalidate()
            self.videoCallTimer?.invalidate()
            //: self.videoCallTimer = nil
            self.videoCallTimer = nil
        }
    }

    ///  充值成功后，跳转到callTab页面
    //: @objc private func paySuccessTool() {
    @objc private func successTo() {
        //: if currentViewController()?.isKind(of: TalkingWebViewController.self) == true {
        if toController()?.isKind(of: AtDelegate.self) == true {
            //: let vc = currentViewController() as! TalkingWebViewController
            let vc = toController() as! AtDelegate
            //: if (vc.urlStr.contains(WebUrlType.RechargeHalfPage.rawValue) || vc.urlStr.contains(WebUrlType.SubscribeAlert.rawValue )) && vc.isRechargeOrSubscribeChangeMatch {
            if vc.urlStr.contains(VoicePublishNameConvertible.RechargeHalfPage.rawValue) || vc.urlStr.contains(VoicePublishNameConvertible.SubscribeAlert.rawValue), vc.isRechargeOrSubscribeChangeMatch {
                //: stop_VideoCallTimer()
                towardPositionColor()
                //: vc.dismiss(animated: true)
                vc.dismiss(animated: true)
//                tabberSelete()
            }
        }
    }
}

// MARK: - Load Data

//: extension TalkingVideoInitivCallManager {
extension MakeReactiveCompatible {
    /// 获取用户主动拨打视频信息
    //: @objc private func req_getVideoInfo() {
    @objc private func clickModel() {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = IndexRequestModel()
        //: reqModel.requestPath = "mf/freeCall/getVideoInfo"
        reqModel.requestPath = (String(str_editValue.prefix(5)) + "eeCa" + String(str_makeName.suffix(5)) + "tVide" + String(str_modelValue.suffix(5)))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["fromType": "0"]
        reqModel.params = [String(bytes: str_buttonAppValue.map{infoAdd(send: $0)}, encoding: .utf8)!: "0"]
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_endVersionTitle.getStarted(model: reqModel) { succeed, result, errorModel in
            /// 用户正在通话中，需要开启x秒后再次请求
            //: if errorModel?.errorCode == 104 {
            if errorModel?.errorCode == 104 {
                //: self.initVideoCallTimer()
                self.sleeplessTimer()
                //: return
                return
            }
            //: guard succeed == true else {
            guard succeed == true else {
                //: self.distroryNotif()
                self.resource()
                //: self.stop_VideoCallTimer()
                self.towardPositionColor()
                //: return
                return
            }
            //: guard let result = result as? Dictionary<String, Any> else {
            guard let result = result as? [String: Any] else {
                //: return
                return
            }
            //: if let model = TalkingVideoInitivCallModel.deserialize(from: result as? Dictionary) {
            if let model = UnknownModel.deserialize(from: result as? Dictionary) {
                //: self.videoCallModel = model
                self.videoCallModel = model
            }
            /// 预加载
            //: let  player = TalkingVideoPlayerManager.init()
            let player = CommandPlayerManager()
            //: player.setMute(bEnable: true)
            player.enableGenerate(bEnable: true)
            //: player.playerWithUrlAndVideoView(url: self.videoCallModel.winVideoUrl, view: UIView.init())
            player.shouldUserAdd(url: self.videoCallModel.winVideoUrl, view: UIView())

            //: self.videoCallTimerPopView()
            self.viewPath()
        }
    }

    /** 接口记录用户是否接通或拒绝当前通话
     *  type :3 拒绝 1 接通 2 挂断
     *  duration 接通时长
     */
    //: func req_userOperation(type: Int, duration: Int = 0, stopUid: String = "", completion: @escaping FinishBlock) {
    func detailComment(type: Int, duration: Int = 0, stopUid: String = "", completion: @escaping FinishBlock) {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["videoId"] = videoCallModel.videoId
        dict[(String(str_managerTextData.suffix(7)))] = videoCallModel.videoId
        //: dict["uid"] = videoCallModel.uid
        dict[(str_shareViewPairValue.replacingOccurrences(of: "enter", with: "id"))] = videoCallModel.uid
        //: dict["type"] = type
        dict[(str_frameName.replacingOccurrences(of: "location", with: "pe"))] = type
        //: dict["logId"] = videoCallModel.logId
        dict[(String(str_infoTitle.prefix(5)))] = videoCallModel.logId

        //: if duration > 0 {
        if duration > 0 {
            //: dict["duration"] = duration
            dict[(str_touchValue.replacingOccurrences(of: "bar", with: "u") + String(str_pathName))] = duration
        }
        //: if stopUid.count > 0 {
        if stopUid.count > 0 {
            //: dict["stopUid"] = stopUid
            dict[(String(str_temporaryData))] = stopUid
        }

        //: let reqModel = TalkingRequestModel.init()
        let reqModel = IndexRequestModel()
        //: reqModel.requestPath = "mf/freeCall/operation"
        reqModel.requestPath = (String(str_itemName.prefix(4)) + "reeCa" + String(str_managerValue.prefix(7)) + String(str_colorData))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_endVersionTitle.getStarted(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
