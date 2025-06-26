
//: Declare String Begin

/*: "mf/user/recommendUser" :*/
fileprivate let str_iconGiftContent:String = "mf/ususer kind intimate"
fileprivate let str_leadingValue:[Character] = ["m","m","e","n"]
fileprivate let str_endValue:String = "else version kit import countdUser"

/*: "page" :*/
fileprivate let str_voiceValue:[UInt8] = [0xaf,0xbe,0xb8,0xba]

private func colorLabItem(model num: UInt8) -> UInt8 {
    return num ^ 223
}

/*: "mf/user/singleUser" :*/
fileprivate let str_arcValue:[Character] = ["m","f","/","u","s","e","r","/","s","i","n","g","l","e","U"]
fileprivate let str_computeTableLetName:String = "serror"

/*: "uid" :*/
fileprivate let str_makeData:[UInt8] = [0x9d,0x81,0x8c]

private func toEnd(user num: UInt8) -> UInt8 {
    return num ^ 232
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SettleReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2023/1/11.
//

//: import UIKit
import UIKit

//: class TalkingSearchManager: NSObject {
class SettleReactiveCompatible: NSObject {
    // 列表分页
    //: var recommendListPage = 0
    var recommendListPage = 0

    /// 推荐用户列表
    /// - Parameter completion: 回调
    //: func req_recommendUser(completion: @escaping FinishBlock) {
    func offGoing(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = IndexRequestModel()
        //: reqModel.requestPath = "mf/user/recommendUser"
        reqModel.requestPath = (String(str_iconGiftContent.prefix(5)) + "er/reco" + String(str_leadingValue) + String(str_endValue.suffix(5)))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["page": recommendListPage]
        reqModel.params = [String(bytes: str_voiceValue.map{colorLabItem(model: $0)}, encoding: .utf8)!: recommendListPage]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_endVersionTitle.getStarted(model: reqModel) { succeed, result, errorModel in
            //: guard succeed == true else {
            guard succeed == true else {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }

            //: if self.recommendListPage == 0 {
            if self.recommendListPage == 0 {
                //: self.recommendDataArr.removeAll()
                self.recommendDataArr.removeAll()
            }

            //: for dict in result as! [Dictionary<String, Any>] {
            for dict in result as! [[String: Any]] {
                //: if let model = TalkingRecommendUserModel.deserialize(from: dict as? Dictionary) {
                if let model = OnCurrentTransformable.deserialize(from: dict as? Dictionary) {
                    //: self.recommendDataArr.append(model)
                    self.recommendDataArr.append(model)
                }
            }

            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 搜索uid
    /// - Parameters:
    ///   - uid: 用户ID
    ///   - completion: 回调
    //: func req_singleUser(uid: String, completion: @escaping FinishBlock) {
    func constraintButton(uid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = IndexRequestModel()
        //: reqModel.requestPath = "mf/user/singleUser"
        reqModel.requestPath = (String(str_arcValue) + str_computeTableLetName.replacingOccurrences(of: "error", with: "er"))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["uid": uid]
        reqModel.params = [String(bytes: str_makeData.map{toEnd(user: $0)}, encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_endVersionTitle.getStarted(model: reqModel) { succeed, result, errorModel in
            //: self.searchListDataArr.removeAll()
            self.searchListDataArr.removeAll()
            //: guard succeed == true else {
            guard succeed == true else {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }

            //: guard let result = result as? Dictionary<String, Any> else {
            guard let result = result as? [String: Any] else {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }

            //: if let model = TalkingRecommendUserModel.deserialize(from: result) {
            if let model = OnCurrentTransformable.deserialize(from: result) {
                //: self.searchListDataArr.append(model)
                self.searchListDataArr.append(model)
            }

            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - Lazy Load

    //: lazy var recommendDataArr: [TalkingRecommendUserModel] = {
    lazy var recommendDataArr: [OnCurrentTransformable] = //: return Array<OnCurrentTransformable>()
        .init()
    //: }()

    //: lazy var searchListDataArr: [TalkingRecommendUserModel] = {
    lazy var searchListDataArr: [OnCurrentTransformable] = //: return Array<OnCurrentTransformable>()
        .init()
    //: }()
}
