
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_cellName:[UInt8] = [0x5e,0x59,0x5e,0x43,0x1f,0x54,0x58,0x53,0x52,0x45,0xd,0x1e,0x17,0x5f,0x56,0x44,0x17,0x59,0x58,0x43,0x17,0x55,0x52,0x52,0x59,0x17,0x5e,0x5a,0x47,0x5b,0x52,0x5a,0x52,0x59,0x43,0x52,0x53]

/*: "Reply" :*/
fileprivate let str_insideSucceedOnName:String = "Replymake view camera selected"

/*: "#F95151" :*/
fileprivate let str_labData:[Character] = ["#","F","9","5","1"]
fileprivate let str_customValue:String = "51"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PanoramicViewAllReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2023/5/30.
//

//: import UIKit
import UIKit

//: let TalkingMessageNotificationView_H = (StatusBarHeight+80.0)
let kLet_postName = (kLet_environmentContent + 80.0)
//: class TalkingMessageNotificationView: UIView {
class PanoramicViewAllReactiveCompatible: UIView {
    //: var startDismissBlock: ((_ model: TalkingConversationModel) -> Void)?
    var startDismissBlock: ((_ model: WithConversationModel) -> Void)? // 开始移除视图Block
    //: var finishDismissBlock: ((_ view: TalkingMessageNotificationView) -> Void)?
    var finishDismissBlock: ((_ view: PanoramicViewAllReactiveCompatible) -> Void)? // 完成移除视图Block
    //: private var currModel = TalkingConversationModel()
    private var currModel = WithConversationModel()

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        draftCopy()
        //: setupSubViewsConstraint()
        profile()
        //: bindInteraction()
        totalTo()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_cellName.map{$0^55}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var shadowView: UIView = {
    private lazy var shadowView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.layer.shadowColor = UIColor.black.withAlphaComponent(0.1).cgColor
        v.layer.shadowColor = UIColor.black.withAlphaComponent(0.1).cgColor
        //: v.layer.shadowOffset = .zero
        v.layer.shadowOffset = .zero
        //: v.layer.shadowOpacity = 1
        v.layer.shadowOpacity = 1
        //: v.layer.shadowRadius = 6
        v.layer.shadowRadius = 6
        //: v.layer.cornerRadius = 8
        v.layer.cornerRadius = 8
        //: return v
        return v
        //: }()
    }()

    //: private lazy var whiteBgView: UIView = {
    private lazy var whiteBgView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: v.layer.cornerRadius = 8
        v.layer.cornerRadius = 8
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var headImgView: UIImageView = {
    private lazy var headImgView: UIImageView = {
        //: let imageView = UIImageView()
        let imageView = UIImageView()
        //: imageView.layer.cornerRadius = 40/2
        imageView.layer.cornerRadius = 40 / 2
        //: imageView.layer.masksToBounds = true
        imageView.layer.masksToBounds = true
        //: imageView.contentMode = .scaleAspectFill
        imageView.contentMode = .scaleAspectFill
        //: return imageView
        return imageView
        //: }()
    }()

    //: private lazy var iconBorder: UIButton = {
    private lazy var iconBorder: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var nickNameLabel: UILabel = {
    private lazy var nickNameLabel: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 15)
        label.font = .conversationSize(type: .Medium, fontSize: 15)
        //: label.textColor = .appTitleColor()
        label.textColor = .ending()
        //: return label
        return label
        //: }()
    }()

    //: private lazy var msgShowLabel: UILabel = {
    private lazy var msgShowLabel: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 15)
        label.font = .conversationSize(type: .Regular, fontSize: 15)
        //: label.textColor = .appValueColor()
        label.textColor = .obtrudeUpon()
        //: return label
        return label
        //: }()
    }()

    //: private lazy var replyBtn: UIButton = {
    private lazy var replyBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.titleLabel?.font = .pingfangFont(type: .Medium, fontSize: 15)
        btn.titleLabel?.font = .conversationSize(type: .Medium, fontSize: 15)
        //: btn.setTitle("Reply".localized, for: .normal)
        btn.setTitle((String(str_insideSucceedOnName.prefix(5))).localized, for: .normal)
        //: btn.setTitleColor(UIColor(hex: "#F95151"), for: .normal)
        btn.setTitleColor(UIColor(hex: (String(str_labData) + str_customValue.capitalized)), for: .normal)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMessageNotificationView {
extension PanoramicViewAllReactiveCompatible {
    /// 展示视图，5s后自动移除
    //: func show(_ model: TalkingConversationModel?) {
    func upwards(_ model: WithConversationModel?) {
        //: guard let model = model else { return }
        guard let model = model else { return }
        //: currModel = model
        currModel = model
        //: refreshView()
        via()

        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: ListMacroDefine.getWindow().addSubview(self)
            ListMacroDefine.startLoad().addSubview(self)
            //: UIView.animate(withDuration: 0.5) {
            UIView.animate(withDuration: 0.5) {
                //: self.frame.origin.y = 0
                self.frame.origin.y = 0
                //: } completion: { _ in
            } completion: { _ in
                //: DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    //: self.dismiss(needAlpha: false)
                    self.tipOverBlindedConjunctivaImageColor(needAlpha: false)
                }
            }
        }
    }

    /// 移除视图
    //: func dismiss(needAlpha: Bool = true) {
    func tipOverBlindedConjunctivaImageColor(needAlpha: Bool = true) {
        //: if startDismissBlock != nil {
        if startDismissBlock != nil {
            //: self.startDismissBlock!(currModel)
            self.startDismissBlock!(currModel)
        }

        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: UIView.animate(withDuration: 0.5) {
            UIView.animate(withDuration: 0.5) {
                //: if needAlpha {
                if needAlpha {
                    //: self.alpha = 0
                    self.alpha = 0
                    //: } else {
                } else {
                    //: self.frame.origin.y = -TalkingMessageNotificationView_H
                    self.frame.origin.y = -kLet_postName
                }
                //: } completion: { _ in
            } completion: { _ in
                //: if self.finishDismissBlock != nil {
                if self.finishDismissBlock != nil {
                    //: self.finishDismissBlock!(self)
                    self.finishDismissBlock!(self)
                }
                //: self.removeFromSuperview()
                self.removeFromSuperview()
            }
        }
    }

    /// 点击手势
    //: @objc private func tapGestureEvent() {
    @objc private func renegeEvent() {
        //: TalkingMessageNotificationManager.shared.clearData()
        ReadPerformanceThen.shared.gironde()
        // 在音视频界面，缩小通话窗口
        //: guard let currentVC = currentViewController() else { return }
        guard let currentVC = toController() else { return }
        //: if currentVC.isKind(of: TalkingVoiceChatViewController.self) {
        if currentVC.isKind(of: ReadCallerDelegate.self) {
            //: (currentVC as! TalkingVoiceChatViewController).interactionView_shouldDisplayMiniWindow()
            (currentVC as! ReadCallerDelegate).astatine()
            //: } else if currentVC.isKind(of: TalkingVideoChatViewController.self) {
        } else if currentVC.isKind(of: UpwardlyViewController.self) {
            //: (currentVC as! TalkingVideoChatViewController).interactionView_shouldDisplayMiniWindow()
            (currentVC as! UpwardlyViewController).componentWindow()
        }
        // 跳转聊天界面
        //: self.dismiss()
        self.tipOverBlindedConjunctivaImageColor()
        //: if currModel.chatType == .service {
        if currModel.chatType == .service {
            //: IndoorsPushManager.share.func__pushToWebVC(webViewType: .FAQ)
            IndoorsPushManager.share.pushType(webViewType: .FAQ)
            //: } else {
        } else {
            //: IndoorsPushManager.share.func__pushToPriveteChatVC(chatID: currModel.targetId)
            IndoorsPushManager.share.executeMention(chatID: currModel.targetId)
        }
    }

    /// 滑动手势
    //: @objc private func swipeGestureEvent(gesture: UISwipeGestureRecognizer) {
    @objc private func areaGesture(gesture: UISwipeGestureRecognizer) {
        //: if gesture.direction == .up {
        if gesture.direction == .up {
            //: TalkingMessageNotificationManager.shared.clearData()
            ReadPerformanceThen.shared.gironde()
            //: self.dismiss(needAlpha: false)
            self.tipOverBlindedConjunctivaImageColor(needAlpha: false)
        }
    }
}

// MARK: - Layout

//: extension TalkingMessageNotificationView {
extension PanoramicViewAllReactiveCompatible {
    /// 刷新视图
    //: func refreshView() {
    func via() {
        //: if let userInfo = currModel.gj_userInfo {
        if let userInfo = currModel.gj_userInfo {
            //: nickNameLabel.text = userInfo.nickname.count > 0 ? userInfo.nickname:currModel.userID
            nickNameLabel.text = userInfo.nickname.count > 0 ? userInfo.nickname : currModel.userID
            //: headImgView.setUrlImage(urlStr: userInfo.headPic, placeImg: UIImage.placeHolderImage(sex: userInfo.sex))
            headImgView.optionsFinish(urlStr: userInfo.headPic, placeImg: UIImage.sendPlant(sex: userInfo.sex))
            //: if !userInfo.headPicFrame.isEmptyString {
            if !userInfo.headPicFrame.isEmptyString {
                //: iconBorder.isHidden = false
                iconBorder.isHidden = false
                //: iconBorder.setHeadFrameUrlImage(urlStr: userInfo.headPicFrame)
                iconBorder.dateData(urlStr: userInfo.headPicFrame)
                //: } else {
            } else {
                //: iconBorder.isHidden = true
                iconBorder.isHidden = true
            }
            //: } else {
        } else {
            //: nickNameLabel.text = currModel.userID
            nickNameLabel.text = currModel.userID
            //: headImgView.image = UIImage.placeSquareBigImgBanner()
            headImgView.image = UIImage.themeMapBanner()
            //: iconBorder.isHidden = true
            iconBorder.isHidden = true
        }

        //: msgShowLabel.attributedText = TalkingChatListTableCell.handleShowC2CDetailTextOfMessage(model: currModel)
        msgShowLabel.attributedText = ColorScaleView.onModel(model: currModel)
    }

    /// 添加视图
    //: private func setupSubviews() {
    private func draftCopy() {
        //: self.frame = CGRect(x: 0, y: -TalkingMessageNotificationView_H, width: ScreenWidth, height: TalkingMessageNotificationView_H)
        self.frame = CGRect(x: 0, y: -kLet_postName, width: kLet_scaleName, height: kLet_postName)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear

        //: self.addSubview(shadowView)
        self.addSubview(shadowView)
        //: shadowView.addSubview(whiteBgView)
        shadowView.addSubview(whiteBgView)
        //: whiteBgView.addSubview(replyBtn)
        whiteBgView.addSubview(replyBtn)
        //: whiteBgView.addSubview(headImgView)
        whiteBgView.addSubview(headImgView)
        //: whiteBgView.addSubview(iconBorder)
        whiteBgView.addSubview(iconBorder)
        //: whiteBgView.addSubview(nickNameLabel)
        whiteBgView.addSubview(nickNameLabel)
        //: whiteBgView.addSubview(msgShowLabel)
        whiteBgView.addSubview(msgShowLabel)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func profile() {
        //: shadowView.snp.makeConstraints { make in
        shadowView.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight+10)
            make.top.equalTo(kLet_environmentContent + 10)
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.height.equalTo(60)
            make.height.equalTo(60)
        }
        //: whiteBgView.snp.makeConstraints { make in
        whiteBgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: replyBtn.snp.makeConstraints { make in
        replyBtn.snp.makeConstraints { make in
            //: make.top.trailing.bottom.equalToSuperview()
            make.top.trailing.bottom.equalToSuperview()
            //: make.width.equalTo(70)
            make.width.equalTo(70)
        }
        //: headImgView.snp.makeConstraints { make in
        headImgView.snp.makeConstraints { make in
            //: make.leading.top.equalTo(10)
            make.leading.top.equalTo(10)
            //: make.width.height.equalTo(40)
            make.width.height.equalTo(40)
        }
        //: iconBorder.snp.makeConstraints { make in
        iconBorder.snp.makeConstraints { make in
            //: make.center.equalTo(headImgView)
            make.center.equalTo(headImgView)
            //: make.width.height.equalTo(49.5)
            make.width.height.equalTo(49.5)
        }
        //: nickNameLabel.snp.makeConstraints { make in
        nickNameLabel.snp.makeConstraints { make in
            //: make.top.equalTo(headImgView)
            make.top.equalTo(headImgView)
            //: make.leading.equalTo(headImgView.snp.trailing).offset(10)
            make.leading.equalTo(headImgView.snp.trailing).offset(10)
            //: make.trailing.equalTo(replyBtn.snp.leading).offset(-4)
            make.trailing.equalTo(replyBtn.snp.leading).offset(-4)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: msgShowLabel.snp.makeConstraints { make in
        msgShowLabel.snp.makeConstraints { make in
            //: make.leading.trailing.height.equalTo(nickNameLabel)
            make.leading.trailing.height.equalTo(nickNameLabel)
            //: make.bottom.equalTo(headImgView)
            make.bottom.equalTo(headImgView)
        }
    }

    /// 绑定
    //: private func bindInteraction() {
    private func totalTo() {
        //: let tap = UITapGestureRecognizer(target: self, action: #selector(tapGestureEvent))
        let tap = UITapGestureRecognizer(target: self, action: #selector(renegeEvent))
        //: self.addGestureRecognizer(tap)
        self.addGestureRecognizer(tap)

        //: let swipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeGestureEvent))
        let swipe = UISwipeGestureRecognizer(target: self, action: #selector(areaGesture))
        //: swipe.direction = .up
        swipe.direction = .up
        //: self.addGestureRecognizer(swipe)
        self.addGestureRecognizer(swipe)
    }
}
