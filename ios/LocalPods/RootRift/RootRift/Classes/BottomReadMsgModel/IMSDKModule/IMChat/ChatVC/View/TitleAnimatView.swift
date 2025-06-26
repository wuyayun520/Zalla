
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_confirmName:[UInt8] = [0xb6,0xb1,0xb6,0xab,0xf7,0xbc,0xb0,0xbb,0xba,0xad,0xe5,0xf6,0xff,0xb7,0xbe,0xac,0xff,0xb1,0xb0,0xab,0xff,0xbd,0xba,0xba,0xb1,0xff,0xb6,0xb2,0xaf,0xb3,0xba,0xb2,0xba,0xb1,0xab,0xba,0xbb]

private func requestName(game num: UInt8) -> UInt8 {
    return num ^ 223
}

/*: "gift" :*/
fileprivate let str_labelTitle:String = "pushft"

/*: "iosEffect" :*/
fileprivate let str_errorText:[Character] = ["i","o","s","E","f","f","e","c","t"]

/*: "iosEmperorEffect" :*/
fileprivate let str_norData:[Character] = ["i","o","s","E","m","p","e","r","o","r","E","f","f","e","c","t"]

/*: "fromUid" :*/
fileprivate let str_attributeName:[Character] = ["f","r","o","m","U","i","d"]

/*: "fromNickname" :*/
fileprivate let str_resultText:String = "path contentfromN"
fileprivate let str_willManagerValue:String = "icknalengthe"

/*: "fromHeadPic" :*/
fileprivate let str_limitData:String = "fromHgift live"
fileprivate let str_viewValue:String = "tag"
fileprivate let str_scaleSystemValue:String = "adPicof profile"

/*: "pid" :*/
fileprivate let str_editName:String = "PID"

/*: "num" :*/
fileprivate let str_mediumName:String = "nutext"

/*: "pname" :*/
fileprivate let str_playText:[Character] = ["p","n","a","m","e"]

/*: "name" :*/
fileprivate let str_centerValue:String = "namrandom"

/*: "giftPic" :*/
fileprivate let str_objectTitle:[Character] = ["g","i"]
fileprivate let str_contentUserValue:String = "count moment type equal toolftPic"

/*: "imgPreview" :*/
fileprivate let str_editFileText:[Character] = ["i","m","g","P","r","e","v"]
fileprivate let str_toolBarTitle:String = "ieload"

/*: "comboNum" :*/
fileprivate let str_liveContent:[Character] = ["c","o","m","b","o","N","u","m"]

/*: "showType" :*/
fileprivate let str_blockTitle:String = "shview"

/*: "animationTimes" :*/
fileprivate let str_addValue:String = "numbernim"
fileprivate let str_rowValue:String = "Timesstring share match"

/*: "id" :*/
fileprivate let str_signName:String = "task"

/*: "iosVapEffect" :*/
fileprivate let str_viewTableName:String = "iosVcase let else new fit"
fileprivate let str_cancelName:[Character] = ["a","p","E","f","f","e","c","t"]

/*: "giftNum" :*/
fileprivate let str_keyValue:String = "giftNumto equal view list"

/*: "Send to %@" :*/
fileprivate let str_titleValue:String = "Send license let return location manager"
fileprivate let str_stageText:String = "if view count model greetto %@"

/*: "all" :*/
fileprivate let str_maleBlackMessageTitle:String = "adate"

/*: "Send to All Numbers" :*/
fileprivate let str_yearShareReadText:String = "let let app add contentSend to"
fileprivate let str_hiddenValue:String = "any size item content moment All N"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleAnimatView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/7.
//

//: import UIKit
import UIKit

/// 私聊 礼物动效层
//: class TalkingPrivateChatAnimatView: UIView {
class TitleAnimatView: UIView {
    //: var animatArray: NSMutableArray =  NSMutableArray.init(capacity: 0)
    var animatArray: NSMutableArray = .init(capacity: 0)
    //: var isPlayAnimat = false
    var isPlayAnimat = false

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.atBar()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_confirmName.map{requestName(game: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化
    //: public lazy var giftAnimatView: TalkingGiftAnimatView = {
    public lazy var giftAnimatView: ColouredThen = {
        //: let view = TalkingGiftAnimatView.init()
        let view = ColouredThen()
        //: return view
        return view
        //: }()
    }()
}

//: extension TalkingPrivateChatAnimatView {
extension TitleAnimatView {
    /// 自己私聊送礼,动效处理

    //: func dealGiftAnimatData(dict: Dictionary<String, Any>) {
    func designDict(dict: [String: Any]) {
        //: if dict.keys.isEmpty {
        if dict.keys.isEmpty {
            //: return
            return
        }
        //: let  giftInfo: Dictionary? = dict["gift"] as? Dictionary<String, Any>
        let giftInfo: Dictionary? = dict[(str_labelTitle.replacingOccurrences(of: "push", with: "gi"))] as? [String: Any]
        //: if giftInfo == nil || giftInfo?.keys.contains("iosEffect") == false {
        if giftInfo == nil || giftInfo?.keys.contains((String(str_errorText))) == false {
            //: return
            return
        }

        // 帝王礼物特效
        //: if  giftInfo?.keys.contains("iosEmperorEffect") != false {
        if giftInfo?.keys.contains((String(str_norData))) != false {
            // 开头动效
            //: let giftArr: NSMutableArray = giftInfo?["iosEmperorEffect"] as! NSMutableArray
            let giftArr: NSMutableArray = giftInfo?[(String(str_norData))] as! NSMutableArray

            //: giftArr.insert(giftInfo!["iosEffect"] ?? "", at: 0)
            giftArr.insert(giftInfo![(String(str_errorText))] ?? "", at: 0)
            //: let tempArr = NSMutableArray.init()
            let tempArr = NSMutableArray()

            //: for giftStr in giftArr {
            for giftStr in giftArr {
                //: let dictM = NSMutableDictionary.init(capacity: 0)
                let dictM = NSMutableDictionary(capacity: 0)
                //: dictM["fromUid"] = WatercourseThen.share.loginUserMode.userID
                dictM[(String(str_attributeName))] = WatercourseThen.share.loginUserMode.userID
                //: dictM["fromNickname"] = WatercourseThen.share.loginUserMode.nickname
                dictM[(String(str_resultText.suffix(5)) + str_willManagerValue.replacingOccurrences(of: "length", with: "m"))] = WatercourseThen.share.loginUserMode.nickname
                //: dictM["fromHeadPic"] = WatercourseThen.share.loginUserMode.headPic
                dictM[(String(str_limitData.prefix(5)) + str_viewValue.replacingOccurrences(of: "tag", with: "e") + String(str_scaleSystemValue.prefix(5)))] = WatercourseThen.share.loginUserMode.headPic
                //: dictM["pid"] = "0" // 缓存兼容
                dictM[(str_editName.lowercased())] = "0" // 缓存兼容
                //: dictM["num"] =  giftInfo?["num"]
                dictM[(str_mediumName.replacingOccurrences(of: "text", with: "m"))] = giftInfo?[(str_mediumName.replacingOccurrences(of: "text", with: "m"))]
                //: dictM["pname"] = giftInfo?["name"]
                dictM[(String(str_playText))] = giftInfo?[(str_centerValue.replacingOccurrences(of: "random", with: "e"))]
                //: dictM["giftPic"] = giftInfo?["imgPreview"]
                dictM[(String(str_objectTitle) + String(str_contentUserValue.suffix(5)))] = giftInfo?[(String(str_editFileText) + str_toolBarTitle.replacingOccurrences(of: "load", with: "w"))]
                //: dictM["comboNum"] = giftInfo?["comboNum"]
                dictM[(String(str_liveContent))] = giftInfo?[(String(str_liveContent))]
                //: dictM["iosEffect"] = giftStr
                dictM[(String(str_errorText))] = giftStr
                //: dictM["showType"] = giftInfo?["showType"]
                dictM[(str_blockTitle.replacingOccurrences(of: "view", with: "ow") + "Type")] = giftInfo?[(str_blockTitle.replacingOccurrences(of: "view", with: "ow") + "Type")]
                //: dictM["animationTimes"] = "1"
                dictM[(str_addValue.replacingOccurrences(of: "number", with: "a") + "ation" + String(str_rowValue.prefix(5)))] = "1"
                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
                if let giftModel = JSONDeserializer<EnableLabelTransformable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    //: tempArr.add(giftModel)
                    tempArr.add(giftModel)
                }
            }
            // 循环播放次数
            //: var animationTimes = 1
            var animationTimes = 1
            //: if giftInfo?.keys.contains("animationTimes") != false {
            if giftInfo?.keys.contains((str_addValue.replacingOccurrences(of: "number", with: "a") + "ation" + String(str_rowValue.prefix(5)))) != false {
                //: animationTimes = giftInfo!["animationTimes"] as! Int
                animationTimes = giftInfo![(str_addValue.replacingOccurrences(of: "number", with: "a") + "ation" + String(str_rowValue.prefix(5)))] as! Int
                //: } else {
            } else {
                //: animationTimes = giftInfo!["num"] as! Int
                animationTimes = giftInfo![(str_mediumName.replacingOccurrences(of: "text", with: "m"))] as! Int
            }
            //: let tempGiftArr = tempArr
            let tempGiftArr = tempArr
            //: for _ in 0..<animationTimes {
            for _ in 0 ..< animationTimes {
                //: self.animatArray.addObjects(from: tempGiftArr as! [Any])
                self.animatArray.addObjects(from: tempGiftArr as! [Any])
            }

            //: } else {
        } else {
            //: let dictM = NSMutableDictionary.init(capacity: 0)
            let dictM = NSMutableDictionary(capacity: 0)
            //: dictM["fromUid"] = WatercourseThen.share.loginUserMode.userID
            dictM[(String(str_attributeName))] = WatercourseThen.share.loginUserMode.userID
            //: dictM["fromNickname"] = WatercourseThen.share.loginUserMode.nickname
            dictM[(String(str_resultText.suffix(5)) + str_willManagerValue.replacingOccurrences(of: "length", with: "m"))] = WatercourseThen.share.loginUserMode.nickname
            //: dictM["fromHeadPic"] = WatercourseThen.share.loginUserMode.headPic
            dictM[(String(str_limitData.prefix(5)) + str_viewValue.replacingOccurrences(of: "tag", with: "e") + String(str_scaleSystemValue.prefix(5)))] = WatercourseThen.share.loginUserMode.headPic
            //: dictM["pid"] = giftInfo?["id"]
            dictM[(str_editName.lowercased())] = giftInfo?["id"]
            //: dictM["num"] =  giftInfo?["num"]
            dictM[(str_mediumName.replacingOccurrences(of: "text", with: "m"))] = giftInfo?[(str_mediumName.replacingOccurrences(of: "text", with: "m"))]
            //: dictM["pname"] = giftInfo?["name"]
            dictM[(String(str_playText))] = giftInfo?[(str_centerValue.replacingOccurrences(of: "random", with: "e"))]
            //: dictM["giftPic"] = giftInfo?["imgPreview"]
            dictM[(String(str_objectTitle) + String(str_contentUserValue.suffix(5)))] = giftInfo?[(String(str_editFileText) + str_toolBarTitle.replacingOccurrences(of: "load", with: "w"))]
            //: dictM["comboNum"] = giftInfo?["comboNum"]
            dictM[(String(str_liveContent))] = giftInfo?[(String(str_liveContent))]
            //: dictM["iosEffect"] = giftInfo?["iosEffect"]
            dictM[(String(str_errorText))] = giftInfo?[(String(str_errorText))]
            //: dictM["showType"] = giftInfo?["showType"]
            dictM[(str_blockTitle.replacingOccurrences(of: "view", with: "ow") + "Type")] = giftInfo?[(str_blockTitle.replacingOccurrences(of: "view", with: "ow") + "Type")]
            //: dictM["iosVapEffect"] = giftInfo?["iosVapEffect"]
            dictM[(String(str_viewTableName.prefix(4)) + String(str_cancelName))] = giftInfo?[(String(str_viewTableName.prefix(4)) + String(str_cancelName))]

            //: if giftInfo?.keys.contains("animationTimes") != false {
            if giftInfo?.keys.contains((str_addValue.replacingOccurrences(of: "number", with: "a") + "ation" + String(str_rowValue.prefix(5)))) != false {
                //: dictM["animationTimes"] = giftInfo?["animationTimes"]
                dictM[(str_addValue.replacingOccurrences(of: "number", with: "a") + "ation" + String(str_rowValue.prefix(5)))] = giftInfo?[(str_addValue.replacingOccurrences(of: "number", with: "a") + "ation" + String(str_rowValue.prefix(5)))]
                //: } else {
            } else {
                //: dictM["animationTimes"] = dictM["num"]
                dictM[(str_addValue.replacingOccurrences(of: "number", with: "a") + "ation" + String(str_rowValue.prefix(5)))] = dictM[(str_mediumName.replacingOccurrences(of: "text", with: "m"))]
            }
            //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
            if let giftModel = JSONDeserializer<EnableLabelTransformable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                //: self.animatArray.add(giftModel)
                self.animatArray.add(giftModel)
            }
        }
        //: judgePlay()
        attracter()
    }

    /// 视频通话送礼,模型转换
    //: func changeGiftToModel(dict: Dictionary<String, Any>) ->TalkingGiftMsgAnimatModel? {
    func buildLoad(dict: [String: Any]) -> EnableLabelTransformable? {
        //: if dict.keys.isEmpty {
        if dict.keys.isEmpty {
            //: return nil
            return nil
        }
        //: let  giftInfo: Dictionary? = dict["gift"] as? Dictionary<String, Any>
        let giftInfo: Dictionary? = dict[(str_labelTitle.replacingOccurrences(of: "push", with: "gi"))] as? [String: Any]
        //: if giftInfo == nil {
        if giftInfo == nil {
            //: return nil
            return nil
        }

        // 帝王礼物特效
        //: if  giftInfo?.keys.contains("iosEmperorEffect") != false {
        if giftInfo?.keys.contains((String(str_norData))) != false {
            // 开头动效
            //: let giftArr: NSMutableArray = giftInfo?["iosEmperorEffect"] as! NSMutableArray
            let giftArr: NSMutableArray = giftInfo?[(String(str_norData))] as! NSMutableArray

            //: giftArr.insert(giftInfo!["iosEffect"] ?? "", at: 0)
            giftArr.insert(giftInfo![(String(str_errorText))] ?? "", at: 0)

            //: for giftStr in giftArr {
            for giftStr in giftArr {
                //: let dictM = NSMutableDictionary.init(capacity: 0)
                let dictM = NSMutableDictionary(capacity: 0)
                //: dictM["fromUid"] = WatercourseThen.share.loginUserMode.userID
                dictM[(String(str_attributeName))] = WatercourseThen.share.loginUserMode.userID
                //: dictM["fromNickname"] = WatercourseThen.share.loginUserMode.nickname
                dictM[(String(str_resultText.suffix(5)) + str_willManagerValue.replacingOccurrences(of: "length", with: "m"))] = WatercourseThen.share.loginUserMode.nickname
                //: dictM["fromHeadPic"] = WatercourseThen.share.loginUserMode.headPic
                dictM[(String(str_limitData.prefix(5)) + str_viewValue.replacingOccurrences(of: "tag", with: "e") + String(str_scaleSystemValue.prefix(5)))] = WatercourseThen.share.loginUserMode.headPic
                //: dictM["pid"] = "0" // 缓存兼容
                dictM[(str_editName.lowercased())] = "0" // 缓存兼容
                //: dictM["num"] =  giftInfo?["num"]
                dictM[(str_mediumName.replacingOccurrences(of: "text", with: "m"))] = giftInfo?[(str_mediumName.replacingOccurrences(of: "text", with: "m"))]
                //: dictM["pname"] = giftInfo?["name"]
                dictM[(String(str_playText))] = giftInfo?[(str_centerValue.replacingOccurrences(of: "random", with: "e"))]
                //: dictM["giftPic"] = giftInfo?["imgPreview"]
                dictM[(String(str_objectTitle) + String(str_contentUserValue.suffix(5)))] = giftInfo?[(String(str_editFileText) + str_toolBarTitle.replacingOccurrences(of: "load", with: "w"))]
                //: dictM["comboNum"] = giftInfo?["comboNum"]
                dictM[(String(str_liveContent))] = giftInfo?[(String(str_liveContent))]
                //: dictM["iosEffect"] = giftStr
                dictM[(String(str_errorText))] = giftStr
                //: dictM["showType"] = giftInfo?["showType"]
                dictM[(str_blockTitle.replacingOccurrences(of: "view", with: "ow") + "Type")] = giftInfo?[(str_blockTitle.replacingOccurrences(of: "view", with: "ow") + "Type")]
                //: dictM["animationTimes"] = "1"
                dictM[(str_addValue.replacingOccurrences(of: "number", with: "a") + "ation" + String(str_rowValue.prefix(5)))] = "1"
                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
                if let giftModel = JSONDeserializer<EnableLabelTransformable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    //: return giftModel
                    return giftModel
                }
            }
            //: } else {
        } else {
            //: let dictM = NSMutableDictionary.init(capacity: 0)
            let dictM = NSMutableDictionary(capacity: 0)
            //: dictM["fromUid"] = WatercourseThen.share.loginUserMode.userID
            dictM[(String(str_attributeName))] = WatercourseThen.share.loginUserMode.userID
            //: dictM["fromNickname"] = WatercourseThen.share.loginUserMode.nickname
            dictM[(String(str_resultText.suffix(5)) + str_willManagerValue.replacingOccurrences(of: "length", with: "m"))] = WatercourseThen.share.loginUserMode.nickname
            //: dictM["fromHeadPic"] = WatercourseThen.share.loginUserMode.headPic
            dictM[(String(str_limitData.prefix(5)) + str_viewValue.replacingOccurrences(of: "tag", with: "e") + String(str_scaleSystemValue.prefix(5)))] = WatercourseThen.share.loginUserMode.headPic
            //: dictM["pid"] = giftInfo?["id"]
            dictM[(str_editName.lowercased())] = giftInfo?["id"]
            //: dictM["num"] =  giftInfo?["num"]
            dictM[(str_mediumName.replacingOccurrences(of: "text", with: "m"))] = giftInfo?[(str_mediumName.replacingOccurrences(of: "text", with: "m"))]
            //: dictM["pname"] = giftInfo?["name"]
            dictM[(String(str_playText))] = giftInfo?[(str_centerValue.replacingOccurrences(of: "random", with: "e"))]
            //: dictM["giftPic"] = giftInfo?["imgPreview"]
            dictM[(String(str_objectTitle) + String(str_contentUserValue.suffix(5)))] = giftInfo?[(String(str_editFileText) + str_toolBarTitle.replacingOccurrences(of: "load", with: "w"))]
            //: dictM["comboNum"] = giftInfo?["comboNum"]
            dictM[(String(str_liveContent))] = giftInfo?[(String(str_liveContent))]
            //: dictM["iosEffect"] = giftInfo?["iosEffect"]
            dictM[(String(str_errorText))] = giftInfo?[(String(str_errorText))]
            //: dictM["showType"] = giftInfo?["showType"]
            dictM[(str_blockTitle.replacingOccurrences(of: "view", with: "ow") + "Type")] = giftInfo?[(str_blockTitle.replacingOccurrences(of: "view", with: "ow") + "Type")]
            //: dictM["iosVapEffect"] = giftInfo?["iosVapEffect"]
            dictM[(String(str_viewTableName.prefix(4)) + String(str_cancelName))] = giftInfo?[(String(str_viewTableName.prefix(4)) + String(str_cancelName))]

            //: if giftInfo?.keys.contains("animationTimes") != false {
            if giftInfo?.keys.contains((str_addValue.replacingOccurrences(of: "number", with: "a") + "ation" + String(str_rowValue.prefix(5)))) != false {
                //: dictM["animationTimes"] = giftInfo?["animationTimes"]
                dictM[(str_addValue.replacingOccurrences(of: "number", with: "a") + "ation" + String(str_rowValue.prefix(5)))] = giftInfo?[(str_addValue.replacingOccurrences(of: "number", with: "a") + "ation" + String(str_rowValue.prefix(5)))]
                //: } else {
            } else {
                //: dictM["animationTimes"] = dictM["num"]
                dictM[(str_addValue.replacingOccurrences(of: "number", with: "a") + "ation" + String(str_rowValue.prefix(5)))] = dictM[(str_mediumName.replacingOccurrences(of: "text", with: "m"))]
            }
            //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
            if let giftModel = JSONDeserializer<EnableLabelTransformable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                //: return giftModel
                return giftModel
            }
        }
        //: return nil
        return nil
    }

    /// 聊天室收到礼物消息处理
    //: func chatRoomDisposeReceiveGiftMsg(giftMessageDic: Dictionary<String, Any>, model: TalkingChatRoomMemberModel)->TalkingGiftMsgAnimatModel? {
    func buttonTo(giftMessageDic: [String: Any], model: AllCellTransformable) -> EnableLabelTransformable? {
        //: if  giftMessageDic.keys.contains("gift") == false {
        if giftMessageDic.keys.contains((str_labelTitle.replacingOccurrences(of: "push", with: "gi"))) == false {
            //: return nil
            return nil
        }
        //: if var roomGiftModel = JSONDeserializer<TalkingGiftChatMsgAnimatModel>.deserializeFrom(dict: giftMessageDic["gift"] as? Dictionary<String, Any>, designatedPath: nil) {
        if var roomGiftModel = JSONDeserializer<MixedAnimatModel>.deserializeFrom(dict: giftMessageDic[(str_labelTitle.replacingOccurrences(of: "push", with: "gi"))] as? [String: Any], designatedPath: nil) {
            //: let dic =  giftMessageDic["gift"] as? Dictionary<String, Any>
            let dic = giftMessageDic[(str_labelTitle.replacingOccurrences(of: "push", with: "gi"))] as? [String: Any]
            //: roomGiftModel.giftNum = dic?["giftNum"] as? Int ?? 0
            roomGiftModel.giftNum = dic?[(String(str_keyValue.prefix(7)))] as? Int ?? 0
            //: var effect = roomGiftModel.iosEffect
            var effect = roomGiftModel.iosEffect
            //: if effect.count == 0 {
            if effect.count == 0 {
                //: effect = roomGiftModel.effect
                effect = roomGiftModel.effect
            }

            //: let tempGiftModel = NSMutableArray.init()
            let tempGiftModel = NSMutableArray()
            //: let tempDictM = NSMutableArray.init()
            let tempDictM = NSMutableArray()

            // 帝王礼物特效
            //: if  roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
            if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                // 开头动效
                //: let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                //: giftArr?.insert(roomGiftModel.iosEffect, at: 0)
                giftArr?.insert(roomGiftModel.iosEffect, at: 0)

                //: let tempArr = NSMutableArray.init()
                let tempArr = NSMutableArray()
                //: let tempDicArr = NSMutableArray.init()
                let tempDicArr = NSMutableArray()

                //: for giftStr in giftArr! {
                for giftStr in giftArr! {
                    //: let dictM = NSMutableDictionary.init(capacity: 0)
                    let dictM = NSMutableDictionary(capacity: 0)
                    //: dictM["fromUid"] = WatercourseThen.share.loginUserMode.userID
                    dictM[(String(str_attributeName))] = WatercourseThen.share.loginUserMode.userID
                    //: dictM["fromNickname"] = WatercourseThen.share.loginUserMode.nickname
                    dictM[(String(str_resultText.suffix(5)) + str_willManagerValue.replacingOccurrences(of: "length", with: "m"))] = WatercourseThen.share.loginUserMode.nickname
                    //: dictM["fromHeadPic"] = WatercourseThen.share.loginUserMode.headPic
                    dictM[(String(str_limitData.prefix(5)) + str_viewValue.replacingOccurrences(of: "tag", with: "e") + String(str_scaleSystemValue.prefix(5)))] = WatercourseThen.share.loginUserMode.headPic
                    //: dictM["pid"] = "0" // 缓存兼容
                    dictM[(str_editName.lowercased())] = "0" // 缓存兼容
                    //: dictM["num"] =  (roomGiftModel.giftNum)
                    dictM[(str_mediumName.replacingOccurrences(of: "text", with: "m"))] = (roomGiftModel.giftNum)
                    //: dictM["pname"] = "Send to %@".localizedArguments(model.nickname)
                    dictM[(String(str_playText))] = (String(str_titleValue.prefix(5)) + String(str_stageText.suffix(5))).alongNext(model.nickname)
                    //: if model.uid == "all" {
                    if model.uid == (str_maleBlackMessageTitle.replacingOccurrences(of: "date", with: "ll")) {
                        //: dictM["pname"] = "Send to All Numbers".localized
                        dictM[(String(str_playText))] = (String(str_yearShareReadText.suffix(7)) + String(str_hiddenValue.suffix(6)) + "umbers").localized
                    }
                    //: dictM["giftPic"] = roomGiftModel.imgPreview
                    dictM[(String(str_objectTitle) + String(str_contentUserValue.suffix(5)))] = roomGiftModel.imgPreview
                    //: dictM["comboNum"] = (roomGiftModel.comboNum)
                    dictM[(String(str_liveContent))] = (roomGiftModel.comboNum)
                    //: dictM["iosEffect"] = giftStr
                    dictM[(String(str_errorText))] = giftStr
                    //: dictM["showType"] = (roomGiftModel.showType)
                    dictM[(str_blockTitle.replacingOccurrences(of: "view", with: "ow") + "Type")] = (roomGiftModel.showType)
                    //: dictM["animationTimes"] = "1"
                    dictM[(str_addValue.replacingOccurrences(of: "number", with: "a") + "ation" + String(str_rowValue.prefix(5)))] = "1"

                    //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
                    if let giftModel = JSONDeserializer<EnableLabelTransformable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        //: return giftModel
                        return giftModel
                    }
                }
                // 循环播放次数
                //: var animationTimes = 1
                var animationTimes = 1
                //: if roomGiftModel.animationTimes > 0 {
                if roomGiftModel.animationTimes > 0 {
                    //: animationTimes = roomGiftModel.animationTimes
                    animationTimes = roomGiftModel.animationTimes
                    //: } else {
                } else {
                    //: animationTimes = roomGiftModel.giftNum
                    animationTimes = roomGiftModel.giftNum
                }
                //: let tempGiftArr = tempArr
                let tempGiftArr = tempArr
                //: for _ in 0..<animationTimes {
                for _ in 0 ..< animationTimes {
                    //: tempGiftModel.addObjects(from: tempGiftArr as! [Any])
                    tempGiftModel.addObjects(from: tempGiftArr as! [Any])
                    //: tempDictM.addObjects(from: tempDicArr as! [Any])
                    tempDictM.addObjects(from: tempDicArr as! [Any])
                }
                //: } else {
            } else {
                //: let dictM = NSMutableDictionary.init(capacity: 0)
                let dictM = NSMutableDictionary(capacity: 0)

                //: dictM["fromUid"] = WatercourseThen.share.loginUserMode.userID
                dictM[(String(str_attributeName))] = WatercourseThen.share.loginUserMode.userID
                //: dictM["fromNickname"] = WatercourseThen.share.loginUserMode.nickname
                dictM[(String(str_resultText.suffix(5)) + str_willManagerValue.replacingOccurrences(of: "length", with: "m"))] = WatercourseThen.share.loginUserMode.nickname
                //: dictM["fromHeadPic"] = WatercourseThen.share.loginUserMode.headPic
                dictM[(String(str_limitData.prefix(5)) + str_viewValue.replacingOccurrences(of: "tag", with: "e") + String(str_scaleSystemValue.prefix(5)))] = WatercourseThen.share.loginUserMode.headPic

                //: dictM["pid"] = roomGiftModel.giftId
                dictM[(str_editName.lowercased())] = roomGiftModel.giftId
                //: dictM["num"] =  (roomGiftModel.giftNum)
                dictM[(str_mediumName.replacingOccurrences(of: "text", with: "m"))] = (roomGiftModel.giftNum)
                // 显示送给谁
                //: dictM["pname"] = "Send to %@".localizedArguments(model.nickname)
                dictM[(String(str_playText))] = (String(str_titleValue.prefix(5)) + String(str_stageText.suffix(5))).alongNext(model.nickname)
                //: if model.uid == "all" {
                if model.uid == (str_maleBlackMessageTitle.replacingOccurrences(of: "date", with: "ll")) {
                    //: dictM["pname"] = "Send to All Numbers".localized
                    dictM[(String(str_playText))] = (String(str_yearShareReadText.suffix(7)) + String(str_hiddenValue.suffix(6)) + "umbers").localized
                }
                //: dictM["giftPic"] = roomGiftModel.imgPreview
                dictM[(String(str_objectTitle) + String(str_contentUserValue.suffix(5)))] = roomGiftModel.imgPreview
                //: dictM["comboNum"] = (roomGiftModel.comboNum)
                dictM[(String(str_liveContent))] = (roomGiftModel.comboNum)
                //: dictM["iosEffect"] = effect
                dictM[(String(str_errorText))] = effect
                //: dictM["iosVapEffect"] = roomGiftModel.iosVapEffect
                dictM[(String(str_viewTableName.prefix(4)) + String(str_cancelName))] = roomGiftModel.iosVapEffect

                //: dictM["showType"] = (roomGiftModel.showType)
                dictM[(str_blockTitle.replacingOccurrences(of: "view", with: "ow") + "Type")] = (roomGiftModel.showType)
                //: if (roomGiftModel.animationTimes > 0) {
                if roomGiftModel.animationTimes > 0 {
                    //: dictM["animationTimes"] = (roomGiftModel.animationTimes)
                    dictM[(str_addValue.replacingOccurrences(of: "number", with: "a") + "ation" + String(str_rowValue.prefix(5)))] = (roomGiftModel.animationTimes)
                    //: } else {
                } else {
                    //: dictM["animationTimes"] = dictM["num"]
                    dictM[(str_addValue.replacingOccurrences(of: "number", with: "a") + "ation" + String(str_rowValue.prefix(5)))] = dictM[(str_mediumName.replacingOccurrences(of: "text", with: "m"))]
                }

                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
                if let giftModel = JSONDeserializer<EnableLabelTransformable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    //: return giftModel
                    return giftModel
                }
            }
        }
        //: return nil
        return nil
    }

    /// 收到礼物消息的动效模型(私信收到)
    //: func addGiftAnimatModel(model: TalkingGiftMsgAnimatModel) {
    func addAnimatMeanSunTheoryGiftModel(model: EnableLabelTransformable) {
        //: animatArray.add(model)
        animatArray.add(model)
        //: judgePlay()
        attracter()
    }

    /// 收到礼物消息的动效组(私信收到)
    //: func addGiftAnimatModelArr(modelArr: Array<Any>) {
    func prepare(modelArr: [Any]) {
        //: animatArray.addObjects(from: modelArr)
        animatArray.addObjects(from: modelArr)
        //: judgePlay()
        attracter()
    }

    /// 获取剩余的动画队列
    //: func getLeftGiftAnimat() ->NSMutableArray {
    func leftHand() -> NSMutableArray {
        //: let data = animatArray
        let data = animatArray
        //: animatArray.removeAllObjects()
        animatArray.removeAllObjects()
        //: isPlayAnimat = false
        isPlayAnimat = false
        //: return data
        return data
    }

    /// 初始化动画资源(针对通话的显示 最小化 关闭的切换)
    //: func initAnimatData(data: NSMutableArray) {
    func fileReport(data: NSMutableArray) {
        //: animatArray.removeAllObjects()
        animatArray.removeAllObjects()
        //: isPlayAnimat = false
        isPlayAnimat = false
        //: if data.count > 0 {
        if data.count > 0 {
            //: animatArray.addObjects(from: data as! [Any])
            animatArray.addObjects(from: data as! [Any])
        }
        //: judgePlay()
        attracter()
    }

    /// 根据会话id 将对应的缓存动画加进来

    //: func initCachAnimatData(tagetID: String) {
    func isAdd(tagetID: String) {
        //: let data = AbTalkingPrivateChatAnimatTool.shared.getConverCacheGiftAnimat(tagetId: tagetID)
        let data = InsularThen.shared.meanSun(tagetId: tagetID)
        //: if data.count > 0 {
        if data.count > 0 {
            //: animatArray.addObjects(from: data as! [Any])
            animatArray.addObjects(from: data as! [Any])
        }
        //: judgePlay()
        attracter()
    }

    /// 判断是否要取数组动效 开始播放
    //: func judgePlay() {
    func attracter() {
        //: if animatArray.count>0 && isPlayAnimat == false {
        if animatArray.count > 0, isPlayAnimat == false {
            //: playNext()
            dowery()
        }
    }

    /// 播放
    //: func playNext() {
    func dowery() {
        //: if animatArray.count > 0 {
        if animatArray.count > 0 {
            //: var index = 0
            var index = 0
            //: animatArray.enumerateObjects { obj, idx, stop in
            animatArray.enumerateObjects { obj, idx, stop in
                // 盲盒礼物\帝王礼物 优先播放
                //: let model: TalkingGiftMsgAnimatModel = obj as! TalkingGiftMsgAnimatModel
                let model: EnableLabelTransformable = obj as! EnableLabelTransformable
                //: if (model.showType == ChatGiftAnimatType.myStery.rawValue || model.showType == ChatGiftAnimatType.king.rawValue) {
                if model.showType == AppealMagnitude.myStery.rawValue || model.showType == AppealMagnitude.king.rawValue {
                    //: index = idx
                    index = idx
                    //: stop.pointee = true
                    stop.pointee = true
                }
            }
            //: let giftModel = self.animatArray[index]
            let giftModel = self.animatArray[index]
            //: self.isPlayAnimat = true
            self.isPlayAnimat = true
            //: self.animatArray.removeObject(at: index)
            self.animatArray.removeObject(at: index)
            //: let iscanPlay = self.giftAnimatView.didReceiveMsgModel(msgModel: giftModel)
            let iscanPlay = self.giftAnimatView.cargo(msgModel: giftModel)
            //: if !iscanPlay {
            if !iscanPlay {
                //: self.isPlayAnimat = false
                self.isPlayAnimat = false
                //: judgePlay()
                attracter()
            }
        }
    }

    //: override var contentMode: UIView.ContentMode {
    override var contentMode: UIView.ContentMode {
        //: didSet {
        didSet {
            //: self.giftAnimatView.contentMode = contentMode
            self.giftAnimatView.contentMode = contentMode
        }
    }
}

//: extension TalkingPrivateChatAnimatView {
extension TitleAnimatView {
    // 添加视图
    //: private func setupSubviews() {
    private func atBar() {
        //: self.isUserInteractionEnabled = false
        self.isUserInteractionEnabled = false

        //: self.addSubview(giftAnimatView)
        self.addSubview(giftAnimatView)

        //: giftAnimatView.snp.makeConstraints { make in
        giftAnimatView.snp.makeConstraints { make in
            //: make.edges.equalTo(self)
            make.edges.equalTo(self)
        }
        //: giftAnimatView.animationFinishCallback = { [weak self] obj in
        giftAnimatView.animationFinishCallback = { [weak self] _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.isPlayAnimat = false
            self.isPlayAnimat = false
            //: self.playNext()
            self.dowery()
        }

        //: giftAnimatView.finishAnimBlock = { [weak self] success in
        giftAnimatView.finishAnimBlock = { [weak self] success in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if !success {
            if !success {
                //: self.isPlayAnimat = false
                self.isPlayAnimat = false
                //: self.playNext()
                self.dowery()
            }
        }
    }
}
