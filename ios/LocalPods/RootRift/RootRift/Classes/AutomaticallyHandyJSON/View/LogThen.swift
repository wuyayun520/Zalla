
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_loadManagerIndexName:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "btn_recording" :*/
fileprivate let str_imageValue:String = "view labbtn_"
fileprivate let str_cookieText:[Character] = ["r","d","i","n","g"]

/*: "btn_marching" :*/
fileprivate let str_colorName:[Character] = ["b","t","n","_","m","a","r","c","h","i","n","g"]

/*: "btn_upload" :*/
fileprivate let str_effectName:String = "make equalbtn_"

/*: "btn_audition" :*/
fileprivate let str_labelValue:[Character] = ["b","t","n","_","a","u","d","i","t","i"]
fileprivate let str_centerFinishValue:String = "following"

/*: "Click to listen" :*/
fileprivate let str_equalName:String = "from appClick to "
fileprivate let str_tapData:String = "liadvertisingten"

/*: "Click to start recording" :*/
fileprivate let str_addValue:String = "request with image style requestClick"
fileprivate let str_toData:String = "beauty tostart "
fileprivate let str_listenValue:String = "rdiequalg"

/*: "00:00" :*/
fileprivate let str_pleaseViewData:String = "00:00"

/*: "brn_cycle" :*/
fileprivate let str_shouldTitle:[Character] = ["b","r","n","_","c"]
fileprivate let str_tempValue:[Character] = ["y","c","l","e"]

/*: "Come back" :*/
fileprivate let str_finishText:[Character] = ["C"]
fileprivate let str_listKitValue:[Character] = ["o","m","e"," ","b","a","c","k"]

/*: "btn_submit" :*/
fileprivate let str_appValue:[Character] = ["b","t","n","_","s","u","b","m","i","t"]

/*: "Submit" :*/
fileprivate let str_giftData:String = "Submiself name class to send"
fileprivate let str_sharedName:String = "title"

/*: "Click to finish recording" :*/
fileprivate let str_serviceBackData:[Character] = ["C","l","i","c","k"]
fileprivate let str_kitFatalData:[Character] = [" ","t","o"," ","f","i","n","i","s","h"," ","r","e","c","o","r","d","i","n","g"]

/*: "Under time" :*/
fileprivate let str_equalText:String = "Undertitle to"
fileprivate let str_listValue:[Character] = [" ","t","i","m","e"]

/*: "Click to pause" :*/
fileprivate let str_failData:String = "size bubble gift model blockClick"
fileprivate let str_bottomValue:[Character] = ["e"]

/*: "Click to play" :*/
fileprivate let str_modelText:String = "pic fromClick "

/*: "filePath" :*/
fileprivate let str_contemporaryValue:[UInt8] = [0x22,0x25,0x28,0x21,0xc,0x1d,0x30,0x24]

fileprivate func frontUser(post num: UInt8) -> UInt8 {
    let value = Int(num) - 188
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "time" :*/
fileprivate let str_frameData:[UInt8] = [0x6c,0x71,0x75,0x7d]

/*: "Recording cancelled" :*/
fileprivate let str_normalData:[Character] = ["R","e","c","o","r","d","i","n","g"," ","c","a","n","c","e","l","l"]
fileprivate let str_tableData:[Character] = ["e","d"]

/*: "get json error" :*/
fileprivate let str_numberValue:[Character] = ["g","e","t"," ","j","s","o","n"]
fileprivate let str_toValue:String = " errortable view manager"

/*: "%02d:%02d" :*/
fileprivate let str_equalTitle:String = "%02"
fileprivate let str_messagePathTableName:String = "d:%02dlet self else"

/*: "btn_delete" :*/
fileprivate let str_playerText:[Character] = ["b","t","n","_","d","e","l","e","t","e"]

/*: "Add voice message" :*/
fileprivate let str_sizeValue:String = "title timeAdd "
fileprivate let str_cameraName:String = "smodele"

/*: "Record a voice for 3-10s" :*/
fileprivate let str_cellLabelLetName:[Character] = ["R","e","c","o","r","d"," ","a"," ","v","o","i","c","e"," ","f"]
fileprivate let str_imageEndingModelData:String = "or 3-10svar self extension"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LogThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/2/13.
//

//: import UIKit
import UIKit

//: enum RecordSoundStatus: Int {
enum DoingHashableRepresentation: Int {
    //: case Record = 100
    case Record = 100
    //: case Listen
    case Listen
    //: case Reset
    case Reset
    //: case Finish
    case Finish
}

//: enum RecordState: Int {
enum RegularWidthTotal: Int {
    //: case ReadyToRecord = 0
    case ReadyToRecord = 0 /// 准备录音
    //: case Recording
    case Recording /// 录音中
    //: case RecordComplete
    case RecordComplete /// 录音完成
    //: case RecordWaitReply
    case RecordWaitReply /// 录音审核中
    //: case RecordPassed
    case RecordPassed /// 录音审核通过
}

//: typealias AudioFileUpload = (_ info: Dictionary<String, Any>) -> Void
typealias AudioFileUpload = (_ info: [String: Any]) -> Void

//: class TalkingGreetRecordAudioView: UIView {
class LogThen: UIView {
    //: var state: RecordState? = .ReadyToRecord
    var state: RegularWidthTotal? = .ReadyToRecord
    //: var didEnterBack = false
    var didEnterBack = false
    //: var tempTime = 0
    var tempTime = 0 /// 录音时长
    //: var filePath = ""
    var filePath = ""
    //: var audioFileUpload: AudioFileUpload?
    var audioFileUpload: AudioFileUpload?
    //: var popView: TalkingPopView?
    var popView: MessageScalePopView?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.explain()
        //: self.setupSubViewsConstraint()
        self.mini()
        //: self.bindInteraction()
        self.counteraction()
        //: NotificationCenter.default.addObserver(self, selector: #selector(appDidEnterBack), name: UIApplication.didEnterBackgroundNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(sendBack), name: UIApplication.didEnterBackgroundNotification, object: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_loadManagerIndexName.reversed(), encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // 懒加载初始化

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: return view
        return view
        //: }()
    }()

    //: lazy var soundButton: UIButton = {
    lazy var soundButton: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.withView(name: "btn_recording"), for: .normal)
        btn.setImage(UIImage.withView(name: (String(str_imageValue.suffix(4)) + "reco" + String(str_cookieText))), for: .normal)
        //: btn.setImage(UIImage.withView(name: "btn_recording"), for: .highlighted)
        btn.setImage(UIImage.withView(name: (String(str_imageValue.suffix(4)) + "reco" + String(str_cookieText))), for: .highlighted)
        //: btn.setImage(UIImage.withView(name: "btn_marching"), for: .selected)
        btn.setImage(UIImage.withView(name: (String(str_colorName))), for: .selected)
        //: btn.tag = RecordSoundStatus.Record.rawValue
        btn.tag = DoingHashableRepresentation.Record.rawValue
        //: btn.addTarget(self, action: #selector(soundButtonAction(sender:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(titleButton(sender:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var listenButton: UIButton = {
    lazy var listenButton: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.withView(name: "btn_upload"), for: .normal)
        btn.setImage(UIImage.withView(name: (String(str_effectName.suffix(4)) + "upload")), for: .normal)
        //: btn.setImage(UIImage.withView(name: "btn_audition"), for: .selected)
        btn.setImage(UIImage.withView(name: (String(str_labelValue) + str_centerFinishValue.replacingOccurrences(of: "following", with: "on"))), for: .selected)
        //: btn.tag = RecordSoundStatus.Listen.rawValue
        btn.tag = DoingHashableRepresentation.Listen.rawValue
        //: btn.addTarget(self, action: #selector(soundButtonAction(sender:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(titleButton(sender:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var listenLabel: UILabel = {
    lazy var listenLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
        lb.font = UIFont.conversationSize(type: .Regular, fontSize: 15)
        //: lb.textColor = .touchColor()
        lb.textColor = .touchColor()
        //: lb.text = "Click to listen".localized
        lb.text = (String(str_equalName.suffix(9)) + str_tapData.replacingOccurrences(of: "advertising", with: "s")).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var soundLabel: UILabel = {
    lazy var soundLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 17)
        lb.font = UIFont.conversationSize(type: .Regular, fontSize: 17)
        //: lb.textColor = .touchColor()
        lb.textColor = .touchColor()
        //: lb.text = "Click to start recording".localized
        lb.text = (String(str_addValue.suffix(5)) + " to " + String(str_toData.suffix(6)) + "reco" + str_listenValue.replacingOccurrences(of: "equal", with: "n")).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var timeLabel: UILabel = {
    lazy var timeLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 20)
        lb.font = UIFont.conversationSize(type: .Medium, fontSize: 20)
        //: lb.textColor = .appTitleColor()
        lb.textColor = .ending()
        //: lb.text = "00:00"
        lb.text = (str_pleaseViewData.capitalized)
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var resetButton: UIButton = {
    lazy var resetButton: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.withView(name: "brn_cycle"), for: .normal)
        btn.setImage(UIImage.withView(name: (String(str_shouldTitle) + String(str_tempValue))), for: .normal)
        //: btn.tag = RecordSoundStatus.Reset.rawValue
        btn.tag = DoingHashableRepresentation.Reset.rawValue
        //: btn.addTarget(self, action: #selector(soundButtonAction(sender:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(titleButton(sender:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var resetLabel: UILabel = {
    lazy var resetLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
        lb.font = UIFont.conversationSize(type: .Regular, fontSize: 15)
        //: lb.textColor = .touchColor()
        lb.textColor = .touchColor()
        //: lb.text = "Come back".localized
        lb.text = (String(str_finishText) + String(str_listKitValue)).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var finishButton: UIButton = {
    lazy var finishButton: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.withView(name: "btn_submit"), for: .normal)
        btn.setImage(UIImage.withView(name: (String(str_appValue))), for: .normal)
        //: btn.tag = RecordSoundStatus.Finish.rawValue
        btn.tag = DoingHashableRepresentation.Finish.rawValue
        //: btn.addTarget(self, action: #selector(soundButtonAction(sender:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(titleButton(sender:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var finishLabel: UILabel = {
    lazy var finishLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
        lb.font = UIFont.conversationSize(type: .Regular, fontSize: 15)
        //: lb.textColor = .touchColor()
        lb.textColor = .touchColor()
        //: lb.text = "Submit".localized
        lb.text = (String(str_giftData.prefix(5)) + str_sharedName.replacingOccurrences(of: "title", with: "t")).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var listenPlayer: SVGAPlayer = {
    lazy var listenPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = true
        player.clearsAfterStop = true
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: return player
        return player
        //: }()
    }()

    //: lazy var leftRecordPlayer: SVGAPlayer = {
    lazy var leftRecordPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = true
        player.clearsAfterStop = true
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: return player
        return player
        //: }()
    }()

    //: lazy var rightRecordPlayer: SVGAPlayer = {
    lazy var rightRecordPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = true
        player.clearsAfterStop = true
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: return player
        return player
        //: }()
    }()

    //: lazy var audioTool: TalkingAudioTool? = {
    lazy var audioTool: AdMakeAudioTool? = {
        //: let audioT = TalkingAudioTool.shared
        let audioT = AdMakeAudioTool.shared
        //: audioT.delegate = self
        audioT.delegate = self
        //: return audioT
        return audioT
        //: }()
    }()
}

//: extension TalkingGreetRecordAudioView {
extension LogThen {
    //: func showUIViaState() {
    func savePlay() {
        //: switch self.state {
        switch self.state {
        //: case .ReadyToRecord:
        case .ReadyToRecord:
            //: self.listenButton.isHidden = true
            self.listenButton.isHidden = true
            //: self.listenLabel.isHidden = true
            self.listenLabel.isHidden = true
            //: self.resetButton.isHidden = true
            self.resetButton.isHidden = true
            //: self.resetLabel.isHidden = true
            self.resetLabel.isHidden = true
            //: self.finishButton.isHidden = true
            self.finishButton.isHidden = true
            //: self.finishLabel.isHidden = true
            self.finishLabel.isHidden = true
            //: self.soundButton.isHidden = false
            self.soundButton.isHidden = false
            //: self.soundLabel.isHidden = false
            self.soundLabel.isHidden = false

        //: break
        //: case .Recording:
        case .Recording:
            //: break
            break
        //: case .RecordComplete:
        case .RecordComplete:
            //: self.soundButton.isHidden = true
            self.soundButton.isHidden = true
            //: self.soundLabel.isHidden = true
            self.soundLabel.isHidden = true
            //: self.resetButton.isHidden = false
            self.resetButton.isHidden = false
            //: self.resetLabel.isHidden = false
            self.resetLabel.isHidden = false
            //: self.finishButton.isHidden = false
            self.finishButton.isHidden = false
            //: self.finishLabel.isHidden = false
            self.finishLabel.isHidden = false
            //: self.listenButton.isHidden = false
            self.listenButton.isHidden = false
            //: self.listenLabel.isHidden = false
            self.listenLabel.isHidden = false
        //: break
        //: case .RecordWaitReply, .RecordPassed:
        case .RecordWaitReply, .RecordPassed:
            //: self.listenButton.isHidden = false
            self.listenButton.isHidden = false
            //: self.listenLabel.isHidden = false
            self.listenLabel.isHidden = false
            //: self.resetButton.isHidden = false
            self.resetButton.isHidden = false
            //: self.resetLabel.isHidden = false
            self.resetLabel.isHidden = false
            //: self.finishButton.isHidden = true
            self.finishButton.isHidden = true
            //: self.finishLabel.isHidden = true
            self.finishLabel.isHidden = true
            //: self.soundButton.isHidden = true
            self.soundButton.isHidden = true
            //: self.soundLabel.isHidden = true
            self.soundLabel.isHidden = true
        //: break
        //: default: break
        default: break
        }
    }

    //: func releaseSoundView() {
    func duringView() {
        //: self.audioTool?.delegate = nil
        self.audioTool?.delegate = nil
        //: self.audioTool?.stopRecord()
        self.audioTool?.male()
        //: stopPlay()
        less()
        //: self.audioTool?.destroy()
        self.audioTool?.theExecuteDestroy()
        //: self.audioTool = nil
        self.audioTool = nil
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: func record() {
    func viewShow() {
        //: leftRecordSVGAParser()
        model()
        //: rightRecordSVGAParser()
        welt()
        //: self.audioTool?.BeginRecord()
        self.audioTool?.sink()
        //: stopPlay()
        less()
        //: self.soundLabel.text = "Click to finish recording".localized
        self.soundLabel.text = (String(str_serviceBackData) + String(str_kitFatalData)).localized
        //: self.state = .Recording
        self.state = .Recording
    }

    //: func stopRecord() {
    func changeColor() {
        //: self.soundButton.isSelected = false
        self.soundButton.isSelected = false
        //: self.leftRecordPlayer.stopAnimation()
        self.leftRecordPlayer.stopAnimation()
        //: self.rightRecordPlayer.stopAnimation()
        self.rightRecordPlayer.stopAnimation()
        //: self.audioTool?.stopRecord()
        self.audioTool?.male()

        //: if self.tempTime >= 3 {
        if self.tempTime >= 3 {
            //: self.state = .RecordComplete
            self.state = .RecordComplete
            //: showUIViaState()
            savePlay()
            //: self.listenLabel.text = "Click to listen".localized
            self.listenLabel.text = (String(str_equalName.suffix(9)) + str_tapData.replacingOccurrences(of: "advertising", with: "s")).localized
            //: }else {
        } else {
            //: self.soundLabel.text = "Click to start recording".localized
            self.soundLabel.text = (String(str_addValue.suffix(5)) + " to " + String(str_toData.suffix(6)) + "reco" + str_listenValue.replacingOccurrences(of: "equal", with: "n")).localized
            //: self.timeLabel.text = "00:00"
            self.timeLabel.text = (str_pleaseViewData.capitalized)
            //: self.state = .ReadyToRecord
            self.state = .ReadyToRecord
            //: self.func__showStatusBarErrorMsg(showMsg: "Under time".localized)
            self.detailKey(showMsg: (String(str_equalText.prefix(5)) + String(str_listValue)).localized)
        }
    }

    //: func play() {
    func cellImage() {
        //: if filePath.count>1 {
        if filePath.count > 1 {
            //: self.audioTool?.play()
            self.audioTool?.strokePlay()
            //: self.listenLabel.text = "Click to pause".localized
            self.listenLabel.text = (String(str_failData.suffix(5)) + " to paus" + String(str_bottomValue)).localized
            //: listenSVGAParser()
            parser()
            //: }else {
        } else {
            //: tryToPlayRemoteAudio()
            accept()
        }
    }

    //: func stopPlay() {
    func less() {
        //: self.listenPlayer.stopAnimation()
        self.listenPlayer.stopAnimation()
        //: self.audioTool?.stopPlay()
        self.audioTool?.on()
        //: var text = "Click to play".localized
        var text = (String(str_modelText.suffix(6)) + "to play").localized
        //: if self.state == .RecordComplete {
        if self.state == .RecordComplete {
            //: text = "Click to listen".localized
            text = (String(str_equalName.suffix(9)) + str_tapData.replacingOccurrences(of: "advertising", with: "s")).localized
        }
        //: self.listenLabel.text = text
        self.listenLabel.text = text
    }

    //: func reset() {
    func follow() {
        //: self.listenPlayer.stopAnimation()
        self.listenPlayer.stopAnimation()
        //: self.listenButton.isSelected = false
        self.listenButton.isSelected = false
        //: self.audioTool?.stopPlay()
        self.audioTool?.on()
        //: self.state = .ReadyToRecord
        self.state = .ReadyToRecord
        //: self.soundLabel.text = "Click to start recording".localized
        self.soundLabel.text = (String(str_addValue.suffix(5)) + " to " + String(str_toData.suffix(6)) + "reco" + str_listenValue.replacingOccurrences(of: "equal", with: "n")).localized
        //: self.timeLabel.text = "00:00"
        self.timeLabel.text = (str_pleaseViewData.capitalized)

        //: showUIViaState()
        savePlay()
    }

    //: func finish() {
    func cornerBySend() {
        //: self.listenPlayer.stopAnimation()
        self.listenPlayer.stopAnimation()
        //: self.listenButton.isSelected = false
        self.listenButton.isSelected = false
        //: self.listenPlayer.stopAnimation()
        self.listenPlayer.stopAnimation()
        //: self.audioTool?.stopPlay()
        self.audioTool?.on()
        //: self.listenLabel.text = "Click to listen".localized
        self.listenLabel.text = (String(str_equalName.suffix(9)) + str_tapData.replacingOccurrences(of: "advertising", with: "s")).localized
        //: if self.audioFileUpload != nil {
        if self.audioFileUpload != nil {
            //: let dict = ["filePath": self.filePath, "time": (self.tempTime).description]
            let dict = [String(bytes: str_contemporaryValue.map{frontUser(post: $0)}, encoding: .utf8)!: self.filePath, String(bytes: str_frameData.map{$0^24}, encoding: .utf8)!: (self.tempTime).description]
            //: self.audioFileUpload!(dict)
            self.audioFileUpload!(dict)
        }
    }

    //: func tryToPlayRemoteAudio() {
    func accept() {
        //: let reachability = try? Reachability()
        let reachability = try? Reachability()
        //: if reachability?.connection == .unavailable {
        if reachability?.connection == .unavailable {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            detailKey(showMsg: kLet_lengthFailTitle)
            //: self.listenButton.isSelected = false
            self.listenButton.isSelected = false
            //: return
            return
        }
        //: self.listenLabel.text = "Click to pause".localized
        self.listenLabel.text = (String(str_failData.suffix(5)) + " to paus" + String(str_bottomValue)).localized
        //: listenSVGAParser()
        parser()
    }

    //: @objc func soundButtonAction(sender: UIButton) {
    @objc func titleButton(sender: UIButton) {
        //: switch (sender.tag) {
        switch sender.tag {
        //: case RecordSoundStatus.Record.rawValue:
        case DoingHashableRepresentation.Record.rawValue:

            //: TalkingPermissionTool.func__openRecordServiceWithBlock(true) { isOpen in
            ColorPermissionTool.withDeadlineAt(true) { isOpen in
                //: guard isOpen == true else {
                guard isOpen == true else {
                    //: self.func__showStatusBarErrorMsg(showMsg: kMessage_permissions_error)
                    self.detailKey(showMsg: kLet_intimateText)
                    //: return
                    return
                }
                //: sender.isSelected = !sender.isSelected
                sender.isSelected = !sender.isSelected
                //: if (sender.isSelected) {
                if sender.isSelected {
                    //: guard !TalkingSocketManager.shared.isTalking else {
                    guard !NameSocketManager.shared.isTalking else {
                        //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
                        self.detailKey(showMsg: kLet_networkViewTitle)
                        //: sender.isSelected = false
                        sender.isSelected = false
                        //: return
                        return
                    }
                    //: self.record()
                    self.viewShow()
                    //: }else {
                } else {
                    //: self.stopRecord()
                    self.changeColor()
                }
            }
            //: break

        //: case RecordSoundStatus.Listen.rawValue:
        case DoingHashableRepresentation.Listen.rawValue:
            //: sender.isSelected = !sender.isSelected
            sender.isSelected = !sender.isSelected
            //: if sender.isSelected {
            if sender.isSelected {
                //: self.play()
                self.cellImage()
                //: }else {
            } else {
                //: self.stopPlay()
                self.less()
            }
                //: break

        //: case RecordSoundStatus.Reset.rawValue:
        case DoingHashableRepresentation.Reset.rawValue:
            //: reset()
            follow()
                //: break

        //: case RecordSoundStatus.Finish.rawValue:
        case DoingHashableRepresentation.Finish.rawValue:
            //: finish()
            cornerBySend()
        //: break
        //: default:
        default:
            //: break
            break
        }
    }

    //: @objc func closeButtonAction() {
    @objc func courseOfAction() {
        //: stopPlay()
        less()
        //: dismiss()
        ingredient()
    }

    //: @objc func appDidEnterBack() {
    @objc func sendBack() {
        //: if self.state != .Recording {
        if self.state != .Recording {
            //: return
            return
        }
        //: self.func__showStatusBarErrorMsg(showMsg: "Recording cancelled")
        self.detailKey(showMsg: (String(str_normalData) + String(str_tableData)))
        //: self.didEnterBack = true
        self.didEnterBack = true
        //: self.soundButton.isSelected = false
        self.soundButton.isSelected = false
        //: self.leftRecordPlayer.stopAnimation()
        self.leftRecordPlayer.stopAnimation()
        //: self.rightRecordPlayer.stopAnimation()
        self.rightRecordPlayer.stopAnimation()
        //: self.audioTool?.stopRecord()
        self.audioTool?.male()

        //: self.soundLabel.text = "Click to start recording".localized
        self.soundLabel.text = (String(str_addValue.suffix(5)) + " to " + String(str_toData.suffix(6)) + "reco" + str_listenValue.replacingOccurrences(of: "equal", with: "n")).localized
        //: self.timeLabel.text = "00:00"
        self.timeLabel.text = (str_pleaseViewData.capitalized)
        //: self.state = .ReadyToRecord
        self.state = .ReadyToRecord
        //: showUIViaState()
        savePlay()
    }

    //: func show() {
    func observer() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = MessageScalePopView(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.sharedLive(view: self)
        //: popView?.showInView(view: ListMacroDefine.getWindow())
        popView?.targetView(view: ListMacroDefine.startLoad())
    }

    //: func dismiss() {
    func ingredient() {
        //: releaseSoundView()
        duringView()
        //: popView?.dismissView()
        popView?.reject()
        //: popView = nil
        popView = nil
    }

    /// 试听动效
    //: func listenSVGAParser() {
    func parser() {
        //: do {
        do {
            //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Greet_Corrugated_Yellow)
            let url = StreamReactiveCompatible.default.picName(type: .Greet_Corrugated_Yellow)
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.listenPlayer.videoItem = videoItem
                self.listenPlayer.videoItem = videoItem
                //: self.listenPlayer.startAnimation()
                self.listenPlayer.startAnimation()
            }

            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(str_numberValue) + String(str_toValue.prefix(6))))
        }
    }

    /// 录音动效
    //: func leftRecordSVGAParser() {
    func model() {
        //: do {
        do {
            //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Chat_Record_Yellow)
            let url = StreamReactiveCompatible.default.picName(type: .Chat_Record_Yellow)
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.leftRecordPlayer.videoItem = videoItem
                self.leftRecordPlayer.videoItem = videoItem
                //: self.leftRecordPlayer.startAnimation()
                self.leftRecordPlayer.startAnimation()
            }

            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(str_numberValue) + String(str_toValue.prefix(6))))
        }
    }

    ///
    //: func rightRecordSVGAParser() {
    func welt() {
        //: do {
        do {
            //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Chat_Record_Yellow)
            let url = StreamReactiveCompatible.default.picName(type: .Chat_Record_Yellow)
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.rightRecordPlayer.videoItem = videoItem
                self.rightRecordPlayer.videoItem = videoItem
                //: self.rightRecordPlayer.startAnimation()
                self.rightRecordPlayer.startAnimation()
            }

            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(str_numberValue) + String(str_toValue.prefix(6))))
        }
    }
}

//: extension TalkingGreetRecordAudioView: TalkingAudioToolDelegate {
extension LogThen: ImageReactiveCompatible {
    /// 录音时间
    //: func func__recordTime(currentTime: Double) {
    func sharedTime(currentTime: Double) {
        //: if currentTime > 10 {
        if currentTime > 10 {
            //: stopRecord()
            changeColor()
        }
        //: self.tempTime = Int(round(currentTime)) % 60
        self.tempTime = Int(round(currentTime)) % 60
        //: let currentTimeLabel = String.init(format: "%02d:%02d", Int(round(currentTime))/60, Int(round(currentTime))%60)
        let currentTimeLabel = String(format: "%02d:%02d", Int(round(currentTime)) / 60, Int(round(currentTime)) % 60)
        //: if self.tempTime > 10 {
        if self.tempTime > 10 {
            //: return
            return
        }
        //: self.timeLabel.text = currentTimeLabel
        self.timeLabel.text = currentTimeLabel
    }

    /// 播放时间
    //: func func__playTime(currentTime: Double) {
    func decreaseParty(currentTime: Double) {
        //: let currentTimeLabel = String.init(format: "%02d:%02d", Int(round(currentTime))/60, Int(round(currentTime))%60)
        let currentTimeLabel = String(format: "%02d:%02d", Int(round(currentTime)) / 60, Int(round(currentTime)) % 60)
        //: self.timeLabel.text = currentTimeLabel
        self.timeLabel.text = currentTimeLabel
    }

    /// 录音完毕的回调
    //: func func__recordFinishWithFile(filePath: String) {
    func titlePathWithFileRecordRegisterFulfill(filePath: String) {
        //: if self.didEnterBack {
        if self.didEnterBack {
            //: self.didEnterBack = false
            self.didEnterBack = false
            //: return
            return
        }
        //: self.filePath = filePath
        self.filePath = filePath
        //: stopRecord()
        changeColor()
    }

    /// 播放完毕的回调
    //: func playerStatusChange(status: AudioPlayerStatus) {
    func changeStatus(status: BastardySignedNumeric) {
        //: self.timeLabel.text = ""
        self.timeLabel.text = ""
        //: if status == .PlayerFinish {
        if status == .PlayerFinish {
            //: self.audioTool?.finishPlay()
            self.audioTool?.destabilisation()
            //: self.listenButton.isSelected = false
            self.listenButton.isSelected = false
            //: self.listenPlayer.stopAnimation()
            self.listenPlayer.stopAnimation()
            //: self.listenLabel.text = self.state == .RecordComplete ? "Click to listen".localized : "Click to play".localized
            self.listenLabel.text = self.state == .RecordComplete ? (String(str_equalName.suffix(9)) + str_tapData.replacingOccurrences(of: "advertising", with: "s")).localized : (String(str_modelText.suffix(6)) + "to play").localized
            //: }else if status == .PlayerInterruption {
        } else if status == .PlayerInterruption {
            //: if self.filePath.count > 1 {
            if self.filePath.count > 1 {
                //: self.listenButton.isSelected = false
                self.listenButton.isSelected = false
                //: self.listenPlayer.stopAnimation()
                self.listenPlayer.stopAnimation()
                //: self.listenLabel.text = self.state == .RecordComplete ? "Click to listen".localized : "Click to play".localized
                self.listenLabel.text = self.state == .RecordComplete ? (String(str_equalName.suffix(9)) + str_tapData.replacingOccurrences(of: "advertising", with: "s")).localized : (String(str_modelText.suffix(6)) + "to play").localized
            }
        }
    }
}

//: extension TalkingGreetRecordAudioView {
extension LogThen {
    // 添加视图
    //: private func setupSubviews() {
    private func explain() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(soundButton)
        contentView.addSubview(soundButton)
        //: contentView.addSubview(listenButton)
        contentView.addSubview(listenButton)
        //: contentView.addSubview(soundLabel)
        contentView.addSubview(soundLabel)
        //: contentView.addSubview(listenLabel)
        contentView.addSubview(listenLabel)
        //: contentView.addSubview(timeLabel)
        contentView.addSubview(timeLabel)
        //: contentView.addSubview(resetButton)
        contentView.addSubview(resetButton)
        //: contentView.addSubview(resetLabel)
        contentView.addSubview(resetLabel)
        //: contentView.addSubview(finishButton)
        contentView.addSubview(finishButton)
        //: contentView.addSubview(finishLabel)
        contentView.addSubview(finishLabel)
        //: contentView.addSubview(listenPlayer)
        contentView.addSubview(listenPlayer)
        //: contentView.addSubview(leftRecordPlayer)
        contentView.addSubview(leftRecordPlayer)
        //: contentView.addSubview(rightRecordPlayer)
        contentView.addSubview(rightRecordPlayer)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func mini() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 275), height: actualWidth(w: 313)))
            make.size.equalTo(CGSize(width: actualWidth(w: 275), height: actualWidth(w: 313)))
        }
        //: let closeBtn = UIButton.init()
        let closeBtn = UIButton()
        //: closeBtn.setImage(UIImage.withView(name: "btn_delete"), for: .normal)
        closeBtn.setImage(UIImage.withView(name: (String(str_playerText))), for: .normal)
        //: closeBtn.addTarget(self, action: #selector(closeButtonAction), for: .touchUpInside)
        closeBtn.addTarget(self, action: #selector(courseOfAction), for: .touchUpInside)
        //: contentView.addSubview(closeBtn)
        contentView.addSubview(closeBtn)

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(11)
            make.top.equalTo(11)
            //: make.trailing.equalTo(-11)
            make.trailing.equalTo(-11)
            //: make.size.equalTo(CGSize.init(width: 18, height: 18))
            make.size.equalTo(CGSize(width: 18, height: 18))
        }

        //: let titleLb = UILabel.init()
        let titleLb = UILabel()
        //: titleLb.font = UIFont.pingfangFont(type: .Semibold, fontSize: 20)
        titleLb.font = UIFont.conversationSize(type: .Semibold, fontSize: 20)
        //: titleLb.textColor = .appTitleColor()
        titleLb.textColor = .ending()
        //: titleLb.text = "Add voice message".localized
        titleLb.text = (String(str_sizeValue.suffix(4)) + "voice mes" + str_cameraName.replacingOccurrences(of: "model", with: "ag")).localized
        //: contentView.addSubview(titleLb)
        contentView.addSubview(titleLb)
        //: titleLb.snp.makeConstraints { make in
        titleLb.snp.makeConstraints { make in
            //: make.top.equalTo(30)
            make.top.equalTo(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        //: let explainLb = UILabel.init()
        let explainLb = UILabel()
        //: explainLb.font = UIFont.pingfangFont(type: .Regular, fontSize: 17)
        explainLb.font = UIFont.conversationSize(type: .Regular, fontSize: 17)
        //: explainLb.textColor = .touchColor()
        explainLb.textColor = .touchColor()
        //: explainLb.text = "Record a voice for 3-10s".localized
        explainLb.text = (String(str_cellLabelLetName) + String(str_imageEndingModelData.prefix(8))).localized
        //: contentView.addSubview(explainLb)
        contentView.addSubview(explainLb)
        //: explainLb.snp.makeConstraints { make in
        explainLb.snp.makeConstraints { make in
            //: make.top.equalTo(titleLb.snp.bottom).offset(9)
            make.top.equalTo(titleLb.snp.bottom).offset(9)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: soundButton.snp.makeConstraints { make in
        soundButton.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-actualWidth(w: 66))
            make.bottom.equalTo(-actualWidth(w: 66))
            //: make.width.height.equalTo(actualWidth(w: 87))
            make.width.height.equalTo(actualWidth(w: 87))
        }
        //: listenButton.snp.makeConstraints { make in
        listenButton.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-actualWidth(w: 66))
            make.bottom.equalTo(-actualWidth(w: 66))
            //: make.width.height.equalTo(actualWidth(w: 87))
            make.width.height.equalTo(actualWidth(w: 87))
        }
        //: soundLabel.snp.makeConstraints { make in
        soundLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-actualWidth(w: 24))
            make.bottom.equalTo(-actualWidth(w: 24))
        }
        //: listenLabel.snp.makeConstraints { make in
        listenLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-actualWidth(w: 24))
            make.bottom.equalTo(-actualWidth(w: 24))
        }
        //: timeLabel.snp.makeConstraints { make in
        timeLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(explainLb.snp.bottom).offset(36)
            make.top.equalTo(explainLb.snp.bottom).offset(36)
        }
        //: resetButton.snp.makeConstraints { make in
        resetButton.snp.makeConstraints { make in
            //: make.centerY.equalTo(soundButton)
            make.centerY.equalTo(soundButton)
            //: make.width.height.equalTo(actualWidth(w: 49))
            make.width.height.equalTo(actualWidth(w: 49))
            //: make.trailing.equalTo(soundButton.snp.leading).offset(-27)
            make.trailing.equalTo(soundButton.snp.leading).offset(-27)
        }
        //: resetLabel.snp.makeConstraints { make in
        resetLabel.snp.makeConstraints { make in
            //: make.centerX.equalTo(resetButton)
            make.centerX.equalTo(resetButton)
            //: make.centerY.equalTo(soundLabel)
            make.centerY.equalTo(soundLabel)
        }
        //: finishButton.snp.makeConstraints { make in
        finishButton.snp.makeConstraints { make in
            //: make.centerY.equalTo(soundButton)
            make.centerY.equalTo(soundButton)
            //: make.width.height.equalTo(actualWidth(w: 49))
            make.width.height.equalTo(actualWidth(w: 49))
            //: make.leading.equalTo(soundButton.snp.trailing).offset(27)
            make.leading.equalTo(soundButton.snp.trailing).offset(27)
        }
        //: finishLabel.snp.makeConstraints { make in
        finishLabel.snp.makeConstraints { make in
            //: make.centerX.equalTo(finishButton)
            make.centerX.equalTo(finishButton)
            //: make.centerY.equalTo(soundLabel)
            make.centerY.equalTo(soundLabel)
        }
        //: listenPlayer.snp.makeConstraints { make in
        listenPlayer.snp.makeConstraints { make in
            //: make.center.equalTo(soundButton)
            make.center.equalTo(soundButton)
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 123), height: actualWidth(w: 123)))
            make.size.equalTo(CGSize(width: actualWidth(w: 123), height: actualWidth(w: 123)))
        }
        //: leftRecordPlayer.snp.makeConstraints { make in
        leftRecordPlayer.snp.makeConstraints { make in
            //: make.centerY.equalTo(soundButton)
            make.centerY.equalTo(soundButton)
            //: make.trailing.equalTo(soundButton.snp.leading).offset(-12)
            make.trailing.equalTo(soundButton.snp.leading).offset(-12)
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 66), height: actualWidth(w: 26)))
            make.size.equalTo(CGSize(width: actualWidth(w: 66), height: actualWidth(w: 26)))
        }
        //: rightRecordPlayer.snp.makeConstraints { make in
        rightRecordPlayer.snp.makeConstraints { make in
            //: make.centerY.equalTo(soundButton)
            make.centerY.equalTo(soundButton)
            //: make.leading.equalTo(soundButton.snp.trailing).offset(12)
            make.leading.equalTo(soundButton.snp.trailing).offset(12)
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 66), height: actualWidth(w: 26)))
            make.size.equalTo(CGSize(width: actualWidth(w: 66), height: actualWidth(w: 26)))
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func counteraction() {
        //: showUIViaState()
        savePlay()
    }
}
