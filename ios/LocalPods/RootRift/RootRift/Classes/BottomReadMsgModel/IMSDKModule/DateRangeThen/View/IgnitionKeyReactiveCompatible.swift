
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_indexText:[UInt8] = [0xbf,0xc4,0xbf,0xca,0x7e,0xb9,0xc5,0xba,0xbb,0xc8,0x90,0x7f,0x76,0xbe,0xb7,0xc9,0x76,0xc4,0xc5,0xca,0x76,0xb8,0xbb,0xbb,0xc4,0x76,0xbf,0xc3,0xc6,0xc2,0xbb,0xc3,0xbb,0xc4,0xca,0xbb,0xba]

fileprivate func periodicTable(gesture num: UInt8) -> UInt8 {
    let value = Int(num) - 86
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "#45003A" :*/
fileprivate let str_textValue:[Character] = ["#","4"]
fileprivate let str_showValue:[Character] = ["5","0","0","3","A"]

/*: "#2D0059" :*/
fileprivate let str_labelTitle:[Character] = ["#","2","D","0","0","5","9"]

/*: "party_close_btn" :*/
fileprivate let str_cellGestureWhiteValue:String = "lab selfparty_"
fileprivate let str_methodMName:String = "return image action at environment_btn"

/*: "btn_party_minimal_nor" :*/
fileprivate let str_containerText:[Character] = ["b","t","n","_","p","a","r","t","y","_","m"]
fileprivate let str_wrapName:[Character] = ["i","n","i","m","a","l","_","n","o","r"]

/*: "Minimal" :*/
fileprivate let str_labelValue:[Character] = ["M","i","n","i","m","a"]
fileprivate let str_randomUserText:[Character] = ["l"]

/*: "btn_party_quit_nor" :*/
fileprivate let str_giftViewText:String = "btn_paself content make"
fileprivate let str_scaleQuantityTitle:[Character] = ["r","t","y","_","q","u","i","t","_","n","o","r"]

/*: "Quit" :*/
fileprivate let str_toData:[Character] = ["Q","u","i","t"]

/*: "btn_party_close_nor" :*/
fileprivate let str_pathTableContent:String = "type languagebtn_pa"
fileprivate let str_matchValue:String = "post transaction equallose_nor"

/*: "Close" :*/
fileprivate let str_managerSignColorName:[Character] = ["C","l","o","s","e"]

/*: "Do you want to close the room? After closing the room, all users will be removed from the room." :*/
fileprivate let str_fileContent:[UInt8] = [0x43,0x68,0x27,0x7e,0x68,0x72,0x27,0x70,0x66,0x69,0x73,0x27,0x73,0x68,0x27,0x64,0x6b,0x68,0x74,0x62,0x27,0x73,0x6f,0x62,0x27,0x75,0x68,0x68,0x6a,0x38,0x27,0x46,0x61,0x73,0x62,0x75,0x27,0x64,0x6b,0x68,0x74,0x6e,0x69,0x60,0x27,0x73,0x6f,0x62,0x27,0x75,0x68,0x68,0x6a,0x2b,0x27,0x66,0x6b,0x6b,0x27,0x72,0x74,0x62,0x75,0x74,0x27,0x70,0x6e,0x6b,0x6b,0x27,0x65,0x62,0x27,0x75,0x62,0x6a,0x68,0x71,0x62,0x63,0x27,0x61,0x75,0x68,0x6a,0x27,0x73,0x6f,0x62,0x27,0x75,0x68,0x68,0x6a,0x29]

private func atIndex(image num: UInt8) -> UInt8 {
    return num ^ 7
}

/*: "Cancel" :*/
fileprivate let str_modelData:String = "head extension allow if errorCancel"

/*: "OK" :*/
fileprivate let str_giftDataIfValue:[Character] = ["O","K"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  IgnitionKeyReactiveCompatible.swift
//  RootRift
//
//  Created by DouXiu on 2024/9/23.
//

//: import UIKit
import UIKit

//: class TalkingVoiceRoomCloseView: UIView {
class IgnitionKeyReactiveCompatible: UIView {
    /// 是否是主播
    //: private let isAnchor = (String(TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid) == WatercourseThen.share.loginUid)
    private let isAnchor = (String(DateRangeThen.portion().partyModel.streamerInfo.uid) == WatercourseThen.share.loginUid)

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        tiptoe()
        //: setupSubViewsConstraint()
        listOn()
        //: addNotifications()
        driedMilk()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_indexText.map{periodicTable(gesture: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var gradientLayer: CAGradientLayer = {
    private lazy var gradientLayer: CAGradientLayer = {
        //: let layer = CAGradientLayer()
        let layer = CAGradientLayer()
        //: layer.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        layer.frame = CGRect(x: 0, y: 0, width: kLet_scaleName, height: kLet_environmentText)
        //: layer.startPoint = CGPoint(x: 0.5, y: 0)
        layer.startPoint = CGPoint(x: 0.5, y: 0)
        //: layer.endPoint = CGPoint(x: 0.5, y: 1)
        layer.endPoint = CGPoint(x: 0.5, y: 1)
        //: layer.colors = [
        layer.colors = [
            //: UIColor(hex: "#45003A")!.withAlphaComponent(0.9).cgColor,
            UIColor(hex: (String(str_textValue) + String(str_showValue)))!.withAlphaComponent(0.9).cgColor,
            //: UIColor(hex: "#2D0059")!.withAlphaComponent(0.9).cgColor
            UIColor(hex: (String(str_labelTitle)))!.withAlphaComponent(0.9).cgColor,
        ]
        //: layer.locations = [0, 1]
        layer.locations = [0, 1]
        //: return layer
        return layer
        //: }()
    }()

    //: private lazy var rightBtn: UIButton = {
    private lazy var rightBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.withView(name: "party_close_btn"), for: .normal)
        btn.setImage(UIImage.withView(name: (String(str_cellGestureWhiteValue.suffix(6)) + "close" + String(str_methodMName.suffix(4)))), for: .normal)
        //: btn.addTarget(self, action: #selector(dismiss), for: .touchUpInside)
        btn.addTarget(self, action: #selector(piece), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var miniBtn: UIButton = {
    private lazy var miniBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.withView(name: "btn_party_minimal_nor"), for: .normal)
        btn.setImage(UIImage.withView(name: (String(str_containerText) + String(str_wrapName))), for: .normal)
        //: btn.addTarget(self, action: #selector(miniButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(behindStatus), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var miniLab: UILabel = {
    private lazy var miniLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.showSize(fontSize: 17)
        lab.font = UIFont.showSize(fontSize: 17)
        //: lab.text = "Minimal".localized
        lab.text = (String(str_labelValue) + String(str_randomUserText)).localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var quitBtn: UIButton = {
    private lazy var quitBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.withView(name: "btn_party_quit_nor"), for: .normal)
        btn.setImage(UIImage.withView(name: (String(str_giftViewText.prefix(6)) + String(str_scaleQuantityTitle))), for: .normal)
        //: btn.addTarget(self, action: #selector(quitButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(same), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var quitLab: UILabel = {
    private lazy var quitLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.showSize(fontSize: 17)
        lab.font = UIFont.showSize(fontSize: 17)
        //: lab.text = "Quit".localized
        lab.text = (String(str_toData)).localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.withView(name: "btn_party_close_nor"), for: .normal)
        btn.setImage(UIImage.withView(name: (String(str_pathTableContent.suffix(6)) + "rty_c" + String(str_matchValue.suffix(8)))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(masterKey), for: .touchUpInside)
        //: btn.isHidden = !self.isAnchor
        btn.isHidden = !self.isAnchor
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeLab: UILabel = {
    private lazy var closeLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.showSize(fontSize: 17)
        lab.font = UIFont.showSize(fontSize: 17)
        //: lab.text = "Close".localized
        lab.text = (String(str_managerSignColorName)).localized
        //: lab.isHidden = !self.isAnchor
        lab.isHidden = !self.isAnchor
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVoiceRoomCloseView {
extension IgnitionKeyReactiveCompatible {
    /// 展示视图
    //: func show() {
    func clickAddShow() {
        //: guard self.superview == nil else { return }
        guard self.superview == nil else { return }
        //: ListMacroDefine.getWindow().addSubview(self)
        ListMacroDefine.startLoad().addSubview(self)
    }

    /// 移除视图
    //: @objc func dismiss() {
    @objc func piece() {
        //: guard self.superview != nil else { return }
        guard self.superview != nil else { return }
        //: self.removeFromSuperview()
        self.removeFromSuperview()
    }

    /// 最小化窗口点击事件
    //: @objc private func miniButtonClick() {
    @objc private func behindStatus() {
        //: self.dismiss()
        self.piece()
        //: TalkingVoiceRoomManager.shared().voiceRoom_mini()
        DateRangeThen.portion().toMini()
    }

    /// 退出语聊房按钮点击事件
    //: @objc private func quitButtonClick() {
    @objc private func same() {
        //: self.dismiss()
        self.piece()
        //: TalkingVoiceRoomManager.shared().voiceRoom_releaseAllResource()
        DateRangeThen.portion().scene()
    }

    /// 关闭语聊房按钮点击事件
    //: @objc private func closeButtonClick() {
    @objc private func masterKey() {
        //: let config = ShowAlertConfig()
        let config = ReloadAlertConfig()
        //: config.alignment = .center
        config.alignment = .center
        //: TalkingAlertShow.customAlert(message: "Do you want to close the room? After closing the room, all users will be removed from the room.".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, leftBlock: {}, rightBlock: {
        AlongThen.jumpTime(message: String(bytes: str_fileContent.map{atIndex(image: $0)}, encoding: .utf8)!.localized, leftBtnTitle: (String(str_modelData.suffix(6))).localized, rightBtnTitle: "OK".localized, leftBlock: {}, rightBlock: {
            //: TalkingVoiceRoomManager.shared().voiceRoom_releaseAllResource()
            DateRangeThen.portion().scene()
            //: TalkingVoiceRoomReqTool.req_voiceRoomClose(roomId: TalkingVoiceRoomManager.shared().partyModel.roomId)
            ViewReqTool.rap(roomId: DateRangeThen.portion().partyModel.roomId)
            //: self.dismiss()
            self.piece()

            //: }, config: config)
        }, config: config)
    }
}

// MARK: - Layout

//: extension TalkingVoiceRoomCloseView {
extension IgnitionKeyReactiveCompatible {
    /// 添加视图
    //: private func setupSubviews() {
    private func tiptoe() {
        //: self.layer.addSublayer(self.gradientLayer)
        self.layer.addSublayer(self.gradientLayer)
        //: self.addSubview(self.rightBtn)
        self.addSubview(self.rightBtn)
        //: self.addSubview(self.quitBtn)
        self.addSubview(self.quitBtn)
        //: self.addSubview(self.quitLab)
        self.addSubview(self.quitLab)
        //: self.addSubview(self.miniBtn)
        self.addSubview(self.miniBtn)
        //: self.addSubview(self.miniLab)
        self.addSubview(self.miniLab)
        //: self.addSubview(self.closeBtn)
        self.addSubview(self.closeBtn)
        //: self.addSubview(self.closeLab)
        self.addSubview(self.closeLab)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func listOn() {
        //: self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        self.frame = CGRect(x: 0, y: 0, width: kLet_scaleName, height: kLet_environmentText)

        //: self.rightBtn.snp.makeConstraints { make in
        self.rightBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight + actualWidth(w: 4))
            make.top.equalTo(kLet_environmentContent + actualWidth(w: 4))
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.width.height.equalTo(actualWidth(w: 32))
            make.width.height.equalTo(actualWidth(w: 32))
        }

        //: self.quitBtn.snp.makeConstraints { make in
        self.quitBtn.snp.makeConstraints { make in
            //: if self.isAnchor {
            if self.isAnchor {
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: } else {
            } else {
                //: make.top.equalTo((ScreenHeight + actualWidth(w: 116)) / 2)
                make.top.equalTo((kLet_environmentText + actualWidth(w: 116)) / 2)
            }
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(actualWidth(w: 75))
            make.width.height.equalTo(actualWidth(w: 75))
        }
        //: self.quitLab.snp.makeConstraints { make in
        self.quitLab.snp.makeConstraints { make in
            //: make.top.equalTo(self.quitBtn.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(self.quitBtn.snp.bottom).offset(actualWidth(w: 12))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: self.miniBtn.snp.makeConstraints { make in
        self.miniBtn.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(self.quitBtn)
            make.width.height.equalTo(self.quitBtn)
            //: make.bottom.equalTo(self.quitBtn.snp.top).offset(-actualWidth(w: 116))
            make.bottom.equalTo(self.quitBtn.snp.top).offset(-actualWidth(w: 116))
        }
        //: self.miniLab.snp.makeConstraints { make in
        self.miniLab.snp.makeConstraints { make in
            //: make.top.equalTo(self.miniBtn.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(self.miniBtn.snp.bottom).offset(actualWidth(w: 12))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: self.closeBtn.snp.makeConstraints { make in
        self.closeBtn.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(self.quitBtn)
            make.width.height.equalTo(self.quitBtn)
            //: make.top.equalTo(self.quitBtn.snp.bottom).offset(actualWidth(w: 116))
            make.top.equalTo(self.quitBtn.snp.bottom).offset(actualWidth(w: 116))
        }
        //: self.closeLab.snp.makeConstraints { make in
        self.closeLab.snp.makeConstraints { make in
            //: make.top.equalTo(self.closeBtn.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(self.closeBtn.snp.bottom).offset(actualWidth(w: 12))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }

    /// 添加通知
    //: private func addNotifications() {
    private func driedMilk() {
        // 语聊房状态变更
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(dismiss),
                                               selector: #selector(piece),
                                               //: name: PARTY_STATUS_CHANGE_NOTIFICATION,
                                               name: kLet_inviteName,
                                               //: object: nil)
                                               object: nil)
    }
}
