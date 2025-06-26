
//: Declare String Begin

/*: "unarchive failure in init" :*/
fileprivate let str_sizeTitle:[Character] = ["u","n","a","r","c","h","i","v","e"," ","f","a","i","l","u","r","e"," "]
fileprivate let str_recordData:String = "in inittype present let var"

/*: "App" :*/
fileprivate let str_lastName:[Character] = ["A","p","p"]

/*: "privateChatEffect%@" :*/
fileprivate let str_indexData:String = "pemptyiv"
fileprivate let str_dateData:String = "hidden label sharedhatEf"
fileprivate let str_angleData:String = "share"

/*: "extra" :*/
fileprivate let str_topContent:String = "lengthtra"

/*: "user" :*/
fileprivate let str_backData:String = "USER"

/*: "%@" :*/
fileprivate let str_toolValue:[Character] = ["%","@"]

/*: "id" :*/
fileprivate let str_rawData:String = "view"

/*: "gift" :*/
fileprivate let str_topValue:[Character] = ["g","i","f","t"]

/*: "fromUid" :*/
fileprivate let str_equalValue:String = "op"
fileprivate let str_toData:[Character] = ["o","m","U","i","d"]

/*: "fromNickname" :*/
fileprivate let str_userValue:String = "frlab"
fileprivate let str_toValue:String = "file let sizemNick"

/*: "name" :*/
fileprivate let str_viewLabelFromValue:String = "nammake"

/*: "fromHeadPic" :*/
fileprivate let str_actualData:String = "degreerom"

/*: "icon" :*/
fileprivate let str_sizeValue:[Character] = ["i","c","o","n"]

/*: "pid" :*/
fileprivate let str_farName:[Character] = ["p","i","d"]

/*: "num" :*/
fileprivate let str_equalModelName:String = "nnoticem"

/*: "pname" :*/
fileprivate let str_modeTitle:String = "pnaviewe"

/*: "giftPic" :*/
fileprivate let str_gestureName:[Character] = ["g","i","f","t","P","i","c"]

/*: "comboNum" :*/
fileprivate let str_writeTitle:String = "on as self keycomboNum"

/*: "iosEffect" :*/
fileprivate let str_taskValue:String = "iname"
fileprivate let str_addValue:String = "sEffectshared border list mode gift"

/*: "showType" :*/
fileprivate let str_reportName:String = "total conversation else height keyshowType"

/*: "animationTimes" :*/
fileprivate let str_appText:[Character] = ["a","n","i","m","a","t","i","o"]
fileprivate let str_colorLimitContent:String = "nTimesmodel label"

/*: "iosVapEffect" :*/
fileprivate let str_recordValue:String = "should sendiosVa"

/*: "msgInfo" :*/
fileprivate let str_starWillName:String = "msgInfor manager make hidden"
fileprivate let str_theName:String = "status"

/*: "mfBean" :*/
fileprivate let str_productValue:[UInt8] = [0x5e,0x55,0x71,0x56,0x52,0x5d]

/*: "toUser" :*/
fileprivate let str_buttonData:String = "toUsershow false case"

/*: "uid" :*/
fileprivate let str_viewReloadValue:[Character] = ["u","i","d"]

/*: "giftNum" :*/
fileprivate let str_modelData:String = "title if capturegiftNum"

/*: "nickname" :*/
fileprivate let str_itemContent:String = "equalickequal"
fileprivate let str_edgeTitle:String = "acollectione"

/*: "Send to %@" :*/
fileprivate let str_bottomTitle:String = "Sendvar succeed mp player stream"

/*: "Send to All Numbers" :*/
fileprivate let str_modelTitle:[Character] = ["S","e","n","d"," ","t","o"," ","A","l","l"," ","N","u","m"]
fileprivate let str_fromText:[Character] = ["b","e","r","s"]

/*: "headPic" :*/
fileprivate let str_effectData:[Character] = ["h","e","a","d","P","i","c"]

/*: "LiveGift_%@" :*/
fileprivate let str_coverText:String = "LiveGifto error other self view"
fileprivate let str_maleName:[Character] = ["t","_","%","@"]

/*: "toUid" :*/
fileprivate let str_addData:[Character] = ["t","o","U","i","d"]

/*: "PartyGift_%@" :*/
fileprivate let str_textTitle:String = "self info lock self whitePartyG"
fileprivate let str_centerText:String = "ift_%@info let layer self"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  InsularThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/6.
//

/// 私聊 动效管理  会话id->礼物动效数组  本地存起来

//: import UIKit
import UIKit

//: @objc class AbTalkingPrivateChatAnimatTool: NSObject {
@objc class InsularThen: NSObject {
    //: var cachDict = NSMutableDictionary(capacity: 0)
    var cachDict = NSMutableDictionary(capacity: 0)

    //: @objc static let shared = AbTalkingPrivateChatAnimatTool()
    @objc static let shared = InsularThen()

    //: override private init() {
    override private init() {
        //: super.init()
        super.init()
        //: readAnimatData()
        willWith()
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

//: @objc extension AbTalkingPrivateChatAnimatTool {
@objc extension InsularThen {
    /// 初始化,读取缓存归档的文件
    //: func readAnimatData() {
    func willWith() {
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: do {
            do {
                //: let data = try Data(contentsOf: URL(fileURLWithPath: getPrivateChatAnimtoFile()))
                let data = try Data(contentsOf: URL(fileURLWithPath: stack()))
                //: if let dict: NSDictionary = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as? NSDictionary {
                if let dict: NSDictionary = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as? NSDictionary {
                    //: self.cachDict = NSMutableDictionary(dictionary: dict)
                    self.cachDict = NSMutableDictionary(dictionary: dict)
                }
                //: } catch {
            } catch {
                //: printLog(message: "unarchive failure in init")
                printLog(message: (String(str_sizeTitle) + String(str_recordData.prefix(7))))
            }
            //: } else {
        } else {
            //: let dict: NSDictionary? = NSKeyedUnarchiver.unarchiveObject(withFile: self.getPrivateChatAnimtoFile()) as? NSDictionary
            let dict: NSDictionary? = NSKeyedUnarchiver.unarchiveObject(withFile: self.stack()) as? NSDictionary
            //: if dict != nil {
            if dict != nil {
                //: self.cachDict = NSMutableDictionary(dictionary: dict!)
                self.cachDict = NSMutableDictionary(dictionary: dict!)
            }
        }
    }

    /// 存储缓存
    //: func saveAnimatDataToFile() {
    func toAnimat() {
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: do {
            do {
                //: let data = try NSKeyedArchiver.archivedData(withRootObject: self.cachDict, requiringSecureCoding: true)
                let data = try NSKeyedArchiver.archivedData(withRootObject: self.cachDict, requiringSecureCoding: true)
                //: try data.write(to: URL(fileURLWithPath: getPrivateChatAnimtoFile()))
                try data.write(to: URL(fileURLWithPath: stack()))
                //: } catch {
            } catch {
                //: printLog(message: error)
                printLog(message: error)
            }

            //: } else {
        } else {
            //: NSKeyedArchiver.archiveRootObject(self.cachDict, toFile: self.getPrivateChatAnimtoFile())
            NSKeyedArchiver.archiveRootObject(self.cachDict, toFile: self.stack())
        }
    }

    //: func getPrivateChatAnimtoFile() -> String {
    func stack() -> String {
        //: let documentFilePath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        let documentFilePath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        //: let appPath = (documentFilePath as NSString).appendingPathComponent("App")
        let appPath = (documentFilePath as NSString).appendingPathComponent((String(str_lastName)))

        //: let fm = FileManager.default
        let fm = FileManager.default
        //: if fm.fileExists(atPath: appPath) == false {
        if fm.fileExists(atPath: appPath) == false {
            //: try? FileManager.default.createDirectory(atPath: appPath, withIntermediateDirectories: true)
            try? FileManager.default.createDirectory(atPath: appPath, withIntermediateDirectories: true)
        }

        //: let name = String(format: "privateChatEffect%@", WatercourseThen.share.loginUserMode.userID)
        let name = String(format: (str_indexData.replacingOccurrences(of: "empty", with: "r") + "ateC" + String(str_dateData.suffix(5)) + "fect%" + str_angleData.replacingOccurrences(of: "share", with: "@")), WatercourseThen.share.loginUserMode.userID)
        //: let filePath = (appPath as NSString).appendingPathComponent(name)
        let filePath = (appPath as NSString).appendingPathComponent(name)
        //: return filePath
        return filePath
    }

    /// 根据会话获取需要播放的礼物动效数组,同时会删除
    //: func getConverCacheGiftAnimat(tagetId: String) -> NSMutableArray {
    func meanSun(tagetId: String) -> NSMutableArray {
        //: let data: NSMutableArray? = self.cachDict.object(forKey: tagetId) as? NSMutableArray
        let data: NSMutableArray? = self.cachDict.object(forKey: tagetId) as? NSMutableArray
        //: let modelArray = NSMutableArray(capacity: 0)
        let modelArray = NSMutableArray(capacity: 0)
        //: if data != nil {
        if data != nil {
            //: for dict in data! {
            for dict in data! {
                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dict as? [String: Any], designatedPath: nil) {
                if let giftModel = JSONDeserializer<EnableLabelTransformable>.deserializeFrom(dict: dict as? [String: Any], designatedPath: nil) {
                    //: modelArray.add(giftModel)
                    modelArray.add(giftModel)
                }
            }
            //: self.cachDict.removeObject(forKey: tagetId)
            self.cachDict.removeObject(forKey: tagetId)
        }
        //: self.saveAnimatDataToFile()
        self.toAnimat()
        //: return modelArray
        return modelArray
    }

    /// 删除会话,同步删除缓存
    //: func removeConversionAnimat(targetID: String) {
    func markView(targetID: String) {
        //: if !targetID.isEmptyString, self.cachDict.object(forKey: targetID) != nil {
        if !targetID.isEmptyString, self.cachDict.object(forKey: targetID) != nil {
            //: self.cachDict.removeObject(forKey: targetID)
            self.cachDict.removeObject(forKey: targetID)
            //: self.saveAnimatDataToFile()
            self.toAnimat()
        }
    }

    /// 收到礼物消息处理
    //: func disposeReceiveGiftMsg(giftMessageDic: NSDictionary) {
    func sharedRequestDic(giftMessageDic: NSDictionary) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: let extraDict: Dictionary? = giftMessageDic["extra"] as? [String: Any]
            let extraDict: Dictionary? = giftMessageDic[(str_topContent.replacingOccurrences(of: "length", with: "ex"))] as? [String: Any]
            //: let user: NSDictionary? = giftMessageDic["user"] as? NSDictionary
            let user: NSDictionary? = giftMessageDic[(str_backData.lowercased())] as? NSDictionary
            //: let targetId = String(format: "%@", user?["id"] as! CVarArg)
            let targetId = String(format: "%@", user?["id"] as! CVarArg)

            //: if extraDict == nil || extraDict?.keys.contains("gift") == false {
            if extraDict == nil || extraDict?.keys.contains((String(str_topValue))) == false {
                //: return
                return
            }
            //: if let roomGiftModel = JSONDeserializer<TalkingGiftChatMsgAnimatModel>.deserializeFrom(dict: extraDict!["gift"] as? [String: Any], designatedPath: nil) {
            if let roomGiftModel = JSONDeserializer<MixedAnimatModel>.deserializeFrom(dict: extraDict![(String(str_topValue))] as? [String: Any], designatedPath: nil) {
                //: var effect = roomGiftModel.iosEffect
                var effect = roomGiftModel.iosEffect
                //: if effect.count == 0 {
                if effect.count == 0 {
                    //: effect = roomGiftModel.effect
                    effect = roomGiftModel.effect
                }

                //: let tempGiftModel = NSMutableArray()
                let tempGiftModel = NSMutableArray()
                //: let tempDictM = NSMutableArray()
                let tempDictM = NSMutableArray()

                // 帝王礼物特效
                //: if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                    // 开头动效
                    //: let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                    let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                    //: giftArr?.insert(roomGiftModel.iosEffect, at: 0)
                    giftArr?.insert(roomGiftModel.iosEffect, at: 0)

                    //: let tempArr = NSMutableArray()
                    let tempArr = NSMutableArray()
                    //: let tempDicArr = NSMutableArray()
                    let tempDicArr = NSMutableArray()

                    //: for giftStr in giftArr! {
                    for giftStr in giftArr! {
                        //: let dictM = NSMutableDictionary(capacity: 0)
                        let dictM = NSMutableDictionary(capacity: 0)
                        //: dictM["fromUid"] = targetId
                        dictM[(str_equalValue.replacingOccurrences(of: "op", with: "fr") + String(str_toData))] = targetId
                        //: dictM["fromNickname"] = user?["name"]
                        dictM[(str_userValue.replacingOccurrences(of: "lab", with: "o") + String(str_toValue.suffix(5)) + "name")] = user?[(str_viewLabelFromValue.replacingOccurrences(of: "make", with: "e"))]
                        //: dictM["fromHeadPic"] = user?["icon"]
                        dictM[(str_actualData.replacingOccurrences(of: "degree", with: "f") + "HeadPic")] = user?[(String(str_sizeValue))]
                        //: dictM["pid"] = "0" // 缓存兼容
                        dictM[(String(str_farName))] = "0" // 缓存兼容
                        //: dictM["num"] = (roomGiftModel.giftNum)
                        dictM[(str_equalModelName.replacingOccurrences(of: "notice", with: "u"))] = (roomGiftModel.giftNum)
                        //: dictM["pname"] = roomGiftModel.name
                        dictM[(str_modeTitle.replacingOccurrences(of: "view", with: "m"))] = roomGiftModel.name
                        //: dictM["giftPic"] = roomGiftModel.imgPreview
                        dictM[(String(str_gestureName))] = roomGiftModel.imgPreview
                        //: dictM["comboNum"] = (roomGiftModel.comboNum)
                        dictM[(String(str_writeTitle.suffix(8)))] = (roomGiftModel.comboNum)
                        //: dictM["iosEffect"] = giftStr
                        dictM[(str_taskValue.replacingOccurrences(of: "name", with: "o") + String(str_addValue.prefix(7)))] = giftStr
                        //: dictM["showType"] = (roomGiftModel.showType)
                        dictM[(String(str_reportName.suffix(8)))] = (roomGiftModel.showType)
                        //: dictM["animationTimes"] = "1"
                        dictM[(String(str_appText) + String(str_colorLimitContent.prefix(6)))] = "1"

                        //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        if let giftModel = JSONDeserializer<EnableLabelTransformable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                            //: tempArr.add(giftModel)
                            tempArr.add(giftModel)
                            //: tempDicArr.add(dictM)
                            tempDicArr.add(dictM)
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
                    //: let dictM = NSMutableDictionary(capacity: 0)
                    let dictM = NSMutableDictionary(capacity: 0)

                    //: dictM["fromUid"] = targetId
                    dictM[(str_equalValue.replacingOccurrences(of: "op", with: "fr") + String(str_toData))] = targetId
                    //: dictM["fromNickname"] = user?["name"]
                    dictM[(str_userValue.replacingOccurrences(of: "lab", with: "o") + String(str_toValue.suffix(5)) + "name")] = user?[(str_viewLabelFromValue.replacingOccurrences(of: "make", with: "e"))]
                    //: dictM["fromHeadPic"] = user?["icon"]
                    dictM[(str_actualData.replacingOccurrences(of: "degree", with: "f") + "HeadPic")] = user?[(String(str_sizeValue))]

                    //: dictM["pid"] = roomGiftModel.giftId
                    dictM[(String(str_farName))] = roomGiftModel.giftId
                    //: dictM["num"] = (roomGiftModel.giftNum)
                    dictM[(str_equalModelName.replacingOccurrences(of: "notice", with: "u"))] = (roomGiftModel.giftNum)
                    //: dictM["pname"] = roomGiftModel.name
                    dictM[(str_modeTitle.replacingOccurrences(of: "view", with: "m"))] = roomGiftModel.name
                    //: dictM["giftPic"] = roomGiftModel.imgPreview
                    dictM[(String(str_gestureName))] = roomGiftModel.imgPreview
                    //: dictM["comboNum"] = (roomGiftModel.comboNum)
                    dictM[(String(str_writeTitle.suffix(8)))] = (roomGiftModel.comboNum)
                    //: dictM["iosEffect"] = effect
                    dictM[(str_taskValue.replacingOccurrences(of: "name", with: "o") + String(str_addValue.prefix(7)))] = effect
                    //: dictM["iosVapEffect"] = roomGiftModel.iosVapEffect
                    dictM[(String(str_recordValue.suffix(5)) + "pEffect")] = roomGiftModel.iosVapEffect

                    //: dictM["showType"] = (roomGiftModel.showType)
                    dictM[(String(str_reportName.suffix(8)))] = (roomGiftModel.showType)
                    //: if roomGiftModel.animationTimes > 0 {
                    if roomGiftModel.animationTimes > 0 {
                        //: dictM["animationTimes"] = (roomGiftModel.animationTimes)
                        dictM[(String(str_appText) + String(str_colorLimitContent.prefix(6)))] = (roomGiftModel.animationTimes)
                        //: } else {
                    } else {
                        //: dictM["animationTimes"] = dictM["num"]
                        dictM[(String(str_appText) + String(str_colorLimitContent.prefix(6)))] = dictM[(str_equalModelName.replacingOccurrences(of: "notice", with: "u"))]
                    }

                    //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    if let giftModel = JSONDeserializer<EnableLabelTransformable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        //: tempGiftModel.add(giftModel)
                        tempGiftModel.add(giftModel)
                        //: tempDictM.add(dictM)
                        tempDictM.add(dictM)
                    }
                }

                //: guard let currentVC = self.currentViewController() else { return }
                guard let currentVC = self.toController() else { return }

                // 直播收到礼物，积分更改
                //: if TalkingLiveManager.shared().isLive {
                if ListThen.deleteItem().isLive {
                    //: let msgInfo: Dictionary? = extraDict?["msgInfo"] as? [String: Any]
                    let msgInfo: Dictionary? = extraDict?[(String(str_starWillName.prefix(5)) + str_theName.replacingOccurrences(of: "status", with: "fo"))] as? [String: Any]
                    //: let mfBean = msgInfo?["mfBean"] as? Double
                    let mfBean = msgInfo?[String(bytes: str_productValue.map{$0^51}, encoding: .utf8)!] as? Double
                    //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": mfBean ?? 0.0])
                    NotificationCenter.default.post(name: kLet_errorBottomValue, object: nil, userInfo: [String(bytes: str_productValue.map{$0^51}, encoding: .utf8)!: mfBean ?? 0.0])
                }
                // 当前处于该对话页 添加到当前动画队列里
                //: if let videoVC = currentVC as? TalkingVideoChatViewController {
                if let videoVC = currentVC as? UpwardlyViewController {
                    // 音视频通话时，只展示通话人的礼物
                    //: if WatercourseThen.share.loginUserMode.userID != targetId,
                    if WatercourseThen.share.loginUserMode.userID != targetId,
                       //: videoVC.chatModel?.pairUid == targetId
                       videoVC.chatModel?.pairUid == targetId
                    {
                        //: videoVC.receiveGiftPlay(giftArr: tempGiftModel as! [Any])
                        videoVC.portionSize(giftArr: tempGiftModel as! [Any])
                        //: return
                        return
                    }

                    //: } else if let voiceVC = currentVC as? TalkingVoiceChatViewController {
                } else if let voiceVC = currentVC as? ReadCallerDelegate {
                    // 音视频通话时，只展示通话人的礼物
                    //: if WatercourseThen.share.loginUserMode.userID != targetId,
                    if WatercourseThen.share.loginUserMode.userID != targetId,
                       //: voiceVC.chatModel?.pairUid == targetId
                       voiceVC.chatModel?.pairUid == targetId
                    {
                        //: voiceVC.receiveGiftPlay(giftArr: tempGiftModel as! [Any])
                        voiceVC.instill(giftArr: tempGiftModel as! [Any])
                        //: return
                        return
                    }

                    //: } else if let chatVC = currentVC as? TalkingPrivateChatController {
                } else if let chatVC = currentVC as? RawControllerDelegate {
                    //: if chatVC.getChatVCTargetId() == targetId {
                    if chatVC.dealId() == targetId {
                        //: chatVC.addGiftEffectModelArr(giftArr: tempGiftModel as! [Any])
                        chatVC.upRequest(giftArr: tempGiftModel as! [Any])
                        //: return
                        return
                    }

                    /// 直播中/语聊房 半屏私聊收到个人私聊礼物
                    //: } else if currentVC.isKind(of: TalkingLiveBeautifyViewController.self) ||
                } else if currentVC.isKind(of: NoseViewController.self) ||
                    //: currentVC.isKind(of: TalkingVoiceRoomViewController.self) {
                    currentVC.isKind(of: VoiceReactiveCompatible.self)
                {
                    //: for vc in currentVC.children {
                    for vc in currentVC.children {
                        //: if vc.isKind(of: TalkingPrivateChatController.self) {
                        if vc.isKind(of: RawControllerDelegate.self) {
                            //: let chatVC = vc as! TalkingPrivateChatController
                            let chatVC = vc as! RawControllerDelegate
                            //: if chatVC.getChatVCTargetId() == targetId {
                            if chatVC.dealId() == targetId {
                                //: chatVC.addGiftEffectModelArr(giftArr: tempGiftModel as! [Any])
                                chatVC.upRequest(giftArr: tempGiftModel as! [Any])
                                //: return
                                return
                            }
                        }
                    }
                }

                // 不是该会话 或者 不处于会话页  即使通话也是处于最小化, 则若是礼物动效 存到本地 供下次打开播放
                //: var giftArray: NSMutableArray? = self.cachDict[targetId] as? NSMutableArray
                var giftArray: NSMutableArray? = self.cachDict[targetId] as? NSMutableArray
                //: if giftArray == nil {
                if giftArray == nil {
                    //: giftArray = NSMutableArray(capacity: 0)
                    giftArray = NSMutableArray(capacity: 0)
                }
                //: giftArray?.addObjects(from: tempDictM as! [Any])
                giftArray?.addObjects(from: tempDictM as! [Any])
                //: self.cachDict[targetId] = giftArray
                self.cachDict[targetId] = giftArray
                //: self.saveAnimatDataToFile()
                self.toAnimat()
            }
        }
    }

    /// 聊天室收到礼物消息处理
    //: func chatRoomDisposeReceiveGiftMsg(giftMessageDic: NSDictionary) {
    func chat(giftMessageDic: NSDictionary) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: let extraDict: Dictionary? = giftMessageDic["extra"] as? [String: Any]
            let extraDict: Dictionary? = giftMessageDic[(str_topContent.replacingOccurrences(of: "length", with: "ex"))] as? [String: Any]
            //: let user: NSDictionary? = extraDict?["user"] as? NSDictionary
            let user: NSDictionary? = extraDict?[(str_backData.lowercased())] as? NSDictionary
            //: let touser: NSDictionary? = extraDict?["toUser"] as? NSDictionary
            let touser: NSDictionary? = extraDict?[(String(str_buttonData.prefix(6)))] as? NSDictionary
            //: let targetId = user?["uid"] as? String
            let targetId = user?[(String(str_viewReloadValue))] as? String

            //: if extraDict == nil || extraDict?.keys.contains("gift") == false {
            if extraDict == nil || extraDict?.keys.contains((String(str_topValue))) == false {
                //: return
                return
            }
            //: if var roomGiftModel = JSONDeserializer<TalkingGiftChatMsgAnimatModel>.deserializeFrom(dict: extraDict!["gift"] as? [String: Any], designatedPath: nil) {
            if var roomGiftModel = JSONDeserializer<MixedAnimatModel>.deserializeFrom(dict: extraDict![(String(str_topValue))] as? [String: Any], designatedPath: nil) {
                //: let dic = extraDict?["gift"] as? [String: Any]
                let dic = extraDict?[(String(str_topValue))] as? [String: Any]
                //: roomGiftModel.giftNum = dic?["giftNum"] as? Int ?? 0
                roomGiftModel.giftNum = dic?[(String(str_modelData.suffix(7)))] as? Int ?? 0
                //: var effect = roomGiftModel.iosEffect
                var effect = roomGiftModel.iosEffect
                //: if effect.count == 0 {
                if effect.count == 0 {
                    //: effect = roomGiftModel.effect
                    effect = roomGiftModel.effect
                }

                //: let tempGiftModel = NSMutableArray()
                let tempGiftModel = NSMutableArray()
                //: let tempDictM = NSMutableArray()
                let tempDictM = NSMutableArray()

                // 帝王礼物特效
                //: if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                    // 开头动效
                    //: let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                    let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                    //: giftArr?.insert(roomGiftModel.iosEffect, at: 0)
                    giftArr?.insert(roomGiftModel.iosEffect, at: 0)

                    //: let tempArr = NSMutableArray()
                    let tempArr = NSMutableArray()
                    //: let tempDicArr = NSMutableArray()
                    let tempDicArr = NSMutableArray()

                    //: for giftStr in giftArr! {
                    for giftStr in giftArr! {
                        //: let dictM = NSMutableDictionary(capacity: 0)
                        let dictM = NSMutableDictionary(capacity: 0)
                        //: dictM["fromUid"] = targetId
                        dictM[(str_equalValue.replacingOccurrences(of: "op", with: "fr") + String(str_toData))] = targetId
                        //: dictM["fromNickname"] = user?["name"]
                        dictM[(str_userValue.replacingOccurrences(of: "lab", with: "o") + String(str_toValue.suffix(5)) + "name")] = user?[(str_viewLabelFromValue.replacingOccurrences(of: "make", with: "e"))]
                        //: dictM["fromHeadPic"] = user?["icon"]
                        dictM[(str_actualData.replacingOccurrences(of: "degree", with: "f") + "HeadPic")] = user?[(String(str_sizeValue))]
                        //: dictM["pid"] = "0" // 缓存兼容
                        dictM[(String(str_farName))] = "0" // 缓存兼容
                        //: dictM["num"] = (roomGiftModel.giftNum)
                        dictM[(str_equalModelName.replacingOccurrences(of: "notice", with: "u"))] = (roomGiftModel.giftNum)
                        //: let str = touser?["nickname"] as? String ?? ""
                        let str = touser?[(str_itemContent.replacingOccurrences(of: "equal", with: "n") + str_edgeTitle.replacingOccurrences(of: "collection", with: "m"))] as? String ?? ""
                        //: dictM["pname"] = "Send to %@".localizedArguments(str)
                        dictM[(str_modeTitle.replacingOccurrences(of: "view", with: "m"))] = (String(str_bottomTitle.prefix(4)) + " to %@").alongNext(str)
                        //: if touser == nil {
                        if touser == nil {
                            //: dictM["pname"] = "Send to All Numbers".localized
                            dictM[(str_modeTitle.replacingOccurrences(of: "view", with: "m"))] = (String(str_modelTitle) + String(str_fromText)).localized
                        }
                        //: dictM["giftPic"] = roomGiftModel.imgPreview
                        dictM[(String(str_gestureName))] = roomGiftModel.imgPreview
                        //: dictM["comboNum"] = (roomGiftModel.comboNum)
                        dictM[(String(str_writeTitle.suffix(8)))] = (roomGiftModel.comboNum)
                        //: dictM["iosEffect"] = giftStr
                        dictM[(str_taskValue.replacingOccurrences(of: "name", with: "o") + String(str_addValue.prefix(7)))] = giftStr
                        //: dictM["showType"] = (roomGiftModel.showType)
                        dictM[(String(str_reportName.suffix(8)))] = (roomGiftModel.showType)
                        //: dictM["animationTimes"] = "1"
                        dictM[(String(str_appText) + String(str_colorLimitContent.prefix(6)))] = "1"

                        //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        if let giftModel = JSONDeserializer<EnableLabelTransformable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                            //: tempArr.add(giftModel)
                            tempArr.add(giftModel)
                            //: tempDicArr.add(dictM)
                            tempDicArr.add(dictM)
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
                    //: let dictM = NSMutableDictionary(capacity: 0)
                    let dictM = NSMutableDictionary(capacity: 0)

                    //: dictM["fromUid"] = targetId
                    dictM[(str_equalValue.replacingOccurrences(of: "op", with: "fr") + String(str_toData))] = targetId
                    //: dictM["fromNickname"] = user?["nickname"]
                    dictM[(str_userValue.replacingOccurrences(of: "lab", with: "o") + String(str_toValue.suffix(5)) + "name")] = user?[(str_itemContent.replacingOccurrences(of: "equal", with: "n") + str_edgeTitle.replacingOccurrences(of: "collection", with: "m"))]
                    //: dictM["fromHeadPic"] = user?["headPic"]
                    dictM[(str_actualData.replacingOccurrences(of: "degree", with: "f") + "HeadPic")] = user?[(String(str_effectData))]

                    //: dictM["pid"] = roomGiftModel.giftId
                    dictM[(String(str_farName))] = roomGiftModel.giftId
                    //: dictM["num"] = (roomGiftModel.giftNum)
                    dictM[(str_equalModelName.replacingOccurrences(of: "notice", with: "u"))] = (roomGiftModel.giftNum)
                    // 显示送给谁
                    //: let str = touser?["nickname"] as? String ?? ""
                    let str = touser?[(str_itemContent.replacingOccurrences(of: "equal", with: "n") + str_edgeTitle.replacingOccurrences(of: "collection", with: "m"))] as? String ?? ""
                    //: dictM["pname"] = "Send to %@".localizedArguments(str)
                    dictM[(str_modeTitle.replacingOccurrences(of: "view", with: "m"))] = (String(str_bottomTitle.prefix(4)) + " to %@").alongNext(str)
                    //: if touser == nil {
                    if touser == nil {
                        //: dictM["pname"] = "Send to All Numbers".localized
                        dictM[(str_modeTitle.replacingOccurrences(of: "view", with: "m"))] = (String(str_modelTitle) + String(str_fromText)).localized
                    }
                    //: dictM["giftPic"] = roomGiftModel.imgPreview
                    dictM[(String(str_gestureName))] = roomGiftModel.imgPreview
                    //: dictM["comboNum"] = (roomGiftModel.comboNum)
                    dictM[(String(str_writeTitle.suffix(8)))] = (roomGiftModel.comboNum)
                    //: dictM["iosEffect"] = effect
                    dictM[(str_taskValue.replacingOccurrences(of: "name", with: "o") + String(str_addValue.prefix(7)))] = effect
                    //: dictM["iosVapEffect"] = roomGiftModel.iosVapEffect
                    dictM[(String(str_recordValue.suffix(5)) + "pEffect")] = roomGiftModel.iosVapEffect

                    //: dictM["showType"] = (roomGiftModel.showType)
                    dictM[(String(str_reportName.suffix(8)))] = (roomGiftModel.showType)
                    //: if roomGiftModel.animationTimes > 0 {
                    if roomGiftModel.animationTimes > 0 {
                        //: dictM["animationTimes"] = (roomGiftModel.animationTimes)
                        dictM[(String(str_appText) + String(str_colorLimitContent.prefix(6)))] = (roomGiftModel.animationTimes)
                        //: } else {
                    } else {
                        //: dictM["animationTimes"] = dictM["num"]
                        dictM[(String(str_appText) + String(str_colorLimitContent.prefix(6)))] = dictM[(str_equalModelName.replacingOccurrences(of: "notice", with: "u"))]
                    }

                    //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    if let giftModel = JSONDeserializer<EnableLabelTransformable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        //: tempGiftModel.add(giftModel)
                        tempGiftModel.add(giftModel)
                        //: tempDictM.add(dictM)
                        tempDictM.add(dictM)
                    }
                }

                // 直播在聊天室收到礼物，积分更改
                //: let touid = touser?["uid"] as? Int
                let touid = touser?[(String(str_viewReloadValue))] as? Int
                //: if TalkingLiveManager.shared().isLive, WatercourseThen.share.loginUserMode.userID == "\(touid ?? 0)" || touser == nil {
                if ListThen.deleteItem().isLive, WatercourseThen.share.loginUserMode.userID == "\(touid ?? 0)" || touser == nil {
                    //: let msgInfo: Dictionary? = extraDict?["msgInfo"] as? [String: Any]
                    let msgInfo: Dictionary? = extraDict?[(String(str_starWillName.prefix(5)) + str_theName.replacingOccurrences(of: "status", with: "fo"))] as? [String: Any]
                    //: let mfBean = msgInfo?["mfBean"] as? Double
                    let mfBean = msgInfo?[String(bytes: str_productValue.map{$0^51}, encoding: .utf8)!] as? Double
                    //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": mfBean ?? 0.0])
                    NotificationCenter.default.post(name: kLet_errorBottomValue, object: nil, userInfo: [String(bytes: str_productValue.map{$0^51}, encoding: .utf8)!: mfBean ?? 0.0])
                }

                // 当前处于该对话页 添加到当前动画队列里
                //: if IndoorsPushManager.share.func__getCurrentActivityVC()!.isKind(of: TalkingGroupChatController.self) {
                if IndoorsPushManager.share.queryEqual()!.isKind(of: AllRecognizerDelegate.self) {
                    //: let chatVC = IndoorsPushManager.share.func__getCurrentActivityVC() as! TalkingGroupChatController
                    let chatVC = IndoorsPushManager.share.queryEqual() as! AllRecognizerDelegate
                    //: chatVC.addGiftEffectModelArr(giftArr: tempGiftModel as! [Any])
                    chatVC.observerArr(giftArr: tempGiftModel as! [Any])
                }
            }
        }
    }

    /// 收到 直播/语音房 礼物消息处理
    //: func disposeReceiveLiveRoomGiftMsg(giftMessageDic: NSDictionary) {
    func giftQueryed(giftMessageDic: NSDictionary) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: let extraDict: Dictionary? = giftMessageDic["extra"] as? [String: Any]
            let extraDict: Dictionary? = giftMessageDic[(str_topContent.replacingOccurrences(of: "length", with: "ex"))] as? [String: Any]
            //: let user: NSDictionary? = extraDict?["user"] as? NSDictionary
            let user: NSDictionary? = extraDict?[(str_backData.lowercased())] as? NSDictionary
            //: let targetId = String(format: "%@", user?["uid"] as! CVarArg)
            let targetId = String(format: "%@", user?[(String(str_viewReloadValue))] as! CVarArg)
            //: var toUid = ""
            var toUid = ""
            //: if TalkingLiveManager.shared().isLive {
            if ListThen.deleteItem().isLive {
                //: toUid = String(format: "LiveGift_%@", extraDict?["toUid"] as? CVarArg ?? "")
                toUid = String(format: (String(str_coverText.prefix(7)) + String(str_maleName)), extraDict?[(String(str_addData))] as? CVarArg ?? "")
                //: } else if TalkingVoiceRoomManager.shared().isParty {
            } else if DateRangeThen.portion().isParty {
                //: toUid = String(format: "PartyGift_%@", extraDict?["toUid"] as? CVarArg ?? "")
                toUid = String(format: (String(str_textTitle.suffix(6)) + String(str_centerText.prefix(6))), extraDict?[(String(str_addData))] as? CVarArg ?? "")
            }
            //: let gift = extraDict?["gift"] as? NSDictionary
            let gift = extraDict?[(String(str_topValue))] as? NSDictionary

            //: if extraDict == nil || extraDict?.keys.contains("gift") == false {
            if extraDict == nil || extraDict?.keys.contains((String(str_topValue))) == false {
                //: return
                return
            }
            //: if let roomGiftModel = JSONDeserializer<TalkingGiftChatMsgAnimatModel>.deserializeFrom(dict: extraDict!["gift"] as? [String: Any], designatedPath: nil) {
            if let roomGiftModel = JSONDeserializer<MixedAnimatModel>.deserializeFrom(dict: extraDict![(String(str_topValue))] as? [String: Any], designatedPath: nil) {
                //: var effect = roomGiftModel.iosEffect
                var effect = roomGiftModel.iosEffect
                //: if effect.count == 0 {
                if effect.count == 0 {
                    //: effect = roomGiftModel.effect
                    effect = roomGiftModel.effect
                }

                //: let tempGiftModel = NSMutableArray()
                let tempGiftModel = NSMutableArray()
                //: let tempDictM = NSMutableArray()
                let tempDictM = NSMutableArray()

                //: let dictM = NSMutableDictionary(capacity: 0)
                let dictM = NSMutableDictionary(capacity: 0)

                //: dictM["fromUid"] = targetId
                dictM[(str_equalValue.replacingOccurrences(of: "op", with: "fr") + String(str_toData))] = targetId
                //: dictM["fromNickname"] = user?["nickname"]
                dictM[(str_userValue.replacingOccurrences(of: "lab", with: "o") + String(str_toValue.suffix(5)) + "name")] = user?[(str_itemContent.replacingOccurrences(of: "equal", with: "n") + str_edgeTitle.replacingOccurrences(of: "collection", with: "m"))]
                //: dictM["fromHeadPic"] = user?["headPic"]
                dictM[(str_actualData.replacingOccurrences(of: "degree", with: "f") + "HeadPic")] = user?[(String(str_effectData))]

                //: dictM["pid"] = gift?["id"] as? String
                dictM[(String(str_farName))] = gift?["id"] as? String
                //: dictM["num"] = gift?["num"] as? String
                dictM[(str_equalModelName.replacingOccurrences(of: "notice", with: "u"))] = gift?[(str_equalModelName.replacingOccurrences(of: "notice", with: "u"))] as? String
                //: dictM["pname"] = roomGiftModel.name
                dictM[(str_modeTitle.replacingOccurrences(of: "view", with: "m"))] = roomGiftModel.name
                //: dictM["giftPic"] = roomGiftModel.imgPreview
                dictM[(String(str_gestureName))] = roomGiftModel.imgPreview
                //: dictM["comboNum"] = (roomGiftModel.comboNum)
                dictM[(String(str_writeTitle.suffix(8)))] = (roomGiftModel.comboNum)
                //: dictM["iosEffect"] = effect
                dictM[(str_taskValue.replacingOccurrences(of: "name", with: "o") + String(str_addValue.prefix(7)))] = effect
                //: dictM["iosVapEffect"] = roomGiftModel.iosVapEffect
                dictM[(String(str_recordValue.suffix(5)) + "pEffect")] = roomGiftModel.iosVapEffect

                //: dictM["showType"] = (roomGiftModel.showType)
                dictM[(String(str_reportName.suffix(8)))] = (roomGiftModel.showType)
                //: if roomGiftModel.animationTimes > 0 {
                if roomGiftModel.animationTimes > 0 {
                    //: dictM["animationTimes"] = (roomGiftModel.animationTimes)
                    dictM[(String(str_appText) + String(str_colorLimitContent.prefix(6)))] = (roomGiftModel.animationTimes)
                    //: } else {
                } else {
                    //: dictM["animationTimes"] = dictM["num"]
                    dictM[(String(str_appText) + String(str_colorLimitContent.prefix(6)))] = dictM[(str_equalModelName.replacingOccurrences(of: "notice", with: "u"))]
                }

                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                if let giftModel = JSONDeserializer<EnableLabelTransformable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    //: tempGiftModel.add(giftModel)
                    tempGiftModel.add(giftModel)
                    //: tempDictM.add(dictM)
                    tempDictM.add(dictM)
                }

                // 礼物动效 存到本地 供下次打开播放
                //: var giftArray: NSMutableArray? = self.cachDict[toUid] as? NSMutableArray
                var giftArray: NSMutableArray? = self.cachDict[toUid] as? NSMutableArray
                //: if giftArray == nil {
                if giftArray == nil {
                    //: giftArray = NSMutableArray(capacity: 0)
                    giftArray = NSMutableArray(capacity: 0)
                }
                //: if giftArray?.count ?? 0 >= 10 {
                if giftArray?.count ?? 0 >= 10 {
                    //: giftArray?.removeFirstObject()
                    giftArray?.removeFirstObject()
                }
                //: giftArray?.addObjects(from: tempDictM as! [Any])
                giftArray?.addObjects(from: tempDictM as! [Any])
                //: self.cachDict[toUid] = giftArray
                self.cachDict[toUid] = giftArray
                //: self.saveAnimatDataToFile()
                self.toAnimat()
            }
        }
    }
}
