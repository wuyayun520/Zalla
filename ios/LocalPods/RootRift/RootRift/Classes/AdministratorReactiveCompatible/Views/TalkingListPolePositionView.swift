
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_meTitle:[UInt8] = [0x5c,0x5b,0x5c,0x41,0x1d,0x56,0x5a,0x51,0x50,0x47,0xf,0x1c,0x15,0x5d,0x54,0x46,0x15,0x5b,0x5a,0x41,0x15,0x57,0x50,0x50,0x5b,0x15,0x5c,0x58,0x45,0x59,0x50,0x58,0x50,0x5b,0x41,0x50,0x51]

/*: "btn_video_minimize" :*/
fileprivate let str_downValue:[Character] = ["b","t","n","_","v","i","d","e","o","_","m"]
fileprivate let str_atLayerData:[Character] = ["i","n","i","m","i","z","e"]

/*: "btn_video_drop_nor" :*/
fileprivate let str_targetName:String = "index carrier giftbtn_vi"
fileprivate let str_titleValue:String = "normal pagerop_"
fileprivate let str_beData:String = "noimage"

/*: "btn_video_turn_nor" :*/
fileprivate let str_keyText:String = "btn_as let name"
fileprivate let str_ofContent:String = "_turview case title request let"
fileprivate let str_shareText:[Character] = ["n","_","n","o","r"]

/*: "btn_video_turn_pre" :*/
fileprivate let str_wantName:String = "btn_vtop style at case model"
fileprivate let str_appValue:String = "title"
fileprivate let str_modelCustomText:[Character] = ["n","_","p","r","e"]

/*: "Switch" :*/
fileprivate let str_colorMatchName:[Character] = ["S","w","i","t","c","h"]

/*: "btn_video_start_nor" :*/
fileprivate let str_effectValue:String = "to push to varbtn_vid"
fileprivate let str_currentResistanceData:String = "eo_stplayer manager share"

/*: "btn_video_start_pre" :*/
fileprivate let str_giftName:[Character] = ["b","t","n","_","v","i","d","e","o","_","s","t","a"]
fileprivate let str_valueContent:String = "rt_premanager size click"

/*: "Camera On" :*/
fileprivate let str_modelValue:[Character] = ["C","a","m","e","r","a"]
fileprivate let str_appName:[Character] = [" ","O","n"]

/*: "00:00" :*/
fileprivate let str_dateData:String = "share:share"

/*: "Camera must be on" :*/
fileprivate let str_sendName:[Character] = ["C","a","m","e","r","a"]
fileprivate let str_titleData:String = " mustsucceed session video report"

/*: "Camera Off" :*/
fileprivate let str_blockData:String = "Camerpress add render end return"
fileprivate let str_upData:String = "a Offlet app height label"

/*: "%02i:%02i" :*/
fileprivate let str_tapValue:[Character] = ["%","0","2","i",":"]
fileprivate let str_allText:String = "var message%02i"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TalkingListPolePositionView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/6.
//

//: import UIKit
import UIKit

//: class TalkingVideoInitivCallView: UIView {
class TalkingListPolePositionView: UIView {
    //: weak var delegate: Talking1v1VideoInteractionViewDelegate?
    weak var delegate: MagnitudeeractionViewDelegate?
    //: private var chatModel = TalkingVideoChatModel()
    private var chatModel = PublishChatModel() // 引用类型，整个视频通话共用同一个model
    //: var durationTime = 0.0
    var durationTime = 0.0 // 视频时长
    //: private var countTimer: Timer?
    private var countTimer: Timer? // 通话时间定时器

    //: init(frame: CGRect, chatModel: TalkingVideoChatModel?) {
    init(frame: CGRect, chatModel: PublishChatModel?) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        toSetup()
        //: setupSubViewsConstraint()
        systemOfRules()
        //: if chatModel != nil {
        if chatModel != nil {
            //: self.chatModel = chatModel!
            self.chatModel = chatModel!
        }
        //: showViewsViaStage()
        stopDoing()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_meTitle.map{$0^53}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: destroryTimer()
        itemImage()
        //: invalidateIdleTimer()
        idleTimerInvalidate()
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    // 点击展示/隐藏交互按钮
    //: private lazy var touchHidenBtn: UIButton = {
    private lazy var touchHidenBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(changeInteractionShowState), for: .touchUpInside)
        btn.addTarget(self, action: #selector(become), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    // 最小化按钮
    //: private lazy var minimizeBtn: UIButton = {
    private lazy var minimizeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.withView(name: "btn_video_minimize"), for: .normal)
        btn.setImage(UIImage.withView(name: (String(str_downValue) + String(str_atLayerData))), for: .normal)
        //: btn.addTarget(self, action: #selector(minimizeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(fit), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    // 挂断/取消 按钮
    //: private lazy var hangupBtn: UIButton = {
    private lazy var hangupBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.withView(name: "btn_video_drop_nor"), for: .normal)
        btn.setImage(UIImage.withView(name: (String(str_targetName.suffix(6)) + "deo_d" + String(str_titleValue.suffix(4)) + str_beData.replacingOccurrences(of: "image", with: "r"))), for: .normal)
        //: btn.addTarget(self, action: #selector(hangupButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(hangupClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    // 旋转摄像头按钮
    //: private lazy var rotateCameraBtn: UIButton = {
    private lazy var rotateCameraBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.withView(name: "btn_video_turn_nor"), for: .normal)
        btn.setImage(UIImage.withView(name: (String(str_keyText.prefix(4)) + "video" + String(str_ofContent.prefix(4)) + String(str_shareText))), for: .normal)
        //: btn.setImage(UIImage.withView(name: "btn_video_turn_pre"), for: .selected)
        btn.setImage(UIImage.withView(name: (String(str_wantName.prefix(5)) + "ideo_tu" + str_appValue.replacingOccurrences(of: "title", with: "r") + String(str_modelCustomText))), for: .selected)
        //: btn.addTarget(self, action: #selector(rotateCameraButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(stopDismiss), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var rotateCameraDesLab: UILabel = {
    private lazy var rotateCameraDesLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 15)
        lab.font = UIFont.rugular(fontSize: 15)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Switch".localized
        lab.text = (String(str_colorMatchName)).localized
        //: return lab
        return lab
        //: }()
    }()

    // 开启/关闭摄像头按钮
    //: private lazy var openCameraBtn: UIButton = {
    private lazy var openCameraBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.withView(name: "btn_video_start_nor"), for: .normal)
        btn.setImage(UIImage.withView(name: (String(str_effectValue.suffix(7)) + String(str_currentResistanceData.prefix(5)) + "art_nor")), for: .normal)
        //: btn.setImage(UIImage.withView(name: "btn_video_start_pre"), for: .selected)
        btn.setImage(UIImage.withView(name: (String(str_giftName) + String(str_valueContent.prefix(6)))), for: .selected)
        //: btn.addTarget(self, action: #selector(openCameraButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(listener), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var openCameraDesLab: UILabel = {
    private lazy var openCameraDesLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 15)
        lab.font = UIFont.rugular(fontSize: 15)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Camera On".localized
        lab.text = (String(str_modelValue) + String(str_appName)).localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var timeLab: UILabel = {
    private lazy var timeLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.showSize(fontSize: 18)
        lab.font = UIFont.showSize(fontSize: 18)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVideoInitivCallView {
extension TalkingListPolePositionView {
    /// 展示视图状态
    //: private func showViewsViaStage() {
    private func stopDoing() {
        //: minimizeBtn.isHidden = false
        minimizeBtn.isHidden = false
        //: hangupBtn.isHidden = false
        hangupBtn.isHidden = false
        //: rotateCameraBtn.isHidden = false
        rotateCameraBtn.isHidden = false
        //: rotateCameraDesLab.isHidden = false
        rotateCameraDesLab.isHidden = false
        //: openCameraBtn.isHidden = false
        openCameraBtn.isHidden = false
        //: openCameraDesLab.isHidden = false
        openCameraDesLab.isHidden = false
        //: touchHidenBtn.isEnabled = true
        touchHidenBtn.isEnabled = true
        //: timeLab.isHidden = false
        timeLab.isHidden = false
        //: self.timeLab.text = "00:00"
        self.timeLab.text = (str_dateData.replacingOccurrences(of: "share", with: "00"))
        //: startTalkCount()
        drogue()
        //: touchHiddenTimer()
        hideTimer()
        //: updateLayout()
        layoutSubModel()
    }

    /// 最小化按钮事件
    //: @objc private func minimizeButtonClick() {
    @objc private func fit() {
        //: self.delegate?.interactionView_shouldDisplayMiniWindow()
        self.delegate?.componentWindow()
    }

    /// 添加视频通话画面窗口
    /// - Parameter view: 视频画面窗口
    //: func addWindowView(view: UIView) {
    func openSearchView(view: UIView) {
        //: self.addSubview(view)
        self.addSubview(view)
    }

    /// 挂断按钮事件
    //: @objc private func hangupButtonClick() {
    @objc private func hangupClick() {
        //: uploadRecord.uploadRecordEvent(eventID: clickVideoCancelButton)
        kLet_depthIconValue.mightHaveBeenStubZapErrorUploadTo(eventID: kLet_failName)
        //: closeViewClick()
        deviceClick()
    }

    //: func closeViewClick() {
    func deviceClick() {
        //: self.destroryTimer()
        self.itemImage()
        //: self.delegate?.interactionView_shouldEndCall()
        self.delegate?.atCounteraction()
    }

    /// 接听按钮事件
    //: @objc private func acceptButtonClick() {
    @objc private func streetwiseClick() {
        //: self.delegate?.interactionView_shouldAcceptCall()
        self.delegate?.motion()
    }

    /// 关闭摄像头接听视频通话事件
    //: @objc private func acceptTurnOffCameraButtonClick() {
    @objc private func rush() {
        //: acceptButtonClick()
        streetwiseClick()
        //: self.openCameraBtn.isSelected = false
        self.openCameraBtn.isSelected = false
        //: openCameraButtonClick()
        listener()
    }

    /// 打开摄像头接听视频通话事件
    //: @objc private func acceptOpenCameraButtonClick() {
    @objc private func inviteClick() {
        //: acceptButtonClick()
        streetwiseClick()
        //: self.openCameraBtn.isSelected = true
        self.openCameraBtn.isSelected = true
        //: openCameraButtonClick()
        listener()
    }

    /// 旋转摄像头事件
    //: @objc private func rotateCameraButtonClick() {
    @objc private func stopDismiss() {
        //: if SenseTime_Use == false, self.openCameraBtn.isSelected == true {
        if kLet_errorDeviceAppValue == false, self.openCameraBtn.isSelected == true { // 腾讯美颜 && 摄像头关闭时
            //: self.func__showStatusBarErrorMsg(showMsg: "Camera must be on".localized)
            self.detailKey(showMsg: (String(str_sendName) + String(str_titleData.prefix(5)) + " be on").localized)
            //: return
            return
        }
        //: self.rotateCameraBtn.isSelected = !self.rotateCameraBtn.isSelected
        self.rotateCameraBtn.isSelected = !self.rotateCameraBtn.isSelected
        //: self.delegate?.interactionView_shouldChangeCamera(isFront: !self.rotateCameraBtn.isSelected)
        self.delegate?.system(isFront: !self.rotateCameraBtn.isSelected)
    }

    /// 是否禁用摄像头事件
    //: @objc private func openCameraButtonClick() {
    @objc private func listener() {
        //: self.openCameraBtn.isSelected = !self.openCameraBtn.isSelected
        self.openCameraBtn.isSelected = !self.openCameraBtn.isSelected
        //: self.openCameraDesLab.text = self.openCameraBtn.isSelected ? "Camera Off".localized:"Camera On".localized
        self.openCameraDesLab.text = self.openCameraBtn.isSelected ? (String(str_blockData.prefix(5)) + String(str_upData.prefix(5))).localized : (String(str_modelValue) + String(str_appName)).localized
        //: self.delegate?.interactionView_shouldForbiddenCamera(forbidden: self.openCameraBtn.isSelected)
        self.delegate?.equalAcross(forbidden: self.openCameraBtn.isSelected)
    }

    /// 点击展示/隐藏通话中的按钮
    //: @objc private func changeInteractionShowState() {
    @objc private func become() {
        //: let isHidden = !rotateCameraBtn.isHidden
        let isHidden = !rotateCameraBtn.isHidden
        //: minimizeBtn.isHidden = isHidden
        minimizeBtn.isHidden = isHidden
        //: rotateCameraBtn.isHidden = isHidden
        rotateCameraBtn.isHidden = isHidden
        //: rotateCameraDesLab.isHidden = isHidden
        rotateCameraDesLab.isHidden = isHidden
        //: openCameraBtn.isHidden = isHidden
        openCameraBtn.isHidden = isHidden
        //: openCameraDesLab.isHidden = isHidden
        openCameraDesLab.isHidden = isHidden

        //: hangupBtn.isHidden = isHidden
        hangupBtn.isHidden = isHidden
        //: timeLab.isHidden = isHidden
        timeLab.isHidden = isHidden

        //: if isHidden {
        if isHidden {
            //: invalidateIdleTimer()
            idleTimerInvalidate()
            //: } else {
        } else {
            //: touchHiddenTimer()
            hideTimer()
        }
    }

    //: private func destroryTimer() {
    private func itemImage() {
        //: if countTimer != nil {
        if countTimer != nil {
            //: countTimer?.invalidate()
            countTimer?.invalidate()
            //: countTimer = nil
            countTimer = nil
        }
    }
}

// MARK: - 通话计时器

//: extension TalkingVideoInitivCallView {
extension TalkingListPolePositionView {
    /// 开始通话计时
    //: private func startTalkCount() {
    private func drogue() {
        //: guard self.countTimer == nil else { return }
        guard self.countTimer == nil else { return }

        //: self.countTimer = Timer.scheduledTimer(withTimeInterval: 1, block: {[weak self] timer in
        self.countTimer = Timer.scheduledTimer(withTimeInterval: 1, block: { [weak self] _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if self.durationTime <= 0 {
            if self.durationTime <= 0 {
                //: self.closeViewClick()
                self.deviceClick()
            }
            //: self.changeTalkTime()
            self.holdForth()
            //: }, repeats: true)
        }, repeats: true)
    }

    // 展示通话时间
    //: private func changeTalkTime() {
    private func holdForth() {
        //: let duration = self.durationTime
        let duration = self.durationTime
        //: let min = floor(duration / 60)
        let min = floor(duration / 60)
        //: let sec = floor(duration.truncatingRemainder(dividingBy: 60))
        let sec = floor(duration.truncatingRemainder(dividingBy: 60))
        //: timeLab.text = String(format: "%02i:%02i", Int(min), Int(sec))
        timeLab.text = String(format: "%02i:%02i", Int(min), Int(sec))
        //: self.durationTime -= 1
        self.durationTime -= 1
    }
}

// MARK: - 【通话中】触屏隐藏交互按钮逻辑

//: extension TalkingVideoInitivCallView {
extension TalkingListPolePositionView {
    /// 触摸隐藏开启延时
    //: private func touchHiddenTimer() {
    private func hideTimer() {
        //: invalidateIdleTimer()
        idleTimerInvalidate()
        //: self.perform(#selector(hideInteractionView), afterDelay: 10)
        self.perform(#selector(numbereraction), afterDelay: 10)
    }

    /// 销毁延迟
    //: private func invalidateIdleTimer() {
    private func idleTimerInvalidate() {
        //: NSObject.cancelPreviousPerformRequests(withTarget: self, selector: #selector(hideInteractionView), object: nil)
        NSObject.cancelPreviousPerformRequests(withTarget: self, selector: #selector(numbereraction), object: nil)
    }

    /// 延时到时隐藏视图
    //: @objc private func hideInteractionView() {
    @objc private func numbereraction() {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: self.changeInteractionShowState()
            self.become()
        }
    }
}

// MARK: - Layout

//: extension TalkingVideoInitivCallView {
extension TalkingListPolePositionView {
    /// 添加视图
    //: private func setupSubviews() {
    private func toSetup() {
        //: self.addSubview(touchHidenBtn)
        self.addSubview(touchHidenBtn)
        //: self.addSubview(minimizeBtn)
        self.addSubview(minimizeBtn)
        //: self.addSubview(hangupBtn)
        self.addSubview(hangupBtn)
        //: self.addSubview(rotateCameraBtn)
        self.addSubview(rotateCameraBtn)
        //: self.addSubview(rotateCameraDesLab)
        self.addSubview(rotateCameraDesLab)
        //: self.addSubview(openCameraBtn)
        self.addSubview(openCameraBtn)
        //: self.addSubview(openCameraDesLab)
        self.addSubview(openCameraDesLab)
        //: self.addSubview(timeLab)
        self.addSubview(timeLab)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func systemOfRules() {
        //: touchHidenBtn.snp.makeConstraints { make in
        touchHidenBtn.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: minimizeBtn.snp.makeConstraints { make in
        minimizeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight+10)
            make.top.equalTo(kLet_environmentContent + 10)
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.width.height.equalTo(actualWidth(w: 42))
            make.width.height.equalTo(actualWidth(w: 42))
        }
        //: hangupBtn.snp.makeConstraints { make in
        hangupBtn.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-kDeviceSafeBottomHeight-53)
            make.bottom.equalTo(-kLet_partyKeyTitle - 53)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 70), height: actualWidth(w: 70)))
            make.size.equalTo(CGSize(width: actualWidth(w: 70), height: actualWidth(w: 70)))
        }
        //: rotateCameraBtn.snp.makeConstraints { make in
        rotateCameraBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(74)
            make.leading.equalTo(74)
            //: make.bottom.equalTo(hangupBtn.snp.top).offset(-73)
            make.bottom.equalTo(hangupBtn.snp.top).offset(-73)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 58), height: actualWidth(w: 58)))
            make.size.equalTo(CGSize(width: actualWidth(w: 58), height: actualWidth(w: 58)))
        }
        //: rotateCameraDesLab.snp.makeConstraints { make in
        rotateCameraDesLab.snp.makeConstraints { make in
            //: make.centerX.equalTo(rotateCameraBtn)
            make.centerX.equalTo(rotateCameraBtn)
            //: make.top.equalTo(rotateCameraBtn.snp.bottom).offset(8)
            make.top.equalTo(rotateCameraBtn.snp.bottom).offset(8)
        }
        //: openCameraBtn.snp.makeConstraints { make in
        openCameraBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-74)
            make.trailing.equalTo(-74)
            //: make.bottom.size.equalTo(rotateCameraBtn)
            make.bottom.size.equalTo(rotateCameraBtn)
        }
        //: openCameraDesLab.snp.makeConstraints { make in
        openCameraDesLab.snp.makeConstraints { make in
            //: make.centerX.equalTo(openCameraBtn)
            make.centerX.equalTo(openCameraBtn)
            //: make.top.equalTo(rotateCameraDesLab)
            make.top.equalTo(rotateCameraDesLab)
        }

        //: timeLab.snp.makeConstraints { make in
        timeLab.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(StatusBarHeight+20)
            make.top.equalTo(kLet_environmentContent + 20)
        }
    }

    /// 更新约束
    //: private func updateLayout() {
    private func layoutSubModel() {
        //: rotateCameraBtn.snp.updateConstraints { make in
        rotateCameraBtn.snp.updateConstraints { make in
            //: make.leading.equalTo(74)
            make.leading.equalTo(74)
        }
        //: openCameraBtn.snp.updateConstraints { make in
        openCameraBtn.snp.updateConstraints { make in
            //: make.trailing.equalTo(-74)
            make.trailing.equalTo(-74)
        }
        //: hangupBtn.snp.remakeConstraints { make in
        hangupBtn.snp.remakeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-kDeviceSafeBottomHeight-53)
            make.bottom.equalTo(-kLet_partyKeyTitle - 53)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 70), height: actualWidth(w: 70)))
            make.size.equalTo(CGSize(width: actualWidth(w: 70), height: actualWidth(w: 70)))
        }
    }
}
