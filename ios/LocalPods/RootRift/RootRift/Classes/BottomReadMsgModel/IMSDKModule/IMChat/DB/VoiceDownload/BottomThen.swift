
//: Declare String Begin

/*: "http://" :*/
fileprivate let str_managerValue:String = "http://camera after any"

/*: "https://" :*/
fileprivate let str_documentTitle:String = "https:hidden observe all action no"
fileprivate let str_backgroundData:String = "//"

/*: "platform=iphone&version=%@&packageId=%@&bundleId=%@" :*/
fileprivate let str_makeContent:[UInt8] = [0xcb,0xd7,0xda,0xcf,0xdd,0xd4,0xc9,0xd6,0x86,0xd2,0xcb,0xd3,0xd4,0xd5,0xde,0x9d,0xcd,0xde,0xc9,0xc8,0xd2,0xd4,0xd5,0x86,0x9e,0xfb,0x9d,0xcb,0xda,0xd8,0xd0,0xda,0xdc,0xde,0xf2,0xdf,0x86,0x9e,0xfb,0x9d,0xd9,0xce,0xd5,0xdf,0xd7,0xde,0xf2,0xdf,0x86,0x9e,0xfb]

private func buttonClear(text num: UInt8) -> UInt8 {
    return num ^ 187
}

/*: "%@%@&%@" :*/
fileprivate let str_ageName:[Character] = ["%","@","%","@","&"]
fileprivate let str_labText:[Character] = ["%","@"]

/*: "url" :*/
fileprivate let str_modelName:String = "urlast"

/*: "id" :*/
fileprivate let str_layerText:String = "crushd"

/*: "length" :*/
fileprivate let str_playerValue:String = "leviewth"

/*: "getFileSize error : :*/
fileprivate let str_hiddenName:[Character] = ["g","e","t","F","i","l","e","S","i","z"]
fileprivate let str_statusName:[Character] = ["e"]
fileprivate let str_playerIconName:[Character] = [" ","e","r","r","o","r"," ",":"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BottomThen.swift
//  RootRift
//
//  Created by DouXiu on 2024/8/26.
//

//: import UIKit
import UIKit

//: enum DownloadTaskStatus: Int {
enum TaskExpressionConvertible: Int {
    //: case none = 0
    case none = 0 // 未定义
    //: case prepare = 1
    case prepare = 1 // 准备
    //: case running = 10
    case running = 10 // 下载中
    //: case pause = 20
    case pause = 20 // 暂停
    //: case cancel = 30
    case cancel = 30 // 取消
    //: case expired = 40
    case expired = 40 // 过期
    //: case finish = 100
    case finish = 100 // 完成
    //: case error = 1000
    case error = 1000 // 错误
}

//: enum DownloadTaskTypeID: Int {
enum ToVarArg: Int {
    //: case undefined = 0
    case undefined = 0 // 未定义
    //: case chatRecord = 1
    case chatRecord = 1 // 语音聊天
    //: case oneKeyGreet = 2
    case oneKeyGreet = 2 // 一键发送打招呼语音
}

//: class VoiceDownloadTaskModel: NSObject {
class BottomThen: NSObject {
    //: var taskId: String = ""
    var taskId: String = ""
    /// 下载地址
    //: var downloadUri: String = ""
    var downloadUri: String = ""
    /// 输出路径zip包
    //: var zipFilePath: String = ""
    var zipFilePath: String = ""
    /// 已下载大小
    //: var currentSize: Double = 0.0
    var currentSize: Double = 0.0
    /// 总大小
    //: var totalSize: Double = 0.0
    var totalSize: Double = 0.0
    /// 下载状态
    //: var taskStatus: DownloadTaskStatus = .none
    var taskStatus: TaskExpressionConvertible = .none
    /// 解压后路径
    //: var unZipFilePath: String = ""
    var unZipFilePath: String = ""
    /// 下载区分标识回调
    //: var taskTypeId: DownloadTaskTypeID = .undefined
    var taskTypeId: ToVarArg = .undefined
    /// 语音id
    //: var vid: String = ""
    var vid: String = ""
    /// 时长
    //: var length = 0
    var length = 0
    /// 输出流
    //: var stream: OutputStream?
    var stream: OutputStream?
    /// session
    //: var dataTask: URLSessionDataTask?
    var dataTask: URLSessionDataTask?

    /// 获取语音下载model
    //: class func getVoiceModel(_ tempModel: FlushScaleMsgTable) -> VoiceDownloadTaskModel {
    class func modify(_ tempModel: FlushScaleMsgTable) -> BottomThen {
        //: let model = VoiceDownloadTaskModel()
        let model = BottomThen()
        //: model.taskTypeId = .chatRecord
        model.taskTypeId = .chatRecord
        //: model.taskId = tempModel.msgId
        model.taskId = tempModel.msgId
        //: model.zipFilePath = tempModel.db_filePath
        model.zipFilePath = tempModel.db_filePath
        //: if tempModel.db_voiceUri.contains("http://") || tempModel.db_voiceUri.contains("https://") {
        if tempModel.db_voiceUri.contains((String(str_managerValue.prefix(7)))) || tempModel.db_voiceUri.contains((String(str_documentTitle.prefix(6)) + str_backgroundData.capitalized)) {
            //: model.downloadUri = tempModel.db_voiceUri
            model.downloadUri = tempModel.db_voiceUri
            //: } else {
        } else {
            //: let otherParams = String(format: "platform=iphone&version=%@&packageId=%@&bundleId=%@", ListMacroDefine.getAppNetVersion(), ListMacroDefine.getPackageID(), ListMacroDefine.getAppBundle())
            let otherParams = String(format: String(bytes: str_makeContent.map{buttonClear(text: $0)}, encoding: .utf8)!, ListMacroDefine.vignetteVersion(), ListMacroDefine.inherit(), ListMacroDefine.coequalSelect())
            //: model.downloadUri = String(format: "%@%@&%@", TalkingRequestAddrTool.share.serverUrlStr, tempModel.db_voiceUri, otherParams)
            model.downloadUri = String(format: "%@%@&%@", GazetteThen.share.serverUrlStr, tempModel.db_voiceUri, otherParams)

            //: model.currentSize = VoiceDownloadTaskModel.getFileSize(path: tempModel.db_filePath)
            model.currentSize = BottomThen.aboveEqual(path: tempModel.db_filePath)
        }
        //: return model
        return model
    }

    /// 获取一键打招呼model
    //: class func getOneKeyGreetModel(_ voiceInfo: [String: Any]) -> VoiceDownloadTaskModel {
    class func appModel(_ voiceInfo: [String: Any]) -> BottomThen {
        //: let model = VoiceDownloadTaskModel()
        let model = BottomThen()
        //: model.taskTypeId = .oneKeyGreet
        model.taskTypeId = .oneKeyGreet
        //: model.downloadUri = voiceInfo["url"] as? String ?? ""
        model.downloadUri = voiceInfo[(str_modelName.replacingOccurrences(of: "last", with: "l"))] as? String ?? ""
        //: model.vid = voiceInfo["id"] as? String ?? ""
        model.vid = voiceInfo["id"] as? String ?? ""
        //: model.length = Int(voiceInfo["length"] as? String ?? "0") ?? 0
        model.length = Int(voiceInfo[(str_playerValue.replacingOccurrences(of: "view", with: "ng"))] as? String ?? "0") ?? 0
        //: let fileName = (model.downloadUri as NSString).lastPathComponent
        let fileName = (model.downloadUri as NSString).lastPathComponent
        //: let pathName = fileName.replacingOccurrences(of: ".", with: "_")
        let pathName = fileName.replacingOccurrences(of: ".", with: "_")
        //: let timeInterval = Int(Date().timeIntervalSince1970)
        let timeInterval = Int(Date().timeIntervalSince1970)
        //: model.zipFilePath = "\(DanceMusicReactiveCompatible.getChatVoicePath())\(pathName)\(timeInterval)"
        model.zipFilePath = "\(DanceMusicReactiveCompatible.imageAge())\(pathName)\(timeInterval)"
        //: return model
        return model
    }
}

//: extension VoiceDownloadTaskModel {
extension BottomThen {
    /// 获取文件大小
    /// - Parameter path: 文件完整路径
    /// - Returns: 文件size
    //: class func getFileSize(path: String) -> Double {
    class func aboveEqual(path: String) -> Double {
        //: let fileManager = FileManager.default
        let fileManager = FileManager.default
        //: guard fileManager.fileExists(atPath: path) else {
        guard fileManager.fileExists(atPath: path) else {
            //: return 0.0
            return 0.0
        }
        //: do {
        do {
            //: let attr = try fileManager.attributesOfItem(atPath: path)
            let attr = try fileManager.attributesOfItem(atPath: path)
            //: let fileSize = attr[FileAttributeKey.size] as! UInt64
            let fileSize = attr[FileAttributeKey.size] as! UInt64
            //: return Double(fileSize)
            return Double(fileSize)
            //: } catch {
        } catch {
            //: printLog(message: "getFileSize error :\(error)")
            printLog(message: (String(str_hiddenName) + String(str_statusName) + String(str_playerIconName)) + "\(error)")
            //: return 0.0
            return 0.0
        }
    }

    /// 获取文件本地存储路径
    /// - Returns: 路径
    //: func getDownloadZipFilePath() -> String {
    func clause() -> String {
        //: guard self.zipFilePath.isEmpty else {
        guard self.zipFilePath.isEmpty else {
            //: return self.zipFilePath
            return self.zipFilePath
        }
        //: let timeInterval = Int(Date().timeIntervalSince1970)
        let timeInterval = Int(Date().timeIntervalSince1970)
        //: return "\(DanceMusicReactiveCompatible.getChatVoicePath())\(self.taskId)\(timeInterval)"
        return "\(DanceMusicReactiveCompatible.imageAge())\(self.taskId)\(timeInterval)"
    }
}
