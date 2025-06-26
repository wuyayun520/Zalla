
//: Declare String Begin

/*: "DBUserVoiceTable" :*/
fileprivate let str_pathShowValue:String = "self true she recording birthDBUs"
fileprivate let str_labelText:String = "icon data start popceTabl"
fileprivate let str_modeData:[Character] = ["e"]

/*: "msgId" :*/
fileprivate let str_iconValue:[Character] = ["m","s","g","I","d"]

/*: "toUid" :*/
fileprivate let str_dataName:[Character] = ["t","o","U","i","d"]

/*: "senderId" :*/
fileprivate let str_genderData:String = "stime"
fileprivate let str_selectedName:[Character] = ["n","d","e","r","I","d"]

/*: "audioSandbox" :*/
fileprivate let str_tempData:String = "anamedio"

/*: "audioLength" :*/
fileprivate let str_imageValue:[Character] = ["a","u","d","i","o","L","e","n","g","t","h"]

/*: "audioData" :*/
fileprivate let str_labContent:[Character] = ["a","u","d","i","o","D"]
fileprivate let str_toValue:[Character] = ["a","t","a"]

/*: "audioUri" :*/
fileprivate let str_modelValue:String = "audioUriself kit digital"

/*: "isRead" :*/
fileprivate let str_atValue:[Character] = ["i","s","R","e","a","d"]

/*: "WCDB表 :*/
fileprivate let str_mValue:String = "WCDB表view to"

/*: : 批量插入数据失败。error： :*/
fileprivate let str_colorTitle:String = ": model量插"
fileprivate let str_equalText:String = "。error：leading add"

/*: ." :*/
fileprivate let str_hideIconData:String = "make"

/*: : 更新数据失败。error： :*/
fileprivate let str_contentName:[Character] = [":"," ","更","新","数","据","失","败","。"]
fileprivate let str_whiteTitle:[Character] = ["e","r","r","o","r","："]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FlushScaleMsgTable.swift
//  RootRift
//
//  Created by DouXiu on 2024/8/29.
//

//: import UIKit
import UIKit
//: import WCDBSwift
import WCDBSwift

/// 表名
//: let FlushScaleMsgTableName = "DBUserVoiceTable"
let kLet_formatTitle = (String(str_pathShowValue.suffix(4)) + "erVoi" + String(str_labelText.suffix(6)) + String(str_modeData))
//: @objcMembers
@objcMembers
//: public final class FlushScaleMsgTable: NSObject, TableCodable {
public final class FlushScaleMsgTable: NSObject, TableCodable {
    /// 消息Id【主键】
    //: public var msgId: String = ""
    public var msgId: String = ""
    /// 语音长度
    //: public var db_audioLength: String = ""
    public var db_audioLength: String = ""
    /// 缓存路径
    //: public var db_filePath: String = ""
    public var db_filePath: String = ""
    /// 下载路径
    //: var db_voiceUri: String = ""
    var db_voiceUri: String = ""
    /// 发送方
    //: var db_senduid: String = ""
    var db_senduid: String = ""
    /// 接收方
    //: var db_touid: String = ""
    var db_touid: String = ""
    /// 是否已读; 0未读，1已读
    //: var db_isRead: String = ""
    var db_isRead: String = ""
    /// 下载状态
    //: var downloadStatus: String = ""
    var downloadStatus: String = ""

    //: public enum CodingKeys: String, CodingTableKey {
    public enum CodingKeys: String, CodingTableKey {
        //: public typealias Root = FlushScaleMsgTable
        public typealias Root = FlushScaleMsgTable
        //: case msgId
        case msgId
        //: case db_voiceUri
        case db_voiceUri
        //: case db_filePath
        case db_filePath
        //: case db_senduid
        case db_senduid
        //: case db_touid
        case db_touid
        //: case db_isRead
        case db_isRead
        //: case db_audioLength
        case db_audioLength
        //: case downloadStatus
        case downloadStatus

        //: public static let objectRelationalMapping = TableBinding(CodingKeys.self) {
        public static let objectRelationalMapping = TableBinding(CodingKeys.self) {
            //: BindColumnConstraint(msgId, isPrimary: true)
            BindColumnConstraint(msgId, isPrimary: true)
        }
    }
}

// MARK: - 增、删、改、查

//: extension FlushScaleMsgTable {
extension FlushScaleMsgTable {
    /// 插入单条数据
    /// - Parameter dic: 字典
    /// - Returns: 模型
    //: @discardableResult
    @discardableResult
    //: public class func db_inserVoiceMsgToDB(_ dic: [AnyHashable: Any]) -> FlushScaleMsgTable {
    public class func date(_ dic: [AnyHashable: Any]) -> FlushScaleMsgTable {
        //: let cache = FlushScaleMsgTable()
        let cache = FlushScaleMsgTable()
        //: cache.msgId = dic["msgId"] as? String ?? ""
        cache.msgId = dic[(String(str_iconValue))] as? String ?? ""
        //: cache.db_touid = String(dic["toUid"] as? Int ?? 0)
        cache.db_touid = String(dic[(String(str_dataName))] as? Int ?? 0)
        //: cache.db_senduid = dic["senderId"] as? String ?? ""
        cache.db_senduid = dic[(str_genderData.replacingOccurrences(of: "time", with: "e") + String(str_selectedName))] as? String ?? ""
        //: cache.db_filePath = dic["audioSandbox"] as? String ?? ""
        cache.db_filePath = dic[(str_tempData.replacingOccurrences(of: "name", with: "u") + "Sandbox")] as? String ?? ""
        //: cache.db_audioLength = dic["audioLength"] as? String ?? ""
        cache.db_audioLength = dic[(String(str_imageValue))] as? String ?? ""
        //: if dic.keys.contains("audioData") {
        if dic.keys.contains((String(str_labContent) + String(str_toValue))) {
            //: cache.db_voiceUri = dic["audioData"] as? String ?? ""
            cache.db_voiceUri = dic[(String(str_labContent) + String(str_toValue))] as? String ?? ""
        }
        //: if cache.db_voiceUri.isEmpty {
        if cache.db_voiceUri.isEmpty {
            //: if dic.keys.contains("audioUri") {
            if dic.keys.contains((String(str_modelValue.prefix(8)))) {
                //: cache.db_voiceUri = dic["audioUri"] as? String ?? ""
                cache.db_voiceUri = dic[(String(str_modelValue.prefix(8)))] as? String ?? ""
            }
        }
        //: cache.db_isRead = dic["isRead"] as? String ?? ""
        cache.db_isRead = dic[(String(str_atValue))] as? String ?? ""
        //: cache.downloadStatus = "0"
        cache.downloadStatus = "0"
        //: db_updateVoiceMsg(cache)
        domainTextMsg(cache)
        //: return cache
        return cache
    }

    /// 插入单条数据
    /// - Parameter voiceMsg: 数据模型
    //: class func db_insertVoiceMsg(_ voiceMsg: FlushScaleMsgTable) {
    class func titleTo(_ voiceMsg: FlushScaleMsgTable) {
        //: FlushScaleMsgTable.db_insertVoiceMsgs([voiceMsg])
        FlushScaleMsgTable.transparency([voiceMsg])
    }

    /// 插入多条数据
    /// - Parameter voiceMsgs: 数据数组
    //: class func db_insertVoiceMsgs(_ voiceMsgs: [FlushScaleMsgTable]) {
    class func transparency(_ voiceMsgs: [FlushScaleMsgTable]) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? AdReactiveCompatible.shared.database?.run(transaction: { _ in
            //: do {
            do {
                //: try WCDBManager.shared.database?.insert(voiceMsgs, intoTable: FlushScaleMsgTableName)
                try AdReactiveCompatible.shared.database?.insert(voiceMsgs, intoTable: kLet_formatTitle)
                //: } catch {
            } catch {
                //: UploadLogTool.writeLog(msg: "WCDB表\(FlushScaleMsgTableName): 批量插入数据失败。error：\(error).")
                EnableReactiveCompatible.nameBy(msg: (String(str_mValue.prefix(5))) + "\(kLet_formatTitle)" + (str_colorTitle.replacingOccurrences(of: "model", with: "批") + "入数据失\u{8d25}" + String(str_equalText.prefix(7))) + "\(error).")
            }
            //: })
        })
    }

    /// 查询单个数据
    /// - Parameter msgId: 消息id
    /// - Returns: 模型
    //: public class func db_getVoiceMsg(with msgId: String) -> FlushScaleMsgTable? {
    public class func sharedBlock(with msgId: String) -> FlushScaleMsgTable? {
        //: if let voiceMsgs = FlushScaleMsgTable.db_getVoiceMsgs(with: [msgId]) {
        if let voiceMsgs = FlushScaleMsgTable.mentalFaculty(with: [msgId]) {
            //: return voiceMsgs.first
            return voiceMsgs.first
        }
        //: return nil
        return nil
    }

    /// 查询多条数据
    /// - Parameter msgIds: id数据
    /// - Returns: 数据数组
    //: class func db_getVoiceMsgs(with msgIds: [String]) -> [FlushScaleMsgTable]? {
    class func mentalFaculty(with msgIds: [String]) -> [FlushScaleMsgTable]? {
        //: do {
        do {
            //: let condition = FlushScaleMsgTable.Properties.msgId.in(msgIds)
            let condition = FlushScaleMsgTable.Properties.msgId.in(msgIds)
            //: let voiceMsgs: [FlushScaleMsgTable]? = try WCDBManager.shared.database?.getObjects(on: FlushScaleMsgTable.Properties.all, fromTable: FlushScaleMsgTableName, where: condition)
            let voiceMsgs: [FlushScaleMsgTable]? = try AdReactiveCompatible.shared.database?.getObjects(on: FlushScaleMsgTable.Properties.all, fromTable: kLet_formatTitle, where: condition)
            //: return voiceMsgs
            return voiceMsgs
            //: } catch {
        } catch {
            //: return nil
            return nil
        }
    }

    /// 更新单个数据【如果没有则插入】
    /// - Parameter voiceMsg: 数据模型
    //: class func db_updateVoiceMsg(_ voiceMsg: FlushScaleMsgTable) {
    class func domainTextMsg(_ voiceMsg: FlushScaleMsgTable) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? AdReactiveCompatible.shared.database?.run(transaction: { _ in
            // 数据库中已存在，则更新数据
            //: if FlushScaleMsgTable.db_getVoiceMsg(with: voiceMsg.msgId) != nil {
            if FlushScaleMsgTable.sharedBlock(with: voiceMsg.msgId) != nil {
                //: do {
                do {
                    //: let condition = FlushScaleMsgTable.Properties.msgId == voiceMsg.msgId
                    let condition = FlushScaleMsgTable.Properties.msgId == voiceMsg.msgId
                    //: try WCDBManager.shared.database?.update(table: FlushScaleMsgTableName,
                    try AdReactiveCompatible.shared.database?.update(table: kLet_formatTitle,
                                                            //: on: FlushScaleMsgTable.Properties.all,
                                                            on: FlushScaleMsgTable.Properties.all,
                                                            //: with: voiceMsg,
                                                            with: voiceMsg,
                                                            //: where: condition)
                                                            where: condition)
                    //: } catch {
                } catch {
                    //: UploadLogTool.writeLog(msg: "WCDB表\(FlushScaleMsgTableName): 更新数据失败。error：\(error).")
                    EnableReactiveCompatible.nameBy(msg: (String(str_mValue.prefix(5))) + "\(kLet_formatTitle)" + (String(str_contentName) + String(str_whiteTitle)) + "\(error).")
                }

                //: } else {
            } else {
                // 数据库中不存在，则插入数据
                //: FlushScaleMsgTable.db_insertVoiceMsg(voiceMsg)
                FlushScaleMsgTable.titleTo(voiceMsg)
            }
            //: })
        })
    }

    /// 更新单个数据【如果没有则插入】
    /// - Parameters:
    ///   - msgId: 消息Id
    ///   - status: 状态
    ///   - filePath: 路径
    //: class func db_updateVoiceMsg(msgId: String, status: String = "", filePath: String = "") {
    class func formerImage(msgId: String, status: String = "", filePath: String = "") {
        //: guard let dbModel = FlushScaleMsgTable.db_getVoiceMsg(with: msgId) else { return }
        guard let dbModel = FlushScaleMsgTable.sharedBlock(with: msgId) else { return }
        //: if status.isEmpty == false {
        if status.isEmpty == false {
            //: dbModel.downloadStatus = status
            dbModel.downloadStatus = status
        }
        //: if filePath.isEmpty == false {
        if filePath.isEmpty == false {
            //: dbModel.db_filePath = filePath
            dbModel.db_filePath = filePath
        }
        //: FlushScaleMsgTable.db_updateVoiceMsg(dbModel)
        FlushScaleMsgTable.domainTextMsg(dbModel)
    }

    /// 根据消息Id删除数据
    /// - Parameter msgId: 消息Id
    //: class func db_deleteVoiceMsg(msgId: String) {
    class func sunnahId(msgId: String) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? AdReactiveCompatible.shared.database?.run(transaction: { _ in
            //: let condition = FlushScaleMsgTable.Properties.msgId == msgId
            let condition = FlushScaleMsgTable.Properties.msgId == msgId
            //: try? WCDBManager.shared.database?.delete(fromTable: FlushScaleMsgTableName,
            try? AdReactiveCompatible.shared.database?.delete(fromTable: kLet_formatTitle,
                                                     //: where: condition)
                                                     where: condition)
            //: })
        })
    }

    /// 根据userId、toUid删除数据
    /// - Parameters:
    ///   - userId: 用户id
    ///   - toUid: 对方id
    //: class func db_deleteVoiceMsg(_ userId: String, toUid: String) {
    class func logByName(_ userId: String, toUid: String) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? AdReactiveCompatible.shared.database?.run(transaction: { _ in
            //: let condition = FlushScaleMsgTable.Properties.db_senduid == userId && FlushScaleMsgTable.Properties.db_touid == toUid
            let condition = FlushScaleMsgTable.Properties.db_senduid == userId && FlushScaleMsgTable.Properties.db_touid == toUid
            //: try? WCDBManager.shared.database?.delete(fromTable: FlushScaleMsgTableName,
            try? AdReactiveCompatible.shared.database?.delete(fromTable: kLet_formatTitle,
                                                     //: where: condition)
                                                     where: condition)
            //: })
        })
    }
}
