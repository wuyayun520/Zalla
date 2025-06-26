
//: Declare String Begin

/*: "PARTY_STATUS_CHANGE_NOTIFICATION" :*/
fileprivate let str_actionData:[UInt8] = [0xfd,0xec,0xff,0xf9,0xf4,0xf2,0xfe,0xf9,0xec,0xf9,0xf8,0xfe,0xf2,0xee,0xe5,0xec,0xe3,0xea,0xe8,0xf2,0xe3,0xe2,0xf9,0xe4,0xeb,0xe4,0xee,0xec,0xf9,0xe4,0xe2,0xe3]

/*: "p- :*/
fileprivate let str_giftText:[Character] = ["p","-"]

/*: - :*/
fileprivate let str_toData:String = "-"

/*: "redirectUrl" :*/
fileprivate let str_withTopContent:[Character] = ["r"]
fileprivate let str_fileTitle:String = "scaledirscale"

/*: "VOICEROOM: 进房模型解析失败。" :*/
fileprivate let str_intimateTitle:String = "pushOICEROO"
fileprivate let str_equalSValue:String = "to"
fileprivate let str_collectionText:String = ": \u{8fdb}房模"

/*: "Party room exception" :*/
fileprivate let str_voiceValue:String = "Parttype back view"
fileprivate let str_labContent:String = " exceptrange user value"
fileprivate let str_blankData:String = "ION"

/*: _ :*/
fileprivate let str_indexValue:String = "_"

/*: "male" :*/
fileprivate let str_selectedData:[UInt8] = [0x36,0x2a,0x35,0x2e]

fileprivate func analogDigitalConverter(view num: UInt8) -> UInt8 {
    let value = Int(num) - 201
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "female" :*/
fileprivate let str_textName:String = "femleadingle"

/*: "VOICEROOM: 群聊进房失败。groupId:  :*/
fileprivate let str_dataAData:String = "VOlightE"
fileprivate let str_pushValue:String = "进房失\u{8d25}"
fileprivate let str_borderValue:String = "can guard share view。gro"

/*: ." :*/
fileprivate let str_giftData:String = "."

/*: "VOICEROOM: 切房模型解析失败。" :*/
fileprivate let str_centerText:[Character] = ["V","O","I","C","E","R","O","O","M",":"," ","切","房","模","型","解","析","失","败","。"]

/*: "VOICEROOM: 群聊切房失败。groupId:  :*/
fileprivate let str_eventSkinTitle:[Character] = ["V","O","I","C","E","R","O","O","M",":"]
fileprivate let str_succeedName:String = " 群聊切\u{623f}"
fileprivate let str_equalName:String = "manageroup"

/*: "errCode" :*/
fileprivate let str_currentData:[UInt8] = [0x8a,0x97,0x97,0x68,0x94,0x89,0x8a]

fileprivate func flushQuote(text num: UInt8) -> UInt8 {
    let value = Int(num) + 219
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "custom_kickout_message" :*/
fileprivate let str_priorityValue:String = "if countcustom_k"
fileprivate let str_bringValue:[Character] = ["i","c","k","o","u","t","_","m","e"]
fileprivate let str_fromValue:String = "ssaobject"

/*: "closeRoom" :*/
fileprivate let str_currentText:[Character] = ["c","l","o","s","e","R","o","o","m"]

/*: "adminCloseRoom" :*/
fileprivate let str_backgroundData:String = "acontainermin"
fileprivate let str_saveSizeData:[Character] = ["R","o","o","m"]

/*: "The room is closed, please go to another room" :*/
fileprivate let str_selectedTitle:[UInt8] = [0x48,0x5c,0x59,0x14,0x66,0x63,0x63,0x61,0x14,0x5d,0x67,0x14,0x57,0x60,0x63,0x67,0x59,0x58,0x20,0x14,0x64,0x60,0x59,0x55,0x67,0x59,0x14,0x5b,0x63,0x14,0x68,0x63,0x14,0x55,0x62,0x63,0x68,0x5c,0x59,0x66,0x14,0x66,0x63,0x63,0x61]

fileprivate func viewDataPlay(conversation num: UInt8) -> UInt8 {
    let value = Int(num) + 12
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "OK" :*/
fileprivate let str_skipData:String = "ok"

/*: "You were kicked out of the room" :*/
fileprivate let str_userScreenAName:[UInt8] = [0xb8,0x8e,0x94,0xc1,0x96,0x84,0x93,0x84,0xc1,0x8a,0x88,0x82,0x8a,0x84,0x85,0xc1,0x8e,0x94,0x95,0xc1,0x8e,0x87,0xc1,0x95,0x89,0x84,0xc1,0x93,0x8e,0x8e,0x8c]

private func sharedMode(succeed num: UInt8) -> UInt8 {
    return num ^ 225
}

/*: "VOICEROOM：进房失败，roomID:  :*/
fileprivate let str_closedValue:String = "VmakeICERmakemakeM"
fileprivate let str_userItemValue:String = "\u{ff1a}进房失\u{8d25}，"
fileprivate let str_pathName:String = "row view final portion blockID: "

/*: , error:  :*/
fileprivate let str_upValue:[Character] = [","," ","e","r","r","o","r",":"]
fileprivate let str_modelContent:[Character] = [" "]

/*: , reason:  :*/
fileprivate let str_tableContent:[Character] = [","," ","r","e","a","s","o","n",":"," "]

/*: , extendedData:  :*/
fileprivate let str_keyPushTitle:[Character] = [","," ","e","x","t","e","n","d","e","d","D","a","t","a",":"," "]

/*: "VOICEROOM: 当前用户推流失败，roomID:  :*/
fileprivate let str_enableData:String = "VOIcloudE"
fileprivate let str_mediumValue:String = ": 当前用户button"
fileprivate let str_textValue:String = "\u{6d41}\u{5931}败，"
fileprivate let str_toText:String = "ID: case else"

/*: , errorCode:  :*/
fileprivate let str_addData:String = "right if, err"
fileprivate let str_giftManagerValue:[Character] = ["o"]
fileprivate let str_frameData:[Character] = ["r","C","o","d","e",":"," "]

/*: , streamID:  :*/
fileprivate let str_statusTitle:String = "view menu, str"
fileprivate let str_myData:String = "else of typeeamID: "

/*: "An error occurred, please try again" :*/
fileprivate let str_tableValue:[UInt8] = [0x8e,0xbb,0x6d,0xb2,0xbf,0xbf,0xbc,0xbf,0x6d,0xbc,0xb0,0xb0,0xc2,0xbf,0xbf,0xb2,0xb1,0x79,0x6d,0xbd,0xb9,0xb2,0xae,0xc0,0xb2,0x6d,0xc1,0xbf,0xc6,0x6d,0xae,0xb4,0xae,0xb6,0xbb]

fileprivate func equalFill(voice num: UInt8) -> UInt8 {
    let value = Int(num) + 179
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "VOICEROOM: 拉流失败，roomID:  :*/
fileprivate let str_extraName:[Character] = ["V","O","I","C","E","R","O","O","M",":"," ","拉","流"]
fileprivate let str_rawErrorTitle:[Character] = ["失","\u{8d25}","，","r","o","o","m","I","D",":"," "]

/*: "VOICEROOM: 信令解析失败，command:  :*/
fileprivate let str_flowColorValue:String = "voice"
fileprivate let str_boyOuterTitle:String = ": \u{4fe1}令解析失败，"
fileprivate let str_myTitle:String = "cfemalemm"

/*: , roomID:  :*/
fileprivate let str_bottomRoundData:[Character] = [","," ","r","o","o","m"]
fileprivate let str_areaContent:[Character] = ["I","D",":"," "]

/*: "data" :*/
fileprivate let str_titleData:String = "DATA"

/*: "position" :*/
fileprivate let str_cornerValue:[Character] = ["p","o","s","i","t","i"]
fileprivate let str_picTitle:String = "oquote"

/*: "xxxx--  :*/
fileprivate let str_sendTakeName:String = "left viewxxxx--"
fileprivate let str_colorValue:String = "social"

/*: "opType" :*/
fileprivate let str_rangeValue:String = "opTypeprint let"

/*: "party:changeMike" :*/
fileprivate let str_aspectData:[Character] = ["p","a","r","t","y",":","c"]
fileprivate let str_textTitle:[Character] = ["h","a","n","g"]
fileprivate let str_cellData:String = "private title equal instanceeMike"

/*: "type" :*/
fileprivate let str_viewValue:String = "terrore"

/*: "toPosition" :*/
fileprivate let str_constraintTitle:String = "toPosposition view target"
fileprivate let str_editValue:[Character] = ["i","t","i","o","n"]

/*: "party:adminChangeMike" :*/
fileprivate let str_makeContent:String = "pamainy"
fileprivate let str_columnLogTimeContent:String = "invite size selfChang"

/*: "You were kicked off the seat" :*/
fileprivate let str_scriptValue:String = "ending upYou "
fileprivate let str_frameTitle:String = "KICKED"
fileprivate let str_allowName:String = "he seatmodel can else"

/*: "party:changeCoin" :*/
fileprivate let str_upData:[Character] = ["p","a","r","t","y",":","c","h","a","n"]
fileprivate let str_blockData:[Character] = ["g","e","C","o","i","n"]

/*: "party:closeStream" :*/
fileprivate let str_cellTitle:String = "image"
fileprivate let str_resultData:String = "arty:cview self make"
fileprivate let str_hideScreenValue:String = "Streamelse current profile quote video"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DateRangeThen.swift
//  Adjust
//
//  Created by DouXiu on 2024/9/12.
//

//: import ZegoExpressEngine
import ZegoExpressEngine

/// 语聊房状态变更通知
//: public let PARTY_STATUS_CHANGE_NOTIFICATION = NSNotification.Name(rawValue: "PARTY_STATUS_CHANGE_NOTIFICATION")
public let kLet_inviteName = NSNotification.Name(rawValue: String(bytes: str_actionData.map{$0^173}, encoding: .utf8)!)
/// 麦位数
//: public let MIKE_SEAT_COUNT = 8
public let kLet_rejectTableData = 8

/// 语聊房角色
//: enum VoiceRoomRole: Int {
enum ColorDefaultsSerializable: Int {
    //: case host = 1
    case host = 1 // 房主
    //: case audience = 2
    case audience = 2 // 观众
    //: case manager = 4
    case manager = 4 // 管理员
}

//: class TalkingVoiceRoomManager: NSObject {
class DateRangeThen: NSObject {
    /// 语聊房模型
    //: private(set) var partyModel = TalkingVoiceRoomModel()
    private(set) var partyModel = NameHandyJSON()
    /// 是否正在语聊房中（状态变更时发送通知）
    //: private(set) var isParty: Bool = false {
    private(set) var isParty: Bool = false {
        //: didSet {
        didSet {
            //: NotificationCenter.default.post(name: PARTY_STATUS_CHANGE_NOTIFICATION, object: self)
            NotificationCenter.default.post(name: kLet_inviteName, object: self)
        }
    }

    /// 是否小窗口模式
    //: private(set) var isSmallMode: Bool = false
    private(set) var isSmallMode: Bool = false
    /// singleton
    //: private static var _instance: TalkingVoiceRoomManager?
    private static var _instance: DateRangeThen?
    // 语聊房控制器
    //: private var voiceRoomVC: TalkingVoiceRoomViewController?
    private var voiceRoomVC: VoiceReactiveCompatible?
    /// 麦位信息字典 [麦位 0~7：麦位模型]
    //: private var mikePositionDict = [Int: TalkingMikeListItemModel]()
    private var mikePositionDict = [Int: ScaleMeasurable]()
    //: private let mplock = NSLock()
    private let mplock = NSLock()
    /// 正在进房请求中（防止多次调用）
    //: private var isEnterRoomReq = false
    private var isEnterRoomReq = false
    /// 麦克风操作请求中（防止多次调用）
    //: private var isMicReq = false
    private var isMicReq = false

    //: override init() {
    override init() {
        //: super.init()
        super.init()
        //: self.mikePositionDict = initMikePosition()
        self.mikePositionDict = pastSize()
    }

    //: class func shared() -> TalkingVoiceRoomManager {
    class func portion() -> DateRangeThen {
        //: guard _instance != nil else {
        guard _instance != nil else {
            //: _instance = TalkingVoiceRoomManager()
            _instance = DateRangeThen()
            //: return _instance!
            return _instance!
        }
        //: return _instance!
        return _instance!
    }

    //: class func destroy() {
    class func viewDestroy() {
        //: if TalkingVoiceRoomManager._instance != nil {
        if DateRangeThen._instance != nil {
            //: TalkingVoiceRoomManager._instance = nil
            DateRangeThen._instance = nil
        }
    }

    // MARK: - Lazy Load

    // 语聊房小窗口悬浮窗
    //: private lazy var miniView: TalkingVoiceRoomMiniView = {
    private lazy var miniView: FailReactiveCompatible = {
        //: let mini = TalkingVoiceRoomMiniView.buildLiveMiniView()
        let mini = FailReactiveCompatible.roundCreate()
        //: mini.isHidden = true
        mini.isHidden = true
        //: mini.tapGestureBlock = { [weak self] in
        mini.tapGestureBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.voiceRoom_goback()
            self.errorModel()
        }
        //: return mini
        return mini
        //: }()
    }()
}

// MARK: - 操作麦位请求

//: extension TalkingVoiceRoomManager {
extension DateRangeThen {
    /// 房主/观众 麦位操作请求
    /// - Parameters:
    ///   - type: 1 上麦，2 下麦，3 切麦，4 开麦，5 闭麦
    ///   - position: 麦位
    ///   - toPosition: 目标麦位（切麦传值）
    //: func voiceRoom_reqChangeMike(type: Int, position: Int, toPosition: Int? = nil) {
    func product(type: Int, position: Int, toPosition: Int? = nil) {
        //: guard isMicReq == false else { return }
        guard isMicReq == false else { return }
        //: isMicReq = true
        isMicReq = true
        //: TalkingVoiceRoomReqTool.req_changeMike(roomId: partyModel.roomId,
        ViewReqTool.toRowCompletion(roomId: partyModel.roomId,
                                                //: uid: Int(WatercourseThen.share.loginUid) ?? 0,
                                                uid: Int(WatercourseThen.share.loginUid) ?? 0,
                                                //: type: type,
                                                type: type,
                                                //: position: position,
                                                position: position,
                                                //: toPos: toPosition)
                                                toPos: toPosition)
        //: { succeed, result, errorModel in
        { succeed, result, errorModel in
            //: self.isMicReq = false
            self.isMicReq = false
            //: guard succeed else {
            guard succeed else { // 失败提示
                //: if errorModel?.errorCode == 20001 {
                if errorModel?.errorCode == 20001 { // 已在麦位，开始推流，刷新UI
                    //: ZegoExpressEngine.shared().mutePublishStreamAudio(false)
                    ZegoExpressEngine.shared().mutePublishStreamAudio(false)
                    //: let streamID = self.voiceRoom_getStreamID()
                    let streamID = self.lifeStyleButton()
                    //: ZegoExpressEngine.shared().startPublishingStream(streamID)
                    ZegoExpressEngine.shared().startPublishingStream(streamID)
                    //: guard let dict = result as? [String: Any] else { return }
                    guard let dict = result as? [String: Any] else { return }
                    //: guard let mikeModel = TalkingMikeListItemModel.deserialize(from: dict) else { return }
                    guard let mikeModel = ScaleMeasurable.deserialize(from: dict) else { return }
                    //: self.updateMikePosition(position: position, model: mikeModel)
                    self.mentalRepresentation(position: position, model: mikeModel)
                }
                //: return
                return
            }

            // 成功后只做逻辑处理，在接收信令处统一刷新UI
            //: switch type {
            switch type {
            //: case 1:
            case 1: // 上麦成功
                //: ZegoExpressEngine.shared().mutePublishStreamAudio(false)
                ZegoExpressEngine.shared().mutePublishStreamAudio(false)
                //: let streamID = self.voiceRoom_getStreamID()
                let streamID = self.lifeStyleButton()
                //: ZegoExpressEngine.shared().startPublishingStream(streamID)
                ZegoExpressEngine.shared().startPublishingStream(streamID)

            //: case 2:
            case 2: // 下麦成功
                //: ZegoExpressEngine.shared().stopPublishingStream()
                ZegoExpressEngine.shared().stopPublishingStream()

            //: case 3:
            case 3: // 切麦成功
                //: break
                break

            //: case 4:
            case 4: // 开麦成功
                //: ZegoExpressEngine.shared().mutePublishStreamAudio(false)
                ZegoExpressEngine.shared().mutePublishStreamAudio(false)

            //: case 5:
            case 5: // 闭麦成功
                //: ZegoExpressEngine.shared().mutePublishStreamAudio(true)
                ZegoExpressEngine.shared().mutePublishStreamAudio(true)

            //: default:
            default:
                //: break
                break
            }
        }
    }

    /// 房主对他人操作请求
    /// - Parameters:
    ///   - uid: 用户Id
    ///   - type: 1 锁麦，2 解锁麦，3 踢下麦，4 开麦，5 闭麦
    ///   - position: 麦位
    //: func voiceRoom_reqAdminChangeMike(uid: Int, type: Int, position: Int) {
    func livePosition(uid: Int, type: Int, position: Int) {
        //: guard isMicReq == false else { return }
        guard isMicReq == false else { return }
        //: isMicReq = true
        isMicReq = true
        //: TalkingVoiceRoomReqTool.req_adminChangeMike(roomId: partyModel.roomId,
        ViewReqTool.contentVoice(roomId: partyModel.roomId,
                                             //: uid: uid,
                                             uid: uid,
                                             //: type: type,
                                             type: type,
                                             //: position: position)
                                             position: position)
        //: { _, _, _ in
        { _, _, _ in
            //: self.isMicReq = false
            self.isMicReq = false
        }
    }

    /// 获取推流Id
    //: private func voiceRoom_getStreamID() -> String {
    private func lifeStyleButton() -> String {
        //: return "p-\(WatercourseThen.share.loginUid)-\(partyModel.roomId)"
        return "p-\(WatercourseThen.share.loginUid)-\(partyModel.roomId)"
    }
}

// MARK: - 权限检测，开启/进入/切换 语聊房

//: extension TalkingVoiceRoomManager {
extension DateRangeThen {
    /// 检测状态并进入语聊房
    /// - Parameters:
    ///   - roomId: 房间Id（nil：创建房间；有值：进入房间）
    //: func voiceRoom_checkAndTurnOn(roomId: String? = nil) {
    func dowryLive(roomId: String? = nil) {
        //: guard isParty == false else { return }
        guard isParty == false else { return }
        //: guard isEnterRoomReq == false else { return }
        guard isEnterRoomReq == false else { return }
        //: isEnterRoomReq = true
        isEnterRoomReq = true

        // 1. 权限检测
        //: TalkingPermissionTool.func__openRecordServiceWithBlock(true) { isOpen in
        ColorPermissionTool.withDeadlineAt(true) { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: self.func__showStatusBarErrorMsg(showMsg: kMessage_permissions_error)
                self.detailKey(showMsg: kLet_intimateText)
                //: self.isEnterRoomReq = false
                self.isEnterRoomReq = false
                //: return
                return
            }

            // 2. 接口是否禁播检测
            //: TalkingVoiceRoomReqTool.req_voiceRoomCheck(roomId: roomId) { succeed, result, errorModel in
            ViewReqTool.withCompletion(roomId: roomId) { succeed, result, errorModel in
                //: self.isEnterRoomReq = false
                self.isEnterRoomReq = false
                //: guard succeed else {
                guard succeed else {
                    //: if errorModel?.errorCode == 302 {
                    if errorModel?.errorCode == 302 { // 失败，跳转H5
                        //: if let result = result as? [String: Any] {
                        if let result = result as? [String: Any] {
                            //: IndoorsPushManager.share.func__pushToWebVC(urlStr: result["redirectUrl"] as? String)
                            IndoorsPushManager.share.feather(urlStr: result[(String(str_withTopContent) + str_fileTitle.replacingOccurrences(of: "scale", with: "e") + "ctUrl")] as? String)
                        }
                        //: } else if errorModel?.errorMsg.count ?? 0 > 0 {
                    } else if errorModel?.errorMsg.count ?? 0 > 0 {
                        //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                        self.detailKey(showMsg: errorModel!.errorMsg)
                    }
                    //: return
                    return
                }

                // 3. 是否正在音视频通话中
                //: guard TalkingSocketManager.shared.isTalking == false else {
                guard NameSocketManager.shared.isTalking == false else {
                    //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
                    self.detailKey(showMsg: kLet_networkViewTitle)
                    //: return
                    return
                }

                // 4. 校验成功，解析模型
                //: guard let model = TalkingVoiceRoomModel.deserialize(from: result as? Dictionary) else {
                guard let model = NameHandyJSON.deserialize(from: result as? Dictionary) else {
                    //: UploadLogTool.writeLog(msg: "VOICEROOM: 进房模型解析失败。")
                    EnableReactiveCompatible.nameBy(msg: (str_intimateTitle.replacingOccurrences(of: "push", with: "V") + str_equalSValue.replacingOccurrences(of: "to", with: "M") + str_collectionText + "型解析失败\u{3002}"))
                    //: self.func__showStatusBarErrorMsg(showMsg: "Party room exception".localized)
                    self.detailKey(showMsg: (String(str_voiceValue.prefix(4)) + "y room" + String(str_labContent.prefix(7)) + str_blankData.lowercased()).localized)
                    //: return
                    return
                }
                //: self.partyModel = model
                self.partyModel = model

                // 5. 创建语聊房UI，同时调用sdk创建房间
                //: self.voiceRoomVC = TalkingVoiceRoomViewController()
                self.voiceRoomVC = VoiceReactiveCompatible()
                //: self.getNavigationController()?.pushViewController(self.voiceRoomVC!, animated: true)
                self.trimDown()?.pushViewController(self.voiceRoomVC!, animated: true)
                //: self.miniView.refreshMiniView()
                self.miniView.upDeadline()
                //: self.miniView.isHidden = true
                self.miniView.isHidden = true
                //: self.voiceRoom_create()
                self.voiceTrackSave()
                //: UIApplication.shared.isIdleTimerDisabled = true
                UIApplication.shared.isIdleTimerDisabled = true // 防止息屏
                //: self.isParty = true
                self.isParty = true

                // 6. 埋点
                //: uploadRecord.uploadRecordEvent(eventID: "\(click_partyDetail_enter)_\(WatercourseThen.share.loginUserMode.sex == Gender.male.rawValue ? "male" : "female")")
                kLet_depthIconValue.mightHaveBeenStubZapErrorUploadTo(eventID: "\(kLet_errConnectName)_\(WatercourseThen.share.loginUserMode.sex == PushDownStackScalarLiteral.male.rawValue ? String(bytes: str_selectedData.map{analogDigitalConverter(view: $0)}, encoding: .utf8)! : (str_textName.replacingOccurrences(of: "leading", with: "a")))")

                // 7. 初始化弹幕群聊
                //: TalkingDanmuManager.joinLiveRoomDanmu(groupId: self.partyModel.chatGroupId, announcementMsg: self.partyModel.notification) { succeed in
                IndexCommandThen.miscount(groupId: self.partyModel.chatGroupId, announcementMsg: self.partyModel.notification) { succeed in
                    //: if succeed == false {
                    if succeed == false {
                        //: UploadLogTool.writeLog(msg: "VOICEROOM: 群聊进房失败。groupId: \(self.partyModel.chatGroupId).")
                        EnableReactiveCompatible.nameBy(msg: (str_dataAData.replacingOccurrences(of: "light", with: "IC") + "ROOM: \u{7fa4}聊" + str_pushValue + String(str_borderValue.suffix(4)) + "upId: ") + "\(self.partyModel.chatGroupId).")
                        //: self.func__showStatusBarErrorMsg(showMsg: "Party room exception".localized)
                        self.detailKey(showMsg: (String(str_voiceValue.prefix(4)) + "y room" + String(str_labContent.prefix(7)) + str_blankData.lowercased()).localized)
                        //: self.voiceRoom_releaseAllResource()
                        self.scene()
                    }
                }
            }
        }
    }

    /// 切换语聊房
    /// - Parameters:
    ///   - roomId: 当前进入房间Id
    ///   - beforeRoomId: 上一房间Id
    //: func voiceRoom_switch(roomId: String, beforeRoomId: String) {
    func popId(roomId: String, beforeRoomId: String) {
        //: guard isEnterRoomReq == false else { return }
        guard isEnterRoomReq == false else { return }
        //: isEnterRoomReq = true
        isEnterRoomReq = true
        // 1. 调用切房接口
        //: TalkingVoiceRoomReqTool.req_voiceRoomSwitch(roomId: roomId, beforeRoomId: beforeRoomId) { succeed, result, _ in
        ViewReqTool.overdoCompletion(roomId: roomId, beforeRoomId: beforeRoomId) { succeed, result, _ in
            //: self.isEnterRoomReq = false
            self.isEnterRoomReq = false
            //: guard succeed else { return }
            guard succeed else { return }
            // 2. 释放上个房间资源 (使用partyModel旧值)
            //: self.voiceRoomVC?.releaseAllResourceAndPop()
            self.voiceRoomVC?.eventError()

            // 3. 主播切房，需要关闭底部tabbar动效 (使用partyModel旧值)
            //: if String(self.partyModel.streamerInfo.uid) == WatercourseThen.share.loginUid {
            if String(self.partyModel.streamerInfo.uid) == WatercourseThen.share.loginUid {
                //: self.isParty = false
                self.isParty = false
            }

            // 4. 校验成功，解析模型（给partyModel重新赋值）
            //: guard let model = TalkingVoiceRoomModel.deserialize(from: result as? Dictionary) else {
            guard let model = NameHandyJSON.deserialize(from: result as? Dictionary) else {
                //: UploadLogTool.writeLog(msg: "VOICEROOM: 切房模型解析失败。")
                EnableReactiveCompatible.nameBy(msg: (String(str_centerText)))
                //: self.func__showStatusBarErrorMsg(showMsg: "Party room exception".localized)
                self.detailKey(showMsg: (String(str_voiceValue.prefix(4)) + "y room" + String(str_labContent.prefix(7)) + str_blankData.lowercased()).localized)
                //: return
                return
            }
            //: self.partyModel = model
            self.partyModel = model

            // 5. 创建语聊房UI，同时调用sdk切房
            //: self.voiceRoomVC = TalkingVoiceRoomViewController()
            self.voiceRoomVC = VoiceReactiveCompatible()
            //: self.getNavigationController()?.pushViewController(self.voiceRoomVC!, animated: true)
            self.trimDown()?.pushViewController(self.voiceRoomVC!, animated: true)
            //: self.miniView.refreshMiniView()
            self.miniView.upDeadline()
            //: self.miniView.isHidden = true
            self.miniView.isHidden = true
            //: self.voiceRoom_switch(beforeRoomId: beforeRoomId)
            self.wedge(beforeRoomId: beforeRoomId)
            //: self.isParty = true
            self.isParty = true
            //: self.isSmallMode = false
            self.isSmallMode = false

            // 6. 埋点
            //: uploadRecord.uploadRecordEvent(eventID: "\(click_partyDetail_enter)_\(WatercourseThen.share.loginUserMode.sex == Gender.male.rawValue ? "male" : "female")")
            kLet_depthIconValue.mightHaveBeenStubZapErrorUploadTo(eventID: "\(kLet_errConnectName)_\(WatercourseThen.share.loginUserMode.sex == PushDownStackScalarLiteral.male.rawValue ? String(bytes: str_selectedData.map{analogDigitalConverter(view: $0)}, encoding: .utf8)! : (str_textName.replacingOccurrences(of: "leading", with: "a")))")

            // 7. 初始化弹幕群聊
            //: TalkingDanmuManager.joinLiveRoomDanmu(groupId: self.partyModel.chatGroupId, announcementMsg: self.partyModel.notification) { succeed in
            IndexCommandThen.miscount(groupId: self.partyModel.chatGroupId, announcementMsg: self.partyModel.notification) { succeed in
                //: if succeed == false {
                if succeed == false {
                    //: UploadLogTool.writeLog(msg: "VOICEROOM: 群聊切房失败。groupId: \(self.partyModel.chatGroupId).")
                    EnableReactiveCompatible.nameBy(msg: (String(str_eventSkinTitle) + str_succeedName + "失\u{8d25}。g" + str_equalName.replacingOccurrences(of: "manager", with: "r") + "Id: ") + "\(self.partyModel.chatGroupId).")
                    //: self.func__showStatusBarErrorMsg(showMsg: "Party room exception".localized)
                    self.detailKey(showMsg: (String(str_voiceValue.prefix(4)) + "y room" + String(str_labContent.prefix(7)) + str_blankData.lowercased()).localized)
                    //: self.voiceRoom_releaseAllResource()
                    self.scene()
                }
            }
        }
    }
}

// MARK: - Public Event

//: extension TalkingVoiceRoomManager {
extension DateRangeThen {
    /// 最小化语聊房
    //: func voiceRoom_mini() {
    func toMini() {
        //: isSmallMode = true
        isSmallMode = true
        //: miniView.isHidden = false
        miniView.isHidden = false
        //: voiceRoomVC?.popCurrentViewController()
        voiceRoomVC?.nameView()
    }

    /// 返回语聊房
    //: func voiceRoom_goback() {
    func errorModel() {
        //: isSmallMode = false
        isSmallMode = false
        //: miniView.isHidden = true
        miniView.isHidden = true
        //: guard voiceRoomVC != nil else { return }
        guard voiceRoomVC != nil else { return }
        //: guard let currentVC = currentViewController() else { return }
        guard let currentVC = toController() else { return }
        // 如果顶部视图是私信页，先返回列表，避免多个私信页消息同步问题
        //: if currentVC.isKind(of: TalkingPrivateChatController.self) {
        if currentVC.isKind(of: RawControllerDelegate.self) {
            //: if var vcArr = currentVC.navigationController?.viewControllers {
            if var vcArr = currentVC.navigationController?.viewControllers {
                //: vcArr.removeLast()
                vcArr.removeLast()
                //: vcArr.append(voiceRoomVC!)
                vcArr.append(voiceRoomVC!)
                //: currentVC.navigationController?.setViewControllers(vcArr, animated: true)
                currentVC.navigationController?.setViewControllers(vcArr, animated: true)
            }
            //: } else {
        } else {
            //: currentVC.navigationController?.pushViewController(voiceRoomVC!, animated: true)
            currentVC.navigationController?.pushViewController(voiceRoomVC!, animated: true)
        }
    }

    /// 销毁语聊房所有资源
    //: func voiceRoom_releaseAllResource() {
    func scene() {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: self.isParty = false
            self.isParty = false // 有通知监听，需置为false
            //: UIApplication.shared.isIdleTimerDisabled = false
            UIApplication.shared.isIdleTimerDisabled = false // 恢复息屏
            //: self.miniView.removeFromSuperview()
            self.miniView.removeFromSuperview() // 移除小窗口
            //: self.voiceRoomVC?.releaseAllResourceAndPop()
            self.voiceRoomVC?.eventError() // 将语聊房视图从栈中移除并释放资源
            //: if self.partyModel.position >= 0 {
            if self.partyModel.position >= 0 { // 退房下麦
                //: self.voiceRoom_reqChangeMike(type: 2, position: self.partyModel.position)
                self.product(type: 2, position: self.partyModel.position)
            }
            //: ZegoExpressEngine.shared().logoutRoom()
            ZegoExpressEngine.shared().logoutRoom() // 退出房间
            //: ZegoExpressEngine.destroy(nil)
            ZegoExpressEngine.destroy(nil) // 销毁引擎
            //: TalkingVoiceRoomManager.destroy()
            DateRangeThen.viewDestroy() // 销毁当前单例
        }
    }
}

// MARK: - Private Event

//: extension TalkingVoiceRoomManager {
extension DateRangeThen {
    /// 创建语聊房
    //: private func voiceRoom_create() {
    private func voiceTrackSave() {
        // 创建引擎
        //: let profile = ZegoEngineProfile()
        let profile = ZegoEngineProfile()
        //: profile.appID = ListMacroDefine.getVoiceRoomAppId()
        profile.appID = ListMacroDefine.viewId()
        //: profile.scenario = .standardChatroom
        profile.scenario = .standardChatroom
        //: ZegoExpressEngine.createEngine(with: profile, eventHandler: self)
        ZegoExpressEngine.createEngine(with: profile, eventHandler: self)
        // 进阶配置，进入房间
        //: let config = ZegoRoomConfig()
        let config = ZegoRoomConfig()
        //: config.token = partyModel.token
        config.token = partyModel.token
        //: let user = ZegoUser(userID: WatercourseThen.share.loginUid)
        let user = ZegoUser(userID: WatercourseThen.share.loginUid)
        //: ZegoExpressEngine.shared().loginRoom(partyModel.roomId, user: user, config: config)
        ZegoExpressEngine.shared().loginRoom(partyModel.roomId, user: user, config: config)
    }

    /// 切换语聊房
    /// - Parameter beforeRoomId: 上一房间Id
    //: private func voiceRoom_switch(beforeRoomId: String) {
    private func wedge(beforeRoomId: String) {
        //: let config = ZegoRoomConfig()
        let config = ZegoRoomConfig()
        //: config.token = partyModel.token
        config.token = partyModel.token
        //: ZegoExpressEngine.shared().switchRoom(beforeRoomId, toRoomID: partyModel.roomId, config: config)
        ZegoExpressEngine.shared().switchRoom(beforeRoomId, toRoomID: partyModel.roomId, config: config)
    }
}

// MARK: - ZegoEventHandler

//: extension TalkingVoiceRoomManager: ZegoEventHandler {
extension DateRangeThen: ZegoEventHandler {
    // MARK: - 进房/切房 监听回调

    /// 进房/切房 回调
    //: func onRoomStateChanged(_ reason: ZegoRoomStateChangedReason, errorCode: Int32, extendedData: [AnyHashable: Any], roomID: String) {
    func onRoomStateChanged(_ reason: ZegoRoomStateChangedReason, errorCode: Int32, extendedData: [AnyHashable: Any], roomID: String) {
        //: guard roomID == partyModel.roomId else { return }
        guard roomID == partyModel.roomId else { return }
        //: if errorCode == 0, reason == .logined {
        if errorCode == 0, reason == .logined { // 进房成功
            // 启动声浪等级监控
            //: ZegoExpressEngine.shared().startSoundLevelMonitor()
            ZegoExpressEngine.shared().startSoundLevelMonitor()
            // 开启音量稳定控制
            //: ZegoExpressEngine.shared().enableAEC(true)
            ZegoExpressEngine.shared().enableAEC(true)
            // 获取嘉宾列表接口
            //: TalkingVoiceRoomReqTool.req_getMikeList(roomId: partyModel.roomId) { list in
            ViewReqTool.aircraft(roomId: partyModel.roomId) { list in
                // 保存麦位列表信息
                //: for (key, value) in list.enumerated() {
                for (key, value) in list.enumerated() {
                    //: self.modifyMikePosition(key: key, model: value)
                    self.attention(key: key, model: value)
                }
                // 刷新麦位列表UI
                //: self.voiceRoomVC?.mikePositionView.refreshAllMikeView()
                self.voiceRoomVC?.mikePositionView.manager()
                // 房主首次创建房间，主动上麦
                //: if self.partyModel.userRole == VoiceRoomRole.host.rawValue, self.partyModel.isCreate == true {
                if self.partyModel.userRole == ColorDefaultsSerializable.host.rawValue, self.partyModel.isCreate == true {
                    //: self.voiceRoom_reqChangeMike(type: 1, position: 0)
                    self.product(type: 1, position: 0)
                }
            }

            //: } else if reason == .logining || reason == .reconnectFailed || reason == .reconnecting || reason == .reconnected {
        } else if reason == .logining || reason == .reconnectFailed || reason == .reconnecting || reason == .reconnected {
            //: if errorCode == 0, reason == .reconnected {
            if errorCode == 0, reason == .reconnected { // 重连成功
                //: TalkingVoiceRoomReqTool.req_getMikeList(roomId: partyModel.roomId) { list in
                ViewReqTool.aircraft(roomId: partyModel.roomId) { list in
                    // 更新麦位列表信息
                    //: for (key, value) in list.enumerated() {
                    for (key, value) in list.enumerated() {
                        //: self.modifyMikePosition(key: key, model: value)
                        self.attention(key: key, model: value)
                        //: if String(value.uid) == WatercourseThen.share.loginUid {
                        if String(value.uid) == WatercourseThen.share.loginUid {
                            //: if value.mikeStatus == 1 {
                            if value.mikeStatus == 1 { // 房主闭麦
                                //: ZegoExpressEngine.shared().stopPublishingStream()
                                ZegoExpressEngine.shared().stopPublishingStream()
                                //: } else {
                            } else {
                                //: let streamID = self.voiceRoom_getStreamID()
                                let streamID = self.lifeStyleButton()
                                //: ZegoExpressEngine.shared().startPublishingStream(streamID)
                                ZegoExpressEngine.shared().startPublishingStream(streamID)
                                //: let isMute = value.mikeStatus == 0 ? true : false
                                let isMute = value.mikeStatus == 0 ? true : false
                                //: ZegoExpressEngine.shared().mutePublishStreamAudio(isMute)
                                ZegoExpressEngine.shared().mutePublishStreamAudio(isMute)
                            }
                        }
                    }
                    // 刷新麦位列表UI
                    //: self.voiceRoomVC?.mikePositionView.refreshAllMikeView()
                    self.voiceRoomVC?.mikePositionView.manager()
                }
                //: } else if errorCode != 0 {
            } else if errorCode != 0 {
                // 进房失败埋点
                //: uploadRecord.uploadRecordEvent(eventID: click_partyTab_creParty_fail, parameterStr: ["errCode": String(errorCode)])
                kLet_depthIconValue.fromCell(eventID: kLet_messageFailureValue, parameterStr: [String(bytes: str_currentData.map{flushQuote(text: $0)}, encoding: .utf8)!: String(errorCode)])
            }

            //: } else {
        } else { // 进房失败
            //: if errorCode == 1002055 || errorCode == 1002050 {
            if errorCode == 1_002_055 || errorCode == 1_002_050 { // 用户退出 || 被踢出房间
                //: let json = JSON(extendedData)
                let json = JSON(extendedData)
                //: let value = json["custom_kickout_message"].stringValue
                let value = json[(String(str_priorityValue.suffix(8)) + String(str_bringValue) + str_fromValue.replacingOccurrences(of: "object", with: "ge"))].stringValue
                //: if value == "closeRoom" || value == "adminCloseRoom" { // 关闭房间
                if value == (String(str_currentText)) || value == (str_backgroundData.replacingOccurrences(of: "container", with: "d") + "Close" + String(str_saveSizeData)) { // 关闭房间
                    //: voiceRoom_releaseAllResource()
                    scene()
                    //: let config = ShowAlertConfig()
                    let config = ReloadAlertConfig()
                    //: config.alignment = .center
                    config.alignment = .center
                    //: TalkingAlertShow.customAlert(message: "The room is closed, please go to another room".localized, rightBtnTitle: "OK".localized, rightBlock: {
                    AlongThen.jumpTime(message: String(bytes: str_selectedTitle.map{viewDataPlay(conversation: $0)}, encoding: .utf8)!.localized, rightBtnTitle: "OK".localized, rightBlock: {
                        // 跳转到首页tab-party
                        //: NotificationCenter.default.post(name: SWITCH_TABBAR_HOME_PARTY_NOTIFICATION, object: nil, userInfo: nil)
                        NotificationCenter.default.post(name: kLet_endContent, object: nil, userInfo: nil)
                        //: }, config: config)
                    }, config: config)

                    //: } else {
                } else { // 被踢出房间
                    //: func__showStatusBarErrorMsg(showMsg: "You were kicked out of the room".localized)
                    detailKey(showMsg: String(bytes: str_userScreenAName.map{sharedMode(succeed: $0)}, encoding: .utf8)!.localized)
                }

                //: } else {
            } else {
                //: UploadLogTool.writeLog(msg: "VOICEROOM：进房失败，roomID: \(roomID), error: \(errorCode), reason: \(reason), extendedData: \(extendedData).")
                EnableReactiveCompatible.nameBy(msg: (str_closedValue.replacingOccurrences(of: "make", with: "O") + str_userItemValue + "room" + String(str_pathName.suffix(4))) + "\(roomID)" + (String(str_upValue) + String(str_modelContent)) + "\(errorCode)" + (String(str_tableContent)) + "\(reason)" + (String(str_keyPushTitle)) + "\(extendedData).")
                //: func__showStatusBarErrorMsg(showMsg: "Party room exception".localized)
                detailKey(showMsg: (String(str_voiceValue.prefix(4)) + "y room" + String(str_labContent.prefix(7)) + str_blankData.lowercased()).localized)
                // 进房失败埋点
                //: uploadRecord.uploadRecordEvent(eventID: click_partyTab_creParty_fail, parameterStr: ["errCode": String(errorCode)])
                kLet_depthIconValue.fromCell(eventID: kLet_messageFailureValue, parameterStr: [String(bytes: str_currentData.map{flushQuote(text: $0)}, encoding: .utf8)!: String(errorCode)])
            }
            //: voiceRoom_releaseAllResource()
            scene()
        }
    }

    // MARK: - 推流回调

    /// 当前用户推流状态回调
    //: func onPublisherStateUpdate(_ state: ZegoPublisherState, errorCode: Int32, extendedData: [AnyHashable: Any]?, streamID: String) {
    func onPublisherStateUpdate(_: ZegoPublisherState, errorCode: Int32, extendedData _: [AnyHashable: Any]?, streamID: String) {
        //: guard errorCode == 0 || errorCode == 1003020 || errorCode == 1002055 else {
        guard errorCode == 0 || errorCode == 1_003_020 || errorCode == 1_002_055 else { // 推流失败，用户下麦
            //: UploadLogTool.writeLog(msg: "VOICEROOM: 当前用户推流失败，roomID: \(partyModel.roomId), errorCode: \(errorCode), streamID: \(streamID).")
            EnableReactiveCompatible.nameBy(msg: (str_enableData.replacingOccurrences(of: "cloud", with: "C") + "ROOM" + str_mediumValue.replacingOccurrences(of: "button", with: "推") + str_textValue + "room" + String(str_toText.prefix(4))) + "\(partyModel.roomId)" + (String(str_addData.suffix(5)) + String(str_giftManagerValue) + String(str_frameData)) + "\(errorCode)" + (String(str_statusTitle.suffix(5)) + String(str_myData.suffix(7))) + "\(streamID).")
            //: func__showStatusBarErrorMsg(showMsg: "An error occurred, please try again".localized)
            detailKey(showMsg: String(bytes: str_tableValue.map{equalFill(voice: $0)}, encoding: .utf8)!.localized)
            //: let dict = getAllMikePositions()
            let dict = possibility()
            //: for (position, model) in dict where String(model.uid) == WatercourseThen.share.loginUid {
            for (position, model) in dict where String(model.uid) == WatercourseThen.share.loginUid {
                //: voiceRoom_reqChangeMike(type: 2, position: position)
                product(type: 2, position: position)
                //: resetMikePosition(position: position, model: model)
                requestWith(position: position, model: model)
            }
            //: if errorCode == 1002078 {
            if errorCode == 1_002_078 { // token过期，关闭房间
                //: voiceRoom_releaseAllResource()
                scene()
            }
            //: return
            return
        }
    }

    // MARK: - 拉流回调

    /// 当前用户拉流状态回调
    //: func onPlayerStateUpdate(_ state: ZegoPlayerState, errorCode: Int32, extendedData: [AnyHashable: Any]?, streamID: String) {
    func onPlayerStateUpdate(_: ZegoPlayerState, errorCode: Int32, extendedData _: [AnyHashable: Any]?, streamID: String) {
        //: guard errorCode == 0 else {
        guard errorCode == 0 else { // 拉流失败
            //: UploadLogTool.writeLog(msg: "VOICEROOM: 拉流失败，roomID: \(partyModel.roomId), errorCode: \(errorCode), streamID: \(streamID).")
            EnableReactiveCompatible.nameBy(msg: (String(str_extraName) + String(str_rawErrorTitle)) + "\(partyModel.roomId)" + (String(str_addData.suffix(5)) + String(str_giftManagerValue) + String(str_frameData)) + "\(errorCode)" + (String(str_statusTitle.suffix(5)) + String(str_myData.suffix(7))) + "\(streamID).")
            //: if errorCode == 1002078 {
            if errorCode == 1_002_078 { // token过期，关闭房间
                //: voiceRoom_releaseAllResource()
                scene()
            }

            //: return
            return
        }
    }

    // MARK: - 流更新回调

    /// 流更新回调
    //: func onRoomStreamUpdate(_ updateType: ZegoUpdateType, streamList: [ZegoStream], extendedData: [AnyHashable: Any]?, roomID: String) {
    func onRoomStreamUpdate(_ updateType: ZegoUpdateType, streamList: [ZegoStream], extendedData _: [AnyHashable: Any]?, roomID: String) {
        //: guard roomID == partyModel.roomId else { return }
        guard roomID == partyModel.roomId else { return }
        //: switch updateType {
        switch updateType {
        //: case .add:
        case .add:
            //: streamList.forEach { zego in
            streamList.forEach { zego in
                // 开始拉流
                //: ZegoExpressEngine.shared().startPlayingStream(zego.streamID)
                ZegoExpressEngine.shared().startPlayingStream(zego.streamID)
            }

        //: case .delete:
        case .delete:
            //: streamList.forEach { zego in
            streamList.forEach { zego in
                // 停止拉流
                //: ZegoExpressEngine.shared().stopPlayingStream(zego.streamID)
                ZegoExpressEngine.shared().stopPlayingStream(zego.streamID)
            }

        //: @unknown default:
        @unknown default:
            //: fatalError()
            fatalError()
        }
    }

    // MARK: - 声浪等级监听回调

    /// 本地声浪等级
    //: func onCapturedSoundLevelUpdate(_ soundLevel: NSNumber) {
    func onCapturedSoundLevelUpdate(_ soundLevel: NSNumber) {
        //: guard Int(truncating: soundLevel) > 0 else { return }
        guard Int(truncating: soundLevel) > 0 else { return }
        //: voiceRoomVC?.mikePositionView.refreshSoundLevelAnimation(position: partyModel.position, level: soundLevel)
        voiceRoomVC?.mikePositionView.addService(position: partyModel.position, level: soundLevel)
    }

    /// 远端声浪等级
    //: func onRemoteSoundLevelUpdate(_ soundLevels: [String: NSNumber]) {
    func onRemoteSoundLevelUpdate(_ soundLevels: [String: NSNumber]) {
        //: let dict = getAllMikePositions()
        let dict = possibility()
        //: for (streamID, level) in soundLevels {
        for (streamID, level) in soundLevels {
            //: let components = streamID.split(separator: "-").map(String.init)
            let components = streamID.split(separator: "-").map(String.init)
            //: guard components.count > 2 else { continue }
            guard components.count > 2 else { continue }
            //: if let position = dict.first(where: { String($0.value.uid) == components[1] })?.key {
            if let position = dict.first(where: { String($0.value.uid) == components[1] })?.key {
                //: voiceRoomVC?.mikePositionView.refreshSoundLevelAnimation(position: position, level: level)
                voiceRoomVC?.mikePositionView.addService(position: position, level: level)
            }
        }
    }

    // MARK: - 信令

    /// 上麦、下麦、锁麦、解锁麦、切麦操作会收到后端下发信令
    //: func onIMRecvCustomCommand(_ command: String, from fromUser: ZegoUser, roomID: String) {
    func onIMRecvCustomCommand(_ command: String, from _: ZegoUser, roomID: String) {
        //: guard roomID == partyModel.roomId else { return }
        guard roomID == partyModel.roomId else { return }
        //: guard let decodedStr = command.removingPercentEncoding else {
        guard let decodedStr = command.removingPercentEncoding else {
            //: UploadLogTool.writeLog(msg: "VOICEROOM: 信令解析失败，command: \(command), roomID: \(roomID).")
            EnableReactiveCompatible.nameBy(msg: (str_flowColorValue.uppercased() + "ROOM" + str_boyOuterTitle + str_myTitle.replacingOccurrences(of: "female", with: "o") + "and: ") + "\(command)" + (String(str_bottomRoundData) + String(str_areaContent)) + "\(roomID).")
            //: return
            return
        }
        // 更新麦位信息，刷新列表UI
        //: let json = JSON(parseJSON: decodedStr)
        let json = JSON(parseJSON: decodedStr)
        //: let position = json["data"]["position"].intValue
        let position = json[(str_titleData.lowercased())][(String(str_cornerValue) + str_picTitle.replacingOccurrences(of: "quote", with: "n"))].intValue
        //: guard position < MIKE_SEAT_COUNT else { return }
        guard position < kLet_rejectTableData else { return }
        //: guard let mikeModel = TalkingMikeListItemModel.deserialize(from: json["data"].dictionaryObject) else { return }
        guard let mikeModel = ScaleMeasurable.deserialize(from: json[(str_titleData.lowercased())].dictionaryObject) else { return }
        //: printLog(message: "xxxx-- \(json.rawValue)")
        printLog(message: (String(str_sendTakeName.suffix(6)) + str_colorValue.replacingOccurrences(of: "social", with: " ")) + "\(json.rawValue)")
        //: if json["opType"].stringValue == "party:changeMike" { // 房主/观众 麦位操作信令
        if json[(String(str_rangeValue.prefix(6)))].stringValue == (String(str_aspectData) + String(str_textTitle) + String(str_cellData.suffix(5))) { // 房主/观众 麦位操作信令
            //: let type = json["data"]["type"].intValue
            let type = json[(str_titleData.lowercased())][(str_viewValue.replacingOccurrences(of: "error", with: "yp"))].intValue
            //: switch type {
            switch type {
            //: case 1:
            case 1: // 上麦
                //: mikeModel.needGift = true
                mikeModel.needGift = true
                //: updateMikePosition(position: position, model: mikeModel)
                mentalRepresentation(position: position, model: mikeModel)

            //: case 2:
            case 2: // 下麦
                //: if let oldModel = getMikePosition(key: position) {
                if let oldModel = endHave(key: position) {
                    //: resetMikePosition(position: position, model: oldModel)
                    requestWith(position: position, model: oldModel)
                }

            //: case 3:
            case 3: // 切麦
                //: resetMikePosition(position: position, model: mikeModel)
                requestWith(position: position, model: mikeModel)
                //: let toPosition = json["data"]["toPosition"].intValue
                let toPosition = json[(str_titleData.lowercased())][(String(str_constraintTitle.prefix(5)) + String(str_editValue))].intValue
                //: mikeModel.needGift = true
                mikeModel.needGift = true
                //: updateMikePosition(position: toPosition, model: mikeModel)
                mentalRepresentation(position: toPosition, model: mikeModel)

            //: case 4, 5:
            case 4, 5: // 开麦、闭麦
                //: updateMikePosition(position: position, model: mikeModel)
                mentalRepresentation(position: position, model: mikeModel)

            //: default:
            default:
                //: break
                break
            }
            // 刷新礼物面板头像
            //: if type == 1 || type == 2 || type == 3 {
            if type == 1 || type == 2 || type == 3 {
                //: voiceRoomVC?.bottomView.refreshGiftIcon()
                voiceRoomVC?.bottomView.iconShow()
            }

            //: } else if json["opType"].stringValue == "party:adminChangeMike" { // 房主对他人操作信令
        } else if json[(String(str_rangeValue.prefix(6)))].stringValue == (str_makeContent.replacingOccurrences(of: "main", with: "rt") + ":admin" + String(str_columnLogTimeContent.suffix(5)) + "eMike") { // 房主对他人操作信令
            //: switch json["data"]["type"].intValue {
            switch json[(str_titleData.lowercased())][(str_viewValue.replacingOccurrences(of: "error", with: "yp"))].intValue {
            //: case 1, 2:
            case 1, 2: // 锁麦、解锁麦
                //: updateMikePosition(position: position, model: mikeModel)
                mentalRepresentation(position: position, model: mikeModel)

            //: case 3:
            case 3: // 踢下麦
                //: if let oldModel = getMikePosition(key: position) {
                if let oldModel = endHave(key: position) {
                    //: resetMikePosition(position: position, model: oldModel)
                    requestWith(position: position, model: oldModel)
                    // 刷新礼物面板头像
                    //: voiceRoomVC?.bottomView.refreshGiftIcon()
                    voiceRoomVC?.bottomView.iconShow()
                    //: guard String(oldModel.uid) == WatercourseThen.share.loginUid else { return }
                    guard String(oldModel.uid) == WatercourseThen.share.loginUid else { return }
                    //: ZegoExpressEngine.shared().stopPublishingStream()
                    ZegoExpressEngine.shared().stopPublishingStream()
                    //: func__showStatusBarErrorMsg(showMsg: "You were kicked off the seat".localized)
                    detailKey(showMsg: (String(str_scriptValue.suffix(4)) + "were " + str_frameTitle.lowercased() + " off t" + String(str_allowName.prefix(7))).localized)
                }

            //: case 4:
            case 4: // 开麦
                //: updateMikePosition(position: position, model: mikeModel)
                mentalRepresentation(position: position, model: mikeModel)
                //: guard String(mikeModel.uid) == WatercourseThen.share.loginUid else { return }
                guard String(mikeModel.uid) == WatercourseThen.share.loginUid else { return }
                //: ZegoExpressEngine.shared().mutePublishStreamAudio(false)
                ZegoExpressEngine.shared().mutePublishStreamAudio(false)

            //: case 5:
            case 5: // 闭麦
                //: updateMikePosition(position: position, model: mikeModel)
                mentalRepresentation(position: position, model: mikeModel)
                //: guard String(mikeModel.uid) == WatercourseThen.share.loginUid else { return }
                guard String(mikeModel.uid) == WatercourseThen.share.loginUid else { return }
                //: ZegoExpressEngine.shared().mutePublishStreamAudio(true)
                ZegoExpressEngine.shared().mutePublishStreamAudio(true)

            //: default:
            default:
                //: break
                break
            }

            //: } else if json["opType"].stringValue == "party:changeCoin" { // 更新用户麦位金币
        } else if json[(String(str_rangeValue.prefix(6)))].stringValue == (String(str_upData) + String(str_blockData)) { // 更新用户麦位金币
            //: TalkingVoiceRoomManager.shared().getAllMikePositions().forEach { position, model in
            DateRangeThen.portion().possibility().forEach { position, model in
                //: if model.uid == mikeModel.uid {
                if model.uid == mikeModel.uid {
                    //: model.coin = mikeModel.coin
                    model.coin = mikeModel.coin
                    //: updateMikePosition(position: position, model: model)
                    mentalRepresentation(position: position, model: model)
                    //: return
                    return
                }
            }

            //: } else if json["opType"].stringValue == "party:closeStream" { // 推流失败
        } else if json[(String(str_rangeValue.prefix(6)))].stringValue == (str_cellTitle.replacingOccurrences(of: "image", with: "p") + String(str_resultData.prefix(6)) + "lose" + String(str_hideScreenValue.prefix(6))) { // 推流失败
            //: ZegoExpressEngine.shared().stopPublishingStream()
            ZegoExpressEngine.shared().stopPublishingStream()
        }
    }
}

// MARK: - 信令处理

//: extension TalkingVoiceRoomManager {
extension DateRangeThen {
    /// 更新麦位数据，刷新UI
    /// - Parameters:
    ///   - position: 麦位
    ///   - model: 数据
    //: private func updateMikePosition(position: Int, model: TalkingMikeListItemModel) {
    private func mentalRepresentation(position: Int, model: ScaleMeasurable) {
        //: modifyMikePosition(key: position, model: model)
        attention(key: position, model: model)
        //: voiceRoomVC?.mikePositionView.refreshSingleMikeView(position: position)
        voiceRoomVC?.mikePositionView.withTo(position: position)
        //: updateBottomMicStatusIfCurrentUser(uid: model.uid)
        punctuateCheck(uid: model.uid)
    }

    /// 重置麦位数据，刷新UI
    /// - Parameters:
    ///   - position: 麦位
    ///   - model: 数据
    //: private func resetMikePosition(position: Int, model: TalkingMikeListItemModel) {
    private func requestWith(position: Int, model: ScaleMeasurable) {
        //: modifyMikePosition(key: position, model: TalkingMikeListItemModel())
        attention(key: position, model: ScaleMeasurable())
        //: voiceRoomVC?.mikePositionView.refreshSingleMikeView(position: position)
        voiceRoomVC?.mikePositionView.withTo(position: position)
        //: updateBottomMicStatusIfCurrentUser(uid: model.uid)
        punctuateCheck(uid: model.uid)
    }

    /// 更新本人麦位、底部麦克风状态
    /// - Parameter uid: 用户Id
    //: private func updateBottomMicStatusIfCurrentUser(uid: Int) {
    private func punctuateCheck(uid: Int) {
        //: guard String(uid) == WatercourseThen.share.loginUid else { return }
        guard String(uid) == WatercourseThen.share.loginUid else { return }
        //: let dict = getAllMikePositions()
        let dict = possibility()
        //: if let position = dict.first(where: { $0.value.uid == uid })?.key {
        if let position = dict.first(where: { $0.value.uid == uid })?.key {
            //: partyModel.position = position
            partyModel.position = position
            //: } else {
        } else {
            //: partyModel.position = -1
            partyModel.position = -1
        }
        //: voiceRoomVC?.bottomView.refreshBottomMicStatus()
        voiceRoomVC?.bottomView.replace()
    }
}

// MARK: - 麦位字典安全操作

//: extension TalkingVoiceRoomManager {
extension DateRangeThen {
    /// 获取初始化模型
    //: private func initMikePosition() -> [Int: TalkingMikeListItemModel] {
    private func pastSize() -> [Int: ScaleMeasurable] {
        //: for index in 0 ..< MIKE_SEAT_COUNT {
        for index in 0 ..< kLet_rejectTableData {
            //: modifyMikePosition(key: index, model: TalkingMikeListItemModel())
            attention(key: index, model: ScaleMeasurable())
        }
        //: return mikePositionDict
        return mikePositionDict
    }

    /// 添加/修改 麦位
    //: func modifyMikePosition(key: Int, model: TalkingMikeListItemModel) {
    func attention(key: Int, model: ScaleMeasurable) {
        //: mplock.lock()
        mplock.lock()
        //: defer { mplock.unlock() }
        defer { mplock.unlock() }
        //: mikePositionDict[key] = model
        mikePositionDict[key] = model
    }

    /// 获取麦位
    //: func getMikePosition(key: Int) -> TalkingMikeListItemModel? {
    func endHave(key: Int) -> ScaleMeasurable? {
        //: mplock.lock()
        mplock.lock()
        //: defer { mplock.unlock() }
        defer { mplock.unlock() }
        //: return mikePositionDict[key]
        return mikePositionDict[key]
    }

    /// 获取所有麦位
    //: func getAllMikePositions() -> [Int: TalkingMikeListItemModel] {
    func possibility() -> [Int: ScaleMeasurable] {
        //: mplock.lock()
        mplock.lock()
        //: defer { mplock.unlock() }
        defer { mplock.unlock() }
        //: return mikePositionDict
        return mikePositionDict
    }
}
