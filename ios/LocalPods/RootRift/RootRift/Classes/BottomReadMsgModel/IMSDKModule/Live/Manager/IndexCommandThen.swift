
//: Declare String Begin

/*: " customElem.data is error" :*/
fileprivate let str_gestureContent:String = " custself layer app succeed"
fileprivate let str_fillAddValue:String = "item"
fileprivate let str_viewContent:[Character] = ["t","a"," ","i","s"," ","e","r","r","o","r"]

/*: "extra" :*/
fileprivate let str_conversationText:String = "textxtra"

/*: "MF:PartyChatSysMsg" :*/
fileprivate let str_startStatusText:String = "light viewMF:Pa"
fileprivate let str_tableName:String = "size detail recordatS"
fileprivate let str_screenName:[Character] = ["y","s","M","s","g"]

/*: "opType" :*/
fileprivate let str_toAngleTitle:String = "opTypequal with effect context"
fileprivate let str_shareName:[Character] = ["e"]

/*: "roomLogout" :*/
fileprivate let str_componentFindText:String = "return bindroomLo"

/*: "MF:PartyChatWelMsg" :*/
fileprivate let str_engineName:[Character] = ["M","F",":","P","a"]
fileprivate let str_targetData:String = "do super new labelrtyCha"

/*: "startLive" :*/
fileprivate let str_femaleLocationData:String = "sselectedr"
fileprivate let str_miniSumData:[Character] = ["t","L","i","v","e"]

/*: "floatingScreen" :*/
fileprivate let str_giftEqualData:[UInt8] = [0x7f,0x85,0x88,0x7a,0x8d,0x82,0x87,0x80,0x6c,0x7c,0x8b,0x7e,0x7e,0x87]

fileprivate func attachMakeInput(from num: UInt8) -> UInt8 {
    let value = Int(num) - 25
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "mute" :*/
fileprivate let str_contentGestureRangeData:String = "muleading"

/*: "uid" :*/
fileprivate let str_allowData:[Character] = ["u","i","d"]

/*: "expireAt" :*/
fileprivate let str_meText:String = "expireAtrange label bottom color"

/*: "unmute" :*/
fileprivate let str_emptyValue:String = "undistributionute"

/*: "MF:LiveChatGiftMsg" :*/
fileprivate let str_appData:[Character] = ["M","F",":","L","i","v","e","C","h","a","t","G","i","f","t","M","s","g"]

/*: "MF:PartyChatGiftMsg" :*/
fileprivate let str_colorTitle:String = "MF:Paricon view m touch in"
fileprivate let str_timeTitle:[Character] = ["G","i","f","t","M","s","g"]

/*: "gift" :*/
fileprivate let str_needName:String = "giplayert"

/*: "id" :*/
fileprivate let str_dataName:String = "icolor"

/*: "imgPreview" :*/
fileprivate let str_makeValue:String = "icon self top else lengthimgPrev"
fileprivate let str_mainValue:String = "modew"

/*: "name" :*/
fileprivate let str_liveName:String = "nstackme"

/*: "num" :*/
fileprivate let str_operationData:String = "userm"

/*: "mfBean" :*/
fileprivate let str_centerData:[UInt8] = [0xd5,0xde,0xfa,0xdd,0xd9,0xd6]

private func dataEqual(both num: UInt8) -> UInt8 {
    return num ^ 184
}

/*: "MF:LiveChatPrizeMsg" :*/
fileprivate let str_makeData:String = "let image type to nameMF:LiveC"
fileprivate let str_beData:[Character] = ["h"]
fileprivate let str_popValue:[Character] = ["a","t","P","r","i","z","e","M","s","g"]

/*: "<at>@[\\S\\s]+?</at>" :*/
fileprivate let str_modelNameData:String = "<at>@track network let hidden"
fileprivate let str_viewColorName:String = "file?</"
fileprivate let str_sendBackData:String = "name value string rawat>"

/*: "加入弹幕房间" :*/
fileprivate let str_indexValue:[Character] = ["加","入","弹","幕","房","间"]

/*: "Failed to enter the chat room. Please try again later" :*/
fileprivate let str_changeName:[UInt8] = [0xab,0xc6,0xce,0xd1,0xca,0xc9,0x85,0xd9,0xd4,0x85,0xca,0xd3,0xd9,0xca,0xd7,0x85,0xd9,0xcd,0xca,0x85,0xc8,0xcd,0xc6,0xd9,0x85,0xd7,0xd4,0xd4,0xd2,0x93,0x85,0xb5,0xd1,0xca,0xc6,0xd8,0xca,0x85,0xd9,0xd7,0xde,0x85,0xc6,0xcc,0xc6,0xce,0xd3,0x85,0xd1,0xc6,0xd9,0xca,0xd7]

fileprivate func dueMyVoice(layer num: UInt8) -> UInt8 {
    let value = Int(num) + 155
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "live/sendMsg" :*/
fileprivate let str_labelTitle:String = "live/menu var equal"
fileprivate let str_skinTitle:String = "show in hidden eachsendMsg"

/*: "groupId" :*/
fileprivate let str_managerValue:[Character] = ["g","r"]
fileprivate let str_arrayValue:[Character] = ["o","u","p","I","d"]

/*: "message" :*/
fileprivate let str_labData:String = "mmakesage"

/*: "toUid" :*/
fileprivate let str_modeValue:[Character] = ["t","o","U","i","d"]

/*: "party/sendMsg" :*/
fileprivate let str_extraValue:[Character] = ["p","a","r","t","y","/","s","e","n"]
fileprivate let str_youModelData:String = "button layer user topdMsg"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  IndexCommandThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

//: protocol TalkingDanmuManagerDelegate: NSObject {
protocol TableManagerDelegate: NSObject {
    /// 弹幕消息
    //: func func__DanmuRecvNewModel(Msg: TalkingLiveRoomDanmuModel)
    func viewEach(Msg: PublishMeasurable)
    /// 礼物动效
    //: func func__giftRecvNewModel(Msg: TalkingLiveRoomDanmuModel)
    func totalerval(Msg: PublishMeasurable)

    //: func func__actionUserNewModel(pushUid: String?)
    func humanActionUid(pushUid: String?)

    //: func func__longTouchUserNewModel(nickName: String, atUid: String?)
    func juggle(nickName: String, atUid: String?)
    // 用户进入房间
    //: func func__userLogin()
    func modelCurrent()
    // 用户退出房间
    //: func func__userLogout()
    func rubric()
}

//: class TalkingDanmuManager: NSObject {
class IndexCommandThen: NSObject {
    //: private var maxJoinRoom = 1
    private var maxJoinRoom = 1 // 重试加入弹幕房间次数
    //: private static var _instance: TalkingDanmuManager?
    private static var _instance: IndexCommandThen? // singleton
    //: open weak var delegate: TalkingDanmuManagerDelegate?
    open weak var delegate: TableManagerDelegate?

    //: override private init() {}
    override private init() {}
    //: class func shared() -> TalkingDanmuManager {
    class func statusInfoWith() -> IndexCommandThen {
        //: guard _instance != nil else {
        guard _instance != nil else {
            //: _instance = TalkingDanmuManager()
            _instance = IndexCommandThen()
            //: return _instance!
            return _instance!
        }
        //: return _instance!
        return _instance!
    }
}

// MARK: - 展示消息通知

//: extension TalkingDanmuManager {
extension IndexCommandThen {
    /// 公告消息
    //: func showAnnouncementMsg(str: String) {
    func userTo(str: String) {
        //: var model = TalkingLiveRoomDanmuModel()
        var model = PublishMeasurable()
        //: var msgInfo = TalkingDanmuMsgInfo()
        var msgInfo = ConstraintModelType()
        //: msgInfo.messageType = 1
        msgInfo.messageType = 1 /// (公告算是特殊的文本消息)
        //: msgInfo.content = str
        msgInfo.content = str
        //: model.msgInfo = msgInfo
        model.msgInfo = msgInfo
        //: let celldata = TalkingLiveRoomDammuCellData()
        let celldata = RangeUnknownCellData()
        //: model = celldata.showAnnouncementMsg(model: model)
        model = celldata.noneStop(model: model)
        //: delegate?.func__DanmuRecvNewModel(Msg: model)
        delegate?.viewEach(Msg: model)
    }

    /// 处理接收到的弹幕消息，展示
    /// - Parameters:
    ///   - msg: V2TIMMessage
    //: func onRecvDanmuNewMsg(msg: V2TIMMessage) {
    func modelColor(msg: V2TIMMessage) {
        //: guard let extra = String(data: msg.customElem.data, encoding: .utf8) else {
        guard let extra = String(data: msg.customElem.data, encoding: .utf8) else {
            //: printLog(message: " customElem.data is error")
            printLog(message: (String(str_gestureContent.prefix(5)) + "omElem.d" + str_fillAddValue.replacingOccurrences(of: "item", with: "a") + String(str_viewContent)))
            //: return
            return
        }
        //: let jsonData: Data = extra.data(using: .utf8)!
        let jsonData: Data = extra.data(using: .utf8)!
        //: let dict = try? JSONSerialization.jsonObject(with: jsonData, options: .mutableContainers) as? NSDictionary
        let dict = try? JSONSerialization.jsonObject(with: jsonData, options: .mutableContainers) as? NSDictionary
        //: let extraDic = dict?["extra"] as? [String: Any]
        let extraDic = dict?[(str_conversationText.replacingOccurrences(of: "text", with: "e"))] as? [String: Any]
        //: let ext = msg.customElem.extension
        let ext = msg.customElem.extension

        //: if ext == "MF:PartyChatSysMsg", extraDic?["opType"] as? String == "roomLogout" { // 语聊房退房操作
        if ext == (String(str_startStatusText.suffix(5)) + "rtyCh" + String(str_tableName.suffix(3)) + String(str_screenName)), extraDic?[(String(str_toAngleTitle.prefix(5)) + String(str_shareName))] as? String == (String(str_componentFindText.suffix(6)) + "gout") { // 语聊房退房操作
            //: self.delegate?.func__userLogout()
            self.delegate?.rubric()
            //: return
            return

                    //: } else if ext == "MF:PartyChatWelMsg" { // 语聊房进入欢迎消息
        } else if ext == (String(str_engineName) + String(str_targetData.suffix(6)) + "tWelMsg") { // 语聊房进入欢迎消息
            //: self.delegate?.func__userLogin()
            self.delegate?.modelCurrent()

            //: } else if let opType = extraDic?["opType"], opType as? String == "startLive" {
        } else if let opType = extraDic?[(String(str_toAngleTitle.prefix(5)) + String(str_shareName))], opType as? String == (str_femaleLocationData.replacingOccurrences(of: "selected", with: "ta") + String(str_miniSumData)) {
            //: NotificationCenter.default.post(name: LIVE_RECIVE_STARTLIVE_NOTIFICATION, object: nil)
            NotificationCenter.default.post(name: kLet_dismissDeviceValue, object: nil)
            //: return
            return

                    //: } else if let opType = extraDic?["opType"], opType as? String == "floatingScreen" { // 飘屏
        } else if let opType = extraDic?[(String(str_toAngleTitle.prefix(5)) + String(str_shareName))], opType as? String == String(bytes: str_giftEqualData.map{attachMakeInput(from: $0)}, encoding: .utf8)! { // 飘屏
            //: if let dict = extraDic?["floatingScreen"] {
            if let dict = extraDic?[String(bytes: str_giftEqualData.map{attachMakeInput(from: $0)}, encoding: .utf8)!] {
                //: NotificationCenter.default.post(name: LIVE_RECIVE_FLOATSCREEN_NOTIFICATION, object: nil, userInfo: ["floatingScreen": dict])
                NotificationCenter.default.post(name: kLet_tagSoundName, object: nil, userInfo: [String(bytes: str_giftEqualData.map{attachMakeInput(from: $0)}, encoding: .utf8)!: dict])
            }
            //: return
            return

                    //: } else if let opType = extraDic?["opType"], opType as? String == "mute" { // 禁言
        } else if let opType = extraDic?[(String(str_toAngleTitle.prefix(5)) + String(str_shareName))], opType as? String == (str_contentGestureRangeData.replacingOccurrences(of: "leading", with: "te")) { // 禁言
            //: if let uid = extraDic?["uid"] as? Int {
            if let uid = extraDic?[(String(str_allowData))] as? Int {
                //: if WatercourseThen.share.loginUserMode.userID == "\(uid)" {
                if WatercourseThen.share.loginUserMode.userID == "\(uid)" {
                    //: if ext == "MF:PartyChatSysMsg" { // 语聊房
                    if ext == (String(str_startStatusText.suffix(5)) + "rtyCh" + String(str_tableName.suffix(3)) + String(str_screenName)) { // 语聊房
                        //: TalkingVoiceRoomManager.shared().partyModel.muteExpireAt = extraDic?["expireAt"] as? Int ?? 0
                        DateRangeThen.portion().partyModel.muteExpireAt = extraDic?[(String(str_meText.prefix(8)))] as? Int ?? 0
                        //: }else {
                    } else {
                        //: TalkingLiveManager.shared().liveRoomModel.muteExpireAt = extraDic?["expireAt"] as? Int ?? 0
                        ListThen.deleteItem().liveRoomModel.muteExpireAt = extraDic?[(String(str_meText.prefix(8)))] as? Int ?? 0
                    }
                }
            }
            //: return
            return

                    //: } else if let opType = extraDic?["opType"], opType as? String == "unmute" { // 解禁
        } else if let opType = extraDic?[(String(str_toAngleTitle.prefix(5)) + String(str_shareName))], opType as? String == (str_emptyValue.replacingOccurrences(of: "distribution", with: "m")) { // 解禁
            //: if let uid = extraDic?["uid"] as? Int {
            if let uid = extraDic?[(String(str_allowData))] as? Int {
                //: if WatercourseThen.share.loginUserMode.userID == "\(uid)" {
                if WatercourseThen.share.loginUserMode.userID == "\(uid)" {
                    //: if WatercourseThen.share.loginUserMode.userID == "\(uid)" {
                    if WatercourseThen.share.loginUserMode.userID == "\(uid)" {
                        //: if ext == "MF:PartyChatSysMsg" { // 语聊房
                        if ext == (String(str_startStatusText.suffix(5)) + "rtyCh" + String(str_tableName.suffix(3)) + String(str_screenName)) { // 语聊房
                            //: TalkingVoiceRoomManager.shared().partyModel.muteExpireAt = 0
                            DateRangeThen.portion().partyModel.muteExpireAt = 0
                            //: }else {
                        } else {
                            //: TalkingLiveManager.shared().liveRoomModel.muteExpireAt = 0
                            ListThen.deleteItem().liveRoomModel.muteExpireAt = 0
                        }
                    }
                }
            }
            //: return
            return
        }

        //: if var model = TalkingLiveRoomDanmuModel.deserialize(from: extraDic as? Dictionary) {
        if var model = PublishMeasurable.deserialize(from: extraDic as? Dictionary) {
            //: model.MsgExtension = msg.customElem.extension
            model.MsgExtension = msg.customElem.extension

            //: if model.msgInfo?.messageType == 3, model.MsgExtension == "MF:LiveChatGiftMsg" || model.MsgExtension == "MF:PartyChatGiftMsg" {
            if model.msgInfo?.messageType == 3, model.MsgExtension == (String(str_appData)) || model.MsgExtension == (String(str_colorTitle.prefix(6)) + "tyChat" + String(str_timeTitle)) {
                //: let dic: Dictionary? = extraDic?["gift"] as? [String: Any]
                let dic: Dictionary? = extraDic?[(str_needName.replacingOccurrences(of: "player", with: "f"))] as? [String: Any]
                //: if dic == nil {
                if dic == nil {
                    //: return
                    return
                }
                //: model.gift?.fromUid = model.user?.uid ?? 0
                model.gift?.fromUid = model.user?.uid ?? 0
                //: model.gift?.fromNickname = model.user?.nickname ?? ""
                model.gift?.fromNickname = model.user?.nickname ?? ""
                //: model.gift?.fromHeadPic = model.user?.headPic ?? ""
                model.gift?.fromHeadPic = model.user?.headPic ?? ""
                //: model.gift?.pid = Int(dic?["id"] as! String)
                model.gift?.pid = Int(dic?["id"] as! String)
                //: model.gift?.giftPic = dic?["imgPreview"] as? String ?? ""
                model.gift?.giftPic = dic?[(String(str_makeValue.suffix(7)) + str_mainValue.replacingOccurrences(of: "mode", with: "ie"))] as? String ?? ""
                //: model.gift?.pname = dic?["name"] as! String
                model.gift?.pname = dic?[(str_liveName.replacingOccurrences(of: "stack", with: "a"))] as! String
                //: if model.gift?.animationTimes ?? 0 <= 0 {
                if model.gift?.animationTimes ?? 0 <= 0 {
                    //: model.gift?.animationTimes = dic?["num"] as? Int ?? 0
                    model.gift?.animationTimes = dic?[(str_operationData.replacingOccurrences(of: "user", with: "nu"))] as? Int ?? 0
                }

                //: if TalkingLiveManager.shared().liveRoomModel.roomId.count > 0 {
                if ListThen.deleteItem().liveRoomModel.roomId.count > 0 { // 直播间弹幕礼物(包含男性用户)
                    //: if TalkingLiveManager.shared().config.isSmallMode {
                    if ListThen.deleteItem().config.isSmallMode {
                        //: AbTalkingPrivateChatAnimatTool.shared.disposeReceiveLiveRoomGiftMsg(giftMessageDic: dict! as NSDictionary)
                        InsularThen.shared.giftQueryed(giftMessageDic: dict! as NSDictionary)
                        //: } else {
                    } else {
                        //: delegate?.func__giftRecvNewModel(Msg: model)
                        delegate?.totalerval(Msg: model)
                    }

                    //: } else if TalkingVoiceRoomManager.shared().isParty && model.gift?.isDisplay == true {
                } else if DateRangeThen.portion().isParty, model.gift?.isDisplay == true { // 语聊房弹幕礼物
                    //: if TalkingVoiceRoomManager.shared().isSmallMode {
                    if DateRangeThen.portion().isSmallMode {
                        //: AbTalkingPrivateChatAnimatTool.shared.disposeReceiveLiveRoomGiftMsg(giftMessageDic: dict! as NSDictionary)
                        InsularThen.shared.giftQueryed(giftMessageDic: dict! as NSDictionary)
                        //: } else {
                    } else {
                        //: delegate?.func__giftRecvNewModel(Msg: model)
                        delegate?.totalerval(Msg: model)
                    }
                }

                //: let mfBean = model.msgInfo?.mfBean
                let mfBean = model.msgInfo?.mfBean
                //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": mfBean ?? 0.0])
                NotificationCenter.default.post(name: kLet_errorBottomValue, object: nil, userInfo: [String(bytes: str_centerData.map{dataEqual(both: $0)}, encoding: .utf8)!: mfBean ?? 0.0])

                //: if model.gift?.giftPic.count ?? 0 > 0 {
                if model.gift?.giftPic.count ?? 0 > 0 {
                    //: if let newStr = model.gift?.giftPic.replacingOccurrences(of: UrlDomin.urlAes256Decrypt(), with: ReplaceUrlDomain) {
                    if let newStr = model.gift?.giftPic.replacingOccurrences(of: kLet_localContent.showUponCompute(), with: kLet_barRecordScreenText) {
                        //: URLSession.shared.dataTask(with: URL(string: newStr)!) { data, _, error in
                        URLSession.shared.dataTask(with: URL(string: newStr)!) { data, _, error in
                            //: DispatchQueue.main.async {
                            DispatchQueue.main.async {
                                //: guard let data = data, error == nil, let image = UIImage(data: data) else {
                                guard let data = data, error == nil, let image = UIImage(data: data) else {
                                    //: self.setLiveRoomDammuCellData(danmuModel: model)
                                    self.ground(danmuModel: model)
                                    //: return
                                    return
                                }
                                //: model.gift?.giftImg = image
                                model.gift?.giftImg = image
                                //: self.setLiveRoomDammuCellData(danmuModel: model)
                                self.ground(danmuModel: model)
                            }
                            //: }.resume()
                        }.resume()
                    }
                }
                //: return
                return
            }
            //: if WatercourseThen.share.appStatus == AppSkinStatus.special.rawValue, model.MsgExtension == "MF:LiveChatPrizeMsg" {
            if WatercourseThen.share.appStatus == PublishWidthTotal.special.rawValue, model.MsgExtension == (String(str_makeData.suffix(8)) + String(str_beData) + String(str_popValue)) {
                //: return
                return
            }

            //: setLiveRoomDammuCellData(danmuModel: model)
            ground(danmuModel: model)
        }
    }

    //: private func setLiveRoomDammuCellData(danmuModel: TalkingLiveRoomDanmuModel) {
    private func ground(danmuModel: PublishMeasurable) {
        //: var model = danmuModel
        var model = danmuModel
        //: let celldata = TalkingLiveRoomDammuCellData()
        let celldata = RangeUnknownCellData()
        //: model = celldata.caculateMsgHeight(model: model)
        model = celldata.toRequest(model: model)
        //: celldata.actionUserBlock = { [weak self] atUid in
        celldata.actionUserBlock = { [weak self] atUid in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.delegate?.func__actionUserNewModel(pushUid: atUid)
            self.delegate?.humanActionUid(pushUid: atUid)
        }
        //: celldata.longUserBlock = { [weak self] atUid in
        celldata.longUserBlock = { [weak self] atUid in
            //: guard let self = self else { return }
            guard let self = self else { return }

            //: var uid = String(model.user?.uid ?? 0)
            var uid = String(model.user?.uid ?? 0)
            //: var name = model.user?.nickname ?? ""
            var name = model.user?.nickname ?? ""
            //: if atUid != nil, model.msgInfo?.jumps.count ?? 0 > 0, atUid != WatercourseThen.share.loginUserMode.userID, atUid != String(model.user?.uid ?? 0) {
            if atUid != nil, model.msgInfo?.jumps.count ?? 0 > 0, atUid != WatercourseThen.share.loginUserMode.userID, atUid != String(model.user?.uid ?? 0) {
                //: uid = atUid!
                uid = atUid!
                //: let text = model.msgInfo?.content ?? ""
                let text = model.msgInfo?.content ?? ""
                //: let regex = try! NSRegularExpression(pattern: "<at>@[\\S\\s]+?</at>", options: [])
                let regex = try! NSRegularExpression(pattern: (String(str_modelNameData.prefix(5)) + "[\\S\\s]" + str_viewColorName.replacingOccurrences(of: "file", with: "+") + String(str_sendBackData.suffix(3))), options: [])
                //: let result = regex.matches(in: text, options: [], range: NSRange(location: 0, length: text.utf16.count))
                let result = regex.matches(in: text, options: [], range: NSRange(location: 0, length: text.utf16.count))
                //: let matchRange = result.first?.range
                let matchRange = result.first?.range
                //: if matchRange?.length ?? 0 > 10 {
                if matchRange?.length ?? 0 > 10 {
                    //: let subStr = String.substringByUnicodeIndex(str: text, from: (matchRange?.location ?? 0) + 5, to: (matchRange?.length ?? 0) - 5)
                    let subStr = String.roundLive(str: text, from: (matchRange?.location ?? 0) + 5, to: (matchRange?.length ?? 0) - 5)
                    //: name = subStr
                    name = subStr
                }
            }

            //: self.delegate?.func__longTouchUserNewModel(nickName: name, atUid: uid)
            self.delegate?.juggle(nickName: name, atUid: uid)
        }

        //: delegate?.func__DanmuRecvNewModel(Msg: model)
        delegate?.viewEach(Msg: model)
    }
}

//: extension TalkingDanmuManager {
extension IndexCommandThen {
    /// 释放单利
    //: class func danmu_releaseAllResource() {
    class func allowUncontrolled() {
        //: if TalkingDanmuManager._instance != nil {
        if IndexCommandThen._instance != nil {
            //: TalkingDanmuManager._instance = nil
            IndexCommandThen._instance = nil
        }
    }

    /// 加入直播弹幕
    //: class func joinLiveRoomDanmu(groupId: String, announcementMsg: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
    class func miscount(groupId: String, announcementMsg: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
        //: V2TIMManager.sharedInstance().joinGroup(groupId, msg: nil) {
        V2TIMManager.sharedInstance().joinGroup(groupId, msg: nil) {
            //: printLog(message: "加入弹幕房间")
            printLog(message: (String(str_indexValue)))
            //: if announcementMsg.count > 0 {
            if announcementMsg.count > 0 {
                //: TalkingDanmuManager.shared().showAnnouncementMsg(str: announcementMsg)
                IndexCommandThen.statusInfoWith().userTo(str: announcementMsg)
            }
            //: completion?(true)
            completion?(true)

            //: } fail: { _, _ in
        } fail: { _, _ in
            //: if TalkingDanmuManager.shared().maxJoinRoom == 1 {
            if IndexCommandThen.statusInfoWith().maxJoinRoom == 1 {
                //: TalkingDanmuManager.shared().maxJoinRoom = 0
                IndexCommandThen.statusInfoWith().maxJoinRoom = 0
                //: joinLiveRoomDanmu(groupId: groupId, announcementMsg: "")
                miscount(groupId: groupId, announcementMsg: "")
                //: } else {
            } else {
                //: TalkingDanmuManager.shared().func__showStatusBarErrorMsg(showMsg: "Failed to enter the chat room. Please try again later".localized)
                IndexCommandThen.statusInfoWith().detailKey(showMsg: String(bytes: str_changeName.map{dueMyVoice(layer: $0)}, encoding: .utf8)!.localized)
            }
            //: completion?(false)
            completion?(false)
        }
    }

    /// 退出群聊弹幕
    //: class func qiutGroupDanmu(groupId: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
    class func onOutput(groupId: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
        //: V2TIMManager.sharedInstance().quitGroup(groupId, succ: {
        V2TIMManager.sharedInstance().quitGroup(groupId, succ: {
            //: completion?(true)
            completion?(true)
            //: }, fail: { _, _ in
        }, fail: { _, _ in
            //: completion?(false)
            completion?(false)
            //: })
        })
    }
}

// MARK: - 发送接口

//: extension TalkingDanmuManager {
extension IndexCommandThen {
    /// 发送文本弹幕消息
    /// - Parameters:
    ///   - groupId: 弹幕群组id
    ///   - message: 消息内容
    ///   - toUid:   @用户的uid
    ///   - completion: 回调
    //: class func uploadToTextMsg(groupId: String, message: String, toUid: String? = "", completion: FinishBlock? = nil) {
    class func clickMessage(groupId: String, message: String, toUid: String? = "", completion: FinishBlock? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = IndexRequestModel()
        //: reqModel.requestPath = "live/sendMsg"
        reqModel.requestPath = (String(str_labelTitle.prefix(5)) + String(str_skinTitle.suffix(7)))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: var dict = [String: Any]()
        var dict = [String: Any]()
        //: dict["groupId"] = groupId
        dict[(String(str_managerValue) + String(str_arrayValue))] = groupId
        //: dict["message"] = message
        dict[(str_labData.replacingOccurrences(of: "make", with: "es"))] = message
        //: if toUid?.count ?? 0 > 0 {
        if toUid?.count ?? 0 > 0 {
            //: dict["toUid"] = toUid
            dict[(String(str_modeValue))] = toUid
        }
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_endVersionTitle.getStarted(model: reqModel) { succeed, result, errorModel in
            //: completion?(succeed, result, errorModel)
            completion?(succeed, result, errorModel)
        }
    }

    /// 语聊房发送文本弹幕消息
    /// - Parameters:
    ///   - groupId: 弹幕群组id
    ///   - message: 消息内容
    ///   - toUid:   @用户的uid
    ///   - completion: 回调
    //: class func voiceRoomSendTextMsg(groupId: String, message: String, toUid: String? = "", completion: FinishBlock? = nil) {
    class func requestShould(groupId: String, message: String, toUid: String? = "", completion: FinishBlock? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = IndexRequestModel()
        //: reqModel.requestPath = "party/sendMsg"
        reqModel.requestPath = (String(str_extraValue) + String(str_youModelData.suffix(4)))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: var dict = [String: Any]()
        var dict = [String: Any]()
        //: dict["groupId"] = groupId
        dict[(String(str_managerValue) + String(str_arrayValue))] = groupId
        //: dict["message"] = message
        dict[(str_labData.replacingOccurrences(of: "make", with: "es"))] = message
        //: if toUid?.count ?? 0 > 0 {
        if toUid?.count ?? 0 > 0 {
            //: dict["toUid"] = toUid
            dict[(String(str_modeValue))] = toUid
        }
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_endVersionTitle.getStarted(model: reqModel) { succeed, result, errorModel in
            //: completion?(succeed, result, errorModel)
            completion?(succeed, result, errorModel)
        }
    }
}
