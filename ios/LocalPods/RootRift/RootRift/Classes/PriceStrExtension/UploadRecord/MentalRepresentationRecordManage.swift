
//: Declare String Begin

/*: "V4ujGjsNUl6RvgjvgD6m91" :*/
fileprivate let str_intimateValue:String = "V4ujGapp image angle of index"
fileprivate let str_labData:String = "section click rowjsNU"
fileprivate let str_resultText:[Character] = ["D","6","m","9","1"]

/*: "data/index" :*/
fileprivate let str_leadingName:String = "self ease true active typedata/i"

/*: "toUid" :*/
fileprivate let str_dataValue:[Character] = ["t","o","U","i","d"]

/*: "uid" :*/
fileprivate let str_imageValue:String = "toid"

/*: "POST" :*/
fileprivate let str_pickSendData:String = "POinfoT"

/*: "Token" :*/
fileprivate let str_colorData:String = "kind typeToken"

/*: "%@" :*/
fileprivate let str_objectText:[Character] = ["%","@"]

/*: "无法解析出JSON字符串" :*/
fileprivate let str_frameTitle:[Character] = ["无","法","解","析","出","J","S","O","N","字","符","串"]

/*: "plat" :*/
fileprivate let str_documentUpData:String = "plcorner"

/*: "ios" :*/
fileprivate let str_identityName:[Character] = ["i","o","s"]

/*: "packageId" :*/
fileprivate let str_containerTitle:[Character] = ["p","a","c"]
fileprivate let str_photoAlwaysTitle:String = "view source imagekageId"

/*: "channel" :*/
fileprivate let str_arrayTitle:String = "chaupup"
fileprivate let str_colorViewValue:String = "section"

/*: "type" :*/
fileprivate let str_portValue:[Character] = ["t","y","p","e"]

/*: "stat" :*/
fileprivate let str_inviteData:String = "stnormal"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MentalRepresentationRecordManage.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/6/19.
//

//: import Alamofire
import Alamofire
//: import UIKit
import UIKit

//: let uploadRecord = UploadRecordManage()
let kLet_depthIconValue = MentalRepresentationRecordManage()
//: let TokenSaltStr = "V4ujGjsNUl6RvgjvgD6m91"
let kLet_imageBarTitle = (String(str_intimateValue.prefix(5)) + String(str_labData.suffix(4)) + "l6Rvgjvg" + String(str_resultText))

//: class UploadRecordManage: NSObject {
class MentalRepresentationRecordManage: NSObject {
    //: public func uploadRecordEvent(eventID: String, toUid: String? = nil, jsonStr: String? = nil) {
    public func mightHaveBeenStubZapErrorUploadTo(eventID: String, toUid: String? = nil, jsonStr: String? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = IndexRequestModel()
        //: reqModel.requestPath = "data/index"
        reqModel.requestPath = (String(str_leadingName.suffix(6)) + "ndex")
        //: reqModel.requestServer = WatercourseThen.share.appConfigMode.reportDomain
        reqModel.requestServer = WatercourseThen.share.appConfigMode.reportDomain
        //: var dict = self.getUploadInfoDict()
        var dict = self.omelettePan()
        //: dict["e"] = eventID /// 事件关键字
        dict["e"] = eventID /// 事件关键字
        //: if jsonStr?.count ?? 0 > 0 {
        if jsonStr?.count ?? 0 > 0 {
            //: dict["c"] = NSDictionary(jsonString: jsonStr!)
            dict["c"] = NSDictionary(jsonString: jsonStr!)
            //: } else {
        } else {
            //: var messageDic = [String: Any]()
            var messageDic = [String: Any]()
            //: if toUid?.count ?? 0 > 0 {
            if toUid?.count ?? 0 > 0 {
                //: messageDic["toUid"] = toUid
                messageDic[(String(str_dataValue))] = toUid
            }
            //: messageDic["uid"] = WatercourseThen.share.loginUserMode.userID
            messageDic[(str_imageValue.replacingOccurrences(of: "to", with: "u"))] = WatercourseThen.share.loginUserMode.userID
            //: dict["c"] = messageDic /// 事件详细内容
            dict["c"] = messageDic /// 事件详细内容
        }
        //: reqModel.params = dict
        reqModel.params = dict
        //: self.uploadRecordRequest(model: reqModel) { succeed, _, _ in
        self.uploadApplication(model: reqModel) { succeed, _, _ in
            //: if succeed {}
            if succeed {}
        }
    }

    //: public func uploadRecordEvent(eventID: String, parameterStr: [String: Any]) {
    public func fromCell(eventID: String, parameterStr: [String: Any]) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = IndexRequestModel()
        //: reqModel.requestPath = "data/index"
        reqModel.requestPath = (String(str_leadingName.suffix(6)) + "ndex")
        //: reqModel.requestServer = WatercourseThen.share.appConfigMode.reportDomain
        reqModel.requestServer = WatercourseThen.share.appConfigMode.reportDomain
        //: var dict = self.getUploadInfoDict()
        var dict = self.omelettePan()
        //: dict["e"] = eventID /// 事件关键字
        dict["e"] = eventID /// 事件关键字
        //: let messageDic = NSMutableDictionary(dictionary: parameterStr)
        let messageDic = NSMutableDictionary(dictionary: parameterStr)
        //: messageDic["uid"] = WatercourseThen.share.loginUserMode.userID
        messageDic[(str_imageValue.replacingOccurrences(of: "to", with: "u"))] = WatercourseThen.share.loginUserMode.userID
        //: dict["c"] = messageDic /// 事件详细内容
        dict["c"] = messageDic /// 事件详细内容
        //: reqModel.params = dict
        reqModel.params = dict
        //: self.uploadRecordRequest(model: reqModel) { succeed, _, _ in
        self.uploadApplication(model: reqModel) { succeed, _, _ in
            //: if succeed {}
            if succeed {}
        }
    }

    //: public func uploadRecordRequest(model: TalkingRequestModel, completion: @escaping FinishBlock) {
    public func uploadApplication(model: IndexRequestModel, completion _: @escaping FinishBlock) {
        //: let serverUrl = GJ.buildServerUrl(model: model)
        let serverUrl = kLet_endVersionTitle.counterperson(model: model)

        //: let token = NSDate.getCurrentTimeStamp()
        let token = NSDate.willStamp()

        //: let request = NSMutableURLRequest()
        let request = NSMutableURLRequest()
        //: request.httpMethod = "POST"
        request.httpMethod = (str_pickSendData.replacingOccurrences(of: "info", with: "S"))
        //: request.url = NSURL(string: serverUrl) as URL?
        request.url = NSURL(string: serverUrl) as URL?
        //: request.timeoutInterval = 30
        request.timeoutInterval = 30
//        request.setValue("keep-alive", forHTTPHeaderField: "Connection")
//        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        //: request.setValue(token, forHTTPHeaderField: "Token")
        request.setValue(token, forHTTPHeaderField: (String(str_colorData.suffix(5))))

        //: let key = token.appendingFormat("%@", TokenSaltStr)
        let key = token.appendingFormat("%@", kLet_imageBarTitle)
        //: let bodyString = self.getJSONStringFromDictionary(model.params as NSDictionary)
        let bodyString = self.dictionaryMakeModel(model.params as NSDictionary)
        //: let encryStr = bodyString.encrypt(withKey: key)
        let encryStr = bodyString.mentalImage(key)
        //: request.httpBody = encryStr?.data(using: .utf8)
        request.httpBody = encryStr?.data(using: .utf8)
        //: let session = URLSession.shared
        let session = URLSession.shared
        //: let datatask = session.dataTask(with: request as URLRequest) { data, _, error in
        let datatask = session.dataTask(with: request as URLRequest) { data, _, error in
            //: if error != nil {
            if error != nil {
                //: print(error ?? "")
                //: } else {
            } else {
                //: let jsonStr = NSString(data: data!, encoding: NSUTF8StringEncoding)
                let jsonStr = NSString(data: data!, encoding: NSUTF8StringEncoding)
                //: if let responseModel = JSONDeserializer<TalkingBaseResponse>.deserializeFrom(json: jsonStr as String?) {
                if let responseModel = JSONDeserializer<ResponseModelType>.deserializeFrom(json: jsonStr as String?) {
                    //: print(responseModel)
                }
            }
        }
        //: datatask.resume()
        datatask.resume()
    }

    //: func getJSONStringFromDictionary(_ dictionary: NSDictionary) -> String {
    func dictionaryMakeModel(_ dictionary: NSDictionary) -> String {
        //: if !JSONSerialization.isValidJSONObject(dictionary) {
        if !JSONSerialization.isValidJSONObject(dictionary) {
            //: printLog(message: "无法解析出JSON字符串")
            printLog(message: (String(str_frameTitle)))
            //: return String()
            return String()
        }
        //: let data: NSData! = try? JSONSerialization.data(withJSONObject: dictionary, options: []) as NSData?
        let data: NSData! = try? JSONSerialization.data(withJSONObject: dictionary, options: []) as NSData?
        //: let JSONString = NSString(data: data as Data, encoding: String.Encoding.utf8.rawValue)
        let JSONString = NSString(data: data as Data, encoding: String.Encoding.utf8.rawValue)
        //: return JSONString! as String
        return JSONString! as String
    }
}

//: extension UploadRecordManage {
extension MentalRepresentationRecordManage {
    /// 获取上报字典信息
    //: private func getUploadInfoDict() -> [String: Any] {
    private func omelettePan() -> [String: Any] {
        //: var dict = [String: Any]()
        var dict = [String: Any]()
        //: dict["plat"] = "ios" /// 客户端平台
        dict[(str_documentUpData.replacingOccurrences(of: "corner", with: "at"))] = (String(str_identityName)) /// 客户端平台
        //: dict["packageId"] = PackageID /// 分包号
        dict[(String(str_containerTitle) + String(str_photoAlwaysTitle.suffix(6)))] = kLet_voiceValue /// 分包号
        //: dict["v"] = AppNetVersion /// 客户端版本
        dict["v"] = kLet_licenseRequestDoingTitle /// 客户端版本
        //: dict["t"] = NSDate.getCurrentTimeStamp() /// 事件发生的时间
        dict["t"] = NSDate.willStamp() /// 事件发生的时间
        //: dict["channel"] = PackageID /// 渠道代号,ios默认和packageId 相同
        dict[(str_arrayTitle.replacingOccurrences(of: "up", with: "n") + str_colorViewValue.replacingOccurrences(of: "section", with: "el"))] = kLet_voiceValue /// 渠道代号,ios默认和packageId 相同
        //: dict["type"] = "stat" /// 上报类型(stat埋点上报、pfm性能指标)
        dict[(String(str_portValue))] = (str_inviteData.replacingOccurrences(of: "normal", with: "at")) /// 上报类型(stat埋点上报、pfm性能指标)
        //: return dict
        return dict
    }
}
