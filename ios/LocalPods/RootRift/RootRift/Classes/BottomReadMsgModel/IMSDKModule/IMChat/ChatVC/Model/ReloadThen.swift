
//: Declare String Begin

/*: "msgInfo" :*/
fileprivate let str_instanceValue:String = "leading video false screen colormsgIn"
fileprivate let str_backgroundContent:String = "fsection"

/*: "jumps" :*/
fileprivate let str_colorData:[Character] = ["j","u","m","p","s"]

/*: "uid" :*/
fileprivate let str_textEqualValue:String = "lineid"

/*: "roomId" :*/
fileprivate let str_itValue:[UInt8] = [0x64,0x49,0x6d,0x6f,0x6f,0x72]

/*: "msgId" :*/
fileprivate let str_lengthData:[UInt8] = [0x5a,0x44,0x50,0x7e,0x53]

/*: "time" :*/
fileprivate let str_interactionName:[UInt8] = [0x90,0x8d,0x89,0x81]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ReloadThen.swift
//  AbroadTalking
//
//  Created by young on 2023/4/12.
//

//: import UIKit
import UIKit

//: class TalkingGroupChatManager: NSObject {
class ReloadThen: NSObject {
    //: weak var chatRoomVC: TalkingGroupChatController?
    weak var chatRoomVC: AllRecognizerDelegate?
    //: @objc static let share = TalkingGroupChatManager()
    @objc static let share = ReloadThen()
    //: private override init() {}
    override private init() {}
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

// MARK: - 处理@ 消息

//: extension TalkingGroupChatManager {
extension ReloadThen {
    /// 接收到@ 消息
    /// - Parameters:
    ///   - msg: 腾讯消息体
    ///   - extraInfo: "extra" 数据
    //: func receivedMentionMsg(msg: V2TIMMessage, extraInfo: [AnyHashable: Any]) {
    func quantitativeRelation(msg: V2TIMMessage, extraInfo: [AnyHashable: Any]) {
        //: let dict = JSON(extraInfo)
        let dict = JSON(extraInfo)
        //: let jumps = dict["msgInfo"]["jumps"].arrayValue
        let jumps = dict[(String(str_instanceValue.suffix(5)) + str_backgroundContent.replacingOccurrences(of: "section", with: "o"))][(String(str_colorData))].arrayValue

        // 判断是否有@ 本人
        //: var atMe = false
        var atMe = false
        //: for dict in jumps {
        for dict in jumps {
            //: if dict["uid"].stringValue == WatercourseThen.share.loginUid {
            if dict[(str_textEqualValue.replacingOccurrences(of: "line", with: "u"))].stringValue == WatercourseThen.share.loginUid {
                //: atMe = true
                atMe = true
                //: break
                break
            }
        }
        //: guard atMe == true else { return }
        guard atMe == true else { return }

        //: let sendTime = msg.timestamp.timeIntervalSince1970*1000
        let sendTime = msg.timestamp.timeIntervalSince1970 * 1000
        //: if ListMacroDefine.isGroupChat(msg.groupID) {
        if ListMacroDefine.colorQuantity(msg.groupID) { // 家族
            //: } else {
        } else { // 公共聊天室
            //: guard let vc = chatRoomVC else { return }
            guard let vc = chatRoomVC else { return }
            //: let dict: [String: Any] = ["roomId": msg.groupID ?? "",
            let dict: [String: Any] = [String(bytes: str_itValue.reversed(), encoding: .utf8)!: msg.groupID ?? "",
                                       //: "msgId": msg.msgID ?? "",
                                       String(bytes: str_lengthData.map{$0^55}, encoding: .utf8)!: msg.msgID ?? "",
                                       //: "time": sendTime]
                                       String(bytes: str_interactionName.map{$0^228}, encoding: .utf8)!: sendTime]
            //: vc.handleMentionMsg(info: dict)
            vc.backMisconduct(info: dict)
        }
    }
}
