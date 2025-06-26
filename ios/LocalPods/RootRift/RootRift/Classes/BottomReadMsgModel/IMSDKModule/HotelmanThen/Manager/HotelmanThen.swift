
//: Declare String Begin

/*: "TalkingFemaleVIPCallIdsArrayKey_ :*/
fileprivate let str_maleData:[UInt8] = [0xcf,0xdc,0xe7,0xe6,0xe4,0xe9,0xe2,0xc1,0xe0,0xe8,0xdc,0xe7,0xe0,0xd1,0xc4,0xcb,0xbe,0xdc,0xe7,0xe7,0xc4,0xdf,0xee,0xbc,0xed,0xed,0xdc,0xf4,0xc6,0xe0,0xf4,0xda]

fileprivate func speechCommunication(stop num: UInt8) -> UInt8 {
    let value = Int(num) - 123
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "CHANGE_BEAN" :*/
fileprivate let str_collectLabelText:String = "CHAviewE"
fileprivate let str_cellTitle:[Character] = ["_","B","E","A","N"]

/*: "Failed to get user information, please return and try again" :*/
fileprivate let str_toValue:[UInt8] = [0x26,0x41,0x49,0x4c,0x45,0x44,0x0,0x54,0x4f,0x0,0x47,0x45,0x54,0x0,0x55,0x53,0x45,0x52,0x0,0x49,0x4e,0x46,0x4f,0x52,0x4d,0x41,0x54,0x49,0x4f,0x4e,0xc,0x0,0x50,0x4c,0x45,0x41,0x53,0x45,0x0,0x52,0x45,0x54,0x55,0x52,0x4e,0x0,0x41,0x4e,0x44,0x0,0x54,0x52,0x59,0x0,0x41,0x47,0x41,0x49,0x4e]

fileprivate func playerObserve(name num: UInt8) -> UInt8 {
    let value = Int(num) - 224
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "type" :*/
fileprivate let str_byData:[UInt8] = [0x65,0x70,0x79,0x74]

/*: "uid" :*/
fileprivate let str_haveData:[Character] = ["u","i","d"]

/*: "fromFreeCall" :*/
fileprivate let str_contentValue:[Character] = ["f","r","o"]
fileprivate let str_equalBlockValue:[Character] = ["m","F","r","e","e","C","a","l","l"]

/*: "cmd" :*/
fileprivate let str_downValue:[UInt8] = [0x41,0x4f,0x46]

private func nameScale(user num: UInt8) -> UInt8 {
    return num ^ 34
}

/*: "requestCall" :*/
fileprivate let str_voiceName:String = "content detail var letrequestCa"
fileprivate let str_arrayPicAppTitle:[Character] = ["l","l"]

/*: "data" :*/
fileprivate let str_ofEqualName:[UInt8] = [0xcf,0xca,0xdf,0xca]

/*: "onRequestCall" :*/
fileprivate let str_succeedName:String = "time make inside else layeronRequ"
fileprivate let str_completeData:String = "ecolor"
fileprivate let str_toolLabelTitle:[Character] = ["t","C","a","l","l"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  HotelmanThen.swift
//  AbroadTalking
//
//  Created by young on 2023/8/15.
//

//: import UIKit
import UIKit

//: enum CallMenuType: Int {
enum NameFailDefaultsSerializable: Int {
    //: case VideoCall = 0
    case VideoCall = 0 // 视频通话
    //: case VoiceCall = 1
    case VoiceCall = 1 // 语音通话
}

//: typealias OnReqestCallBlock = () -> Void
typealias OnReqestCallBlock = () -> Void

//: class TalkingCallMenuManager: NSObject {
class HotelmanThen: NSObject {
    // 被呼叫用户ID
    //: var uid: String?
    var uid: String?
    //: var onReqestCallBlock: OnReqestCallBlock?
    var onReqestCallBlock: OnReqestCallBlock? /// 发起建立通话成功

    // 女性用户VIP折扣弹窗Key
    //: let FemaleVIPCallIdsArrayKey = "TalkingFemaleVIPCallIdsArrayKey_\(WatercourseThen.share.loginUid)"
    let FemaleVIPCallIdsArrayKey = String(bytes: str_maleData.map{speechCommunication(stop: $0)}, encoding: .utf8)! + "\(WatercourseThen.share.loginUid)"

    //: override init() {
    override init() {
        //: super.init()
        super.init()
    }

    //: deinit {
    deinit {
        //: TalkingSocketManager.shared.videoMatchDelegate = nil
        NameSocketManager.shared.videoMatchDelegate = nil
        //: TalkingSocketManager.shared.errorDelegate = nil
        NameSocketManager.shared.errorDelegate = nil
    }
}

// MARK: - Event

//: extension TalkingCallMenuManager {
extension HotelmanThen {
    /// 展示音视频通话选择菜单
    /// - Parameters:
    ///   - videoPrice: 视频通话价格
    ///   - voicePrice: 语音通话价格
    ///   - vipPrompt: 女性呼叫VIP用户价格变动提醒
    //: func showVideoCallMenu(videoPrice: String?, voicePrice: String?, vipPrompt: String? = nil) {
    func exhibitThroughActuate(videoPrice: String?, voicePrice: String?, vipPrompt: String? = nil) {
        // 音视频通话中
        //: guard TalkingSocketManager.shared.isTalking == false else {
        guard NameSocketManager.shared.isTalking == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.detailKey(showMsg: kLet_networkViewTitle)
            //: return
            return
        }

        //: let vc = TalkingMunuPopView(frame: UIScreen.main.bounds)
        let vc = ColorGiftDataSource(frame: UIScreen.main.bounds)
        //: vc.initWithList(type: .Call, videoPrice: videoPrice, voicePrice: voicePrice)
        vc.withPrice(type: .Call, videoPrice: videoPrice, voicePrice: voicePrice)
        //: vc.munuBlock = { [weak self] index, _ in
        vc.munuBlock = { [weak self] index, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: let type = CallMenuType(rawValue: index) ?? .VideoCall
            let type = NameFailDefaultsSerializable(rawValue: index) ?? .VideoCall
            // 展示VIP折扣提醒弹窗
            //: if vipPrompt != nil, vipPrompt?.count ?? 0 > 0 {
            if vipPrompt != nil, vipPrompt?.count ?? 0 > 0 {
                //: var prompt = ""
                var prompt = ""
                //: if index == 0 {
                if index == 0 {
                    //: prompt = vipPrompt!.replacingOccurrences(of: "CHANGE_BEAN", with: videoPrice ?? "0")
                    prompt = vipPrompt!.replacingOccurrences(of: (str_collectLabelText.replacingOccurrences(of: "view", with: "NG") + String(str_cellTitle)), with: videoPrice ?? "0")
                    //: } else {
                } else {
                    //: prompt = vipPrompt!.replacingOccurrences(of: "CHANGE_BEAN", with: voicePrice ?? "0")
                    prompt = vipPrompt!.replacingOccurrences(of: (str_collectLabelText.replacingOccurrences(of: "view", with: "NG") + String(str_cellTitle)), with: voicePrice ?? "0")
                }
                //: self.showFemaleVIPCallAlertView(type: type, vipPrompt: prompt)
                self.overRequest(type: type, vipPrompt: prompt)
                //: return
                return
            }

            //: requestCall(type: type)
            imageOf(type: type)
        }
    }

    /// 发起音/视频通话
    /// - Parameter type: 通话类型
    //: func requestCall(type: CallMenuType) {
    func imageOf(type: NameFailDefaultsSerializable) {
        //: switch(type) {
        switch type {
        //: case .VideoCall:
        case .VideoCall:
            //: self.checkAndCallVideo()
            self.labDownPop()
        //: case .VoiceCall:
        case .VoiceCall:
            //: self.checkAndCallVoice()
            self.donationComplection()
        }
    }

    /// 检查权限后发起音频通话
    /// - Parameter complection: 回调
    //: func checkAndCallVoice(complection: ((_ succeed: Bool) -> Void)? = nil) {
    func donationComplection(complection: ((_ succeed: Bool) -> Void)? = nil) {
        // 音视频通话中
        //: guard TalkingSocketManager.shared.isTalking == false else {
        guard NameSocketManager.shared.isTalking == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.detailKey(showMsg: kLet_networkViewTitle)
            //: complection?(false)
            complection?(false)
            //: return
            return
        }

        // 麦克风权限
        //: TalkingPermissionTool.func__openRecordServiceWithBlock(true) { isOpen in
        ColorPermissionTool.withDeadlineAt(true) { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: self.func__showStatusBarErrorMsg(showMsg: kMessage_permissions_error)
                self.detailKey(showMsg: kLet_intimateText)
                //: complection?(false)
                complection?(false)
                //: return
                return
            }
            // 发起音频通话
            //: TalkingSocketManager.shared.videoMatchDelegate = self
            NameSocketManager.shared.videoMatchDelegate = self
            //: TalkingSocketManager.shared.errorDelegate = self
            NameSocketManager.shared.errorDelegate = self
            //: self.send_socket_requestCall(type: 1)
            self.onSubstance(type: 1)
            //: complection?(true)
            complection?(true)
        }
    }

    /// 检测权限后发起视频通话
    /// - Parameter complection: 回调
    //: func checkAndCallVideo(complection: ((_ succeed: Bool) -> Void)? = nil) {
    func labDownPop(complection: ((_ succeed: Bool) -> Void)? = nil) {
        // 音视频通话中
        //: guard TalkingSocketManager.shared.isTalking == false else {
        guard NameSocketManager.shared.isTalking == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.detailKey(showMsg: kLet_networkViewTitle)
            //: complection?(false)
            complection?(false)
            //: return
            return
        }

        // 权限判断
        //: TalkingPermissionTool.checkCameraAndMicrophone { isOpen in
        ColorPermissionTool.behindQuantityMicrophone { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: self.func__showStatusBarErrorMsg(showMsg: kMessage_permissions_error)
                self.detailKey(showMsg: kLet_intimateText)
                //: complection?(false)
                complection?(false)
                //: return
                return
            }
            // 发起视频通话
            //: TalkingSocketManager.shared.videoMatchDelegate = self
            NameSocketManager.shared.videoMatchDelegate = self
            //: TalkingSocketManager.shared.errorDelegate = self
            NameSocketManager.shared.errorDelegate = self
            //: self.send_socket_requestCall(type: 0)
            self.onSubstance(type: 0)
            //: complection?(true)
            complection?(true)
        }
    }
}

// MARK: - 会员折扣提示弹窗

//: extension TalkingCallMenuManager {
extension HotelmanThen {
    /// 展示会员折扣提示弹窗
    /// - Parameters:
    ///   - index: 0：视频通话；1：音频通话
    ///   - vipPrompt: 女性呼叫VIP用户价格变动提醒
    //: private func showFemaleVIPCallAlertView(type: CallMenuType, vipPrompt: String) {
    private func overRequest(type: NameFailDefaultsSerializable, vipPrompt: String) {
        //: guard WatercourseThen.share.loginUserMode.status == AppSkinStatus.normal.rawValue else {
        guard WatercourseThen.share.loginUserMode.status == PublishWidthTotal.normal.rawValue else {
            //: self.requestCall(type: type)
            self.imageOf(type: type)
            //: return
            return
        }
        // 每个用户只展示一次
        //: var array: Array = Defaults.object(forKey: FemaleVIPCallIdsArrayKey) as? [String] ?? [String]()
        var array: Array = kLet_timeContent.object(forKey: FemaleVIPCallIdsArrayKey) as? [String] ?? [String]()
        //: if array.contains(uid ?? "") { // 已展示
        if array.contains(uid ?? "") { // 已展示
            //: self.requestCall(type: type)
            self.imageOf(type: type)
            //: return
            return
        }

        // 更新缓存, 展示视图
        //: array.append(uid ?? "")
        array.append(uid ?? "")
        //: Defaults.set(array, forKey: FemaleVIPCallIdsArrayKey)
        kLet_timeContent.set(array, forKey: FemaleVIPCallIdsArrayKey)
        //: let alert = TalkingFemaleVIPCallAlertView(type: type, content: vipPrompt)
        let alert = TableRemoveView(type: type, content: vipPrompt)
        //: alert.callBlock = { type in
        alert.callBlock = { type in
            //: self.requestCall(type: type)
            self.imageOf(type: type)
        }
        //: alert.show()
        alert.makeContent()
    }
}

// MARK: - LikeMatchDelegate, LabelObjectProtocol【音视频通话逻辑处理】

//: extension TalkingCallMenuManager: SocketManagerVideoMatchDelegate, TalkingSocketManagerErrorDelegate {
extension HotelmanThen: LikeMatchDelegate, LabelObjectProtocol {
    /// 发送音视频通话socket
    /// - Parameter type: 通话类型：0：视频通话，1：语音通话
    //: func send_socket_requestCall(type: Int) {
    func onSubstance(type: Int) {
        //: guard let uid = self.uid else {
        guard let uid = self.uid else {
            //: self.func__showStatusBarErrorMsg(showMsg: "Failed to get user information, please return and try again".localized)
            self.detailKey(showMsg: String(bytes: str_toValue.map{playerObserve(name: $0)}, encoding: .utf8)!.localized)
            //: return
            return
        }

        //: var data: [String: Any] = ["type": type, "uid": uid]
        var data: [String: Any] = [String(bytes: str_byData.reversed(), encoding: .utf8)!: type, (String(str_haveData)): uid]
        //: let index = EnableFreeCallType.nor
        let index = AlbumKeyRepresentable.nor
        //: if WatercourseThen.share.loginUserMode.freeCallTimes > 0 && WatercourseThen.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue && WatercourseThen.share.loginUserMode.sex == Gender.male.rawValue {
        if WatercourseThen.share.loginUserMode.freeCallTimes > 0 && WatercourseThen.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue && WatercourseThen.share.loginUserMode.sex == PushDownStackScalarLiteral.male.rawValue {
            //: data.updateValue(1, forKey: "fromFreeCall")
            data.updateValue(1, forKey: (String(str_contentValue) + String(str_equalBlockValue)))
            //: TalkingSocketManager.shared.isFreeCall = true
            NameSocketManager.shared.isFreeCall = true
        }
        //: let info: [String: Any] = ["cmd": "requestCall", "data": data]
        let info: [String: Any] = [String(bytes: str_downValue.map{nameScale(user: $0)}, encoding: .utf8)!: (String(str_voiceName.suffix(9)) + String(str_arrayPicAppTitle)), String(bytes: str_ofEqualName.map{$0^171}, encoding: .utf8)!: data]
        //: TalkingSocketManager.shared.sendMessage(info: info)
        NameSocketManager.shared.migration(info: info)
    }

    /// 匹配成功，可以拨打通话
    //: func socket_match_onRequestCall(data: [String: Any]) {        self.onReqestCallBlock?()
    func nudgeAll(data: [String: Any]) { self.onReqestCallBlock?()
        //: var newData = data
        var newData = data
        //: newData["uid"] = self.uid
        newData[(String(str_haveData))] = self.uid
        //: WatercourseThen.share.start1v1TalkCall(info: newData)
        WatercourseThen.share.messageSituation(info: newData)
    }

    //: func socket_match_onVideoMatch(data: [String: Any]) {}
    func coverUp(data _: [String: Any]) {}

    /// 失败处理
    //: func socket_didRecieveError(errorNo: Int, cmd: String, msg: String, data: [String: Any]) {
    func loadDown(errorNo: Int, cmd: String, msg: String, data _: [String: Any]) {
        //: if cmd == "onRequestCall" {
        if cmd == (String(str_succeedName.suffix(6)) + str_completeData.replacingOccurrences(of: "color", with: "s") + String(str_toolLabelTitle)) {
            //: self.func__showStatusBarErrorMsg(showMsg: msg)
            self.detailKey(showMsg: msg)
            //: if errorNo == VideoChatErrorCode.MoneyLack.rawValue {
            if errorNo == FactorySumLiteral.MoneyLack.rawValue {
                //: guard WatercourseThen.share.appStatus == AppSkinStatus.normal.rawValue else { return }
                guard WatercourseThen.share.appStatus == PublishWidthTotal.normal.rawValue else { return }
                //: IndoorsPushManager.share.func__jumpToWebRecharge(clickEvent: clickVideocallButton, sufficient: false)
                IndoorsPushManager.share.rechargeVideo(clickEvent: kLet_infoValue, sufficient: false)
            }
        }
    }
}
