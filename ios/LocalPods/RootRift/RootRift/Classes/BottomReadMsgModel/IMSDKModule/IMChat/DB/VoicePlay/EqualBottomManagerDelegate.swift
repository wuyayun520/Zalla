
//: Declare String Begin

/*: ".wav" :*/
fileprivate let str_toTitle:String = ".wavto m"

/*: "Documents/User/voice/" :*/
fileprivate let str_gestureText:[Character] = ["D","o","c","u","m","e","n","t","s","/","U","s","e","r","/","v"]
fileprivate let str_targetName:[Character] = ["o","i","c","e","/"]

/*: "Documents/User/record/" :*/
fileprivate let str_adjustEqualValue:[Character] = ["D","o","c","u","m","e","n","t","s","/","U","s","e","r","/","r"]
fileprivate let str_dataValue:String = "screen index background iconecord/"

/*: "voice dataTaskDownloadFinish" :*/
fileprivate let str_harvestName:[Character] = ["v","o","i","c","e"," ","d","a","t","a","T","a","s","k","D","o","w","n","l","o","a","d","F","i","n","i","s","h"]

/*: "voice dataTaskDownloadCancel" :*/
fileprivate let str_iconData:String = "let tovoice "
fileprivate let str_burnContent:String = "image labelTaskDo"
fileprivate let str_modelData:String = "dCancelimage size for add"

/*: "voice dataTaskDownloadExpired" :*/
fileprivate let str_playerValue:[Character] = ["v","o","i","c","e"," ","d","a","t","a","T","a"]
fileprivate let str_sizeTitle:String = "skDownlsub size view extension point"
fileprivate let str_conversationText:String = "log migrationoadE"

/*: "voice dataTaskDownloadErro" :*/
fileprivate let str_startName:String = "in object fill datavoice "
fileprivate let str_countValue:String = "back male user make topaskDow"

/*: "Play Error,File does not exist" :*/
fileprivate let str_iconName:String = "Play Eop edit gift view view"
fileprivate let str_userValue:String = "view start label view view,File "
fileprivate let str_messageTitle:String = "click true label heightnot ex"
fileprivate let str_modelCornerTitle:String = "IST"

/*: "Play Error,File expired" :*/
fileprivate let str_actionValue:String = "Play Ein age"
fileprivate let str_identityName:String = "ile excell else"

/*: "Play Error，Net error" :*/
fileprivate let str_reasonData:String = "content letPlay E"
fileprivate let str_modeValue:String = "view normal model overNet e"

/*: "Currently in mute mode" :*/
fileprivate let str_makeValue:String = "else push letCurren"
fileprivate let str_conversationContent:String = "tly ialong location voice"
fileprivate let str_playValue:String = "e modecontent user content make data"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EqualBottomManagerDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/3/10.
//

//: import UIKit
import UIKit

/// 播放器状态
//: enum AudioMsgPlayStatus {
enum ProgressPlayStatus {
    //: case Unknown
    case Unknown // 未开始
    //: case Waiting
    case Waiting // 等待中
    //: case Playing
    case Playing // 播放中
}

//: enum AudioPlayingErrorStatus: Int {
enum RequestHashable: Int {
    //: case AudioPlayerNil = 0
    case AudioPlayerNil = 0 // audioPlayer初始化失败，多半是路径下文件的问题
    //: case FileExpired = 1
    case FileExpired = 1 // 文件过期
    //: case TaskError = 2
    case TaskError = 2 // 下载报错
    //: case NotFileAtPath = 3
    case NotFileAtPath = 3 // 路径下文件不存在
    //: case FirstMuteTip = 100
    case FirstMuteTip = 100 // 静音提醒
}

//: class TalkingVoiceMsgPlayManager: NSObject {
class EqualBottomManagerDelegate: NSObject {
    //: static let shared = TalkingVoiceMsgPlayManager()
    static let shared = EqualBottomManagerDelegate()

    //: var  voiceDataList: [TalkingVoiceMsgPlayModel] = []
    var voiceDataList: [AutomaticallyTalkingThen] = []

    //: var playItemDic: Dictionary<String, TalkingVoiceMsgPlayModel> = [:]
    var playItemDic: [String: AutomaticallyTalkingThen] = [:]

    //: var audioPlayer: AVAudioPlayer?
    var audioPlayer: AVAudioPlayer?
    //: var playStatus: AudioMsgPlayStatus = .Unknown
    var playStatus: ProgressPlayStatus = .Unknown
    //: var playIndex = 0
    var playIndex = 0 // 当前播放的下标
    //: var waitPlayID = ""   // 将要播放的主键id
    var waitPlayID = "" // 将要播放的主键id
    //: var clickCellId = ""   // 记录点击的
    var clickCellId = "" // 记录点击的
    //: var isMute = false
    var isMute = false // 是否静音，默认否

    //: private let multiDelegate: NSHashTable<AnyObject> = NSHashTable.weakObjects()
    private let multiDelegate: NSHashTable<AnyObject> = NSHashTable.weakObjects()

    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: initialization()
        prototypic()
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }

    //: func initialization() {
    func prototypic() {
        //: self.voiceDataList.removeAll()
        self.voiceDataList.removeAll()
        //: self.playItemDic.removeAll()
        self.playItemDic.removeAll()
        //: self.playIndex = 0
        self.playIndex = 0
    }
}

//: extension TalkingVoiceMsgPlayManager {
extension EqualBottomManagerDelegate {
    //: func stopAudioPlayer() {
    func upwardlyPlayer() {
        //: if playStatus != .Unknown {
        if playStatus != .Unknown {
            //: for  model in voiceDataList {
            for model in voiceDataList {
                //: model.isPlayingStatus = 2
                model.isPlayingStatus = 2
                //: model.activityShowStatus = 2
                model.activityShowStatus = 2
            }
        }
        //: if self.audioPlayer != nil {
        if self.audioPlayer != nil {
            //: self.audioPlayer?.stop()
            self.audioPlayer?.stop()
            //: self.audioPlayer = nil
            self.audioPlayer = nil
        }
    }

    /// 播放引用消息
    //: func starPlayReplyMsg(playModel: TalkingVoiceMsgPlayModel) {
    func userTip(playModel: AutomaticallyTalkingThen) {
        //: stopAudioPlayer()
        upwardlyPlayer()
        //: initialization()
        prototypic()
        //: voiceDataList.append(playModel)
        voiceDataList.append(playModel)
        //: let status = Int(playModel.db_voiceCacheWrap.downloadStatus)
        let status = Int(playModel.db_voiceCacheWrap.downloadStatus)
        //: waitPlayID = playModel.db_voiceCacheWrap.msgId
        waitPlayID = playModel.db_voiceCacheWrap.msgId
        //: self.playItemDic[playModel.db_voiceCacheWrap.msgId] = playModel
        self.playItemDic[playModel.db_voiceCacheWrap.msgId] = playModel
        //: let dbFilePath = playModel.db_voiceCacheWrap.db_filePath
        let dbFilePath = playModel.db_voiceCacheWrap.db_filePath
        //: if status == DownloadTaskStatus.finish.rawValue ||
        if status == TaskExpressionConvertible.finish.rawValue ||
            //: !dbFilePath.isEmpty && dbFilePath.hasSuffix(".wav")  {
            !dbFilePath.isEmpty && dbFilePath.hasSuffix((String(str_toTitle.prefix(4))))
        {
            //: starPlayVoiceMsg(filePath: playModel.db_voiceCacheWrap.db_filePath, msgID: playModel.db_voiceCacheWrap.msgId)
            textId(filePath: playModel.db_voiceCacheWrap.db_filePath, msgID: playModel.db_voiceCacheWrap.msgId)
            //: } else {
        } else {
            //: let taskModel = VoiceDownloadTaskModel.getVoiceModel(playModel.db_voiceCacheWrap)
            let taskModel = BottomThen.modify(playModel.db_voiceCacheWrap)
            //: VoiceDownloadTaskManager.shared.addDownloadTasks([taskModel])
            TaskObjectProtocol.shared.acceptToTasks([taskModel])
        }
    }

    //: func starPlayMsg(msgArr: [TalkingVoiceMsgPlayModel]) {
    func nextPlay(msgArr: [AutomaticallyTalkingThen]) {
        //: if msgArr.count == 0 {
        if msgArr.count == 0 {
            //: return
            return
        }
        //: stopAudioPlayer()
        upwardlyPlayer()
        //: initialization()
        prototypic()
        //: voiceDataList += msgArr
        voiceDataList += msgArr
        //: var index = 0
        var index = 0
        //: var tempArray: [VoiceDownloadTaskModel] = []
        var tempArray: [BottomThen] = []
        //: var firstModel: TalkingVoiceMsgPlayModel?
        var firstModel: AutomaticallyTalkingThen?
        //: for model in msgArr {
        for model in msgArr {
            //: let bindWrap = FlushScaleMsgTable.db_getVoiceMsg(with: model.db_voiceCacheWrap.msgId)
            let bindWrap = FlushScaleMsgTable.sharedBlock(with: model.db_voiceCacheWrap.msgId)
            //: if bindWrap != nil {
            if bindWrap != nil {
                //: model.db_voiceCacheWrap = bindWrap!
                model.db_voiceCacheWrap = bindWrap!
            }
            //: let isMySend = (model.db_voiceCacheWrap.db_senduid == WatercourseThen.share.loginUserMode.userID)
            let isMySend = (model.db_voiceCacheWrap.db_senduid == WatercourseThen.share.loginUserMode.userID)
            //: self.playItemDic[model.db_voiceCacheWrap.msgId] = model
            self.playItemDic[model.db_voiceCacheWrap.msgId] = model
            //: let status = Int(model.db_voiceCacheWrap.downloadStatus)
            let status = Int(model.db_voiceCacheWrap.downloadStatus)
            //: if index == 0 {
            if index == 0 {
                //: waitPlayID = model.db_voiceCacheWrap.msgId
                waitPlayID = model.db_voiceCacheWrap.msgId
                //: if status == DownloadTaskStatus.finish.rawValue || isMySend {
                if status == TaskExpressionConvertible.finish.rawValue || isMySend {
                    //: firstModel = model
                    firstModel = model
                }
                //: if (status != DownloadTaskStatus.finish.rawValue) {
                if status != TaskExpressionConvertible.finish.rawValue {
                    //: if playStatus != .Unknown {
                    if playStatus != .Unknown {
                        //: model.activityShowStatus = 1
                        model.activityShowStatus = 1
                    }
                }
            }
            //: if status != DownloadTaskStatus.finish.rawValue && !isMySend {
            if status != TaskExpressionConvertible.finish.rawValue, !isMySend {
                //: let taskModel = VoiceDownloadTaskModel.getVoiceModel(model.db_voiceCacheWrap)
                let taskModel = BottomThen.modify(model.db_voiceCacheWrap)
                //: tempArray.append(taskModel)
                tempArray.append(taskModel)
            }
            //: index += 1
            index += 1
        }

        //: if firstModel != nil {
        if firstModel != nil {
            //: firstModel?.isPlayingStatus = 1
            firstModel?.isPlayingStatus = 1
            //: starPlayVoiceMsg(filePath: (firstModel?.db_voiceCacheWrap.db_filePath)!, msgID: (firstModel?.db_voiceCacheWrap.msgId)!)
            textId(filePath: (firstModel?.db_voiceCacheWrap.db_filePath)!, msgID: (firstModel?.db_voiceCacheWrap.msgId)!)
        }
        //: VoiceDownloadTaskManager.shared.addDownloadTasks(tempArray)
        TaskObjectProtocol.shared.acceptToTasks(tempArray)
    }

    //: func starPlayVoiceMsg(filePath: String, msgID: String) {
    func textId(filePath: String, msgID: String) {
        //: if self.audioPlayer != nil {
        if self.audioPlayer != nil {
            //: self.audioPlayer?.stop()
            self.audioPlayer?.stop()
            //: self.audioPlayer = nil
            self.audioPlayer = nil
        }
        //: let model = self.playItemDic[msgID]
        let model = self.playItemDic[msgID]
        //: if model == nil {
        if model == nil {
            //: return
            return
        }
        //: var temfilePath = filePath
        var temfilePath = filePath
        //: let theFileName = (temfilePath as NSString).lastPathComponent
        let theFileName = (temfilePath as NSString).lastPathComponent

        // 重编译，相对路径会变
        //: if filePath.contains("Documents/User/voice/") {
        if filePath.contains((String(str_gestureText) + String(str_targetName))) {
            //: temfilePath = Talking_Chat_voice_SandboxPath + theFileName
            temfilePath = kLet_noValue + theFileName
        }
        //: if filePath.contains("Documents/User/record/") {
        if filePath.contains((String(str_adjustEqualValue) + String(str_dataValue.suffix(6)))) {
            //: temfilePath = Talking_Chat_record_SandboxPath + theFileName
            temfilePath = kLet_scaleTitle + theFileName
        }
        //: if !FileManager.fileManager.fileExists(atPath: temfilePath) {
        if !FileManager.fileManager.fileExists(atPath: temfilePath) {
            //: model?.isPlayingStatus = 2
            model?.isPlayingStatus = 2
            //: showToast(status: .NotFileAtPath)
            fromPush(status: .NotFileAtPath)
            //: return
            return
        }
        //: model?.db_voiceCacheWrap.db_isRead = "1"
        model?.db_voiceCacheWrap.db_isRead = "1"
        //: FlushScaleMsgTable.db_updateVoiceMsg(model!.db_voiceCacheWrap)
        FlushScaleMsgTable.domainTextMsg(model!.db_voiceCacheWrap)
        //: let session = AVAudioSession.sharedInstance()
        let session = AVAudioSession.sharedInstance()
        //: do {
        do {
            //: try session.setCategory(AVAudioSession.Category.ambient)
            try session.setCategory(AVAudioSession.Category.ambient)
            //: } catch {
        } catch {}
        //: let url = URL.init(fileURLWithPath: temfilePath)
        let url = URL(fileURLWithPath: temfilePath)
        //: do {
        do {
            //: try audioPlayer = AVAudioPlayer.init(contentsOf: url)
            try audioPlayer = AVAudioPlayer(contentsOf: url)
            //: } catch {
        } catch {}
        //: audioPlayer?.delegate = self
        audioPlayer?.delegate = self
        //: audioPlayer?.prepareToPlay()
        audioPlayer?.prepareToPlay()
        //: audioPlayer?.play()
        audioPlayer?.play()
        //: self.playStatus = .Playing
        self.playStatus = .Playing
        //: setMutedDetection()
        stateTing()
    }

    //: func addDaskManagerDelegate() {
    func bring() {
        //: stopAudioPlayer()
        upwardlyPlayer()
        //: VoiceDownloadTaskManager.shared.delegate = self
        TaskObjectProtocol.shared.delegate = self
    }

    //: func removeDaskManagerDelegate() {
    func removeOk() {
        //: stopAudioPlayer()
        upwardlyPlayer()
        //: VoiceDownloadTaskManager.shared.delegate = nil
        TaskObjectProtocol.shared.delegate = nil
    }
}

//: extension TalkingVoiceMsgPlayManager: AVAudioPlayerDelegate {
extension EqualBottomManagerDelegate: AVAudioPlayerDelegate {
    //: func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
    func audioPlayerDidFinishPlaying(_: AVAudioPlayer, successfully flag: Bool) {
        //: let lastModel = voiceDataList[playIndex]
        let lastModel = voiceDataList[playIndex]
        //: lastModel.isPlayingStatus = 2
        lastModel.isPlayingStatus = 2
        //: if flag {
        if flag {
            //: if playIndex < voiceDataList.count - 1 {
            if playIndex < voiceDataList.count - 1 {
                //: playIndex += 1
                playIndex += 1
                //: let model = voiceDataList[playIndex]
                let model = voiceDataList[playIndex]
                //: let bindWrap = FlushScaleMsgTable.db_getVoiceMsg(with: model.db_voiceCacheWrap.msgId)
                let bindWrap = FlushScaleMsgTable.sharedBlock(with: model.db_voiceCacheWrap.msgId)
                //: if bindWrap != nil {
                if bindWrap != nil {
                    //: model.db_voiceCacheWrap = bindWrap!
                    model.db_voiceCacheWrap = bindWrap!
                    //: self.waitPlayID = bindWrap!.msgId
                    self.waitPlayID = bindWrap!.msgId
                }
                //: voiceDataList[playIndex] = model
                voiceDataList[playIndex] = model
                //: self.playItemDic[model.db_voiceCacheWrap.msgId] = model
                self.playItemDic[model.db_voiceCacheWrap.msgId] = model

                //: let status = Int(model.db_voiceCacheWrap.downloadStatus)
                let status = Int(model.db_voiceCacheWrap.downloadStatus)
                //: if status == DownloadTaskStatus.finish.rawValue {
                if status == TaskExpressionConvertible.finish.rawValue {
                    //: model.isPlayingStatus = 1
                    model.isPlayingStatus = 1
                    //: starPlayVoiceMsg(filePath: model.db_voiceCacheWrap.db_filePath, msgID: model.db_voiceCacheWrap.msgId)
                    textId(filePath: model.db_voiceCacheWrap.db_filePath, msgID: model.db_voiceCacheWrap.msgId)
                    //: playStatus = .Waiting
                    playStatus = .Waiting
                    //: } else if (status == DownloadTaskStatus.error.rawValue) {
                } else if status == TaskExpressionConvertible.error.rawValue {
                    //: self.showToast(status: .TaskError)
                    self.fromPush(status: .TaskError)
                    //: playStatus = .Unknown
                    playStatus = .Unknown
                    //: } else if (status == DownloadTaskStatus.expired.rawValue) {
                } else if status == TaskExpressionConvertible.expired.rawValue {
                    //: self.showToast(status: .FileExpired)
                    self.fromPush(status: .FileExpired)
                    //: playStatus = .Unknown
                    playStatus = .Unknown
                    //: } else if (status == DownloadTaskStatus.cancel.rawValue) {
                } else if status == TaskExpressionConvertible.cancel.rawValue {
                    //: playStatus = .Unknown
                    playStatus = .Unknown
                }

                //: } else {
            } else {
                //: playStatus = .Unknown
                playStatus = .Unknown
                //: stopAudioPlayer()
                upwardlyPlayer()
            }
        }
    }

    //: func audioPlayerDecodeErrorDidOccur(_ player: AVAudioPlayer, error: Error?) {
    func audioPlayerDecodeErrorDidOccur(_: AVAudioPlayer, error: Error?) {
        //: printLog(message: error)
        printLog(message: error)
    }
}

// MARK: - InsideManagerDelegate

//: extension TalkingVoiceMsgPlayManager: VoiceDownloadTaskManagerDelegate {
extension EqualBottomManagerDelegate: InsideManagerDelegate {
    //: func voiceDownloadFinish(model: VoiceDownloadTaskModel) {
    func magnitudeOf(model: BottomThen) {
        //: printLog(message: "voice dataTaskDownloadFinish")
        printLog(message: (String(str_harvestName)))
        //: handleDataTaskDownloadDelegate(taskModel: model)
        last(taskModel: model)
    }

    //: func voiceDownloadCancel(model: VoiceDownloadTaskModel) {
    func lineRange(model: BottomThen) {
        //: printLog(message: "voice dataTaskDownloadCancel")
        printLog(message: (String(str_iconData.suffix(6)) + "data" + String(str_burnContent.suffix(6)) + "wnloa" + String(str_modelData.prefix(7))))
        //: handleDataTaskDownloadDelegate(taskModel: model)
        last(taskModel: model)
    }

    //: func voiceDownloadExpired(model: VoiceDownloadTaskModel) {
    func inviteModel(model: BottomThen) {
        //: printLog(message: "voice dataTaskDownloadExpired")
        printLog(message: (String(str_playerValue) + String(str_sizeTitle.prefix(7)) + String(str_conversationText.suffix(4)) + "xpired"))
        //: handleDataTaskDownloadDelegate(taskModel: model)
        last(taskModel: model)
    }

    //: func voiceDownloading(model: VoiceDownloadTaskModel) {
    func totalModel(model _: BottomThen) {}

    //: func voiceDownloadError(model: VoiceDownloadTaskModel) {
    func voiceShowTheory(model: BottomThen) {
        //: printLog(message: "voice dataTaskDownloadErro")
        printLog(message: (String(str_startName.suffix(6)) + "dataT" + String(str_countValue.suffix(6)) + "nloadErro"))
        //: handleDataTaskDownloadDelegate(taskModel: model)
        last(taskModel: model)
    }

    //: func handleDataTaskDownloadDelegate(taskModel: VoiceDownloadTaskModel) {
    func last(taskModel: BottomThen) {
        //: if voiceDataList.count  == 0 {
        if voiceDataList.count == 0 {
            //: return
            return
        }

        //: if self.waitPlayID == taskModel.taskId {
        if self.waitPlayID == taskModel.taskId {
            //: let model = self.voiceDataList[playIndex]
            let model = self.voiceDataList[playIndex]
            //: let warp = FlushScaleMsgTable.db_getVoiceMsg(with: model.db_voiceCacheWrap.msgId)
            let warp = FlushScaleMsgTable.sharedBlock(with: model.db_voiceCacheWrap.msgId)
            //: if warp != nil {
            if warp != nil {
                //: model.db_voiceCacheWrap = warp!
                model.db_voiceCacheWrap = warp!
            }
            //: let status = Int(model.db_voiceCacheWrap.downloadStatus)
            let status = Int(model.db_voiceCacheWrap.downloadStatus)
            //: if status == DownloadTaskStatus.finish.rawValue {
            if status == TaskExpressionConvertible.finish.rawValue {
                //: model.isPlayingStatus = 1
                model.isPlayingStatus = 1
                //: starPlayVoiceMsg(filePath: taskModel.unZipFilePath, msgID: model.db_voiceCacheWrap.msgId)
                textId(filePath: taskModel.unZipFilePath, msgID: model.db_voiceCacheWrap.msgId)

                //: } else if status == DownloadTaskStatus.error.rawValue ||
            } else if status == TaskExpressionConvertible.error.rawValue ||
                //: status == DownloadTaskStatus.expired.rawValue ||
                status == TaskExpressionConvertible.expired.rawValue ||
                //: status == DownloadTaskStatus.cancel.rawValue {
                status == TaskExpressionConvertible.cancel.rawValue
            {
                //: playStatus = .Unknown
                playStatus = .Unknown
                //: model.isPlayingStatus = 2
                model.isPlayingStatus = 2
                //: model.activityShowStatus = 2
                model.activityShowStatus = 2
                //: if status == DownloadTaskStatus.expired.rawValue {
                if status == TaskExpressionConvertible.expired.rawValue {
                    //: self.showToast(status: .FileExpired)
                    self.fromPush(status: .FileExpired)
                    //: } else {
                } else {
                    //: self.showToast(status: .TaskError)
                    self.fromPush(status: .TaskError)
                }
            }
            //: } else {
        } else {
            //: let warp = FlushScaleMsgTable.db_getVoiceMsg(with: taskModel.taskId)
            let warp = FlushScaleMsgTable.sharedBlock(with: taskModel.taskId)
            //: let model = self.playItemDic[taskModel.taskId]
            let model = self.playItemDic[taskModel.taskId]
            //: if warp != nil {
            if warp != nil {
                //: model?.db_voiceCacheWrap = warp!
                model?.db_voiceCacheWrap = warp!
            }
        }
    }

    //: func showToast(status: AudioPlayingErrorStatus) {
    func fromPush(status: RequestHashable) {
        //: var toastStr = ""
        var toastStr = ""
        //: switch status {
        switch status {
        //: case .NotFileAtPath, .AudioPlayerNil:
        case .NotFileAtPath, .AudioPlayerNil:
            //: toastStr = "Play Error,File does not exist".localized
            toastStr = (String(str_iconName.prefix(6)) + "rror" + String(str_userValue.suffix(6)) + "does " + String(str_messageTitle.suffix(6)) + str_modelCornerTitle.lowercased()).localized
        //: break
        //: case .FileExpired:
        case .FileExpired:
            //: toastStr = "Play Error,File expired".localized
            toastStr = (String(str_actionValue.prefix(6)) + "rror,F" + String(str_identityName.prefix(6)) + "pired").localized
        //: break
        //: case .TaskError:
        case .TaskError:
            //: toastStr = "Play Error，Net error".localized
            toastStr = (String(str_reasonData.suffix(6)) + "rror，" + String(str_modeValue.suffix(5)) + "rror").localized
        //: break
        //: case .FirstMuteTip:
        case .FirstMuteTip:
            //: toastStr = "Currently in mute mode".localized
            toastStr = (String(str_makeValue.suffix(6)) + String(str_conversationContent.prefix(5)) + "n mut" + String(str_playValue.prefix(6))).localized
            //: break
        }

        //: if toastStr.isEmptyString == false {
        if toastStr.isEmptyString == false {
            //: self.func__showStatusBarErrorMsg(showMsg: toastStr)
            self.detailKey(showMsg: toastStr)
        }
        //: if status.rawValue < 100 {
        if status.rawValue < 100 {
            //: stopAudioPlayer()
            upwardlyPlayer()
        }
    }
}

//: extension TalkingVoiceMsgPlayManager {
extension EqualBottomManagerDelegate {
    //: func setMutedDetection() {
    func stateTing() {
        //: RBDMuteSwitch.shared.detectMuteSwitch()
        MuteReactiveCompatible.shared.scale()
        //: RBDMuteSwitch.shared.isMutedBlock = { [weak self] mute in
        MuteReactiveCompatible.shared.isMutedBlock = { [weak self] mute in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.isMute = mute
            self.isMute = mute
            //: if self.isMute {
            if self.isMute {
                //: self.showToast(status: .FirstMuteTip)
                self.fromPush(status: .FirstMuteTip)
            }
        }
    }
}
