
//: Declare String Begin

/*: "party/enter" :*/
fileprivate let str_dataContent:String = "party/etop string edit player"
fileprivate let str_modelData:[Character] = ["n","t","e","r"]

/*: "roomId" :*/
fileprivate let str_topName:[UInt8] = [0x45,0x42,0x42,0x40,0x1c,0x37]

fileprivate func windowFrame(normal num: UInt8) -> UInt8 {
    let value = Int(num) - 211
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "party/start" :*/
fileprivate let str_labManagerValue:String = "party/staelse message"
fileprivate let str_fillNameData:String = "rmedium"

/*: "party/close" :*/
fileprivate let str_changeData:String = "user type self label tempparty/c"
fileprivate let str_gestureText:String = "lolabe"

/*: "party/changeRoom" :*/
fileprivate let str_requestName:[Character] = ["p","a","r","t","y","/","c","h","a","n","g","e","R","o","o","m"]

/*: "beforeRoomId" :*/
fileprivate let str_leadingValue:[UInt8] = [0x17,0x1a,0x1b,0x24,0x27,0x1a,0x7,0x24,0x24,0x22,0xfe,0x19]

fileprivate func succeedTo(equal num: UInt8) -> UInt8 {
    let value = Int(num) + 75
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "party/mikeList" :*/
fileprivate let str_indexTitle:String = "true nextparty/m"
fileprivate let str_clickName:String = "label make appikeList"

/*: "uid" :*/
fileprivate let str_topTitle:[UInt8] = [0x64,0x69,0x75]

/*: "type" :*/
fileprivate let str_atValue:[UInt8] = [0x84,0x89,0x80,0x95]

private func stopName(lab num: UInt8) -> UInt8 {
    return num ^ 240
}

/*: "pos" :*/
fileprivate let str_viewEqualValue:[UInt8] = [0x78,0x67,0x7b]

private func parcelOfLand(block num: UInt8) -> UInt8 {
    return num ^ 8
}

/*: "toPos" :*/
fileprivate let str_groupValue:[Character] = ["t","o","P","o","s"]

/*: "party/mike" :*/
fileprivate let str_textValue:String = "PARTY"
fileprivate let str_backValue:[Character] = ["/","m","i","k","e"]

/*: "party/adminMike" :*/
fileprivate let str_smallText:String = "whiteart"
fileprivate let str_normalTitle:[Character] = ["n","M","i","k","e"]

/*: "party/list" :*/
fileprivate let str_dataText:[Character] = ["p","a","r","t","y","/","l","i","s","t"]

/*: "party/onlineNum" :*/
fileprivate let str_sharedValue:[Character] = ["p","a","r","t","y","/","o","n","l","i","n","e","N","u","m"]

/*: "party/onlineList" :*/
fileprivate let str_actualElectText:[Character] = ["p","a","r","t","y","/","o","n","l","i","n","e","L","i","s","t"]

/*: "party/mute" :*/
fileprivate let str_arrayValue:String = "random in pathparty/m"
fileprivate let str_succeedValue:[Character] = ["u","t","e"]

/*: "targetUid" :*/
fileprivate let str_makeValue:[UInt8] = [0xca,0xdf,0xcc,0xd9,0xdb,0xca,0xeb,0xd7,0xda]

private func resultWithRecord(equal num: UInt8) -> UInt8 {
    return num ^ 190
}

/*: "duration" :*/
fileprivate let str_replaceData:[UInt8] = [0xc0,0xd1,0xd6,0xc5,0xd0,0xcd,0xcb,0xca]

private func managerBring(lab num: UInt8) -> UInt8 {
    return num ^ 164
}

/*: "party/unmute" :*/
fileprivate let str_modelValue:String = "paequalt"

/*: "party/kickout" :*/
fileprivate let str_viewGoValue:[Character] = ["p","a","r","t","y","/","k"]
fileprivate let str_giftTitle:String = "ICKOUT"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewReqTool.swift
//  RootRift
//
//  Created by DouXiu on 2024/9/19.
//

/// 语聊房相关接口
//: class TalkingVoiceRoomReqTool {
class ViewReqTool {
    /// 开启语聊房
    /// - Parameters:
    ///   - roomId: 房间Id（nil：创建房间；有值：进入房间）
    ///   - completion: 回调
    //: class func req_voiceRoomCheck(roomId: String? = nil, completion: @escaping FinishBlock) {
    class func withCompletion(roomId: String? = nil, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = IndexRequestModel()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: if let roomId = roomId {
        if let roomId = roomId { // 进入房间
            //: reqModel.requestPath = "party/enter"
            reqModel.requestPath = (String(str_dataContent.prefix(7)) + String(str_modelData))
            //: reqModel.params = ["roomId": roomId]
            reqModel.params = [String(bytes: str_topName.map{windowFrame(normal: $0)}, encoding: .utf8)!: roomId]
            //: } else {
        } else { // 创建房间
            //: reqModel.requestPath = "party/start"
            reqModel.requestPath = (String(str_labManagerValue.prefix(9)) + str_fillNameData.replacingOccurrences(of: "medium", with: "t"))
        }
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_endVersionTitle.getStarted(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 房主销毁语聊房
    //: class func req_voiceRoomClose(roomId: String, completion: FinishBlock? = nil) {
    class func rap(roomId: String, completion: FinishBlock? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = IndexRequestModel()
        //: reqModel.requestPath = "party/close"
        reqModel.requestPath = (String(str_changeData.suffix(7)) + str_gestureText.replacingOccurrences(of: "lab", with: "s"))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = ["roomId": roomId]
        reqModel.params = [String(bytes: str_topName.map{windowFrame(normal: $0)}, encoding: .utf8)!: roomId]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_endVersionTitle.getStarted(model: reqModel) { succeed, result, errorModel in
            //: completion?(succeed, result, errorModel)
            completion?(succeed, result, errorModel)
        }
    }

    /// 切房
    /// - Parameters:
    ///   - roomId: 当前进入房间Id
    ///   - beforeRoomId: 上一房间Id
    ///   - completion: 回调
    //: class func req_voiceRoomSwitch(roomId: String, beforeRoomId: String, completion: @escaping FinishBlock) {
    class func overdoCompletion(roomId: String, beforeRoomId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = IndexRequestModel()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.requestPath = "party/changeRoom"
        reqModel.requestPath = (String(str_requestName))
        //: reqModel.params = ["roomId": roomId, "beforeRoomId": beforeRoomId]
        reqModel.params = [String(bytes: str_topName.map{windowFrame(normal: $0)}, encoding: .utf8)!: roomId, String(bytes: str_leadingValue.map{succeedTo(equal: $0)}, encoding: .utf8)!: beforeRoomId]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_endVersionTitle.getStarted(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取语聊房麦位列表
    //: class func req_getMikeList(roomId: String, completion: @escaping (_ data: [TalkingMikeListItemModel]) -> Void) {
    class func aircraft(roomId: String, completion: @escaping (_ data: [ScaleMeasurable]) -> Void) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = IndexRequestModel()
        //: reqModel.requestPath = "party/mikeList"
        reqModel.requestPath = (String(str_indexTitle.suffix(7)) + String(str_clickName.suffix(7)))
        //: reqModel.params = ["roomId": roomId]
        reqModel.params = [String(bytes: str_topName.map{windowFrame(normal: $0)}, encoding: .utf8)!: roomId]
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: GJ.startRequest(model: reqModel) { _, result, _ in
        kLet_endVersionTitle.getStarted(model: reqModel) { _, result, _ in
            //: var dataArr: [TalkingMikeListItemModel] = []
            var dataArr: [ScaleMeasurable] = []
            //: guard let arr = result as? [[String: Any]] else {
            guard let arr = result as? [[String: Any]] else {
                //: completion(dataArr)
                completion(dataArr)
                //: return
                return
            }
            //: if let datas = Array<TalkingMikeListItemModel>.deserialize(from: arr as? Array) as? [TalkingMikeListItemModel] {
            if let datas = Array<ScaleMeasurable>.deserialize(from: arr as? Array) as? [ScaleMeasurable] {
                //: dataArr.append(contentsOf: datas)
                dataArr.append(contentsOf: datas)
            }
            //: completion(dataArr)
            completion(dataArr)
        }
    }

    /// 房主/观众 语音房操作请求
    /// - Parameters:
    ///   - roomId: 房间Id
    ///   - uid: 用户Id
    ///   - type: 1 上麦，2 下麦，3 切麦，4 开麦，5 闭麦
    ///   - position: 当前麦位
    ///   - toPos: 目标麦位（切麦传值）
    ///   - completion: 回调
    //: class func req_changeMike(roomId: String, uid: Int, type: Int, position: Int, toPos: Int? = nil, completion: @escaping FinishBlock) {
    class func toRowCompletion(roomId: String, uid: Int, type: Int, position: Int, toPos: Int? = nil, completion: @escaping FinishBlock) {
        //: var params: [String: Any] = ["roomId": roomId, "uid": uid, "type": type, "pos": position]
        var params: [String: Any] = [String(bytes: str_topName.map{windowFrame(normal: $0)}, encoding: .utf8)!: roomId, String(bytes: str_topTitle.reversed(), encoding: .utf8)!: uid, String(bytes: str_atValue.map{stopName(lab: $0)}, encoding: .utf8)!: type, String(bytes: str_viewEqualValue.map{parcelOfLand(block: $0)}, encoding: .utf8)!: position]
        //: if type == 3 {
        if type == 3 {
            //: params["toPos"] = toPos
            params[(String(str_groupValue))] = toPos
        }
        //: let reqModel = TalkingRequestModel()
        let reqModel = IndexRequestModel()
        //: reqModel.requestPath = "party/mike"
        reqModel.requestPath = (str_textValue.lowercased() + String(str_backValue))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_endVersionTitle.getStarted(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 房主对他人操作请求
    /// - Parameters:
    ///   - roomId: 房间Id
    ///   - uid: 用户Id
    ///   - type: 1 锁麦，2 解锁麦，3 踢下麦，4 开麦，5 闭麦
    ///   - position: 麦位
    ///   - completion: 回调
    //: class func req_adminChangeMike(roomId: String, uid: Int, type: Int, position: Int, completion: @escaping FinishBlock) {
    class func contentVoice(roomId: String, uid: Int, type: Int, position: Int, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = IndexRequestModel()
        //: reqModel.requestPath = "party/adminMike"
        reqModel.requestPath = (str_smallText.replacingOccurrences(of: "white", with: "p") + "y/admi" + String(str_normalTitle))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = ["roomId": roomId, "uid": uid, "type": type, "pos": position]
        reqModel.params = [String(bytes: str_topName.map{windowFrame(normal: $0)}, encoding: .utf8)!: roomId, String(bytes: str_topTitle.reversed(), encoding: .utf8)!: uid, String(bytes: str_atValue.map{stopName(lab: $0)}, encoding: .utf8)!: type, String(bytes: str_viewEqualValue.map{parcelOfLand(block: $0)}, encoding: .utf8)!: position]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_endVersionTitle.getStarted(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// Party 列表
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_partyList(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func birdSEyeViewCompletion(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = IndexRequestModel()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.requestPath = "party/list"
        reqModel.requestPath = (String(str_dataText))
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_endVersionTitle.getStarted(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 查询房间在线人数
    /// - Parameters:
    ///   - roomId: 房间Id
    ///   - completion: 回调
    //: class func req_partyOnlineNum(roomId: String, completion: @escaping FinishBlock) {
    class func beforeBallroom(roomId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = IndexRequestModel()
        //: reqModel.requestPath = "party/onlineNum"
        reqModel.requestPath = (String(str_sharedValue))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["roomId": roomId]
        reqModel.params = [String(bytes: str_topName.map{windowFrame(normal: $0)}, encoding: .utf8)!: roomId]
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_endVersionTitle.getStarted(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 查询房间在线用户列表
    /// - Parameters:
    ///   - roomId: 房间Id
    ///   - completion: 回调
    //: class func req_partyOnlineList(roomId: String, completion: @escaping FinishBlock) {
    class func party(roomId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = IndexRequestModel()
        //: reqModel.requestPath = "party/onlineList"
        reqModel.requestPath = (String(str_actualElectText))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["roomId": roomId]
        reqModel.params = [String(bytes: str_topName.map{windowFrame(normal: $0)}, encoding: .utf8)!: roomId]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_endVersionTitle.getStarted(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 禁言
    //: class func req_VoiceRoomMute(targetUid: String, roomID: String, duration: String, completion: @escaping FinishBlock) {
    class func actualize(targetUid: String, roomID: String, duration: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = IndexRequestModel()
        //: reqModel.requestPath = "party/mute"
        reqModel.requestPath = (String(str_arrayValue.suffix(7)) + String(str_succeedValue))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["targetUid": targetUid, "roomId": roomID, "duration": duration]
        reqModel.params = [String(bytes: str_makeValue.map{resultWithRecord(equal: $0)}, encoding: .utf8)!: targetUid, String(bytes: str_topName.map{windowFrame(normal: $0)}, encoding: .utf8)!: roomID, String(bytes: str_replaceData.map{managerBring(lab: $0)}, encoding: .utf8)!: duration]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_endVersionTitle.getStarted(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 解禁
    //: class func req_VoiceRoomUnMute(targetUid: String, roomID: String, completion: @escaping FinishBlock) {
    class func viewWith(targetUid: String, roomID: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = IndexRequestModel()
        //: reqModel.requestPath = "party/unmute"
        reqModel.requestPath = (str_modelValue.replacingOccurrences(of: "equal", with: "r") + "y/unmute")
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["targetUid": targetUid, "roomId": roomID]
        reqModel.params = [String(bytes: str_makeValue.map{resultWithRecord(equal: $0)}, encoding: .utf8)!: targetUid, String(bytes: str_topName.map{windowFrame(normal: $0)}, encoding: .utf8)!: roomID]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_endVersionTitle.getStarted(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 踢出房间
    //: class func req_VoiceRoomKickout(targetUid: String, roomId: String, completion: @escaping FinishBlock) {
    class func toEventRecord(targetUid: String, roomId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = IndexRequestModel()
        //: reqModel.requestPath = "party/kickout"
        reqModel.requestPath = (String(str_viewGoValue) + str_giftTitle.lowercased())
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = ["targetUid": targetUid, "roomId": roomId]
        reqModel.params = [String(bytes: str_makeValue.map{resultWithRecord(equal: $0)}, encoding: .utf8)!: targetUid, String(bytes: str_topName.map{windowFrame(normal: $0)}, encoding: .utf8)!: roomId]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_endVersionTitle.getStarted(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
