
//: Declare String Begin

/*: "call/sendMsg" :*/
fileprivate let str_replyValue:String = "any type equal true letcall/se"
fileprivate let str_makeContent:String = "self else viewndMsg"

/*: "logId" :*/
fileprivate let str_frontData:[Character] = ["l","o","g","I","d"]

/*: "content" :*/
fileprivate let str_managerName:String = "ckey"
fileprivate let str_inputData:String = "nttapt"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AutomaticallyThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

//: protocol TalkingVideoDanmuManagerDelegate: NSObject {
protocol RawManagerDelegate: NSObject {
    /// 弹幕消息
    //: func func__DanmuRecvNewModel(Msg: TalkingVideoCallDanmuModel)
    func socialMsg(Msg: PublishTransformable)
}

//: class TalkingVideoDanmuManager: NSObject {
class AutomaticallyThen: NSObject {
    //: private var maxJoinRoom = 1
    private var maxJoinRoom = 1 // 重试加入弹幕房间次数

    //: private static var _instance: TalkingVideoDanmuManager?
    private static var _instance: AutomaticallyThen? // singleton

    //: open weak var delegate: TalkingVideoDanmuManagerDelegate?
    open weak var delegate: RawManagerDelegate?

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
    //: private override init() {}
    override private init() {}
    //: class func shared() -> TalkingVideoDanmuManager {
    class func way() -> AutomaticallyThen {
        //: guard _instance != nil else {
        guard _instance != nil else {
            //: _instance = TalkingVideoDanmuManager()
            _instance = AutomaticallyThen()
            //: return _instance!
            return _instance!
        }
        //: return _instance!
        return _instance!
    }
}

// MARK: - 展示消息通知

//: extension TalkingVideoDanmuManager {
extension AutomaticallyThen {
    /// 处理接收到的弹幕消息，展示
    /// - Parameters:
    ///   - msg:
    //: func onRecvDanmuNewMsg(msg: [String: Any]) {
    func alongFor(msg: [String: Any]) {
        //: if var model = TalkingVideoCallDanmuModel.deserialize(from: msg) {
        if var model = PublishTransformable.deserialize(from: msg) {
            //: let celldata = TalkingVideoCallDammuCellData.init()
            let celldata = RequestInsideReactiveCompatible()
            //: model = celldata.caculateMsgHeight(model: model)
            model = celldata.lownessColor(model: model)
            //: self.delegate?.func__DanmuRecvNewModel(Msg: model)
            self.delegate?.socialMsg(Msg: model)
        }
    }

    /// 发送文本弹幕消息
    /// - Parameters:
    ///   - logId: 当前通话id
    ///   - content: 消息内容
    ///   - completion: 回调

    //: class func uploadToTextMsg(logId: String, content: String, completion: FinishBlock? = nil) {
    class func designAdd(logId: String, content: String, completion: FinishBlock? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = IndexRequestModel()
        //: reqModel.requestPath = "call/sendMsg"
        reqModel.requestPath = (String(str_replyValue.suffix(7)) + String(str_makeContent.suffix(5)))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["logId"] = logId
        dict[(String(str_frontData))] = logId
        //: dict["content"] = content
        dict[(str_managerName.replacingOccurrences(of: "key", with: "o") + str_inputData.replacingOccurrences(of: "tap", with: "en"))] = content
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_endVersionTitle.getStarted(model: reqModel) { succeed, result, errorModel in
            //: completion?(succeed, result, errorModel)
            completion?(succeed, result, errorModel)
        }
    }
}

//: extension TalkingVideoDanmuManager {
extension AutomaticallyThen {
    /// 释放单利
    //: class func danmu_releaseAllResource() {
    class func clear() {
        //: if TalkingVideoDanmuManager._instance != nil {
        if AutomaticallyThen._instance != nil {
            //: TalkingVideoDanmuManager._instance = nil
            AutomaticallyThen._instance = nil
        }
    }
}
