
//: Declare String Begin

/*: "mf/user/getUserInfo" :*/
fileprivate let str_sizeData:[Character] = ["m","f","/","u","s","e","r","/","g","e","t","U","s","e","r","I","n","f"]
fileprivate let str_timeContent:[Character] = ["o"]

/*: "uid" :*/
fileprivate let str_headName:[UInt8] = [0xfe,0xe2,0xef]

/*: "mf/user/getReceivedGifts" :*/
fileprivate let str_textData:String = "price message index inmf/us"
fileprivate let str_pointData:String = "eceipathd"
fileprivate let str_inviteBackValue:[Character] = ["G","i","f","t","s"]

/*: "mf/crush/send" :*/
fileprivate let str_bottomText:String = "collection name popmf/c"
fileprivate let str_labWeightText:String = "enparty"

/*: "targetUid" :*/
fileprivate let str_rowText:[UInt8] = [0x64,0x69,0x55,0x74,0x65,0x67,0x72,0x61,0x74]

/*: "user/attention" :*/
fileprivate let str_actionTitle:[UInt8] = [0x32,0x34,0x22,0x35,0x68,0x26,0x33,0x33,0x22,0x29,0x33,0x2e,0x28,0x29]

private func colorRequest(page num: UInt8) -> UInt8 {
    return num ^ 71
}

/*: "user/removeAttention" :*/
fileprivate let str_kitName:String = "normal viewuser/rem"
fileprivate let str_keyContent:String = "oveAtif text self later"

/*: "attentionUid" :*/
fileprivate let str_playerData:[UInt8] = [0x3e,0x2b,0x2b,0x3a,0x31,0x2b,0x36,0x30,0x31,0xa,0x36,0x3b]

private func makeTitle(index num: UInt8) -> UInt8 {
    return num ^ 95
}

/*: "removeAttentionUid" :*/
fileprivate let str_equalAwakeTitle:[UInt8] = [0x64,0x69,0x55,0x6e,0x6f,0x69,0x74,0x6e,0x65,0x74,0x74,0x41,0x65,0x76,0x6f,0x6d,0x65,0x72]

/*: "user/addBlack" :*/
fileprivate let str_upText:[UInt8] = [0x24,0x22,0x34,0x23,0x7e,0x30,0x35,0x35,0x13,0x3d,0x30,0x32,0x3a]

/*: "user/remBlack" :*/
fileprivate let str_bottomToNameData:String = "save if partyuser/r"

/*: "mf/moment/like" :*/
fileprivate let str_statusData:[Character] = ["m","f","/","m","o","m","e","n"]
fileprivate let str_modelText:String = "array view imaget/like"

/*: "momentId" :*/
fileprivate let str_infoData:[UInt8] = [0x23,0x25,0x23,0x1b,0x24,0x2a,0xff,0x1a]

fileprivate func userResultTop(time num: UInt8) -> UInt8 {
    let value = Int(num) - 182
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "type" :*/
fileprivate let str_actionContent:[UInt8] = [0xf6,0xfb,0xf2,0xe7]

private func modelTop(back num: UInt8) -> UInt8 {
    return num ^ 130
}

/*: "mf/user/uploadAuthPic" :*/
fileprivate let str_dataNumberTitle:String = "mf/uat share"
fileprivate let str_saveText:String = "loadAutequal resume"
fileprivate let str_barName:[Character] = ["h","P","i","c"]

/*: "auth_pic" :*/
fileprivate let str_rejectValue:[UInt8] = [0x93,0x87,0x86,0x9a,0xad,0x82,0x9b,0x91]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DirectorReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/8.
//

//: import UIKit
import UIKit

//: class TalkingUserRequestManager: NSObject {
class DirectorReactiveCompatible: NSObject {
    // MARK: - 用户信息

    //: class func func__otherUserInfo(uid: String, completion: @escaping FinishBlock) {
    class func who(uid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = IndexRequestModel()
        //: reqModel.requestPath = "mf/user/getUserInfo"
        reqModel.requestPath = (String(str_sizeData) + String(str_timeContent))
        //: reqModel.params = ["uid": uid]
        reqModel.params = [String(bytes: str_headName.map{$0^139}, encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_endVersionTitle.getStarted(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 收到的礼物

    //: class func func__getReceivedGift(uid: String, completion: @escaping FinishBlock) {
    class func equalShould(uid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = IndexRequestModel()
        //: reqModel.requestPath = "mf/user/getReceivedGifts"
        reqModel.requestPath = (String(str_textData.suffix(5)) + "er/getR" + str_pointData.replacingOccurrences(of: "path", with: "ve") + String(str_inviteBackValue))
        //: reqModel.params = ["uid": uid]
        reqModel.params = [String(bytes: str_headName.map{$0^139}, encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_endVersionTitle.getStarted(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 发送心动

    //: class func func__sendCrushWithUserId(targetUid: String, completion: @escaping FinishBlock) {
    class func meantime(targetUid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = IndexRequestModel()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/crush/send"
        reqModel.requestPath = (String(str_bottomText.suffix(4)) + "rush/s" + str_labWeightText.replacingOccurrences(of: "party", with: "d"))
        //: reqModel.params = ["targetUid": targetUid]
        reqModel.params = [String(bytes: str_rowText.reversed(), encoding: .utf8)!: targetUid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_endVersionTitle.getStarted(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 关注

    //: class func func__attentionWithUserId(uid: String, isAttention: Bool, completion: @escaping FinishBlock) {
    class func streetwiseSince(uid: String, isAttention: Bool, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = IndexRequestModel()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.requestPath = isAttention == true ? "user/attention" : "user/removeAttention"
        reqModel.requestPath = isAttention == true ? String(bytes: str_actionTitle.map{colorRequest(page: $0)}, encoding: .utf8)! : (String(str_kitName.suffix(8)) + String(str_keyContent.prefix(5)) + "tention")
        //: reqModel.params = isAttention == true ? ["attentionUid": uid] : ["removeAttentionUid": uid]
        reqModel.params = isAttention == true ? [String(bytes: str_playerData.map{makeTitle(index: $0)}, encoding: .utf8)!: uid] : [String(bytes: str_equalAwakeTitle.reversed(), encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_endVersionTitle.getStarted(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 拉黑

    //: class func func__pullBlackWithUserId(uid: String, isBlack: Bool, completion: @escaping FinishBlock) {
    class func funcForCompletion(uid: String, isBlack: Bool, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = IndexRequestModel()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.requestPath = isBlack == true ? "user/addBlack" : "user/remBlack"
        reqModel.requestPath = isBlack == true ? String(bytes: str_upText.map{$0^81}, encoding: .utf8)! : (String(str_bottomToNameData.suffix(6)) + "emBlack")
        //: reqModel.params = ["uid": uid]
        reqModel.params = [String(bytes: str_headName.map{$0^139}, encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_endVersionTitle.getStarted(model: reqModel) { succeed, result, errorModel in
            //: if succeed == true {
            if succeed == true {
                //: if isBlack {
                if isBlack {
                    //: TalkingBlockListManager.shared.addUserToBlockList(userId: uid)
                    MusicManagingDirectorThen.shared.withApp(userId: uid)
                    //: } else {
                } else {
                    //: TalkingBlockListManager.shared.removeUserForBlockList(userId: uid)
                    MusicManagingDirectorThen.shared.labId(userId: uid)
                }
            }
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 点赞

    //: class func func__likeMoment(mid: String, type: String, completion: @escaping FinishBlock) {
    class func rededicate(mid: String, type: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = IndexRequestModel()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/moment/like"
        reqModel.requestPath = (String(str_statusData) + String(str_modelText.suffix(6)))
        //: reqModel.params = ["momentId": mid, "type": type]
        reqModel.params = [String(bytes: str_infoData.map{userResultTop(time: $0)}, encoding: .utf8)!: mid, String(bytes: str_actionContent.map{modelTop(back: $0)}, encoding: .utf8)!: type]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_endVersionTitle.getStarted(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 举报

    //: class func func__reportRequest(reqPath: String, reqParams: Dictionary<String, String>, completion: @escaping FinishBlock) {
    class func hr(reqPath: String, reqParams: [String: String], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = IndexRequestModel()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = reqPath
        reqModel.requestPath = reqPath
        //: reqModel.params = reqParams
        reqModel.params = reqParams
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_endVersionTitle.getStarted(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 真人认证

    //: class func func__realVerifyUploadPic(pic: UIImage, completion: @escaping FinishBlock) {
    class func shadowgraph(pic: UIImage, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = IndexRequestModel()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/user/uploadAuthPic"
        reqModel.requestPath = (String(str_dataNumberTitle.prefix(4)) + "ser/up" + String(str_saveText.prefix(7)) + String(str_barName))
        //: let data = pic.jpegData(compressionQuality: 1)
        let data = pic.jpegData(compressionQuality: 1)
        //: reqModel.params = ["auth_pic": data ?? ""]
        reqModel.params = [String(bytes: str_rejectValue.map{$0^242}, encoding: .utf8)!: data ?? ""]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_endVersionTitle.getStarted(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
