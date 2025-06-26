
//: Declare String Begin

/*: "live/enter" :*/
fileprivate let str_fillReportValue:String = "break let error false previouslive/"
fileprivate let str_sourceData:[Character] = ["r"]

/*: "streamerUid" :*/
fileprivate let str_nameMessageText:[UInt8] = [0x20,0x21,0x1f,0x12,0xe,0x1a,0x12,0x1f,0x2,0x16,0x11]

fileprivate func rangeItem(color num: UInt8) -> UInt8 {
    let value = Int(num) + 83
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "live/userNum" :*/
fileprivate let str_titleData:String = "live/usto view let tap return"
fileprivate let str_finishTitle:String = "add var title user toperNum"

/*: "chatGroupId" :*/
fileprivate let str_modelText:[UInt8] = [0x64,0x49,0x70,0x75,0x6f,0x72,0x47,0x74,0x61,0x68,0x63]

/*: "live/members" :*/
fileprivate let str_componentValue:String = "live/view image user handle return"
fileprivate let str_liveText:String = "no"

/*: "live/mute" :*/
fileprivate let str_bottomData:String = "live/m item lock"
fileprivate let str_fitValue:String = "MUTE"

/*: "targetUid" :*/
fileprivate let str_viewMessageValue:[UInt8] = [0x64,0x69,0x55,0x74,0x65,0x67,0x72,0x61,0x74]

/*: "duration" :*/
fileprivate let str_ofTableName:[UInt8] = [0x54,0x45,0x42,0x51,0x44,0x59,0x5f,0x5e]

private func viewRaw(pass num: UInt8) -> UInt8 {
    return num ^ 48
}

/*: "live/unmute" :*/
fileprivate let str_frameData:[Character] = ["l","i","v","e","/","u","n","m","u","t","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  OrganicStructureReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

// 观众/主播
//: class TalkingAudienceManager: NSObject {
class OrganicStructureReactiveCompatible: NSObject {
    /// 进房
    //: func req_enterLiveRoom(streamerUid: String, completion: @escaping FinishBlock) {
    func query(streamerUid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = IndexRequestModel()
        //: reqModel.requestPath = "live/enter"
        reqModel.requestPath = (String(str_fillReportValue.suffix(5)) + "ente" + String(str_sourceData))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["streamerUid": streamerUid]
        reqModel.params = [String(bytes: str_nameMessageText.map{rangeItem(color: $0)}, encoding: .utf8)!: streamerUid]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_endVersionTitle.getStarted(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 在线人数
    //: func req_liveRoomOnlineNum(chatGroupId: String, completion: @escaping FinishBlock) {
    func passJudgmentCompletion(chatGroupId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = IndexRequestModel()
        //: reqModel.requestPath = "live/userNum"
        reqModel.requestPath = (String(str_titleData.prefix(7)) + String(str_finishTitle.suffix(5)))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["chatGroupId": chatGroupId]
        reqModel.params = [String(bytes: str_modelText.reversed(), encoding: .utf8)!: chatGroupId]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_endVersionTitle.getStarted(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 在线列表
    //: func req_liveRoomOnlineList(chatGroupId: String, completion: @escaping FinishBlock) {
    func addButton(chatGroupId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = IndexRequestModel()
        //: reqModel.requestPath = "live/members"
        reqModel.requestPath = (String(str_componentValue.prefix(5)) + "member" + str_liveText.replacingOccurrences(of: "no", with: "s"))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["chatGroupId": chatGroupId]
        reqModel.params = [String(bytes: str_modelText.reversed(), encoding: .utf8)!: chatGroupId]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_endVersionTitle.getStarted(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 禁言
    //: func req_liveRoomMute(targetUid: String, duration: String, completion: @escaping FinishBlock) {
    func withGroup(targetUid: String, duration: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = IndexRequestModel()
        //: reqModel.requestPath = "live/mute"
        reqModel.requestPath = (String(str_bottomData.prefix(5)) + str_fitValue.lowercased())
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["targetUid": targetUid, "duration": duration]
        reqModel.params = [String(bytes: str_viewMessageValue.reversed(), encoding: .utf8)!: targetUid, String(bytes: str_ofTableName.map{viewRaw(pass: $0)}, encoding: .utf8)!: duration]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_endVersionTitle.getStarted(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 解禁
    //: func req_liveRoomUnmute(targetUid: String, completion: @escaping FinishBlock) {
    func clickCompletion(targetUid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = IndexRequestModel()
        //: reqModel.requestPath = "live/unmute"
        reqModel.requestPath = (String(str_frameData))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["targetUid": targetUid]
        reqModel.params = [String(bytes: str_viewMessageValue.reversed(), encoding: .utf8)!: targetUid]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_endVersionTitle.getStarted(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
