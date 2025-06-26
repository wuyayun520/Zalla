
//: Declare String Begin

/*: "className" :*/
fileprivate let str_sizeTitle:[Character] = ["c","l","a","s","s"]
fileprivate let str_nameValue:[Character] = ["N","a","m","e"]

/*: "nativeClassName" :*/
fileprivate let str_buttonName:String = "modeti"
fileprivate let str_contentValue:String = "let left interaction name leftssName"

/*: "effectType" :*/
fileprivate let str_imageText:String = "EF"
fileprivate let str_normalData:[Character] = ["f","e","c","t","T","y","p","e"]

/*: "gifFile" :*/
fileprivate let str_kitIconData:[Character] = ["g","i","f","F","i","l","e"]

/*: "versions" :*/
fileprivate let str_translateTitle:[Character] = ["v","e","r","s","i","o","n","s"]

/*: "config" :*/
fileprivate let str_panText:[Character] = ["c","o","n","f","i"]
fileprivate let str_bottomNameData:[Character] = ["g"]

/*: "mainFile" :*/
fileprivate let str_regularToValue:String = "with filter hidden rawmainF"
fileprivate let str_sectionName:String = "ilcell"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  UpHandyJSON.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/9.
//

//: import UIKit
import UIKit

//: enum TalkingGiftAnimatType: String {
enum WithAnimatType: String {
    //: case Gif  = "gif"
    case Gif = "gif"
    //: case Chat = "chatGift"
    case Chat = "chatGift"
}

//: enum GiftAnimatUpdateError: Int {
enum ColorKeyRepresentable: Int {
    //: case UnzipFailed  = -1001
    case UnzipFailed = -1001 // 资源 解压失败
    //: case VerifyFailed = -1002
    case VerifyFailed = -1002 // 资源 校验失败
    //: case DownLoadFailed = -1003
    case DownLoadFailed = -1003 // 资源 下载失败
}

//: enum TalkingAnimatType: Int {
enum AutomaticallyTermConvertible: Int {
    //: case Unknown  = 0
    case Unknown = 0
    //: case Gift = 1
    case Gift = 1 // 礼物动效
}

/// 动效资源的信息封装，对应一个zip资源的config.json

//: struct TalkingGiftAnimatModel: HandyJSON {
struct UpHandyJSON: HandyJSON {
    //: init() {
    init() {}

    //: var className = ""
    var className = ""
    //: var nativeClassName = ""
    var nativeClassName = ""
    //: var effectType = TalkingGiftAnimatType.Gif
    var effectType = WithAnimatType.Gif /// 加载动效指定的类型
    //: var mainFile = ""
    var mainFile = ""
    //: var effectConfig = Dictionary<String, Any>()
    var effectConfig = [String: Any]()
}

//: extension TalkingGiftAnimatModel {
extension UpHandyJSON {
    //: func setAnimatModek(dic: NSDictionary) -> TalkingGiftAnimatModel {
    func popAccept(dic: NSDictionary) -> UpHandyJSON {
        //: var model =  TalkingGiftAnimatModel.init()
        var model = UpHandyJSON()
        //: model.className = dic["className"] as? String ?? ""
        model.className = dic[(String(str_sizeTitle) + String(str_nameValue))] as? String ?? ""
        //: model.nativeClassName = dic["nativeClassName"] as? String ?? ""
        model.nativeClassName = dic[(str_buttonName.replacingOccurrences(of: "mode", with: "na") + "veCla" + String(str_contentValue.suffix(6)))] as? String ?? ""
        //: model.effectType = dic["effectType"] as? TalkingGiftAnimatType ?? TalkingGiftAnimatType.Gif
        model.effectType = dic[(str_imageText.lowercased() + String(str_normalData))] as? WithAnimatType ?? WithAnimatType.Gif

        //: if model.effectType == .Gif {
        if model.effectType == .Gif {
            //: model.mainFile = dic["gifFile"] as? String ?? ""
            model.mainFile = dic[(String(str_kitIconData))] as? String ?? ""
            //: } else {
        } else {
            //: model.mainFile = dic[TalkingGiftAnimatType.Chat.rawValue] as? String ?? ""
            model.mainFile = dic[WithAnimatType.Chat.rawValue] as? String ?? ""
        }
        //: let versions: Array = dic["versions"] as! Array<Dictionary<String, Any>>
        let versions: Array = dic[(String(str_translateTitle))] as! [[String: Any]]
        //: if versions.count <= 0 {
        if versions.count <= 0 {
            //: return model
            return model
        }
        //: let match = true
        let match = true
        /*!
         * 遍历versions数组，匹配应用版本，匹配到则使用config数据
         */
        //: for item in versions {
        for item in versions {
            //: model.effectConfig = item["config"] as! [String: Any]
            model.effectConfig = item[(String(str_panText) + String(str_bottomNameData))] as! [String: Any]
        }
        //: if (match) {
        if match {
            //: model.className       = model.effectConfig["className"] as? String ?? ""
            model.className = model.effectConfig[(String(str_sizeTitle) + String(str_nameValue))] as? String ?? ""
            //: model.nativeClassName = model.effectConfig["nativeClassName"] as? String ?? ""
            model.nativeClassName = model.effectConfig[(str_buttonName.replacingOccurrences(of: "mode", with: "na") + "veCla" + String(str_contentValue.suffix(6)))] as? String ?? ""
            //: model.effectType      = model.effectConfig["effectType"] as? TalkingGiftAnimatType ?? TalkingGiftAnimatType.Gif
            model.effectType = model.effectConfig[(str_imageText.lowercased() + String(str_normalData))] as? WithAnimatType ?? WithAnimatType.Gif
            //: model.mainFile        = model.effectConfig["mainFile"] as? String ?? ""
            model.mainFile = model.effectConfig[(String(str_regularToValue.suffix(5)) + str_sectionName.replacingOccurrences(of: "cell", with: "e"))] as? String ?? ""
        }
        //: return model
        return model
    }
}
