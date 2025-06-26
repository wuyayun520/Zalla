
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_viewContent:[UInt8] = [0xc9,0xce,0xc9,0xd4,0x88,0xc3,0xcf,0xc4,0xc5,0xd2,0x9a,0x89,0x80,0xc8,0xc1,0xd3,0x80,0xce,0xcf,0xd4,0x80,0xc2,0xc5,0xc5,0xce,0x80,0xc9,0xcd,0xd0,0xcc,0xc5,0xcd,0xc5,0xce,0xd4,0xc5,0xc4]

private func selfView(play num: UInt8) -> UInt8 {
    return num ^ 160
}

/*: "System notification" :*/
fileprivate let str_liveValue:String = "name keySystem"
fileprivate let str_viewValue:String = "normalcatnormalon"

/*: "http://static. :*/
fileprivate let str_youData:String = "hselectedselectedp"
fileprivate let str_makeValue:String = "atic.design data"

/*: .com/app/img/message/xitong-v2.png" :*/
fileprivate let str_labelProgressName:[UInt8] = [0x11,0x5c,0x50,0x52,0x10,0x5e,0x4f,0x4f,0x10,0x56,0x52,0x58,0x10,0x52,0x5a,0x4c,0x4c,0x5e,0x58,0x5a,0x10,0x47,0x56,0x4b,0x50,0x51,0x58,0x12,0x49,0xd,0x11,0x4f,0x51,0x58]

private func indexTitle(show num: UInt8) -> UInt8 {
    return num ^ 63
}

/*: "Customer Care Center" :*/
fileprivate let str_resumeTitle:[Character] = ["C","u","s","t","o","m","e","r"," ","C"]
fileprivate let str_localValue:String = "value equal app view makeare C"

/*: .com/app/img/message/cs.png" :*/
fileprivate let str_modelExtraData:String = "corner conversation permission voice.com/a"
fileprivate let str_colorName:String = "g/mesvar image manager raw"
fileprivate let str_playerValue:String = "view touch color iconcs.pn"
fileprivate let str_conversationTitle:[Character] = ["g"]

/*: "Public Chat Room" :*/
fileprivate let str_transitionTitle:String = "if content hidden withPubl"
fileprivate let str_recordingText:String = "hat Roomif array return"

/*: "icon_chats_pcr" :*/
fileprivate let str_attributeName:String = "color addicon_"

/*: "New friends" :*/
fileprivate let str_modelName:[Character] = ["N","e"]
fileprivate let str_intimateTitle:[Character] = ["w"," ","f","r","i","e","n","d","s"]

/*: "icon_chats_mm" :*/
fileprivate let str_reportTitle:String = "icon_cphone index var block case"
fileprivate let str_infoData:[Character] = ["h","a","t","s","_","m","m"]

/*: " customElem.data is error" :*/
fileprivate let str_equalName:String = " custversion color view"
fileprivate let str_imageBarYearValue:String = "data letem.da"
fileprivate let str_colorActionName:String = " errbutton i"
fileprivate let str_keyName:[Character] = ["o","r"]

/*: "extra" :*/
fileprivate let str_titleOnName:[Character] = ["e","x","t","r","a"]

/*: "msgInfo" :*/
fileprivate let str_makeTargetData:String = "video result height contentmsgInfo"

/*: "messageType" :*/
fileprivate let str_managerData:[Character] = ["m","e","s","s","a"]
fileprivate let str_pathEditValue:String = "name to size colorgeType"

/*: "msgType" :*/
fileprivate let str_removeData:String = "in share view textmsgType"

/*: "tips" :*/
fileprivate let str_clearValue:[Character] = ["t","i","p","s"]

/*: "totalIntimate" :*/
fileprivate let str_mobileTitle:String = "clickoclicka"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WithConversationModel.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/3/9.
//

//: import UIKit
import UIKit

//: public class TalkingConversationModel: NSObject {
public class WithConversationModel: NSObject {
    //: var type: V2TIMConversationType?
    var type: V2TIMConversationType?
    //: var userID = ""         // 如果会话类型为 C2C 单聊，userID 会存储对方的用户ID，否则为 ni
    var userID = "" // 如果会话类型为 C2C 单聊，userID 会存储对方的用户ID，否则为 ni
    //: var sender = ""         // 消息发送者ID
    var sender = "" // 消息发送者ID
    //: var groupID = ""        // 如果会话类型为群聊，groupID 会存储当前群的群 ID，否则为 nil
    var groupID = "" // 如果会话类型为群聊，groupID 会存储当前群的群 ID，否则为 nil
    //: var groupType = ""      // 如果会话类型为群聊，groupType 为当前群类型
    var groupType = "" // 如果会话类型为群聊，groupType 为当前群类型
    //: var targetId = ""
    var targetId = ""
    //: var conversationID = "" // 会话唯一 ID，C2C 单聊组成方式为 c2c_userID，群聊组成方式为 group_groupID
    var conversationID = "" // 会话唯一 ID，C2C 单聊组成方式为 c2c_userID，群聊组成方式为 group_groupID

    //: var showName = ""
    var showName = ""
    //: var faceUrl = ""
    var faceUrl = ""
    //: var unreadCount: Int = 0
    var unreadCount: Int = 0 // 未读数
    //: var orderKey: Int = 0
    var orderKey: Int = 0 // 排序
    //: var isPinned = false
    var isPinned = false // 是否置顶
    //: var isShowMsgUnread = false
    var isShowMsgUnread = false // 会话中最后一条消息是否未读

    //: var draftText = ""      // 草稿信息
    var draftText = "" // 草稿信息
    //: var draftTimestamp: NSDate?
    var draftTimestamp: NSDate? // 草稿编辑时间，草稿设置的时候自动生成

    //: var onlyOneRoomId = "" // 聊天室ID,如果只有一个聊天室，则返回此字段
    var onlyOneRoomId = "" // 聊天室ID,如果只有一个聊天室，则返回此字段
    //: var num = 0
    var num = 0 // 聊天室当前在线人数

    //: var hasTimestamp = false
    var hasTimestamp = false // swift 解包
    //: var timestamp: NSDate?
    var timestamp: NSDate? // 会话中最后一条消息的时间
    //: var listShowMessage: V2TIMMessage?
    var listShowMessage: V2TIMMessage? // 最后一条消息
    //: var gj_userInfo: MixedThen?
    var gj_userInfo: MixedThen? // 用户信息
    //: var chatType: TalkingIMChatType = .unDefined
    var chatType: TalkingIMChatType = .unDefined
    //: var listOnlineStatus = 0
    var listOnlineStatus = 0 // 记录是否在线;1=在线,0=不在线（自定义字段）
    //: var isNewUser = false
    var isNewUser = false // 表示是否是新用户（自定义字段）
    //: var ismoreAPAuto = false
    var ismoreAPAuto = false // 更多会话认证
    //: var totalIntimate = 0
    var totalIntimate = 0 // 与当前用户的亲密值
    //: var userStatus    = 1
    var userStatus = 1 // 用户状态  1正常2被禁言3被封号5被拉黑

    //: override init() {
    override init() {
        //: super.init()
        super.init()
    }

    //: init(conv: V2TIMConversation) {
    init(conv: V2TIMConversation) {
        //: super.init()
        super.init()
        //: self.type = conv.type
        self.type = conv.type
        //: self.userID     = conv.userID ?? ""
        self.userID = conv.userID ?? ""
        //: self.sender     = conv.lastMessage?.sender ?? ""
        self.sender = conv.lastMessage?.sender ?? ""
        //: self.groupID    = conv.groupID ?? ""
        self.groupID = conv.groupID ?? ""
        //: self.groupType  = conv.groupType ?? ""
        self.groupType = conv.groupType ?? ""
        //: self.targetId   = self.userID.count > 0 ? self.userID:self.groupID
        self.targetId = self.userID.count > 0 ? self.userID : self.groupID
        //: self.conversationID = conv.conversationID
        self.conversationID = conv.conversationID
        //: self.showName = conv.showName
        self.showName = conv.showName
        //: self.faceUrl = conv.faceUrl ?? ""
        self.faceUrl = conv.faceUrl ?? ""
        //: self.unreadCount = Int(conv.unreadCount)
        self.unreadCount = Int(conv.unreadCount)
        //: self.orderKey = Int(conv.orderKey)
        self.orderKey = Int(conv.orderKey)
        //: self.isPinned = conv.isPinned
        self.isPinned = conv.isPinned
        //: if conv.lastMessage?.timestamp != nil {
        if conv.lastMessage?.timestamp != nil {
            //: self.hasTimestamp = true
            self.hasTimestamp = true
            //: self.timestamp = conv.lastMessage?.timestamp as NSDate?
            self.timestamp = conv.lastMessage?.timestamp as NSDate?
        }
        //: self.draftText = conv.draftText ?? ""
        self.draftText = conv.draftText ?? ""
        //: self.isShowMsgUnread = (!(conv.lastMessage?.isSelf ?? true) && conv.unreadCount > 0)
        self.isShowMsgUnread = (!(conv.lastMessage?.isSelf ?? true) && conv.unreadCount > 0)
        //: if conv.type == .C2C {
        if conv.type == .C2C {
            //: self.chatType = .private
            self.chatType = .private
            //: if conv.userID == ListMacroDefine.getXiaoMiID() {
            if conv.userID == ListMacroDefine.suspend() {
                //: self.chatType = .system
                self.chatType = .system
                //: } else if conv.userID == ListMacroDefine.getCustomerServiceID() {
            } else if conv.userID == ListMacroDefine.storageMediumId() {
                //: self.chatType = .service
                self.chatType = .service
            }

            //: } else {
        } else {
            //: self.chatType = .group
            self.chatType = .group
        }
        //: if conv.lastMessage != nil {
        if conv.lastMessage != nil {
            //: if self.func__checkMsgCanShow(msg: conv.lastMessage) {
            if self.smartPrice(msg: conv.lastMessage) {
                //: self.listShowMessage = conv.lastMessage
                self.listShowMessage = conv.lastMessage
            }
        }
        //: if self.listShowMessage != nil {
        if self.listShowMessage != nil {
            //: self.func__updateLastShowMsg()
            self.database()
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_viewContent.map{selfView(play: $0)}, encoding: .utf8)!)
    }
}

// MARK: - 获取占位model

//: extension TalkingConversationModel {
extension WithConversationModel {
    /// 获取占位model
    /// - Parameter chatType: model类型
    /// - Returns: model
    //: class func getPlaceholderModel(chatType: TalkingIMChatType) -> TalkingConversationModel {
    class func equalEnable(chatType: TalkingIMChatType) -> WithConversationModel {
        //: let model = TalkingConversationModel()
        let model = WithConversationModel()
        //: model.chatType = chatType
        model.chatType = chatType
        //: if chatType == .system {
        if chatType == .system { // 系统通知
            //: model.userID = ListMacroDefine.getXiaoMiID()
            model.userID = ListMacroDefine.suspend()
            //: model.targetId = ListMacroDefine.getXiaoMiID()
            model.targetId = ListMacroDefine.suspend()
            //: model.showName = "System notification".localized
            model.showName = (String(str_liveValue.suffix(6)) + " notif" + str_viewValue.replacingOccurrences(of: "normal", with: "i")).localized
            //: model.faceUrl = "http://static.\(ReplaceUrlDomain).com/app/img/message/xitong-v2.png"
            model.faceUrl = (str_youData.replacingOccurrences(of: "selected", with: "t") + "://st" + String(str_makeValue.prefix(5))) + "\(kLet_barRecordScreenText)" + String(bytes: str_labelProgressName.map{indexTitle(show: $0)}, encoding: .utf8)!

            //: } else if chatType == .service {
        } else if chatType == .service { // 官方客服
            //: model.userID = ListMacroDefine.getCustomerServiceID()
            model.userID = ListMacroDefine.storageMediumId()
            //: model.targetId = ListMacroDefine.getCustomerServiceID()
            model.targetId = ListMacroDefine.storageMediumId()
            //: model.showName = "Customer Care Center".localized
            model.showName = (String(str_resumeTitle) + String(str_localValue.suffix(5)) + "enter").localized
            //: model.faceUrl = "http://static.\(ReplaceUrlDomain).com/app/img/message/cs.png"
            model.faceUrl = (str_youData.replacingOccurrences(of: "selected", with: "t") + "://st" + String(str_makeValue.prefix(5))) + "\(kLet_barRecordScreenText)" + (String(str_modelExtraData.suffix(6)) + "pp/im" + String(str_colorName.prefix(5)) + "sage/" + String(str_playerValue.suffix(5)) + String(str_conversationTitle))

            //: } else if chatType == .group {
        } else if chatType == .group { // 公共聊天室
            //: model.showName = "Public Chat Room".localized
            model.showName = (String(str_transitionTitle.suffix(4)) + "ic C" + String(str_recordingText.prefix(8))).localized
            //: model.faceUrl = "icon_chats_pcr"
            model.faceUrl = (String(str_attributeName.suffix(5)) + "chats_pcr")

            //: } else if chatType == .moreMsg {
        } else if chatType == .moreMsg { // 更多消息
            //: model.showName = "New friends".localized
            model.showName = (String(str_modelName) + String(str_intimateTitle)).localized
            //: model.faceUrl = "icon_chats_mm"
            model.faceUrl = (String(str_reportTitle.prefix(6)) + String(str_infoData))
        }

        //: return model
        return model
    }
}

//: extension TalkingConversationModel {
extension WithConversationModel {
    //: func func__updateLastShowMsg() {
    func database() {
        //: if self.type == .C2C {
        if self.type == .C2C {
            //: V2TIMManager.sharedInstance().getC2CHistoryMessageList(self.userID, count: 10, lastMsg: nil) { msgs in
            V2TIMManager.sharedInstance().getC2CHistoryMessageList(self.userID, count: 10, lastMsg: nil) { msgs in
                //: guard let msgsList: [V2TIMMessage] = msgs  else {
                guard let msgsList: [V2TIMMessage] = msgs else {
                    //: return
                    return
                }
                //: for msg in msgsList {
                for msg in msgsList {
                    //: if self.func__checkMsgCanShow(msg: msg) {
                    if self.smartPrice(msg: msg) {
                        //: self.listShowMessage = msg
                        self.listShowMessage = msg
                        //: if msg.timestamp != nil {
                        if msg.timestamp != nil {
                            //: self.timestamp = msg.timestamp as NSDate?
                            self.timestamp = msg.timestamp as NSDate?
                            //: self.hasTimestamp = true
                            self.hasTimestamp = true
                        }
                        //: self.isShowMsgUnread = (!msg.isSelf && !msg.isRead)
                        self.isShowMsgUnread = (!msg.isSelf && !msg.isRead)
                        //: break
                        break
                    }
                }
                //: } fail: { code, des in
            } fail: { _, _ in
            }
            //: } else {
        } else {
            //: V2TIMManager.sharedInstance().getGroupHistoryMessageList(self.groupID, count: 10, lastMsg: nil) { msgs in
            V2TIMManager.sharedInstance().getGroupHistoryMessageList(self.groupID, count: 10, lastMsg: nil) { msgs in
                //: guard let msgsList: [V2TIMMessage] = msgs  else {
                guard let msgsList: [V2TIMMessage] = msgs else {
                    //: return
                    return
                }
                //: for msg in msgsList {
                for msg in msgsList {
                    //: if self.func__checkMsgCanShow(msg: msg) {
                    if self.smartPrice(msg: msg) {
                        //: self.listShowMessage = msg
                        self.listShowMessage = msg
                        //: if msg.timestamp != nil {
                        if msg.timestamp != nil {
                            //: self.timestamp = msg.timestamp as NSDate?
                            self.timestamp = msg.timestamp as NSDate?
                            //: self.hasTimestamp = true
                            self.hasTimestamp = true
                        }
                        //: self.isShowMsgUnread = (!msg.isSelf && !msg.isRead)
                        self.isShowMsgUnread = (!msg.isSelf && !msg.isRead)
                        //: break
                        break
                    }
                }
                //: } fail: { code, des in
            } fail: { _, _ in
            }
        }
    }

    //: func func__checkMsgCanShow(msg: V2TIMMessage) -> Bool {
    func smartPrice(msg: V2TIMMessage) -> Bool {
        //: guard let extra = String(data: msg.customElem.data, encoding: .utf8) else {
        guard let extra = String(data: msg.customElem.data, encoding: .utf8) else {
            //: printLog(message: " customElem.data is error")
            printLog(message: (String(str_equalName.prefix(5)) + "omEl" + String(str_imageBarYearValue.suffix(5)) + "ta is" + String(str_colorActionName.prefix(4)) + String(str_keyName)))
            //: return false
            return false
        }
        //: let json = JSON(parseJSON: extra)
        let json = JSON(parseJSON: extra)
        //: let extraDic = json["extra"]
        let extraDic = json[(String(str_titleOnName))]
        //: let msgInfo = extraDic["msgInfo"]
        let msgInfo = extraDic[(String(str_makeTargetData.suffix(7)))]
        //: var messageType = extraDic["messageType"].intValue
        var messageType = extraDic[(String(str_managerData) + String(str_pathEditValue.suffix(6)))].intValue
        //: let msgType = msgInfo["msgType"].stringValue
        let msgType = msgInfo[(String(str_removeData.suffix(7)))].stringValue
        //: if messageType == 0 {
        if messageType == 0 {
            //: messageType = msgInfo["messageType"].intValue
            messageType = msgInfo[(String(str_managerData) + String(str_pathEditValue.suffix(6)))].intValue
        }
        //: if (!msgType.isEmptyString && msgType == "tips") || messageType == 15 || messageType == 17 {
        if (!msgType.isEmptyString && msgType == (String(str_clearValue))) || messageType == 15 || messageType == 17 {
            //: return false
            return false
        }
        //: return true
        return true
    }

    //: func func__updateLastConvModel(conv: V2TIMConversation) {
    func toModel(conv: V2TIMConversation) {
        //: self.draftText = conv.draftText ?? ""
        self.draftText = conv.draftText ?? ""
        //: self.orderKey = Int(conv.orderKey)
        self.orderKey = Int(conv.orderKey)
        //: self.unreadCount = Int(conv.unreadCount)
        self.unreadCount = Int(conv.unreadCount)

        //: if conv.lastMessage != nil {
        if conv.lastMessage != nil {
            //: if self.func__checkMsgCanShow(msg: conv.lastMessage) {
            if self.smartPrice(msg: conv.lastMessage) {
                //: self.listShowMessage = conv.lastMessage
                self.listShowMessage = conv.lastMessage
                //: if conv.lastMessage.timestamp != nil {
                if conv.lastMessage.timestamp != nil {
                    //: self.timestamp = conv.lastMessage.timestamp as NSDate?
                    self.timestamp = conv.lastMessage.timestamp as NSDate?
                    //: self.hasTimestamp = true
                    self.hasTimestamp = true
                }
                //: self.sender = conv.lastMessage.sender
                self.sender = conv.lastMessage.sender
                //: self.isShowMsgUnread = (!conv.lastMessage.isSelf && conv.unreadCount > 0)
                self.isShowMsgUnread = (!conv.lastMessage.isSelf && conv.unreadCount > 0)
                //: self.updateIntimateTool(conv: conv)
                self.blockInsert(conv: conv)
                //: } else {
            } else {
                //: self.func__updateLastShowMsg()
                self.database()
            }
        }
    }
}

/// 亲密度
//: extension TalkingConversationModel {
extension WithConversationModel {
    //: private func updateIntimateTool(conv: V2TIMConversation) {
    private func blockInsert(conv: V2TIMConversation) {
        /// 新消息会话变更时，获取亲密度
        //: let data = conv.lastMessage!
        let data = conv.lastMessage!
        //: let dic = TUIMsgChatManager.parseTXMessageData(data: data.customElem.data)
        let dic = TUIMsgChatManager.parseTXMessageData(data: data.customElem.data)
        //: let jsonDic = JSON(dic)
        let jsonDic = JSON(dic)
        //: let extra = jsonDic["extra"].dictionary
        let extra = jsonDic[(String(str_titleOnName))].dictionary
        //: let msgInfo = extra?["msgInfo"]?.dictionary
        let msgInfo = extra?[(String(str_makeTargetData.suffix(7)))]?.dictionary
        //: if let totalIntimate = msgInfo?["totalIntimate"]?.int {
        if let totalIntimate = msgInfo?[(str_mobileTitle.replacingOccurrences(of: "click", with: "t") + "lIntimate")]?.int {
            //: if let model = UtiliserThen.cache_getCachedUserInfo(targetId: self.userID) {
            if let model = UtiliserThen.liberalDemocratParty(targetId: self.userID) {
                /// 获取消息为最新时
                //: let time = Int(data.timestamp.timeIntervalSince1970)
                let time = Int(data.timestamp.timeIntervalSince1970)
                //: if time > model.intimateTime {
                if time > model.intimateTime {
                    //: self.totalIntimate = totalIntimate
                    self.totalIntimate = totalIntimate
                    /// 更新
                    //: UtiliserThen.cache_updateIntimate(with: userID, intimate: totalIntimate, currTime: time)
                    UtiliserThen.skipToTime(with: userID, intimate: totalIntimate, currTime: time)
                    //: } else {
                } else {
                    //: self.totalIntimate = model.intimate
                    self.totalIntimate = model.intimate
                }
                //: } else {
            } else {
                //: self.totalIntimate = totalIntimate
                self.totalIntimate = totalIntimate
            }
        }
    }
}
