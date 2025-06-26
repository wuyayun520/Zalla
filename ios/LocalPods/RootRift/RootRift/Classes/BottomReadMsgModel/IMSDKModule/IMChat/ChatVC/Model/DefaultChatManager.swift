
//: Declare String Begin

/*: "TalkingIntimatePhotoUnlockMsgIdArrayKey" :*/
fileprivate let str_labelName:[UInt8] = [0xbf,0x8a,0x87,0x80,0x82,0x85,0x8c,0xa2,0x85,0x9f,0x82,0x86,0x8a,0x9f,0x8e,0xbb,0x83,0x84,0x9f,0x84,0xbe,0x85,0x87,0x84,0x88,0x80,0xa6,0x98,0x8c,0xa2,0x8f,0xaa,0x99,0x99,0x8a,0x92,0xa0,0x8e,0x92]

/*: "TalkingPrivateChatVideoTipsIsShow_ :*/
fileprivate let str_liveData:[UInt8] = [0xc0,0xf5,0xf8,0xff,0xfd,0xfa,0xf3,0xc4,0xe6,0xfd,0xe2,0xf5,0xe0,0xf1,0xd7,0xfc,0xf5,0xe0,0xc2,0xfd,0xf0,0xf1,0xfb,0xc0,0xfd,0xe4,0xe7,0xdd,0xe7,0xc7,0xfc,0xfb,0xe3,0xcb]

private func instanceTime(model num: UInt8) -> UInt8 {
    return num ^ 148
}

/*: _ :*/
fileprivate let str_colorName:String = "background"

/*: "Quick greeting can only be sent to him once" :*/
fileprivate let str_modeViewAttachValue:[UInt8] = [0x78,0x5c,0x40,0x4a,0x42,0x9,0x4e,0x5b,0x4c,0x4c,0x5d,0x40,0x47,0x4e,0x9,0x4a,0x48,0x47,0x9,0x46,0x47,0x45,0x50,0x9,0x4b,0x4c,0x9,0x5a,0x4c,0x47,0x5d,0x9,0x5d,0x46,0x9,0x41,0x40,0x44,0x9,0x46,0x47,0x4a,0x4c]

private func timeName(will num: UInt8) -> UInt8 {
    return num ^ 41
}

/*: "txt" :*/
fileprivate let str_modelText:String = "sharedt"

/*: "audio" :*/
fileprivate let str_imageTitle:String = "audbackgroundo"

/*: "Please add greeting text" :*/
fileprivate let str_viewValue:String = "Pleaselet make item"
fileprivate let str_makeBlockValue:String = "ereport"
fileprivate let str_positionValue:[Character] = ["n","g"," ","t","e","x","t"]

/*: "You have not set up a photo greeting, please set it up before sending!" :*/
fileprivate let str_mentionText:[UInt8] = [0x35,0x4b,0x51,0xfc,0x44,0x3d,0x52,0x41,0xfc,0x4a,0x4b,0x50,0xfc,0x4f,0x41,0x50,0xfc,0x51,0x4c,0xfc,0x3d,0xfc,0x4c,0x44,0x4b,0x50,0x4b,0xfc,0x43,0x4e,0x41,0x41,0x50,0x45,0x4a,0x43,0x8,0xfc,0x4c,0x48,0x41,0x3d,0x4f,0x41,0xfc,0x4f,0x41,0x50,0xfc,0x45,0x50,0xfc,0x51,0x4c,0xfc,0x3e,0x41,0x42,0x4b,0x4e,0x41,0xfc,0x4f,0x41,0x4a,0x40,0x45,0x4a,0x43,0xfd]

fileprivate func rawCamera(equal num: UInt8) -> UInt8 {
    let value = Int(num) - 220
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Cancel" :*/
fileprivate let str_effectValue:String = "self size value infoCancel"

/*: "Go to set" :*/
fileprivate let str_statusText:String = "Go tgift mode view as cell"

/*: "#startTime#" :*/
fileprivate let str_remoteTitle:String = "#startclear edit"
fileprivate let str_mContent:[Character] = ["T","i","m","e","#"]

/*: "#endTime#" :*/
fileprivate let str_captureImageName:[Character] = ["#","e","n","d","T","i","m","e","#"]

/*: "text" :*/
fileprivate let str_extraSmallTitleName:[Character] = ["t","e","x","t"]

/*: "img" :*/
fileprivate let str_appColorText:[Character] = ["i","m","g"]

/*: "video" :*/
fileprivate let str_succeedContent:String = "viviewo"

/*: "gift" :*/
fileprivate let str_playManagerText:String = "gifimage"

/*: "PrivateChat 点击引用消息 :*/
fileprivate let str_dataMaxLiveTitle:String = "Privaby type voice index last"
fileprivate let str_indexName:String = "at \u{70b9}"
fileprivate let str_customContent:[Character] = ["击","引","\u{7528}","\u{6d88}","息"]

/*: ." :*/
fileprivate let str_titleContent:[Character] = ["."]

/*: "Sent " :*/
fileprivate let str_indexValue:String = "Sent if face interaction count"

/*: " x :*/
fileprivate let str_fromChannelContent:[Character] = [" ","x"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DefaultChatManager.swift
//  AbroadTalking
//
//  Created by young on 2023/1/5.
//

//: import UIKit
import UIKit

/// 一键打招呼Block
//: typealias QuickGreetingBlock = (_ errorCode: Int?, _ errorMsg: String?, _ textDict: [String: Any]?, _ audioDict: [String: Any]?) -> Void
typealias QuickGreetingBlock = (_ errorCode: Int?, _ errorMsg: String?, _ textDict: [String: Any]?, _ audioDict: [String: Any]?) -> Void

/// 图片打招呼Block
//: typealias BeautyPhotosBlock = (_ isPushSet: Bool, _ PhotoDict: [String: Any]?) -> Void
typealias BeautyPhotosBlock = (_ isPushSet: Bool, _ PhotoDict: [String: Any]?) -> Void

//: public class TalkingPrivateChatManager: NSObject {
public class DefaultChatManager: NSObject {
    /// 记录私信对端已读回执时间 [key：userID，value：对端最后已读回执时间]
    //: var readReceiptDict = [String: Int]()
    var readReceiptDict = [String: Int]()

    //: @objc static let share = TalkingPrivateChatManager()
    @objc static let share = DefaultChatManager()
    //: private override init() {}
    override private init() {}

    //: @objc let UnlockMsgIdArrayKey = "TalkingIntimatePhotoUnlockMsgIdArrayKey"  // 私密照片已解锁礼物消息数组的key
    @objc let UnlockMsgIdArrayKey = String(bytes: str_labelName.map{$0^235}, encoding: .utf8)! // 私密照片已解锁礼物消息数组的key
}

// MARK: - 插入音视频通话提示消息

//: extension TalkingPrivateChatManager {
extension DefaultChatManager {
    /// 判断是否需要插入音视频通话提示消息
    /// - Parameters:
    ///   - toUid: 对方Id
    ///   - msgView: TUI视图
    ///   - completionHandler: 回调
    //: static func chat_privateChatVideo_insertTipMsg(toUid: String, msgView: TUIMessageController, needInsertHandler: (() -> Void)?) {
    static func titleTool(toUid: String, msgView: TUIMessageController, needInsertHandler: (() -> Void)?) {
        // 非审核模式
        //: guard WatercourseThen.share.appStatus == AppSkinStatus.normal.rawValue else { return }
        guard WatercourseThen.share.appStatus == PublishWidthTotal.normal.rawValue else { return }
        // 男性
        //: guard WatercourseThen.share.loginUserMode.sex == Gender.male.rawValue else { return }
        guard WatercourseThen.share.loginUserMode.sex == PushDownStackScalarLiteral.male.rawValue else { return }

        // 是否展示过提示文案
        //: let TalkingPrivateChatVideoTipsIsShow = "TalkingPrivateChatVideoTipsIsShow_\(String(WatercourseThen.share.loginUserMode.userID))_\(toUid)"
        let TalkingPrivateChatVideoTipsIsShow = String(bytes: str_liveData.map{instanceTime(model: $0)}, encoding: .utf8)! + "\(String(WatercourseThen.share.loginUserMode.userID))_\(toUid)"
        //: let isShow = Defaults.bool(forKey: TalkingPrivateChatVideoTipsIsShow)
        let isShow = kLet_timeContent.bool(forKey: TalkingPrivateChatVideoTipsIsShow)
        //: guard isShow == false else { return }
        guard isShow == false else { return }

        // 消息达到5条
        //: guard msgView.uiMsgs.count >= 5 else { return }
        guard msgView.uiMsgs.count >= 5 else { return }

        //: var hasVoiceVideo = false
        var hasVoiceVideo = false // 是否有音视频通话消息
        //: var outgoingMsgCount = 0
        var outgoingMsgCount = 0 // 消息发送方已发送消息数量
        //: for indexModel in msgView.uiMsgs {
        for indexModel in msgView.uiMsgs {
            //: let indexModel = indexModel as? TUIMessageCellData
            let indexModel = indexModel as? TUIMessageCellData
            //: if indexModel != nil {
            if indexModel != nil {
                //: if indexModel!.isKind(of: ListCellData.self) {
                if indexModel!.isKind(of: ListCellData.self) { // 是否包含音视频文本
                    //: let textMsgModel = indexModel as! ListCellData
                    let textMsgModel = indexModel as! ListCellData
                    //: if textMsgModel.isVoiceVideo == true {
                    if textMsgModel.isVoiceVideo == true {
                        //: hasVoiceVideo = true
                        hasVoiceVideo = true
                        //: break
                        break
                    }
                }

                // 语音消息 || 文本消息 || 图片消息 || 视频消息
                //: if indexModel!.isKind(of: NameCellData.self) ||
                if indexModel!.isKind(of: NameCellData.self) ||
                    //: indexModel!.isKind(of: ListCellData.self) ||
                    indexModel!.isKind(of: ListCellData.self) ||
                    //: indexModel!.isKind(of: AutomaticallyCellData.self) ||
                    indexModel!.isKind(of: AutomaticallyCellData.self) ||
                    //: indexModel!.isKind(of: CurrentDateCellData.self) {
                    indexModel!.isKind(of: CurrentDateCellData.self)
                {
                    //: if indexModel?.direction == .MsgDirectionOutgoing {
                    if indexModel?.direction == .MsgDirectionOutgoing { // 消息发送方
                        //: outgoingMsgCount += 1
                        outgoingMsgCount += 1
                    }
                }
            }
        }

        //: guard hasVoiceVideo == false else {
        guard hasVoiceVideo == false else {
            //: Defaults.set(true, forKey: TalkingPrivateChatVideoTipsIsShow)
            kLet_timeContent.set(true, forKey: TalkingPrivateChatVideoTipsIsShow)
            //: return
            return
        }
        //: guard outgoingMsgCount >= 5 else { return }
        guard outgoingMsgCount >= 5 else { return }

        // 回调外部插入音视频提示消息
        //: if needInsertHandler != nil {
        if needInsertHandler != nil {
            //: needInsertHandler!()
            needInsertHandler!()
            //: Defaults.set(true, forKey: TalkingPrivateChatVideoTipsIsShow)
            kLet_timeContent.set(true, forKey: TalkingPrivateChatVideoTipsIsShow)
        }
    }
}

// MARK: - 一键打招呼

//: extension TalkingPrivateChatManager {
extension DefaultChatManager {
    /// 判断是否可以一键打招呼，回调结果
    /// - Parameters:
    ///   - toUserId: 接收方UserId
    ///   - handler: errorCode：1 = 已发送过；2=未添加打招呼数据;
    //: static func chat_sendQuickGreeting(toUserId: String, completionHandler: @escaping QuickGreetingBlock) {
    static func divertTable(toUserId: String, completionHandler: @escaping QuickGreetingBlock) {
        //: let key = "\(WatercourseThen.share.loginUserMode.userID)_\(TalkingSendAutoGreetIsToKey)_\(toUserId)"
        let key = "\(WatercourseThen.share.loginUserMode.userID)_\(kLet_serverData)_\(toUserId)"
        //: let ishave = UserDefaults.standard.bool(forKey: key)
        let ishave = UserDefaults.standard.bool(forKey: key)
        //: guard !ishave else {
        guard !ishave else {
            //: completionHandler(1, "Quick greeting can only be sent to him once".localized, nil, nil)
            completionHandler(1, String(bytes: str_modeViewAttachValue.map{timeName(will: $0)}, encoding: .utf8)!.localized, nil, nil)
            //: return
            return
        }

        //: ProgressHUD.show()
        AtAdView.sizeUp()
        //: HumanHeadRequestTool.req_getAutoGreetContent { succeed, result, errorModel in
        HumanHeadRequestTool.noManSLand { succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            AtAdView.toAction()
            //: guard succeed == true else {
            guard succeed == true else {
                //: if errorModel?.errorCode == 60003, !WatercourseThen.share.loginUserMode.isNaUser {
                if errorModel?.errorCode == 60003, !WatercourseThen.share.loginUserMode.isNaUser {
                    /// 真人认证提示弹窗
                    //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
                    AdministratorReactiveCompatible.shared.verification()
                    //: return
                    return
                }
                //: completionHandler(2, errorModel?.errorMsg ?? "", nil, nil)
                completionHandler(2, errorModel?.errorMsg ?? "", nil, nil)
                //: return
                return
            }
            //: guard let dict = result as? [String: Any] else {
            guard let dict = result as? [String: Any] else {
                //: completionHandler(2, "", nil, nil)
                completionHandler(2, "", nil, nil)
                //: return
                return
            }
            //: let textDict = dict["txt"] as? [String: Any]
            let textDict = dict[(str_modelText.replacingOccurrences(of: "shared", with: "tx"))] as? [String: Any]
            //: let audioDict = dict["audio"] as? [String: Any]
            let audioDict = dict[(str_imageTitle.replacingOccurrences(of: "background", with: "i"))] as? [String: Any]
            //: if textDict?.count == 0 && audioDict?.count == 0 {
            if textDict?.count == 0, audioDict?.count == 0 {
                //: completionHandler(2, "Please add greeting text".localized, nil, nil)
                completionHandler(2, (String(str_viewValue.prefix(6)) + " add gre" + str_makeBlockValue.replacingOccurrences(of: "report", with: "ti") + String(str_positionValue)).localized, nil, nil)
                //: return
                return
            }

            // 一键打招呼本地存储
            //: chat_changeSaveGreetData(toUserId: toUserId, isHave: true)
            panoramicView(toUserId: toUserId, isHave: true)
            //: completionHandler(nil, nil, textDict, audioDict)
            completionHandler(nil, nil, textDict, audioDict)
        }
    }

    /// 一键打招呼状态本地存储
    /// - Parameters:
    ///   - toUserId: 接收方UserId
    ///   - isHave: 是否已发送
    //: static func chat_changeSaveGreetData(toUserId: String, isHave: Bool) {
    static func panoramicView(toUserId: String, isHave: Bool) {
        // 一键打招呼本地cunc
        //: let key = "\(WatercourseThen.share.loginUserMode.userID)_\(TalkingSendAutoGreetIsToKey)_\(toUserId)"
        let key = "\(WatercourseThen.share.loginUserMode.userID)_\(kLet_serverData)_\(toUserId)"
        //: UserDefaults.standard.set(isHave, forKey: key)
        UserDefaults.standard.set(isHave, forKey: key)
    }

    /// 图片打招呼
    /// - Parameters:
    ///   - toUserId: 接收方UserId
    ///   - handler: errorCode：1 = 已发送过；2=未添加打招呼数据；
    //: static func chat_sendBeautyPhotos(toUserId: String, completionHandler: @escaping BeautyPhotosBlock) {
    static func operation(toUserId: String, completionHandler: @escaping BeautyPhotosBlock) {
        //: ProgressHUD.show()
        AtAdView.sizeUp()
        //: HumanHeadRequestTool.req_getIntimatePhoto(toUid: toUserId) { succeed, result, errorModel in
        HumanHeadRequestTool.getThemeToCloseStereoscopicPhotograph(toUid: toUserId) { succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            AtAdView.toAction()
            /// 未添加打招呼图片
            //: if errorModel?.errorCode == 111 {
            if errorModel?.errorCode == 111 {
                //: let config = ShowAlertConfig()
                let config = ReloadAlertConfig()
                //: config.alignment = .center
                config.alignment = .center
                //: if TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
                if GazetteThen.share.interfaceLang == AssemblyPlantMirrorPath.pt.rawValue {
                    //: config.width = 330
                    config.width = 330
                }
                //: TalkingAlertShow.customAlert(message: "You have not set up a photo greeting, please set it up before sending!".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Go to set".localized, leftBlock: {
                AlongThen.jumpTime(message: String(bytes: str_mentionText.map{rawCamera(equal: $0)}, encoding: .utf8)!.localized, leftBtnTitle: (String(str_effectValue.suffix(6))).localized, rightBtnTitle: (String(str_statusText.prefix(4)) + "o set").localized, leftBlock: {
                    //: TalkingAlertShow.hideAlert()
                    AlongThen.teachingMethod()

                    //: }, rightBlock: {
                }, rightBlock: {
                    //: TalkingAlertShow.hideAlert()
                    AlongThen.teachingMethod()
                    //: completionHandler(true, nil)
                    completionHandler(true, nil)
                    //: }, config: config)
                }, config: config)
                //: return
                return
                    //: } else if errorModel?.errorCode == 60003, !WatercourseThen.share.loginUserMode.isNaUser {
            } else if errorModel?.errorCode == 60003, !WatercourseThen.share.loginUserMode.isNaUser {
                /// 真人认证提示弹窗
                //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
                AdministratorReactiveCompatible.shared.verification()
                //: return
                return
            }
            //: if succeed {
            if succeed {
                //: guard let dict = result as? [String: Any] else {
                guard let dict = result as? [String: Any] else {
                    //: return
                    return
                }
                //: completionHandler(false, dict)
                completionHandler(false, dict)
            }
        }
    }
}

// MARK: - 插入与官方客服聊天提示消息

//: extension TalkingPrivateChatManager {
extension DefaultChatManager {
    ///  判断是否需要插入与官方客服聊天提示消息
    /// - Parameter needInsertHandler: 回调
    //: static func chat_customerServiceCenter_insertTipMsg(needInsertHandler: ((_ tipsStr: String?) -> Void)?) {
    static func detailHandler(needInsertHandler: ((_ tipsStr: String?) -> Void)?) {
        //: guard WatercourseThen.share.appConfigMode.CSConfig.systemTips.count > 0 else {
        guard WatercourseThen.share.appConfigMode.CSConfig.systemTips.count > 0 else { // 接口没下发，无需提示
            //: if needInsertHandler != nil {
            if needInsertHandler != nil {
                //: needInsertHandler!(nil)
                needInsertHandler!(nil)
            }
            //: return
            return
        }

        // 根据设备所在时区转换时间
        //: let startTime = NSDate.getCurrentZoneDateString(shDateStr: WatercourseThen.share.appConfigMode.CSConfig.startTime)
        let startTime = NSDate.dueDateGroup(shDateStr: WatercourseThen.share.appConfigMode.CSConfig.startTime)
        //: let endTime = NSDate.getCurrentZoneDateString(shDateStr: WatercourseThen.share.appConfigMode.CSConfig.endTime)
        let endTime = NSDate.dueDateGroup(shDateStr: WatercourseThen.share.appConfigMode.CSConfig.endTime)
        //: let isIncluded = NSDate.compareCurrentTimeIsIncluded(startTime: startTime, endTime: endTime)
        let isIncluded = NSDate.example(startTime: startTime, endTime: endTime)

        //: guard isIncluded == false else {
        guard isIncluded == false else {
            //: if needInsertHandler != nil {
            if needInsertHandler != nil {
                //: needInsertHandler!(nil)
                needInsertHandler!(nil)
            }
            //: return
            return
        }

        // 非工作时间段内，添加提示
        //: var tips = WatercourseThen.share.appConfigMode.CSConfig.systemTips
        var tips = WatercourseThen.share.appConfigMode.CSConfig.systemTips
        //: tips = tips.replacingOccurrences(of: "#startTime#", with: "\(startTime)")
        tips = tips.replacingOccurrences(of: (String(str_remoteTitle.prefix(6)) + String(str_mContent)), with: "\(startTime)")
        //: tips = tips.replacingOccurrences(of: "#endTime#", with: "\(endTime)")
        tips = tips.replacingOccurrences(of: (String(str_captureImageName)), with: "\(endTime)")
        //: if needInsertHandler != nil {
        if needInsertHandler != nil {
            //: needInsertHandler!(tips)
            needInsertHandler!(tips)
        }
    }
}

// MARK: - 刷新私密消息（照片、视频）展示状态

//: extension TalkingPrivateChatManager {
extension DefaultChatManager {
    /// 接收到解锁私密消息（照片、视频）的礼物，刷新本地消息状态
    /// - Parameters:
    ///   - cellData: 数据
    ///   - msgView: TUI视图
    //: static func chat_onNewMessage_refreshLocalIntimateMsgStatus(cellData: TUIMessageCellData, msgView: TUIMessageController) {
    static func black(cellData: TUIMessageCellData, msgView: TUIMessageController) {
        //: guard msgView.uiMsgs.count > 0 else {
        guard msgView.uiMsgs.count > 0 else {
            // --------- 【外部页面】收到了解锁礼物消息 ---------
            // 首次进入到当前页面，刷新消息状态
            //: var array = Defaults.object(forKey: TalkingPrivateChatManager.share.UnlockMsgIdArrayKey) as? [String]
            var array = kLet_timeContent.object(forKey: DefaultChatManager.share.UnlockMsgIdArrayKey) as? [String]

            // 本地有私密消息解锁礼物缓存，且是图片消息 或 视频消息
            //: guard array?.count ?? 0 > 0 &&
            guard array?.count ?? 0 > 0,
                  //: (cellData.isKind(of: AutomaticallyCellData.self) ||
                  cellData.isKind(of: AutomaticallyCellData.self) ||
                  //: cellData.isKind(of: CurrentDateCellData.self)) else { return }
                  cellData.isKind(of: CurrentDateCellData.self) else { return }

            // 找到本人发送的私密消息，更新状态为已解锁
            //: if array!.contains(cellData.msgModel.msgInfo.msgId) {
            if array!.contains(cellData.msgModel.msgInfo.msgId) {
                //: inner_changeIntimateMsg(cellData, msgView)
                viewOfTo(cellData, msgView)

                // 更新本地缓存
                //: array!.removeAll(where: { $0 == cellData.msgModel.msgInfo.msgId })
                array!.removeAll(where: { $0 == cellData.msgModel.msgInfo.msgId })
                //: Defaults.set(array, forKey: TalkingPrivateChatManager.share.UnlockMsgIdArrayKey)
                kLet_timeContent.set(array, forKey: DefaultChatManager.share.UnlockMsgIdArrayKey)
            }

            //: return
            return
        }

        //  --------- 在【当前页面】收到解锁礼物消息 ---------
        // 只有收到礼物解锁消息才刷新
        //: guard cellData.isKind(of: TableCellData.self) && cellData.msgModel.gift.unlockMsgId.count > 0 else { return }
        guard cellData.isKind(of: TableCellData.self), cellData.msgModel.gift.unlockMsgId.count > 0 else { return }

        // 找到本人发送的私密消息，更新状态为已解锁
        //: let unlockMsgId = cellData.msgModel.gift.unlockMsgId
        let unlockMsgId = cellData.msgModel.gift.unlockMsgId
        //: for msgCellData in msgView.uiMsgs {
        for msgCellData in msgView.uiMsgs {
            //: let data = msgCellData as! TUIMessageCellData
            let data = msgCellData as! TUIMessageCellData
            //: if data.msgModel.msgInfo.msgId == unlockMsgId {
            if data.msgModel.msgInfo.msgId == unlockMsgId {
                //: inner_changeIntimateMsg(data, msgView)
                viewOfTo(data, msgView)
                //: break
                break
            }
        }
    }

    /// 刷新本地消息状态
    /// - Parameters:
    ///   - cellData: 数据
    ///   - msgView: TUI视图
    //: static private func inner_changeIntimateMsg(_ cellData: TUIMessageCellData, _ msgView: TUIMessageController) {
    private static func viewOfTo(_ cellData: TUIMessageCellData, _ msgView: TUIMessageController) {
        //: if cellData.isKind(of: AutomaticallyCellData.self) {
        if cellData.isKind(of: AutomaticallyCellData.self) { // 私密照片
            //: let model = cellData.msgModel.msgInfo.intimatePhoto
            let model = cellData.msgModel.msgInfo.intimatePhoto
            //: if model.lockStatus != 0 {
            if model.lockStatus != 0 {
                //: model.lockStatus = 0
                model.lockStatus = 0
                //: msgView.changeIntimatePhotoMsg(cellData, photoModel: model)
                msgView.changeIntimatePhotoMsg(cellData, photoModel: model)
            }

            //: } else if cellData.isKind(of: CurrentDateCellData.self) {
        } else if cellData.isKind(of: CurrentDateCellData.self) { // 私密视频
            //: let model = cellData.msgModel.msgInfo.video
            let model = cellData.msgModel.msgInfo.video
            //: if model.lockStatus != 0 {
            if model.lockStatus != 0 {
                //: model.lockStatus = 0
                model.lockStatus = 0
                //: msgView.changeIntimateVideoMsg(cellData, videoModel: model)
                msgView.changeIntimateVideoMsg(cellData, videoModel: model)
            }
        }
    }
}

// MARK: - 未回复Reply to get points~逻辑

//: extension TalkingPrivateChatManager {
extension DefaultChatManager {
    /// 女性记录最新回复时间, 刷新表格
    /// - Parameters:
    ///   - cellData: 数据
    ///   - msgView: TUI视图
    //: static func updateReplyLatestTimeAndReload(_ msgIncome: CGFloat, _ msgTime: Date?, _ msgView: TUIMessageController) {
    static func answer(_ msgIncome: CGFloat, _ msgTime: Date?, _ msgView: TUIMessageController) {
        //: guard WatercourseThen.share.loginUserMode.sex == Gender.female.rawValue else { return }
        guard WatercourseThen.share.loginUserMode.sex == PushDownStackScalarLiteral.female.rawValue else { return }
        //: guard msgIncome > 0 else { return }
        guard msgIncome > 0 else { return }
        //: guard let msgTime = msgTime else { return }
        guard let msgTime = msgTime else { return }
        //: guard TalkingPrivateChatController.replyLatestTimes.compare(msgTime) == .orderedAscending else { return }
        guard RawControllerDelegate.replyLatestTimes.compare(msgTime) == .orderedAscending else { return }
        //: TalkingPrivateChatController.replyLatestTimes = msgTime
        RawControllerDelegate.replyLatestTimes = msgTime
        //: msgView.tableView.reloadData()
        msgView.tableView.reloadData()
    }

    /// 判断是否展示未回复付费消息提示
    //: @objc public static func needShowReplyTipsMessage(_ direction: TMsgDirection, msgType: Int, msgTime: Date?) -> Bool {
    @objc public static func churnOut(_ direction: TMsgDirection, msgType: Int, msgTime: Date?) -> Bool {
        //: guard WatercourseThen.share.loginUserMode.sex == Gender.female.rawValue else { return false }
        guard WatercourseThen.share.loginUserMode.sex == PushDownStackScalarLiteral.female.rawValue else { return false }
        //: guard direction == .MsgDirectionIncoming else { return false }
        guard direction == .MsgDirectionIncoming else { return false }
        //: guard let msgTime = msgTime else { return false }
        guard let msgTime = msgTime else { return false }
        //: guard TalkingPrivateChatController.replyLatestTimes.compare(msgTime) == .orderedAscending else { return false }
        guard RawControllerDelegate.replyLatestTimes.compare(msgTime) == .orderedAscending else { return false }
        //: guard TalkingPrivateChatManager.isReplyToGetPointsMsg(direction, msgType, msgTime: msgTime) else { return false }
        guard DefaultChatManager.sumernalRepresentation(direction, msgType, msgTime: msgTime) else { return false }
        //: return true
        return true
    }

    /// 是否是回复获取积分消息
    /// - Parameters:
    ///   - direction: 消息方向
    ///   - msgType: 消息类型
    ///   - msgTime: 消息时间
    /// - Returns: 结果
    //: static func isReplyToGetPointsMsg(_ direction: TMsgDirection, _ msgType: Int, msgTime: Date?) -> Bool {
    static func sumernalRepresentation(_ direction: TMsgDirection, _ msgType: Int, msgTime: Date?) -> Bool {
        // 非审核模式, messageType == 5, 时间<24小时
        //: guard WatercourseThen.share.appStatus == AppSkinStatus.normal.rawValue else { return false }
        guard WatercourseThen.share.appStatus == PublishWidthTotal.normal.rawValue else { return false }
        //: guard direction == .MsgDirectionIncoming else { return false }
        guard direction == .MsgDirectionIncoming else { return false }
        //: guard msgType == 5 else { return false }
        guard msgType == 5 else { return false }
        //: guard let msgTime = msgTime else { return false }
        guard let msgTime = msgTime else { return false }
        //: guard Date().timeIntervalSince(msgTime) < 24*60*60 else { return false }
        guard Date().timeIntervalSince(msgTime) < 24 * 60 * 60 else { return false }
        //: return true
        return true
    }
}

// MARK: - VIP展示消息已读逻辑

//: extension TalkingPrivateChatManager {
extension DefaultChatManager {
    /// 是否需要插入已读回执引导充值VIP提醒消息
    /// - Parameter cellData: 消息数据
    /// - Returns: 结果
    //: static func needInsertVIPReadReceiptMsg(cellData: TUIMessageCellData) -> Bool {
    static func constituentName(cellData: TUIMessageCellData) -> Bool {
        //: if WatercourseThen.share.loginUserMode.loungePlus == false,
        if WatercourseThen.share.loginUserMode.loungePlus == false,
           //: cellData.innerMessage.groupID == nil,
           cellData.innerMessage.groupID == nil,
           //: cellData.status == .Msg_Status_Succ,
           cellData.status == .Msg_Status_Succ,
           //: cellData.direction == .MsgDirectionOutgoing,
           cellData.direction == .MsgDirectionOutgoing,
           //: cellData.msgModel.msgInfo.callCmd.count <= 0 {
           cellData.msgModel.msgInfo.callCmd.count <= 0
        {
            //: return true
            return true
        }
        //: return false
        return false
    }

    /// 是否展示消息 已读/未读 标识
    /// - Parameter cellData: 消息数据
    /// - Returns: 结果
    //: static func isShowReadMsg(cellData: TUIMessageCellData) -> Bool {
    static func quantityerpretation(cellData: TUIMessageCellData) -> Bool {
        // vip && 非群聊 && 发送成功 && 本人发送 && 非音视频通话文本消息，展示消息是否已读标识
        //: if WatercourseThen.share.loginUserMode.loungePlus == true,
        if WatercourseThen.share.loginUserMode.loungePlus == true,
           //: cellData.innerMessage.groupID == nil,
           cellData.innerMessage.groupID == nil,
           //: cellData.status == .Msg_Status_Succ,
           cellData.status == .Msg_Status_Succ,
           //: cellData.direction == .MsgDirectionOutgoing,
           cellData.direction == .MsgDirectionOutgoing,
           //: cellData.msgModel.msgInfo.callCmd.count <= 0 {
           cellData.msgModel.msgInfo.callCmd.count <= 0
        {
            //: return true
            return true
        }
        //: return false
        return false
    }

    /// 消息对方是否已读
    /// - Parameter cellData: 消息数据
    /// - Returns: 结果
    //: static func msgIsRead(cellData: TUIMessageCellData) -> Bool {
    static func mvp(cellData: TUIMessageCellData) -> Bool {
        //: guard let selfMsgTime = cellData.innerMessage.timestamp else { return false }
        guard let selfMsgTime = cellData.innerMessage.timestamp else { return false }
        //: if cellData.innerMessage.isPeerRead == true {
        if cellData.innerMessage.isPeerRead == true {
            //: return true
            return true
        }
        //: let readTimeInterval = TalkingPrivateChatManager.share.readReceiptDict[cellData.innerMessage.userID] ?? 0
        let readTimeInterval = DefaultChatManager.share.readReceiptDict[cellData.innerMessage.userID] ?? 0
        //: let readTime = Date(timeIntervalSince1970: TimeInterval(readTimeInterval))
        let readTime = Date(timeIntervalSince1970: TimeInterval(readTimeInterval))
        //: if selfMsgTime <= readTime {
        if selfMsgTime <= readTime {
            //: return true
            return true
        }
        //: return false
        return false
    }
}

// MARK: - Reply消息逻辑

//: extension TalkingPrivateChatManager {
extension DefaultChatManager {
    /// 回复消息
    /// - Parameters:
    ///   - cellData: 数据
    ///   - targetId: 对方uid
    /// - Returns: 引用消息模型
    //: static func handleReplyMsg(cellData: TUIMessageCellData, targetId: String) -> AbTalkingChatMsgQuoteModel {
    static func inputTitle(cellData: TUIMessageCellData, targetId: String) -> ToModel {
        //: let quoteModel = AbTalkingChatMsgQuoteModel()
        let quoteModel = ToModel()
        //: quoteModel.msgId = cellData.msgModel.msgInfo.msgId
        quoteModel.msgId = cellData.msgModel.msgInfo.msgId
        //: if cellData.direction == .MsgDirectionIncoming {
        if cellData.direction == .MsgDirectionIncoming {
            //: quoteModel.uid = targetId
            quoteModel.uid = targetId
            //: } else {
        } else {
            //: quoteModel.uid = WatercourseThen.share.loginUserMode.userID
            quoteModel.uid = WatercourseThen.share.loginUserMode.userID
        }
        //: let renderData = AbTalkingChatMsgQuoteDataModel()
        let renderData = ListModel()
        //: if cellData.isKind(of: ListCellData.self) {
        if cellData.isKind(of: ListCellData.self) {
            //: quoteModel.renderType = "text"
            quoteModel.renderType = (String(str_extraSmallTitleName))
            //: renderData.content = cellData.msgModel.msgInfo.content
            renderData.content = cellData.msgModel.msgInfo.content

            //: } else if cellData.isKind(of: AutomaticallyCellData.self) {
        } else if cellData.isKind(of: AutomaticallyCellData.self) {
            //: quoteModel.renderType = "img"
            quoteModel.renderType = (String(str_appColorText))
            //: renderData.previewUrl = cellData.msgModel.msgInfo.imageUri
            renderData.previewUrl = cellData.msgModel.msgInfo.imageUri

            //: } else if cellData.isKind(of: CurrentDateCellData.self) {
        } else if cellData.isKind(of: CurrentDateCellData.self) {
            //: quoteModel.renderType = "video"
            quoteModel.renderType = (str_succeedContent.replacingOccurrences(of: "view", with: "de"))
            //: renderData.videoUrl = cellData.msgModel.msgInfo.video.videoUrl
            renderData.videoUrl = cellData.msgModel.msgInfo.video.videoUrl
            //: renderData.coverUrl = cellData.msgModel.msgInfo.video.coverImg
            renderData.coverUrl = cellData.msgModel.msgInfo.video.coverImg

            //: } else if cellData.isKind(of: NameCellData.self) {
        } else if cellData.isKind(of: NameCellData.self) {
            //: let audioCelldata = cellData as! NameCellData
            let audioCelldata = cellData as! NameCellData
            //: quoteModel.renderType = "audio"
            quoteModel.renderType = (str_imageTitle.replacingOccurrences(of: "background", with: "i"))
            //: let voiceCache = UtiliserThen.cache_getAudioDB(message: audioCelldata.innerMessage)
            let voiceCache = UtiliserThen.link(message: audioCelldata.innerMessage)
            //: renderData.duration = Int(voiceCache.db_audioLength) ?? 0
            renderData.duration = Int(voiceCache.db_audioLength) ?? 0

            //: } else if cellData.isKind(of: TableCellData.self) {
        } else if cellData.isKind(of: TableCellData.self) {
            //: quoteModel.renderType = "gift"
            quoteModel.renderType = (str_playManagerText.replacingOccurrences(of: "image", with: "t"))
            //: let giftCellData = cellData as! TableCellData
            let giftCellData = cellData as! TableCellData
            //: renderData.giftName = giftCellData.msgModel.gift.name
            renderData.giftName = giftCellData.msgModel.gift.name
            //: renderData.giftNameI18n = giftCellData.msgModel.gift.nameI18n
            renderData.giftNameI18n = giftCellData.msgModel.gift.nameI18n
            //: renderData.giftIcon = giftCellData.msgModel.gift.imgPreview
            renderData.giftIcon = giftCellData.msgModel.gift.imgPreview
            //: renderData.giftPrice = giftCellData.msgModel.gift.price
            renderData.giftPrice = giftCellData.msgModel.gift.price
            //: renderData.giftNum = Int(giftCellData.msgModel.gift.num) ?? 0
            renderData.giftNum = Int(giftCellData.msgModel.gift.num) ?? 0
        }

        //: quoteModel.renderData = renderData
        quoteModel.renderData = renderData
        //: return quoteModel
        return quoteModel
    }

    /// 点击“引用”消息
    /// - Parameters:
    ///   - cellData: 数据
    ///   - targetId: 对方uid
    //: static func handleClickReplyMsg(cellData: TUIMessageCellData, targetId: String) {
    static func temporary(cellData: TUIMessageCellData, targetId: String) {
        //: let renderData = cellData.msgModel.quoteMsgInfo
        let renderData = cellData.msgModel.quoteMsgInfo
        //: UploadLogTool.writeLog(msg: "PrivateChat 点击引用消息\(renderData.renderType).")
        EnableReactiveCompatible.nameBy(msg: (String(str_dataMaxLiveTitle.prefix(5)) + "teCh" + str_indexName + String(str_customContent)) + "\(renderData.renderType).")
        //: if renderData.renderType == "text" {
        if renderData.renderType == (String(str_extraSmallTitleName)) {
            //: let popView = QuoteDetailPopView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let popView = AtThen(frame: CGRect(x: 0, y: 0, width: kLet_scaleName, height: kLet_environmentText))
            //: popView.msgDetailText = renderData.renderData.content
            popView.msgDetailText = renderData.renderData.content
            //: popView.show()
            popView.tight()

            //: } else if renderData.renderType == "img" {
        } else if renderData.renderType == (String(str_appColorText)) {
            //: let libraryPath = NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first!
            let libraryPath = NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first!
            //: var filePath = (libraryPath as NSString).appendingPathComponent(imageFileName)
            var filePath = (libraryPath as NSString).appendingPathComponent(kLet_seatContent)
            //: filePath = (filePath as NSString).appendingPathComponent((renderData.renderData.previewUrl as NSString).lastPathComponent)
            filePath = (filePath as NSString).appendingPathComponent((renderData.renderData.previewUrl as NSString).lastPathComponent)

            //: var model = TalkingMomentPhotoModel.init()
            var model = OnModelType()
            //: if FileManager.default.fileExists(atPath: filePath) {
            if FileManager.default.fileExists(atPath: filePath) {
                //: let data = NSData.init(contentsOfFile: filePath)
                let data = NSData(contentsOfFile: filePath)
                //: model.imagePic = UIImage(data: data! as Data)
                model.imagePic = UIImage(data: data! as Data)
                //: } else {
            } else {
                //: model.imgUrl =  renderData.renderData.previewUrl
                model.imgUrl = renderData.renderData.previewUrl
            }
            //: var currenModel = TalkingMomentModel.init()
            var currenModel = CellMomentModel()
            //: var tempArr: [TalkingMomentPhotoModel] = []
            var tempArr: [OnModelType] = []
            //: tempArr.append(model)
            tempArr.append(model)
            //: currenModel.pic = tempArr
            currenModel.pic = tempArr
            //: let vc = TalkingMomentPhotosVC.init(momentModel: currenModel, index: 0, type: .normal)
            let vc = EleventhHourPhotosVc(momentModel: currenModel, index: 0, type: .normal)
            //: TalkingPrivateChatManager.share.getNavigationController()?.pushViewController(vc, animated: true)
            DefaultChatManager.share.trimDown()?.pushViewController(vc, animated: true)

            //: } else if renderData.renderType == "video" {
        } else if renderData.renderType == (str_succeedContent.replacingOccurrences(of: "view", with: "de")) {
            //: let videoPath = renderData.renderData.videoUrl
            let videoPath = renderData.renderData.videoUrl
            //: let vc = TalkingMomentVideoVC.init(videoPath: videoPath)
            let vc = UnheardOfViewDelegate(videoPath: videoPath)
            //: TalkingPrivateChatManager.share.getNavigationController()?.pushViewController(vc, animated: true)
            DefaultChatManager.share.trimDown()?.pushViewController(vc, animated: true)

            //: } else if renderData.renderType == "audio" {
        } else if renderData.renderType == (str_imageTitle.replacingOccurrences(of: "background", with: "i")) {
            //: let cacheWrap = FlushScaleMsgTable.db_getVoiceMsg(with: renderData.msgId)
            let cacheWrap = FlushScaleMsgTable.sharedBlock(with: renderData.msgId)
            //: let playModel = TalkingVoiceMsgPlayModel()
            let playModel = AutomaticallyTalkingThen()
            //: if cacheWrap != nil {
            if cacheWrap != nil {
                //: playModel.db_voiceCacheWrap = cacheWrap!
                playModel.db_voiceCacheWrap = cacheWrap!

                //: } else {
            } else {
                //: let model = FlushScaleMsgTable()
                let model = FlushScaleMsgTable()
                //: model.msgId = renderData.msgId
                model.msgId = renderData.msgId
                //: model.db_voiceUri = renderData.renderData.url
                model.db_voiceUri = renderData.renderData.url
                //: model.db_senduid = renderData.uid
                model.db_senduid = renderData.uid
                //: if renderData.uid == WatercourseThen.share.loginUserMode.userID {
                if renderData.uid == WatercourseThen.share.loginUserMode.userID {
                    //: model.db_touid = targetId
                    model.db_touid = targetId
                    //: } else {
                } else {
                    //: model.db_touid = WatercourseThen.share.loginUserMode.userID
                    model.db_touid = WatercourseThen.share.loginUserMode.userID
                }
                //: model.db_audioLength = "\(renderData.renderData.duration)"
                model.db_audioLength = "\(renderData.renderData.duration)"
                //: FlushScaleMsgTable.db_insertVoiceMsg(model)
                FlushScaleMsgTable.titleTo(model)
                //: playModel.db_voiceCacheWrap = model
                playModel.db_voiceCacheWrap = model
            }

            //: TalkingVoiceMsgPlayManager.shared.stopAudioPlayer()
            EqualBottomManagerDelegate.shared.upwardlyPlayer()
            //: TalkingVoiceMsgPlayManager.shared.starPlayReplyMsg(playModel: playModel)
            EqualBottomManagerDelegate.shared.userTip(playModel: playModel)

            //: } else if renderData.renderType == "gift" {
        } else if renderData.renderType == (str_playManagerText.replacingOccurrences(of: "image", with: "t")) {
            //: let popView = QuoteDetailPopView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let popView = AtThen(frame: CGRect(x: 0, y: 0, width: kLet_scaleName, height: kLet_environmentText))
            //: popView.msgDetailText = "Sent ".localized + renderData.renderData.giftNameLocal() + " x\(renderData.renderData.giftNum)"
            popView.msgDetailText = (String(str_indexValue.prefix(5))).localized + renderData.renderData.sumimate() + " x\(renderData.renderData.giftNum)"
            //: popView.show()
            popView.tight()
        }
    }
}

// MARK: - Event

//: extension TalkingPrivateChatManager {
extension DefaultChatManager {
    /// 检测用户短视频版本是否可用【> = 1.1.6 可用】
    /// - Returns: 是否可用
    //: static func checkShortVideo(userVersion: String) -> Bool {
    static func utilizerUp(userVersion: String) -> Bool {
        //: guard let version = Int(userVersion.replacingOccurrences(of: ".", with: "")) else {
        guard let version = Int(userVersion.replacingOccurrences(of: ".", with: "")) else {
            //: return false
            return false
        }
        //: if version*100 < 116*100 {
        if version * 100 < 116 * 100 {
            //: return false
            return false
        }

        //: return true
        return true
    }
}
