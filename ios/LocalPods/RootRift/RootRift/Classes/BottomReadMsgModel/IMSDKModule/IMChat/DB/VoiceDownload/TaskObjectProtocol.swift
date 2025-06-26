
//: Declare String Begin

/*: "Documents/User/voice/" :*/
fileprivate let str_actualText:String = "Docutime array image button count"
fileprivate let str_gestureName:String = "/Userinfo bottom return string"

/*: "Documents/User/record/" :*/
fileprivate let str_messageName:String = "name end cell player addDocumen"
fileprivate let str_logVoiceValue:String = "user make sub namets/User"
fileprivate let str_editData:String = "/record/err let current"

/*: "cancelled" :*/
fileprivate let str_blackValue:String = "bottomncelle"
fileprivate let str_tableName:String = "D"

/*: .wav" :*/
fileprivate let str_modelTitle:[Character] = [".","w","a","v"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TaskObjectProtocol.swift
//  RootRift
//
//  Created by DouXiu on 2024/8/26.
//

//: import UIKit
import UIKit

//: typealias OneKeyGreetDownloadBlock = (_ model: VoiceDownloadTaskModel) -> Void
typealias OneKeyGreetDownloadBlock = (_ model: BottomThen) -> Void

//: protocol VoiceDownloadTaskManagerDelegate: NSObjectProtocol {
protocol InsideManagerDelegate: NSObjectProtocol {
    /// 下载完成
    //: func voiceDownloadFinish(model: VoiceDownloadTaskModel)
    func magnitudeOf(model: BottomThen)
    /// 取消下载
    //: func voiceDownloadCancel(model: VoiceDownloadTaskModel)
    func lineRange(model: BottomThen)
    /// 下载报错
    //: func voiceDownloadError(model: VoiceDownloadTaskModel)
    func voiceShowTheory(model: BottomThen)
    /// 下载中回调
    //: func voiceDownloading(model: VoiceDownloadTaskModel)
    func totalModel(model: BottomThen)
    /// 过期语音消息，服务器缓存时间为7天
    //: func voiceDownloadExpired(model: VoiceDownloadTaskModel)
    func inviteModel(model: BottomThen)
}

//: class VoiceDownloadTaskManager: NSObject {
class TaskObjectProtocol: NSObject {
    //: weak var delegate: VoiceDownloadTaskManagerDelegate?
    weak var delegate: InsideManagerDelegate?
    //: static let shared = VoiceDownloadTaskManager()
    static let shared = TaskObjectProtocol()
    //: private var dataSession: URLSession?
    private var dataSession: URLSession?
    //: private var taskQueue = OperationQueue()
    private var taskQueue = OperationQueue()
    //: private var dataTasksArray = [VoiceDownloadTaskModel]()
    private var dataTasksArray = [BottomThen]()
    //: private var downloadingModelDic = [String: VoiceDownloadTaskModel]()
    private var downloadingModelDic = [String: BottomThen]()
    /// 一键发送语音block
    //: private var dataDownloadBlock: OneKeyGreetDownloadBlock?
    private var dataDownloadBlock: OneKeyGreetDownloadBlock?

    //: override private init() {
    override private init() {
        //: super.init()
        super.init()
        //: self.taskQueue.maxConcurrentOperationCount = 1
        self.taskQueue.maxConcurrentOperationCount = 1
        //: self.dataSession = URLSession(configuration: .default, delegate: self, delegateQueue: self.taskQueue)
        self.dataSession = URLSession(configuration: .default, delegate: self, delegateQueue: self.taskQueue)
    }

    //: deinit {
    deinit {
        //: self.dataSession?.invalidateAndCancel()
        self.dataSession?.invalidateAndCancel()
    }
}

// MARK: - 添加下载任务

//: extension VoiceDownloadTaskManager {
extension TaskObjectProtocol {
    /// 添加下载任务
    //: func addDownloadTasks(_ tasksArray: [VoiceDownloadTaskModel]) {
    func acceptToTasks(_ tasksArray: [BottomThen]) {
        //: if tasksArray.isEmpty { return }
        if tasksArray.isEmpty { return }
        //: let filterArray = tasksArray.filter { self.downloadingModelDic.keys.contains($0.downloadUri) == false }
        let filterArray = tasksArray.filter { self.downloadingModelDic.keys.contains($0.downloadUri) == false }
        //: for model in filterArray {
        for model in filterArray {
            //: if model.zipFilePath.isEmpty {
            if model.zipFilePath.isEmpty {
                //: model.zipFilePath = model.getDownloadZipFilePath()
                model.zipFilePath = model.clause()
            }

            // 重编译，相对路径会变
            //: if model.zipFilePath.contains("Documents/User/voice/") {
            if model.zipFilePath.contains((String(str_actualText.prefix(4)) + "ments" + String(str_gestureName.prefix(5)) + "/voice/")) {
                //: model.zipFilePath = "\(DanceMusicReactiveCompatible.getChatVoicePath())\((model.zipFilePath as NSString).lastPathComponent)"
                model.zipFilePath = "\(DanceMusicReactiveCompatible.imageAge())\((model.zipFilePath as NSString).lastPathComponent)"
                //: } else if model.zipFilePath.contains("Documents/User/record/") {
            } else if model.zipFilePath.contains((String(str_messageName.suffix(7)) + String(str_logVoiceValue.suffix(7)) + String(str_editData.prefix(8)))) {
                //: model.zipFilePath = "\(DanceMusicReactiveCompatible.getChatRecordPath())\((model.zipFilePath as NSString).lastPathComponent)"
                model.zipFilePath = "\(DanceMusicReactiveCompatible.sectionPop())\((model.zipFilePath as NSString).lastPathComponent)"
            }

            // 设置请求头
            //: let request = URLRequest(url: URL(string: model.downloadUri)!)
            let request = URLRequest(url: URL(string: model.downloadUri)!)
            // 创建输出流
            //: model.stream = OutputStream(toFileAtPath: model.zipFilePath, append: true)
            model.stream = OutputStream(toFileAtPath: model.zipFilePath, append: true)
            // task
            //: self.downloadingModelDic[model.downloadUri] = model
            self.downloadingModelDic[model.downloadUri] = model
            //: model.dataTask = self.dataSession?.dataTask(with: request)
            model.dataTask = self.dataSession?.dataTask(with: request)
            //: model.dataTask?.taskDescription = model.downloadUri
            model.dataTask?.taskDescription = model.downloadUri

            //: model.dataTask?.resume()
            model.dataTask?.resume()
            //: model.taskStatus = .prepare
            model.taskStatus = .prepare
            //: FlushScaleMsgTable.db_updateVoiceMsg(msgId: model.taskId, status: "\(DownloadTaskStatus.prepare.rawValue)", filePath: model.zipFilePath)
            FlushScaleMsgTable.formerImage(msgId: model.taskId, status: "\(TaskExpressionConvertible.prepare.rawValue)", filePath: model.zipFilePath)
            //: self.dataTasksArray.append(model)
            self.dataTasksArray.append(model)
        }
    }

    /// 添加一键语音打招呼下载任务
    //: func addAudioGreetDownLoadTask(_ audioInfo: [String: Any], completeHandle: @escaping OneKeyGreetDownloadBlock) {
    func rein(_ audioInfo: [String: Any], completeHandle: @escaping OneKeyGreetDownloadBlock) {
        //: var taskModel = VoiceDownloadTaskModel.getOneKeyGreetModel(audioInfo)
        var taskModel = BottomThen.appModel(audioInfo)

        //: if self.downloadingModelDic.keys.contains(taskModel.downloadUri) {
        if self.downloadingModelDic.keys.contains(taskModel.downloadUri) {
            //: taskModel = self.downloadingModelDic[taskModel.downloadUri] ?? VoiceDownloadTaskModel()
            taskModel = self.downloadingModelDic[taskModel.downloadUri] ?? BottomThen()
        }

        // 重编译，相对路径会变
        //: if taskModel.zipFilePath.contains("Documents/User/voice/") {
        if taskModel.zipFilePath.contains((String(str_actualText.prefix(4)) + "ments" + String(str_gestureName.prefix(5)) + "/voice/")) {
            //: taskModel.zipFilePath = "\(DanceMusicReactiveCompatible.getChatVoicePath())\((taskModel.zipFilePath as NSString).lastPathComponent)"
            taskModel.zipFilePath = "\(DanceMusicReactiveCompatible.imageAge())\((taskModel.zipFilePath as NSString).lastPathComponent)"
            //: } else if taskModel.zipFilePath.contains("Documents/User/record/") {
        } else if taskModel.zipFilePath.contains((String(str_messageName.suffix(7)) + String(str_logVoiceValue.suffix(7)) + String(str_editData.prefix(8)))) {
            //: taskModel.zipFilePath = "\(DanceMusicReactiveCompatible.getChatRecordPath())\((taskModel.zipFilePath as NSString).lastPathComponent)"
            taskModel.zipFilePath = "\(DanceMusicReactiveCompatible.sectionPop())\((taskModel.zipFilePath as NSString).lastPathComponent)"
        }

        // 设置请求头
        //: let request = URLRequest(url: URL(string: taskModel.downloadUri)!)
        let request = URLRequest(url: URL(string: taskModel.downloadUri)!)
        // 创建输出流
        //: taskModel.stream = OutputStream(toFileAtPath: taskModel.zipFilePath, append: true)
        taskModel.stream = OutputStream(toFileAtPath: taskModel.zipFilePath, append: true)
        // 任务
        //: self.downloadingModelDic[taskModel.downloadUri] = taskModel
        self.downloadingModelDic[taskModel.downloadUri] = taskModel
        //: taskModel.dataTask = self.dataSession?.dataTask(with: request)
        taskModel.dataTask = self.dataSession?.dataTask(with: request)
        //: taskModel.dataTask?.taskDescription = taskModel.downloadUri
        taskModel.dataTask?.taskDescription = taskModel.downloadUri

        //: taskModel.dataTask?.resume()
        taskModel.dataTask?.resume()
        //: taskModel.taskStatus = .prepare
        taskModel.taskStatus = .prepare
        //: self.dataTasksArray.append(taskModel)
        self.dataTasksArray.append(taskModel)
        //: self.dataDownloadBlock = completeHandle
        self.dataDownloadBlock = completeHandle
    }
}

// MARK: - URLSessionDelegate

//: extension VoiceDownloadTaskManager: URLSessionDataDelegate {
extension TaskObjectProtocol: URLSessionDataDelegate {
    // 开始
    //: func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive response: URLResponse, completionHandler: @escaping (URLSession.ResponseDisposition) -> Void) {
    func urlSession(_: URLSession, dataTask: URLSessionDataTask, didReceive _: URLResponse, completionHandler: @escaping (URLSession.ResponseDisposition) -> Void) {
        //: guard let taskModel = self.downloadingModelDic[dataTask.taskDescription ?? ""] else {
        guard let taskModel = self.downloadingModelDic[dataTask.taskDescription ?? ""] else {
            //: completionHandler(.allow)
            completionHandler(.allow)
            //: return
            return
        }

        //: taskModel.stream?.open()
        taskModel.stream?.open()
        //: let totalBytesWritten = VoiceDownloadTaskModel.getFileSize(path: taskModel.zipFilePath)
        let totalBytesWritten = BottomThen.aboveEqual(path: taskModel.zipFilePath)
        //: let totalBytesExpectedToWrite = totalBytesWritten + Double(dataTask.countOfBytesExpectedToReceive)
        let totalBytesExpectedToWrite = totalBytesWritten + Double(dataTask.countOfBytesExpectedToReceive)
        //: taskModel.totalSize = totalBytesExpectedToWrite
        taskModel.totalSize = totalBytesExpectedToWrite
        //: taskModel.taskStatus = .running
        taskModel.taskStatus = .running
        //: completionHandler(.allow)
        completionHandler(.allow)
    }

    // 写入
    //: func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) {
    func urlSession(_: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) {
        //: guard let taskModel = self.downloadingModelDic[dataTask.taskDescription ?? ""] else {
        guard let taskModel = self.downloadingModelDic[dataTask.taskDescription ?? ""] else {
            //: return
            return
        }
        //: taskModel.stream?.write((data as NSData).bytes, maxLength: data.count)
        taskModel.stream?.write((data as NSData).bytes, maxLength: data.count)
        //: self.delegate?.voiceDownloading(model: taskModel)
        self.delegate?.totalModel(model: taskModel)
    }

    // 请求结束或失败
    //: func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) {
    func urlSession(_: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) {
        //: guard let taskModel = self.downloadingModelDic[task.taskDescription ?? ""] else {
        guard let taskModel = self.downloadingModelDic[task.taskDescription ?? ""] else {
            //: return
            return
        }

        //: taskModel.stream?.close()
        taskModel.stream?.close()
        //: taskModel.stream = nil
        taskModel.stream = nil

        // 暂时只对一键打招呼的response判断返回内容
        //: var errorCode = 200
        var errorCode = 200
        //: if taskModel.taskTypeId == .oneKeyGreet {
        if taskModel.taskTypeId == .oneKeyGreet {
            //: if let response = task.response as? HTTPURLResponse {
            if let response = task.response as? HTTPURLResponse {
                //: if response.statusCode >= 200 && response.statusCode < 300 {
                if response.statusCode >= 200 && response.statusCode < 300 {
                    //: errorCode = 200
                    errorCode = 200
                    //: } else {
                } else {
                    //: errorCode = response.statusCode
                    errorCode = response.statusCode
                }
            }
        }

        //: if error != nil || errorCode != 200 {
        if error != nil || errorCode != 200 {
            //: if let error = error, (error as NSError).userInfo[NSLocalizedDescriptionKey] as? String == "cancelled" {
            if let error = error, (error as NSError).userInfo[NSLocalizedDescriptionKey] as? String == (str_blackValue.replacingOccurrences(of: "bottom", with: "ca") + str_tableName.lowercased()) {
                //: if taskModel.taskStatus == .pause {
                if taskModel.taskStatus == .pause {
                    //: pauseTask(url: task.taskDescription ?? "", isSuspend: true)
                    transfer(url: task.taskDescription ?? "", isSuspend: true)
                    //: } else if taskModel.taskStatus == .cancel {
                } else if taskModel.taskStatus == .cancel {
                    //: self.cancelTask(url: task.taskDescription ?? "")
                    self.task(url: task.taskDescription ?? "")
                }
                //: } else {
            } else {
                //: taskModel.taskStatus = .error
                taskModel.taskStatus = .error
                //: pauseTask(url: task.taskDescription ?? "", isSuspend: false)
                transfer(url: task.taskDescription ?? "", isSuspend: false)
            }
            //: } else {
        } else {
            //: taskModel.taskStatus = .finish
            taskModel.taskStatus = .finish
            //: self.completeTask(url: task.taskDescription ?? "")
            self.complete(url: task.taskDescription ?? "")
        }

        //: taskModel.dataTask?.cancel()
        taskModel.dataTask?.cancel()
        //: taskModel.dataTask = nil
        taskModel.dataTask = nil
    }
}

// MARK: - Private

//: extension VoiceDownloadTaskManager {
extension TaskObjectProtocol {
    /// 暂停下载任务
    /// - Parameters:
    ///   - url: 下载地址
    ///   - isSuspend: 是否暂停
    //: func pauseTask(url: String, isSuspend: Bool) {
    func transfer(url: String, isSuspend: Bool) {
        //: guard let taskModel = self.downloadingModelDic[url] else { return }
        guard let taskModel = self.downloadingModelDic[url] else { return }
        //: switch taskModel.taskTypeId {
        switch taskModel.taskTypeId {
        //: case .chatRecord:
        case .chatRecord:
            //: let status = isSuspend ? "\(DownloadTaskStatus.pause.rawValue)" : "\(DownloadTaskStatus.error.rawValue)"
            let status = isSuspend ? "\(TaskExpressionConvertible.pause.rawValue)" : "\(TaskExpressionConvertible.error.rawValue)"
            //: FlushScaleMsgTable.db_updateVoiceMsg(msgId: taskModel.taskId, status: status)
            FlushScaleMsgTable.formerImage(msgId: taskModel.taskId, status: status)
            //: if isSuspend == false {
            if isSuspend == false {
                //: self.delegate?.voiceDownloadError(model: taskModel)
                self.delegate?.voiceShowTheory(model: taskModel)
            }

        //: case .oneKeyGreet:
        case .oneKeyGreet:
            //: self.dataDownloadBlock?(taskModel)
            self.dataDownloadBlock?(taskModel)

        //: case .undefined:
        case .undefined:
            //: break
            break
        }

        //: self.downloadingModelDic.removeValue(forKey: url)
        self.downloadingModelDic.removeValue(forKey: url)
    }

    /// 取消下载
    /// - Parameter url: 下载地址
    //: func cancelTask(url: String) {
    func task(url: String) {
        //: guard let taskModel = self.downloadingModelDic[url] else { return }
        guard let taskModel = self.downloadingModelDic[url] else { return }
        //: self.downloadingModelDic.removeValue(forKey: url)
        self.downloadingModelDic.removeValue(forKey: url)
        //: if let index = self.dataTasksArray.firstIndex(of: taskModel) {
        if let index = self.dataTasksArray.firstIndex(of: taskModel) {
            //: self.dataTasksArray.remove(at: index)
            self.dataTasksArray.remove(at: index)
        }

        //: if FileManager.default.isExecutableFile(atPath: taskModel.zipFilePath) {
        if FileManager.default.isExecutableFile(atPath: taskModel.zipFilePath) {
            //: try? FileManager.default.removeItem(atPath: taskModel.zipFilePath)
            try? FileManager.default.removeItem(atPath: taskModel.zipFilePath)
        }

        //: switch taskModel.taskTypeId {
        switch taskModel.taskTypeId {
        //: case .chatRecord:
        case .chatRecord:
            //: FlushScaleMsgTable.db_deleteVoiceMsg(msgId: taskModel.taskId)
            FlushScaleMsgTable.sunnahId(msgId: taskModel.taskId)
            //: self.delegate?.voiceDownloadCancel(model: taskModel)
            self.delegate?.lineRange(model: taskModel)

        //: case .oneKeyGreet:
        case .oneKeyGreet:
            //: self.dataDownloadBlock?(taskModel)
            self.dataDownloadBlock?(taskModel)

        //: case .undefined:
        case .undefined:
            //: break
            break
        }
    }

    /// 完成下载
    /// - Parameter url: 下载地址
    //: func completeTask(url: String) {
    func complete(url: String) {
        //: guard let taskModel = self.downloadingModelDic[url] else { return }
        guard let taskModel = self.downloadingModelDic[url] else { return }
        //: self.downloadingModelDic.removeValue(forKey: url)
        self.downloadingModelDic.removeValue(forKey: url)
        //: if let index = self.dataTasksArray.firstIndex(of: taskModel) {
        if let index = self.dataTasksArray.firstIndex(of: taskModel) {
            //: self.dataTasksArray.remove(at: index)
            self.dataTasksArray.remove(at: index)
        }

        //: let size = VoiceDownloadTaskModel.getFileSize(path: taskModel.zipFilePath)
        let size = BottomThen.aboveEqual(path: taskModel.zipFilePath)
        //: if size > 0 {
        if size > 0 {
            //: if taskModel.taskTypeId == .chatRecord {
            if taskModel.taskTypeId == .chatRecord {
                //: FlushScaleMsgTable.db_updateVoiceMsg(msgId: taskModel.taskId, status: "\(DownloadTaskStatus.finish.rawValue)")
                FlushScaleMsgTable.formerImage(msgId: taskModel.taskId, status: "\(TaskExpressionConvertible.finish.rawValue)")
            }

            //: let filePath = "\(taskModel.zipFilePath).wav"
            let filePath = "\(taskModel.zipFilePath)" + (String(str_modelTitle))
            //: taskModel.unZipFilePath = filePath
            taskModel.unZipFilePath = filePath

            //: self.getUnZipFilePath(at: taskModel.zipFilePath, withKeyId: taskModel.taskId, withTypeId: taskModel.taskTypeId) { _ in
            self.passkey(at: taskModel.zipFilePath, withKeyId: taskModel.taskId, withTypeId: taskModel.taskTypeId) { _ in
                //: switch taskModel.taskTypeId {
                switch taskModel.taskTypeId {
                //: case .chatRecord:
                case .chatRecord:
                    //: self.delegate?.voiceDownloadFinish(model: taskModel)
                    self.delegate?.magnitudeOf(model: taskModel)

                //: case .oneKeyGreet:
                case .oneKeyGreet:
                    //: self.dataDownloadBlock?(taskModel)
                    self.dataDownloadBlock?(taskModel)

                //: case .undefined:
                case .undefined:
                    //: break
                    break
                }
            }
            //: } else {
        } else {
            // expired
            //: switch taskModel.taskTypeId {
            switch taskModel.taskTypeId {
            //: case .chatRecord:
            case .chatRecord:
                //: FlushScaleMsgTable.db_updateVoiceMsg(msgId: taskModel.taskId, status: "\(DownloadTaskStatus.expired.rawValue)")
                FlushScaleMsgTable.formerImage(msgId: taskModel.taskId, status: "\(TaskExpressionConvertible.expired.rawValue)")
                //: self.delegate?.voiceDownloadExpired(model: taskModel)
                self.delegate?.inviteModel(model: taskModel)

            //: case .oneKeyGreet:
            case .oneKeyGreet:
                //: self.dataDownloadBlock?(taskModel)
                self.dataDownloadBlock?(taskModel)

            //: case .undefined:
            case .undefined:
                //: break
                break
            }
        }
    }

    //: func getUnZipFilePath(at path: String, withKeyId keyId: String, withTypeId typeId: DownloadTaskTypeID, complete: @escaping (Error?) -> Void) {
    func passkey(at path: String, withKeyId keyId: String, withTypeId typeId: ToVarArg, complete: @escaping (Error?) -> Void) {
        //: DispatchQueue.global().async {
        DispatchQueue.global().async {
            //: if let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
            if let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
                //: let newPath = "\(path).wav"
                let newPath = "\(path)" + (String(str_modelTitle))
                //: if !FileManager.default.fileExists(atPath: newPath) {
                if !FileManager.default.fileExists(atPath: newPath) {
                    //: try? FileManager.default.createFile(atPath: newPath, contents: nil, attributes: nil)
                    try? FileManager.default.createFile(atPath: newPath, contents: nil, attributes: nil)
                }
                //: if let handle = FileHandle(forWritingAtPath: newPath) {
                if let handle = FileHandle(forWritingAtPath: newPath) {
                    //: handle.seekToEndOfFile()
                    handle.seekToEndOfFile()
                    //: let unzippedData = data.gunzippedData()
                    let unzippedData = data.gunzippedTotalerval()
                    //: handle.write(unzippedData)
                    handle.write(unzippedData)
                    //: handle.closeFile()
                    handle.closeFile()
                    //: try? FileManager.default.removeItem(atPath: path)
                    try? FileManager.default.removeItem(atPath: path)
                    //: if typeId == .chatRecord {
                    if typeId == .chatRecord {
                        //: FlushScaleMsgTable.db_updateVoiceMsg(msgId: keyId, filePath: newPath)
                        FlushScaleMsgTable.formerImage(msgId: keyId, filePath: newPath)
                    }
                    //: DispatchQueue.main.async {
                    DispatchQueue.main.async {
                        //: complete(nil)
                        complete(nil)
                    }
                }
            }
        }
    }
}
