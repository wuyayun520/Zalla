
//: Declare String Begin

/*: ".db" :*/
fileprivate let str_linkReloadEndName:String = "return equal view to select.db"

/*: "WCDB数据库打开失败：userId为空。" :*/
fileprivate let str_byName:String = "WCDB数image do to"
fileprivate let str_kitIndexContent:[Character] = ["失","败","\u{ff1a}","u","s","e","r","I","d","为","空","。"]

/*: "WCDB/ :*/
fileprivate let str_buttonTitle:String = "view iWCDB/"

/*: "WCDB数据库打开失败： :*/
fileprivate let str_addContent:String = "WCDB数据库打color class bean"
fileprivate let str_emptyTitle:[Character] = ["开","失","败","："]

/*: "WCDB数据库成功打开： :*/
fileprivate let str_youValue:String = "guard userWCDB数"
fileprivate let str_labText:String = "\u{ff1a}"

/*: "WCDB数据库成功关闭。" :*/
fileprivate let str_computerData:[Character] = ["W","C","D","B","数","据"]
fileprivate let str_ofTitle:[Character] = ["库","成","功","关","闭","。"]

/*: "WCDB数据库：创建表失败。error： :*/
fileprivate let str_equalOverContent:String = "WCDB数据position type any method"
fileprivate let str_makeTitle:String = "\u{8868}失败\u{3002}"
fileprivate let str_birthdayDateData:String = "if countr："

/*: ." :*/
fileprivate let str_taskLeadingData:[Character] = ["."]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AdReactiveCompatible.swift
//  RootRift
//
//  Created by DouXiu on 2024/8/29.
//

//: import UIKit
import UIKit
//: import WCDBSwift
import WCDBSwift

//: class WCDBManager: NSObject {
class AdReactiveCompatible: NSObject {
    //: static let shared = WCDBManager()
    static let shared = AdReactiveCompatible()
    /// 数据库
    //: var database: Database?
    var database: Database?
    /// 数据库名称
    //: private var wcdbName: String {
    private var wcdbName: String {
        //: return WatercourseThen.share.loginUserMode.userID + ".db"
        return WatercourseThen.share.loginUserMode.userID + ".db"
    }

    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: self.connectDatabase()
        self.startChange()
    }

    /// 连接数据库
    //: func connectDatabase() {
    func startChange() {
        //: closeDatabase()
        dataDatabase()

        //: guard !WatercourseThen.share.loginUserMode.userID.isEmpty else {
        guard !WatercourseThen.share.loginUserMode.userID.isEmpty else {
            //: UploadLogTool.writeLog(msg: "WCDB数据库打开失败：userId为空。")
            EnableReactiveCompatible.nameBy(msg: (String(str_byName.prefix(5)) + "\u{636e}\u{5e93}打开" + String(str_kitIndexContent)))
            //: return
            return
        }
        //: guard let fileURL = try? FileManager.default
        guard let fileURL = try? FileManager.default
            //: .url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            //: .appendingPathComponent("WCDB/\(wcdbName)") else { return }
            .appendingPathComponent((String(str_buttonTitle.suffix(5))) + "\(wcdbName)") else { return }
        //: database = Database(at: fileURL)
        database = Database(at: fileURL)
        //: guard database?.canOpen == true else {
        guard database?.canOpen == true else {
            //: UploadLogTool.writeLog(msg: "WCDB数据库打开失败：\(fileURL.path)")
            EnableReactiveCompatible.nameBy(msg: (String(str_addContent.prefix(8)) + String(str_emptyTitle)) + "\(fileURL.path)")
            //: return
            return
        }
        //: printLog(message: "WCDB数据库成功打开：\(fileURL.path)")
        printLog(message: (String(str_youValue.suffix(5)) + "据\u{5e93}成功打开" + str_labText) + "\(fileURL.path)")
        //: createTables()
        createMake()
    }

    /// 关闭数据库
    //: private func closeDatabase() {
    private func dataDatabase() {
        //: guard database != nil else { return }
        guard database != nil else { return }
        //: database?.close()
        database?.close()
        //: try? database?.close(onClosed: { [weak self] in
        try? database?.close(onClosed: { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.database = nil
            self.database = nil
            //: printLog(message: "WCDB数据库成功关闭。")
            printLog(message: (String(str_computerData) + String(str_ofTitle)))
            //: })
        })
    }
}

// MARK: - 创建表

//: extension WCDBManager {
extension AdReactiveCompatible {
    /// 创建表
    //: private func createTables() {
    private func createMake() {
        //: do {
        do {
            // 用户信息表
            //: try database?.create(table: WCDBUserInfoTableName, of: WCDBUserInfoTable.self)
            try database?.create(table: kLet_objectEndData, of: ReloadCommandInfoTable.self)
            // 语音消息表
            //: try database?.create(table: FlushScaleMsgTableName, of: FlushScaleMsgTable.self)
            try database?.create(table: kLet_formatTitle, of: FlushScaleMsgTable.self)
            //: } catch {
        } catch {
            //: UploadLogTool.writeLog(msg: "WCDB数据库：创建表失败。error：\(error).")
            EnableReactiveCompatible.nameBy(msg: (String(str_equalOverContent.prefix(6)) + "库\u{ff1a}创建" + str_makeTitle + "erro" + String(str_birthdayDateData.suffix(2))) + "\(error).")
        }
    }
}
