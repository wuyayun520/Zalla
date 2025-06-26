
//: Declare String Begin

/*: "DBUserInfoTable" :*/
fileprivate let str_visibleData:[Character] = ["D","B","U","s","e","r","I","n","f","o","T","a","b","l","e"]

/*: "WCDB表 :*/
fileprivate let str_clearData:String = "let liveWCDB表"

/*: : 更新数据失败。error： :*/
fileprivate let str_intervalData:[Character] = [":"," ","更","新","\u{6570}"]
fileprivate let str_backgroundEqualTitle:[Character] = ["\u{636e}","失","\u{8d25}","。","e","r","r","o","r","："]

/*: ." :*/
fileprivate let str_errorName:String = "."

/*: : 批量插入数据失败。error： :*/
fileprivate let str_makeTitle:[Character] = [":"," ","批","量","插","入","数","据","\u{5931}"]
fileprivate let str_rawEqualTitle:String = "normal teaching make let label败。er"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ReloadCommandInfoTable.swift
//  RootRift
//
//  Created by DouXiu on 2024/8/29.
//

//: import UIKit
import UIKit
//: import WCDBSwift
import WCDBSwift

/// 表名
//: let WCDBUserInfoTableName = "DBUserInfoTable"
let kLet_objectEndData = (String(str_visibleData))
//: final class WCDBUserInfoTable: TableCodable {
final class ReloadCommandInfoTable: TableCodable {
    /// 用户Id【主键】
    //: var uid: String = ""
    var uid: String = ""
    /// 昵称
    //: var nickname: String = ""
    var nickname: String = ""
    /// 年龄
    //: var age: String = ""
    var age: String = ""
    /// 头像
    //: var headPic: String = ""
    var headPic: String = ""
    /// 性别
    //: var sex: String = ""
    var sex: String = ""
    /// 是否VIP
    //: var loungePlus: Bool = false
    var loungePlus: Bool = false
    /// 是否认证
    //: var tpAuth: Bool = false
    var tpAuth: Bool = false
    /// 是否官方账号
    //: var isOfficial: Bool = false
    var isOfficial: Bool = false
    /// 头像框地址
    //: var headPicFrame: String = ""
    var headPicFrame: String = ""
    /// 是否建立会话
    //: var isHaveSession: Bool = false
    var isHaveSession: Bool = false
    /// 亲密度
    //: var intimate: Int = 0
    var intimate: Int = 0
    /// 亲密度最后更新时间
    //: var intimateTime: Int = 0
    var intimateTime: Int = 0
    /// VIP已读回执时间
    //: var readReceiptTime: Int = 0
    var readReceiptTime: Int = 0

    //: enum CodingKeys: String, CodingTableKey {
    enum CodingKeys: String, CodingTableKey {
        //: typealias Root = WCDBUserInfoTable
        typealias Root = ReloadCommandInfoTable
        //: case uid
        case uid
        //: case nickname
        case nickname
        //: case age
        case age
        //: case headPic
        case headPic
        //: case sex
        case sex
        //: case loungePlus
        case loungePlus
        //: case tpAuth
        case tpAuth
        //: case isOfficial
        case isOfficial
        //: case headPicFrame
        case headPicFrame
        //: case isHaveSession
        case isHaveSession
        //: case intimate
        case intimate
        //: case intimateTime
        case intimateTime
        //: case readReceiptTime
        case readReceiptTime

        //: static let objectRelationalMapping = TableBinding(CodingKeys.self) {
        static let objectRelationalMapping = TableBinding(CodingKeys.self) {
            //: BindColumnConstraint(uid, isPrimary: true)
            BindColumnConstraint(uid, isPrimary: true)
        }
    }
}

// MARK: - MixedThen和WCDBUserInfoTable转换

//: extension WCDBUserInfoTable {
extension ReloadCommandInfoTable {
    /// MixedThen  =>  ReloadCommandInfoTable
    //: private class func mapToDBUserInfoData(_ userInfo: MixedThen) -> WCDBUserInfoTable {
    private class func skinny(_ userInfo: MixedThen) -> ReloadCommandInfoTable {
        //: let dbData = WCDBUserInfoTable()
        let dbData = ReloadCommandInfoTable()
        //: dbData.uid = userInfo.uid
        dbData.uid = userInfo.uid
        //: dbData.nickname = userInfo.nickname
        dbData.nickname = userInfo.nickname
        //: dbData.age = userInfo.age
        dbData.age = userInfo.age
        //: dbData.headPic = userInfo.headPic
        dbData.headPic = userInfo.headPic
        //: dbData.sex = userInfo.sex
        dbData.sex = userInfo.sex
        //: dbData.loungePlus = userInfo.loungePlus
        dbData.loungePlus = userInfo.loungePlus
        //: dbData.tpAuth = userInfo.tpAuth
        dbData.tpAuth = userInfo.tpAuth
        //: dbData.isOfficial = userInfo.isOfficial
        dbData.isOfficial = userInfo.isOfficial
        //: dbData.headPicFrame = userInfo.headPicFrame
        dbData.headPicFrame = userInfo.headPicFrame
        //: dbData.isHaveSession = userInfo.isHaveSession
        dbData.isHaveSession = userInfo.isHaveSession
        //: dbData.intimate = userInfo.intimate
        dbData.intimate = userInfo.intimate
        //: dbData.intimateTime = userInfo.intimateTime
        dbData.intimateTime = userInfo.intimateTime
        //: dbData.readReceiptTime = userInfo.readReceiptTime
        dbData.readReceiptTime = userInfo.readReceiptTime
        //: return dbData
        return dbData
    }

    /// [ReloadCommandInfoTable] => [MixedThen]
    //: private class func mapToUserInfoModels(_ dbDatas: [WCDBUserInfoTable]) -> [MixedThen] {
    private class func betweenLog(_ dbDatas: [ReloadCommandInfoTable]) -> [MixedThen] {
        //: return dbDatas.map { data in
        return dbDatas.map { data in
            //: let userInfo = MixedThen()
            let userInfo = MixedThen()
            //: userInfo.uid = data.uid
            userInfo.uid = data.uid
            //: userInfo.nickname = data.nickname
            userInfo.nickname = data.nickname
            //: userInfo.age = data.age
            userInfo.age = data.age
            //: userInfo.headPic = data.headPic
            userInfo.headPic = data.headPic
            //: userInfo.sex = data.sex
            userInfo.sex = data.sex
            //: userInfo.loungePlus = data.loungePlus
            userInfo.loungePlus = data.loungePlus
            //: userInfo.tpAuth = data.tpAuth
            userInfo.tpAuth = data.tpAuth
            //: userInfo.isOfficial = data.isOfficial
            userInfo.isOfficial = data.isOfficial
            //: userInfo.headPicFrame = data.headPicFrame
            userInfo.headPicFrame = data.headPicFrame
            //: userInfo.isHaveSession = data.isHaveSession
            userInfo.isHaveSession = data.isHaveSession
            //: userInfo.intimate = data.intimate
            userInfo.intimate = data.intimate
            //: userInfo.intimateTime = data.intimateTime
            userInfo.intimateTime = data.intimateTime
            //: userInfo.readReceiptTime = data.readReceiptTime
            userInfo.readReceiptTime = data.readReceiptTime
            //: return userInfo
            return userInfo
        }
    }
}

// MARK: - 增、删、改、查

//: extension WCDBUserInfoTable {
extension ReloadCommandInfoTable {
    /// 删除数据库中用户信息
    /// - Parameter userId: 用户id
    //: class func db_deleteUserInfo(with userId: String) {
    class func adjoin(with userId: String) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? AdReactiveCompatible.shared.database?.run(transaction: { _ in
            //: let condition = WCDBUserInfoTable.Properties.uid.in(userId)
            let condition = ReloadCommandInfoTable.Properties.uid.in(userId)
            //: try? WCDBManager.shared.database?.delete(fromTable: WCDBUserInfoTableName,
            try? AdReactiveCompatible.shared.database?.delete(fromTable: kLet_objectEndData,
                                                     //: where: condition)
                                                     where: condition)
            //: })
        })
    }

    /// 查询单个数据
    /// - Parameter userId: 用户id
    /// - Returns: 模型
    //: class func db_getUserInfo(with userId: String) -> MixedThen? {
    class func visitor(with userId: String) -> MixedThen? {
        //: let userInfos = WCDBUserInfoTable.db_getUserInfos(with: [userId])
        let userInfos = ReloadCommandInfoTable.barFor(with: [userId])
        //: if userInfos.isEmpty == false {
        if userInfos.isEmpty == false {
            //: return userInfos.first
            return userInfos.first
        }
        //: return nil
        return nil
    }

    /// 查询多条数据
    /// - Parameter userIds: id数据
    /// - Returns: 数据数组
    //: class func db_getUserInfos(with userIds: [String]) -> [MixedThen] {
    class func barFor(with userIds: [String]) -> [MixedThen] {
        //: guard userIds.count > 0 else { return [] }
        guard userIds.count > 0 else { return [] }
        //: do {
        do {
            //: let condition = WCDBUserInfoTable.Properties.uid.in(userIds)
            let condition = ReloadCommandInfoTable.Properties.uid.in(userIds)
            //: let userInfos: [WCDBUserInfoTable]? = try WCDBManager.shared.database?.getObjects(on: WCDBUserInfoTable.Properties.all, fromTable: WCDBUserInfoTableName, where: condition)
            let userInfos: [ReloadCommandInfoTable]? = try AdReactiveCompatible.shared.database?.getObjects(on: ReloadCommandInfoTable.Properties.all, fromTable: kLet_objectEndData, where: condition)
            //: if userInfos?.isEmpty == false {
            if userInfos?.isEmpty == false {
                //: let models = WCDBUserInfoTable.mapToUserInfoModels(userInfos!)
                let models = ReloadCommandInfoTable.betweenLog(userInfos!)
                //: return models
                return models
            }
            //: } catch {
        } catch {
            //: return []
            return []
        }
        //: return []
        return []
    }

    /// 更新单个数据【如果没有则插入】
    /// - Parameter userInfo: 数据模型
    //: class func db_updateUserInfo(_ userInfo: MixedThen) {
    class func ofSyllabus(_ userInfo: MixedThen) {
        //: let dbData = WCDBUserInfoTable.mapToDBUserInfoData(userInfo)
        let dbData = ReloadCommandInfoTable.skinny(userInfo)
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? AdReactiveCompatible.shared.database?.run(transaction: { _ in
            // 数据库中已存在，则更新数据
            //: if WCDBUserInfoTable.db_getUserInfo(with: dbData.uid) != nil {
            if ReloadCommandInfoTable.visitor(with: dbData.uid) != nil {
                //: do {
                do {
                    //: let condition = WCDBUserInfoTable.Properties.uid == dbData.uid
                    let condition = ReloadCommandInfoTable.Properties.uid == dbData.uid
                    //: try WCDBManager.shared.database?.update(table: WCDBUserInfoTableName,
                    try AdReactiveCompatible.shared.database?.update(table: kLet_objectEndData,
                                                            //: on: WCDBUserInfoTable.Properties.all,
                                                            on: ReloadCommandInfoTable.Properties.all,
                                                            //: with: dbData,
                                                            with: dbData,
                                                            //: where: condition)
                                                            where: condition)
                    //: } catch {
                } catch {
                    //: UploadLogTool.writeLog(msg: "WCDB表\(WCDBUserInfoTableName): 更新数据失败。error：\(error).")
                    EnableReactiveCompatible.nameBy(msg: (String(str_clearData.suffix(5))) + "\(kLet_objectEndData)" + (String(str_intervalData) + String(str_backgroundEqualTitle)) + "\(error).")
                }
                //: } else {
            } else {
                // 数据库中不存在，则插入数据
                //: WCDBUserInfoTable.db_insertUserInfo(dbData)
                ReloadCommandInfoTable.frameOf(dbData)
            }
            //: })
        })
    }

    /// 插入单条数据
    /// - Parameter userInfo: 数据模型
    //: private class func db_insertUserInfo(_ userInfo: WCDBUserInfoTable) {
    private class func frameOf(_ userInfo: ReloadCommandInfoTable) {
        //: WCDBUserInfoTable.db_insertUserInfos([userInfo])
        ReloadCommandInfoTable.toPerson([userInfo])
    }

    /// 插入多条数据
    /// - Parameter userInfos: 数据数组
    //: private class func db_insertUserInfos(_ userInfos: [WCDBUserInfoTable]) {
    private class func toPerson(_ userInfos: [ReloadCommandInfoTable]) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? AdReactiveCompatible.shared.database?.run(transaction: { _ in
            //: do {
            do {
                //: try WCDBManager.shared.database?.insert(userInfos, intoTable: WCDBUserInfoTableName)
                try AdReactiveCompatible.shared.database?.insert(userInfos, intoTable: kLet_objectEndData)
                //: } catch {
            } catch {
                //: UploadLogTool.writeLog(msg: "WCDB表\(WCDBUserInfoTableName): 批量插入数据失败。error：\(error).")
                EnableReactiveCompatible.nameBy(msg: (String(str_clearData.suffix(5))) + "\(kLet_objectEndData)" + (String(str_makeTitle) + String(str_rawEqualTitle.suffix(4)) + "ror：") + "\(error).")
            }
            //: })
        })
    }
}
