
//: Declare String Begin

/*: "toUserInfo" :*/
fileprivate let str_frameShareData:String = "toUsactual equal main end make"
fileprivate let str_maxContent:String = "text"

/*: "toUid" :*/
fileprivate let str_addMessageText:[Character] = ["t","o","U","i","d"]

/*: "nickname" :*/
fileprivate let str_topTitle:String = "effectickeffect"
fileprivate let str_nameContent:[Character] = ["a","m","e"]

/*: "headPic" :*/
fileprivate let str_springArrayTitle:[Character] = ["h","e"]
fileprivate let str_tableModelName:String = "adPicof make from icon self"

/*: "sex" :*/
fileprivate let str_makeData:[Character] = ["s","e","x"]

/*: "age" :*/
fileprivate let str_replyText:String = "aminimum"

/*: "tpAuth" :*/
fileprivate let str_equalData:String = "let lettpAuth"

/*: "interest" :*/
fileprivate let str_skinName:[Character] = ["i","n","t"]
fileprivate let str_awakeFromValue:String = "eresadd"

/*: "picture" :*/
fileprivate let str_sharedTitle:[Character] = ["p","i"]
fileprivate let str_modelData:[Character] = ["c","t","u","r","e"]

/*: "loungePlus" :*/
fileprivate let str_textGiftTitle:[Character] = ["l","o","u","n","g","e","P","l","u","s"]

/*: "vipSkinId" :*/
fileprivate let str_addData:[Character] = ["v","i","p","S","k","i","n","I","d"]

/*: "voicePrice" :*/
fileprivate let str_beginData:String = "VO"
fileprivate let str_indexName:[Character] = ["i","c","e","P","r","i","c","e"]

/*: "videoPrice" :*/
fileprivate let str_fromData:String = "vmodeldeo"

/*: "voiceVIPPrice" :*/
fileprivate let str_balanceName:String = "vtablei"
fileprivate let str_cellValue:String = "ceVIPnormal to"

/*: "videoVIPPrice" :*/
fileprivate let str_sendPositionTitle:[Character] = ["v","i","d","e","o","V","I","P"]
fileprivate let str_labelContent:[Character] = ["P","r","i","c","e"]

/*: "version" :*/
fileprivate let str_needCellValue:String = "section"
fileprivate let str_dataViewValue:[Character] = ["e","r","s","i","o","n"]

/*: "headPicFrame" :*/
fileprivate let str_modelName:String = "headPmodel text"

/*: "signature" :*/
fileprivate let str_resultData:String = "mgn"

/*: "constellation" :*/
fileprivate let str_onText:String = "CONSTE"
fileprivate let str_componentData:String = "ION"

/*: "onlineStatus" :*/
fileprivate let str_tabData:String = "ON"
fileprivate let str_contentLabContactData:String = "lretaine"

/*: "isNewUser" :*/
fileprivate let str_resultValue:[Character] = ["i","s","N","e","w","U"]
fileprivate let str_theViewData:String = "errorer"

/*: "isOfficial" :*/
fileprivate let str_nurseValue:String = "number"
fileprivate let str_sizeText:String = "Officialup normal conversation view"

/*: "userStatus" :*/
fileprivate let str_userCurrentPathData:String = "usevoice"

/*: "remarkInfo" :*/
fileprivate let str_imageContent:String = "remsharedk"

/*: "content" :*/
fileprivate let str_progressContent:String = "C"
fileprivate let str_frameRegularWithName:String = "obuttonebutton"

/*: "top" :*/
fileprivate let str_quickName:String = "tolabel"

/*: "enableVideoCall" :*/
fileprivate let str_childContent:[Character] = ["e","n","a","b","l","e"]
fileprivate let str_levelVideoTitle:[Character] = ["V","i","d","e","o","C","a","l","l"]

/*: "voiceBean" :*/
fileprivate let str_titleEnableText:String = "mm"
fileprivate let str_tableName:[Character] = ["o","i","c","e","B","e","a","n"]

/*: "videoBean" :*/
fileprivate let str_positionValue:String = "guard inputvideoB"
fileprivate let str_errorName:String = "eatitle"

/*: "prompt" :*/
fileprivate let str_popText:String = "bottomompt"

/*: "matchRate" :*/
fileprivate let str_popularData:String = "text true homematchRate"

/*: "existSess" :*/
fileprivate let str_postData:String = "ereports"

/*: "totalIntimate" :*/
fileprivate let str_toolData:String = "view"
fileprivate let str_firstText:String = "otanormal"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MixedThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/16.
//

//: import UIKit
import UIKit

//: @objcMembers
@objcMembers
//: public class MixedThen: NSObject, HandyJSON {
public class MixedThen: NSObject, HandyJSON {
    //: public var uid: String = ""
    public var uid: String = ""
    //: public var nickname: String = ""
    public var nickname: String = ""
    //: public var age: String = "0"
    public var age: String = "0"
    //: public var headPic: String = ""
    public var headPic: String = ""
    //: public var sex: String = "0"                   // 1 男性 2 女性
    public var sex: String = "0" // 1 男性 2 女性
    //: public var version: String = "0"               // 当前用户版本
    public var version: String = "0" // 当前用户版本

    //: var interest: Array<String> = []
    var interest: [String] = []
    //: var picture: Array<String> = []
    var picture: [String] = []
    //: public var tpAuth: Bool = false
    public var tpAuth: Bool = false // 是否认证
    //: var enableVideoCall = false
    var enableVideoCall = false // 是否展示视频通话按钮，默认否
    //: public var loungePlus: Bool = false
    public var loungePlus: Bool = false // 是否订阅
    //: var vipSkinId = 0
    var vipSkinId = 0 // vip皮肤id
    //: var voicePrice: String = ""             // 语音通话价格
    var voicePrice: String = "" // 语音通话价格
    //: var videoPrice: String = ""             // 视频通话价格
    var videoPrice: String = "" // 视频通话价格
    //: var videoVIPPrice: String = ""          // 视频通话VIP价格
    var videoVIPPrice: String = "" // 视频通话VIP价格
    //: var voiceVIPPrice: String = ""          // 语音通话VIP价格
    var voiceVIPPrice: String = "" // 语音通话VIP价格
    //: var videoBean: String = ""              // 视频通话获取积分（限女性）
    var videoBean: String = "" // 视频通话获取积分（限女性）
    //: var voiceBean: String = ""              // 语音通话获取积分（限女性）
    var voiceBean: String = "" // 语音通话获取积分（限女性）
    //: var prompt: String = ""                 // VIP折扣提醒（限女性）
    var prompt: String = "" // VIP折扣提醒（限女性）
    //: public var headPicFrame: String = ""    // 头像框
    public var headPicFrame: String = "" // 头像框
    //: var matchRate = 0
    var matchRate = 0 // 匹配度
    //: var signature: String = ""              // 签名
    var signature: String = "" // 签名
    //: var constellation: String = ""          // 星座
    var constellation: String = "" // 星座
    //: var existSess: Bool = false
    var existSess: Bool = false // false表示未建立会话
    //: var onlineStatus = 0
    var onlineStatus = 0 // 用户在线状态 1=在线 0=不在线
    //: var isNewUser = false
    var isNewUser = false // 是否新用户
    //: var isHaveSession = false
    var isHaveSession = false // 是否建立会话
    //: public var isOfficial = false
    public var isOfficial = false // 是否官方账号
    //: var intimate = 0
    var intimate = 0 // 亲密度
    //: var intimateTime = 0
    var intimateTime = 0 // 亲密度保存时间
    //: var readReceiptTime = 0
    var readReceiptTime = 0 // 对方已读消息回执时间戳
    //: var userStatus = 1
    var userStatus = 1 // 用户状态 1正常2被禁言3被封号5被拉黑
    //: var content = ""                        // 置顶内容
    var content = "" // 置顶内容
    //: var top = 2
    var top = 2 // 是否置顶 1：置顶，2：否

    //: public required override init() {}
    override public required init() {}

    //: public class func func__transformedChatinfo(userDic: Dictionary<String, Any>) -> MixedThen {
    public class func jump(userDic: [String: Any]) -> MixedThen {
        //: let wrap = MixedThen.init()
        let wrap = MixedThen()

        //: if userDic.keys.contains("toUserInfo") {
        if userDic.keys.contains((String(str_frameShareData.prefix(4)) + "erInf" + str_maxContent.replacingOccurrences(of: "text", with: "o"))) {
            //: let userInfoDic = userDic["toUserInfo"] as! Dictionary<String, Any>
            let userInfoDic = userDic[(String(str_frameShareData.prefix(4)) + "erInf" + str_maxContent.replacingOccurrences(of: "text", with: "o"))] as! [String: Any]
            //: if userInfoDic.keys.contains("toUid") {
            if userInfoDic.keys.contains((String(str_addMessageText))) {
                //: wrap.uid = "\(userInfoDic["toUid"] as! NSNumber)"
                wrap.uid = "\(userInfoDic[(String(str_addMessageText))] as! NSNumber)"
            }
            //: wrap.nickname = userInfoDic["nickname"] as? String ?? ""
            wrap.nickname = userInfoDic[(str_topTitle.replacingOccurrences(of: "effect", with: "n") + String(str_nameContent))] as? String ?? ""
            //: wrap.headPic = userInfoDic["headPic"] as? String ?? ""
            wrap.headPic = userInfoDic[(String(str_springArrayTitle) + String(str_tableModelName.prefix(5)))] as? String ?? ""
            //: wrap.sex = userInfoDic["sex"] as? String ?? ""
            wrap.sex = userInfoDic[(String(str_makeData))] as? String ?? ""
            //: wrap.age = "\(userInfoDic["age"] as? NSNumber ?? NSNumber.init())"
            wrap.age = "\(userInfoDic[(str_replyText.replacingOccurrences(of: "minimum", with: "ge"))] as? NSNumber ?? NSNumber())"
            //: wrap.tpAuth = userInfoDic["tpAuth"] as? Bool ?? false
            wrap.tpAuth = userInfoDic[(String(str_equalData.suffix(6)))] as? Bool ?? false
            //: wrap.interest = userInfoDic["interest"] as? Array<String> ?? [""]
            wrap.interest = userInfoDic[(String(str_skinName) + str_awakeFromValue.replacingOccurrences(of: "add", with: "t"))] as? [String] ?? [""]
            //: wrap.picture = userInfoDic["picture"] as? Array<String> ?? [""]
            wrap.picture = userInfoDic[(String(str_sharedTitle) + String(str_modelData))] as? [String] ?? [""]
            //: wrap.loungePlus = userInfoDic["loungePlus"] as? Bool ?? false
            wrap.loungePlus = userInfoDic[(String(str_textGiftTitle))] as? Bool ?? false
            //: wrap.vipSkinId = userInfoDic["vipSkinId"] as? Int ?? 0
            wrap.vipSkinId = userInfoDic[(String(str_addData))] as? Int ?? 0
            //: wrap.voicePrice = userInfoDic["voicePrice"] as? String ?? ""
            wrap.voicePrice = userInfoDic[(str_beginData.lowercased() + String(str_indexName))] as? String ?? ""
            //: wrap.videoPrice = userInfoDic["videoPrice"] as? String ?? ""
            wrap.videoPrice = userInfoDic[(str_fromData.replacingOccurrences(of: "model", with: "i") + "Price")] as? String ?? ""
            //: wrap.voiceVIPPrice = userInfoDic["voiceVIPPrice"] as? String ?? ""
            wrap.voiceVIPPrice = userInfoDic[(str_balanceName.replacingOccurrences(of: "table", with: "o") + String(str_cellValue.prefix(5)) + "Price")] as? String ?? ""
            //: wrap.videoVIPPrice = userInfoDic["videoVIPPrice"] as? String ?? ""
            wrap.videoVIPPrice = userInfoDic[(String(str_sendPositionTitle) + String(str_labelContent))] as? String ?? ""
            //: wrap.version = userInfoDic["version"] as? String ?? ""
            wrap.version = userInfoDic[(str_needCellValue.replacingOccurrences(of: "section", with: "v") + String(str_dataViewValue))] as? String ?? ""
            //: wrap.headPicFrame = userInfoDic["headPicFrame"] as? String ?? ""
            wrap.headPicFrame = userInfoDic[(String(str_modelName.prefix(5)) + "icFrame")] as? String ?? ""
            //: wrap.signature = userInfoDic["signature"] as? String ?? ""
            wrap.signature = userInfoDic[(str_resultData.replacingOccurrences(of: "m", with: "si") + "ature")] as? String ?? ""
            //: wrap.constellation = userInfoDic["constellation"] as? String ?? ""
            wrap.constellation = userInfoDic[(str_onText.lowercased() + "llat" + str_componentData.lowercased())] as? String ?? ""
            //: wrap.onlineStatus = userInfoDic["onlineStatus"] as! Int
            wrap.onlineStatus = userInfoDic[(str_tabData.lowercased() + str_contentLabContactData.replacingOccurrences(of: "retain", with: "in") + "Status")] as! Int
            //: wrap.isNewUser = userInfoDic["isNewUser"] as? Bool ?? false
            wrap.isNewUser = userInfoDic[(String(str_resultValue) + str_theViewData.replacingOccurrences(of: "error", with: "s"))] as? Bool ?? false
            //: wrap.isOfficial = userInfoDic["isOfficial"] as? Bool ?? false
            wrap.isOfficial = userInfoDic[(str_nurseValue.replacingOccurrences(of: "number", with: "is") + String(str_sizeText.prefix(8)))] as? Bool ?? false
            //: wrap.userStatus = userInfoDic["userStatus"] as? Int ?? 1
            wrap.userStatus = userInfoDic[(str_userCurrentPathData.replacingOccurrences(of: "voice", with: "r") + "Status")] as? Int ?? 1
        }
        //: if userDic.keys.contains("remarkInfo") { // 备注相关
        if userDic.keys.contains((str_imageContent.replacingOccurrences(of: "shared", with: "ar") + "Info")) { // 备注相关
            //: let remarkDict = userDic["remarkInfo"] as! [String: Any]
            let remarkDict = userDic[(str_imageContent.replacingOccurrences(of: "shared", with: "ar") + "Info")] as! [String: Any]
            //: wrap.content = remarkDict["content"] as? String ?? ""
            wrap.content = remarkDict[(str_progressContent.lowercased() + str_frameRegularWithName.replacingOccurrences(of: "button", with: "nt"))] as? String ?? ""
            //: wrap.top = remarkDict["top"] as? Int ?? 2
            wrap.top = remarkDict[(str_quickName.replacingOccurrences(of: "label", with: "p"))] as? Int ?? 2
        }
        //: if userDic.keys.contains("enableVideoCall") {
        if userDic.keys.contains((String(str_childContent) + String(str_levelVideoTitle))) {
            //: wrap.enableVideoCall = userDic["enableVideoCall"] as! Bool
            wrap.enableVideoCall = userDic[(String(str_childContent) + String(str_levelVideoTitle))] as! Bool
        }
        //: if userDic.keys.contains("voiceBean") {
        if userDic.keys.contains((str_titleEnableText.replacingOccurrences(of: "mm", with: "v") + String(str_tableName))) {
            //: wrap.voiceBean = userDic["voiceBean"] as! String
            wrap.voiceBean = userDic[(str_titleEnableText.replacingOccurrences(of: "mm", with: "v") + String(str_tableName))] as! String
        }
        //: if userDic.keys.contains("videoBean") {
        if userDic.keys.contains((String(str_positionValue.suffix(6)) + str_errorName.replacingOccurrences(of: "title", with: "n"))) {
            //: wrap.videoBean =  userDic["videoBean"] as! String
            wrap.videoBean = userDic[(String(str_positionValue.suffix(6)) + str_errorName.replacingOccurrences(of: "title", with: "n"))] as! String
        }
        //: if userDic.keys.contains("prompt") {
        if userDic.keys.contains((str_popText.replacingOccurrences(of: "bottom", with: "pr"))) {
            //: wrap.prompt = userDic["prompt"] as! String
            wrap.prompt = userDic[(str_popText.replacingOccurrences(of: "bottom", with: "pr"))] as! String
        }
        //: if userDic.keys.contains("matchRate") {
        if userDic.keys.contains((String(str_popularData.suffix(9)))) {
            //: wrap.matchRate =  userDic["matchRate"] as! Int
            wrap.matchRate = userDic[(String(str_popularData.suffix(9)))] as! Int
        }
        //: if userDic.keys.contains("existSess") {
        if userDic.keys.contains((str_postData.replacingOccurrences(of: "report", with: "xi") + "tSess")) {
            //: wrap.existSess = userDic["existSess"] as? Bool ?? false
            wrap.existSess = userDic[(str_postData.replacingOccurrences(of: "report", with: "xi") + "tSess")] as? Bool ?? false
        }
        //: if userDic.keys.contains("totalIntimate") {
        if userDic.keys.contains((str_toolData.replacingOccurrences(of: "view", with: "t") + str_firstText.replacingOccurrences(of: "normal", with: "l") + "Intimate")) {
            //: wrap.intimate = userDic["totalIntimate"] as? Int ?? 0
            wrap.intimate = userDic[(str_toolData.replacingOccurrences(of: "view", with: "t") + str_firstText.replacingOccurrences(of: "normal", with: "l") + "Intimate")] as? Int ?? 0
        }
        //: return wrap
        return wrap
    }
}
