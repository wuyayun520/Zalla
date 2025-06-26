
//: Declare String Begin

/*: "call_bgm" :*/
fileprivate let str_sourceText:[Character] = ["c","a","l","l","_"]
fileprivate let str_emptyData:[Character] = ["b","g","m"]

/*: "call_response_bgm" :*/
fileprivate let str_makeContent:String = "image let by containercall_"
fileprivate let str_frameValueName:[Character] = ["r","e","s"]
fileprivate let str_featureValue:String = "PONSE"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FlushPlayer.swift
//  MLProject
//
//  Created by Charlotte on 2023/12/18.
//

//: import TXLiteAVSDK_Professional
import TXLiteAVSDK_Professional
//: import UIKit
import UIKit

/// 电话主叫/被叫时还未接通时的循环音效
//: enum CallBGMPlayerType: Int {
enum AutomaticallyColumnConvertible: Int {
    //: case Call
    case Call /// 音视频拨打音乐
    //: case Response
    case Response /// 音视频接听音乐
}

//: class TalkingCallBGMPlayer: NSObject {
class FlushPlayer: NSObject {
    //: var type = CallBGMPlayerType.Call
    var type = AutomaticallyColumnConvertible.Call
    //: var player = AVPlayer()
    var player = AVPlayer()
    //: var filePath = ""
    var filePath = ""
    //: var item: AVPlayerItem?
    var item: AVPlayerItem?

    //: class func callBGMPlayer(type: CallBGMPlayerType) -> TalkingCallBGMPlayer {
    class func dataForType(type: AutomaticallyColumnConvertible) -> FlushPlayer {
        //: let player = TalkingCallBGMPlayer()
        let player = FlushPlayer()
        //: player.type = type
        player.type = type
        //: player.getFilePath()
        player.strikeOut()
        //: return player
        return player
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: lazy var vodPlayer: TXVodPlayer = {
    lazy var vodPlayer: TXVodPlayer = {
        //: let player = TXVodPlayer()
        let player = TXVodPlayer()
        //: let config = TXVodPlayConfig()
        let config = TXVodPlayConfig()
        //: config.playerType = 0
        config.playerType = 0
        //: player.config = config
        player.config = config
        //: player.vodDelegate = self
        player.vodDelegate = self
        //: player.loop = true
        player.loop = true
        //: return player
        return player
        //: }()
    }()
}

//: extension TalkingCallBGMPlayer {
extension FlushPlayer {
    //: func play() {
    func clickPlay() {
        //: self.vodPlayer.startVodPlay(self.filePath)
        self.vodPlayer.startVodPlay(self.filePath)
    }

    //: private func enterBack() {
    private func searchLatBack() {
        //: try? AVAudioSession.sharedInstance().setActive(false)
        try? AVAudioSession.sharedInstance().setActive(false)
        //: self.player.pause()
        self.player.pause()
    }

    //: private func enterFore() {
    private func replyRequest() {
        //: try? AVAudioSession.sharedInstance().setActive(true)
        try? AVAudioSession.sharedInstance().setActive(true)
        //: self.player.play()
        self.player.play()
    }

    //: private func playAgain() {
    private func viewBorder() {
        //: self.player.seek(to: CMTime(value: 0, timescale: self.item?.duration.timescale ?? 0)) { [weak self] finish in
        self.player.seek(to: CMTime(value: 0, timescale: self.item?.duration.timescale ?? 0)) { [weak self] finish in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if finish {
            if finish {
                //: self.player.play()
                self.player.play()
            }
        }
    }

    //: private func playInterrupt(notify: Notification) {
    private func purview(notify: Notification) {
        //: let dic = notify.userInfo
        let dic = notify.userInfo
        //: let type = dic?[AVAudioSessionInterruptionTypeKey] as? AVAudioSession.InterruptionType
        let type = dic?[AVAudioSessionInterruptionTypeKey] as? AVAudioSession.InterruptionType
        //: if type == AVAudioSession.InterruptionType.began {
        if type == AVAudioSession.InterruptionType.began {
            //: self.enterBack()
            self.searchLatBack()
            //: } else if type == AVAudioSession.InterruptionType.ended {
        } else if type == AVAudioSession.InterruptionType.ended {
            //: self.playAgain()
            self.viewBorder()
        }
    }

    //: private func audioRouteChangeListenerCallback(notify: Notification) {
    private func tantamountSend(notify: Notification) {
        //: let interuptionDict = notify.userInfo
        let interuptionDict = notify.userInfo
        //: let routeChangeReason = interuptionDict?[AVAudioSessionRouteChangeReasonKey] as? UInt
        let routeChangeReason = interuptionDict?[AVAudioSessionRouteChangeReasonKey] as? UInt
        //: let cate = AVAudioSession.sharedInstance().category
        let cate = AVAudioSession.sharedInstance().category
        //: if cate == AVAudioSession.Category.playAndRecord {}
        if cate == AVAudioSession.Category.playAndRecord {}

        //: var index = -1
        var index = -1
        //: let inputs = AVAudioSession.sharedInstance().availableInputs
        let inputs = AVAudioSession.sharedInstance().availableInputs
        //: if inputs?.count ?? 0 > 0 {
        if inputs?.count ?? 0 > 0 {
            //: for (i, input) in inputs!.reversed().enumerated() {
            for (i, input) in inputs!.reversed().enumerated() {
                //: if input.portType == AVAudioSession.Port.headphones {
                if input.portType == AVAudioSession.Port.headphones {
                    //: index = i
                    index = i
                    //: } else if input.portType == AVAudioSession.Port.bluetoothLE {
                } else if input.portType == AVAudioSession.Port.bluetoothLE {
                    //: index = i
                    index = i
                    //: } else if input.portType == AVAudioSession.Port.bluetoothA2DP {
                } else if input.portType == AVAudioSession.Port.bluetoothA2DP {
                    //: index = i
                    index = i
                    //: } else if input.portType == AVAudioSession.Port.bluetoothHFP {
                } else if input.portType == AVAudioSession.Port.bluetoothHFP {
                    //: index = i
                    index = i
                }
            }
        }

        //: var targetOut: AVAudioSessionPortDescription?
        var targetOut: AVAudioSessionPortDescription?
        //: if index >= 0 {
        if index >= 0 {
            //: targetOut = inputs?[index]
            targetOut = inputs?[index]
        }
        //: if targetOut != nil {
        if targetOut != nil {
            //: let currentRoute = AVAudioSession.sharedInstance().currentRoute
            let currentRoute = AVAudioSession.sharedInstance().currentRoute
            //: var contain = false
            var contain = false
            //: for cinput in currentRoute.inputs {
            for cinput in currentRoute.inputs {
                //: if cinput == targetOut {
                if cinput == targetOut {
                    //: contain = true
                    contain = true
                    //: break
                    break
                }
            }
            //: if !contain {
            if !contain {
                //: try? AVAudioSession.sharedInstance().setPreferredInput(targetOut)
                try? AVAudioSession.sharedInstance().setPreferredInput(targetOut)
            }
        }

        //: switch routeChangeReason {
        switch routeChangeReason {
        //: case AVAudioSession.RouteChangeReason.newDeviceAvailable.rawValue:
        case AVAudioSession.RouteChangeReason.newDeviceAvailable.rawValue:
            //: if self.player.timeControlStatus == .paused {
            if self.player.timeControlStatus == .paused {
                //: self.player.play()
                self.player.play()
            }
        //: case AVAudioSession.RouteChangeReason.oldDeviceUnavailable.rawValue:
        case AVAudioSession.RouteChangeReason.oldDeviceUnavailable.rawValue:
            //: if self.player.timeControlStatus == .paused {
            if self.player.timeControlStatus == .paused {
                //: self.player.play()
                self.player.play()
            }
        //: default:
        default:
            //: if self.player.timeControlStatus == .paused {
            if self.player.timeControlStatus == .paused {
                //: self.player.play()
                self.player.play()
            }
        }
    }

    //: private func hasHeadSet() -> Bool {
    private func positionHead() -> Bool {
        //: let audioSession = AVAudioSession.sharedInstance()
        let audioSession = AVAudioSession.sharedInstance()
        //: let currentRoute = audioSession.currentRoute
        let currentRoute = audioSession.currentRoute
        //: for output in currentRoute.outputs {
        for output in currentRoute.outputs {
            //: let portType = output.portType
            let portType = output.portType
            //: if portType == .headphones || portType == .bluetoothA2DP || portType == .bluetoothLE {
            if portType == .headphones || portType == .bluetoothA2DP || portType == .bluetoothLE {
                //: return true
                return true
            }
        }
        //: return false
        return false
    }

    //: func stop() {
    func valueStop() {
        //: self.vodPlayer.stopPlay()
        self.vodPlayer.stopPlay()
        //: self.vodPlayer = TXVodPlayer()
        self.vodPlayer = TXVodPlayer()

        //: self.player.pause()
        self.player.pause()
        //: self.item = nil
        self.item = nil
        //: self.player = AVPlayer()
        self.player = AVPlayer()
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: private func getFilePath() {
    private func strikeOut() {
        //: var fileName = "call_bgm"
        var fileName = (String(str_sourceText) + String(str_emptyData))
        //: if self.type == .Response {
        if self.type == .Response {
            //: fileName = "call_response_bgm"
            fileName = (String(str_makeContent.suffix(5)) + String(str_frameValueName) + str_featureValue.lowercased() + "_bgm")
        }
        // 收到通话推送要播放mp3声音，不能放到.zip中
        //: let path = SVGAEffectTool.default.getMp3Path(name: fileName)
        let path = StreamReactiveCompatible.default.repossessType(name: fileName)
        //: self.filePath = path
        self.filePath = path
    }
}

//: extension TalkingCallBGMPlayer: TXVodPlayListener {
extension FlushPlayer: TXVodPlayListener {
    //: func onPlayEvent(_ player: TXVodPlayer!, event EvtID: Int32, withParam param: [AnyHashable: Any]!) {}
    func onPlayEvent(_: TXVodPlayer!, event _: Int32, withParam _: [AnyHashable: Any]!) {}

    //: func onNetStatus(_ player: TXVodPlayer!, withParam param: [AnyHashable: Any]!) {}
    func onNetStatus(_: TXVodPlayer!, withParam _: [AnyHashable: Any]!) {}

    //: func onPlayer(_ player: TXVodPlayer!, pictureInPictureStateDidChange pipState: TX_VOD_PLAYER_PIP_STATE, withParam param: [AnyHashable: Any]!) {}
    func onPlayer(_: TXVodPlayer!, pictureInPictureStateDidChange _: TX_VOD_PLAYER_PIP_STATE, withParam _: [AnyHashable: Any]!) {}

    //: func onPlayer(_ player: TXVodPlayer!, pictureInPictureErrorDidOccur errorType: TX_VOD_PLAYER_PIP_ERROR_TYPE, withParam param: [AnyHashable: Any]!) {}
    func onPlayer(_: TXVodPlayer!, pictureInPictureErrorDidOccur _: TX_VOD_PLAYER_PIP_ERROR_TYPE, withParam _: [AnyHashable: Any]!) {}

    //: func onPlayer(_ player: TXVodPlayer!, airPlayStateDidChange airPlayState: TX_VOD_PLAYER_AIRPLAY_STATE, withParam param: [AnyHashable: Any]!) {}
    func onPlayer(_: TXVodPlayer!, airPlayStateDidChange _: TX_VOD_PLAYER_AIRPLAY_STATE, withParam _: [AnyHashable: Any]!) {}

    //: func onPlayer(_ player: TXVodPlayer!, airPlayErrorDidOccur errorType: TX_VOD_PLAYER_AIRPLAY_ERROR_TYPE, withParam param: [AnyHashable: Any]!) {}
    func onPlayer(_: TXVodPlayer!, airPlayErrorDidOccur _: TX_VOD_PLAYER_AIRPLAY_ERROR_TYPE, withParam _: [AnyHashable: Any]!) {}
}
