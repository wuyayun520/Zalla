
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_topName:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "Enter code" :*/
fileprivate let str_clearTitle:String = "track true info tabEnter "

/*: "8075F5" :*/
fileprivate let str_voiceTitle:String = "size frame to8075F5"

/*: "F4F4F4" :*/
fileprivate let str_sendTitle:String = "levellevellevel"

/*: "Resent Code" :*/
fileprivate let str_galleryToTitle:String = "equal var model constraint viewResent "
fileprivate let str_addValue:[Character] = ["C","o","d","e"]

/*: "Next" :*/
fileprivate let str_showPlayerName:String = "transform back hidden for textNext"

/*: "Tips: If you can't receive the verification code, please check whether the message is in spam or not" :*/
fileprivate let str_totalValue:[UInt8] = [0x74,0x6f,0x6e,0x20,0x72,0x6f,0x20,0x6d,0x61,0x70,0x73,0x20,0x6e,0x69,0x20,0x73,0x69,0x20,0x65,0x67,0x61,0x73,0x73,0x65,0x6d,0x20,0x65,0x68,0x74,0x20,0x72,0x65,0x68,0x74,0x65,0x68,0x77,0x20,0x6b,0x63,0x65,0x68,0x63,0x20,0x65,0x73,0x61,0x65,0x6c,0x70,0x20,0x2c,0x65,0x64,0x6f,0x63,0x20,0x6e,0x6f,0x69,0x74,0x61,0x63,0x69,0x66,0x69,0x72,0x65,0x76,0x20,0x65,0x68,0x74,0x20,0x65,0x76,0x69,0x65,0x63,0x65,0x72,0x20,0x74,0x27,0x6e,0x61,0x63,0x20,0x75,0x6f,0x79,0x20,0x66,0x49,0x20,0x3a,0x73,0x70,0x69,0x54]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CommandSubView.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/25.
//

//: import UIKit
import UIKit

//: class TalkingLoginCodeView: UIView, UITextFieldDelegate {
class CommandSubView: UIView, UITextFieldDelegate {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: self.setupSubviews()
        self.asFileSubviews()
        //: self.setupSubViewsConstraint()
        self.confinement()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_topName.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: lazy var titleLabel: UILabel = {
    lazy var titleLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Semibold, fontSize: 17)
        label.font = .conversationSize(type: .Semibold, fontSize: 17)
        //: label.textColor = .appTitleColor()
        label.textColor = .ending()
        //: label.text = "Enter code".localized
        label.text = (String(str_clearTitle.suffix(6)) + "code").localized
        //: return label
        return label
        //: }()
    }()

    //: lazy var phoneLabel: UILabel = {
    lazy var phoneLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 22)
        label.font = .conversationSize(type: .Medium, fontSize: 22)
        //: label.textColor = .appTitleColor()
        label.textColor = .ending()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: return label
        return label
        //: }()
    }()

    //: lazy var codeInputView: TalkingCodeInputView = {
    lazy var codeInputView: CutAddView = {
        //: let codeView = TalkingCodeInputView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: 70), codeNumber: 6, labelTextColor: .white, mainColor: UIColor(hex: "8075F5")!, normalColor: UIColor(hex: "F4F4F4")!, margin: 12)
        let codeView = CutAddView(frame: CGRect(x: 0, y: 0, width: kLet_scaleName, height: 70), codeNumber: 6, labelTextColor: .white, mainColor: UIColor(hex: (String(str_voiceTitle.suffix(6))))!, normalColor: UIColor(hex: (str_sendTitle.replacingOccurrences(of: "level", with: "F4")))!, margin: 12)
        //: if LanguageManager.shared.direction == .rightToLeft {
        if FactoryShowThen.shared.direction == .rightToLeft {
            //: codeView.layer.transform =  CATransform3DMakeRotation(CGFloat(Double.pi), 0, 1, 0)
            codeView.layer.transform = CATransform3DMakeRotation(CGFloat(Double.pi), 0, 1, 0) // 镜像
        }
        //: return codeView
        return codeView
        //: }()
    }()

    //: lazy var reSendButton: UIButton = {
    lazy var reSendButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(.appThemeColor(), for: .normal)
        btn.setTitleColor(.smallFor(), for: .normal)
        //: btn.setTitle("Resent Code".localized, for: .normal)
        btn.setTitle((String(str_galleryToTitle.suffix(7)) + String(str_addValue)).localized, for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Semibold, fontSize: 17)
        btn.titleLabel?.font = .conversationSize(type: .Semibold, fontSize: 17)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var commitButton: UIButton = {
    lazy var commitButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 18)
        btn.titleLabel?.font = UIFont.conversationSize(type: .Regular, fontSize: 18)
        //: btn.setTitle("Next".localized, for: .normal)
        btn.setTitle((String(str_showPlayerName.suffix(4))).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.distancePlay(colors: UIColor.memoryImageAwake(), size: CGSize(width: kLet_scaleName - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var desLab: UILabel = {
    private lazy var desLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 12)
        label.font = .conversationSize(type: .Medium, fontSize: 12)
        //: label.textColor = .touchColor()
        label.textColor = .touchColor()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: let str = "Tips: If you can't receive the verification code, please check whether the message is in spam or not".localized
        let str = String(bytes: str_totalValue.reversed(), encoding: .utf8)!.localized
        //: let range = NSRange(location: 5, length: str.count-5)
        let range = NSRange(location: 5, length: str.count - 5)
        //: let attributedString = NSMutableAttributedString(string: str)
        let attributedString = NSMutableAttributedString(string: str)
        //: attributedString.addAttribute(.font, value: UIFont.pingfangFont(type: .Regular, fontSize: 12), range: range)
        attributedString.addAttribute(.font, value: UIFont.conversationSize(type: .Regular, fontSize: 12), range: range)
        //: label.attributedText = attributedString
        label.attributedText = attributedString
        //: return label
        return label
        //: }()
    }()
}

// MARK: - Layout

//: extension TalkingLoginCodeView {
extension CommandSubView {
    // 添加视图
    //: private func setupSubviews() {
    private func asFileSubviews() {
        //: addSubview(titleLabel)
        addSubview(titleLabel)
        //: addSubview(phoneLabel)
        addSubview(phoneLabel)
        //: addSubview(codeInputView)
        addSubview(codeInputView)
        //: addSubview(reSendButton)
        addSubview(reSendButton)
        //: addSubview(commitButton)
        addSubview(commitButton)
        //: addSubview(desLab)
        addSubview(desLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func confinement() {
        //: titleLabel.snp.makeConstraints { make in
        titleLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.top.equalToSuperview().offset(10)
            make.top.equalToSuperview().offset(10)
        }

        //: phoneLabel.snp.makeConstraints { make in
        phoneLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(titleLabel.snp.bottom).offset(44)
            make.top.equalTo(titleLabel.snp.bottom).offset(44)
        }

        //: codeInputView.snp.makeConstraints { make in
        codeInputView.snp.makeConstraints { make in
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.height.equalTo(70)
            make.height.equalTo(70)
            //: make.top.equalTo(phoneLabel.snp.bottom).offset(14)
            make.top.equalTo(phoneLabel.snp.bottom).offset(14)
        }
        //: commitButton.snp.makeConstraints { make in
        commitButton.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(ScreenWidth-60)
            make.width.equalTo(kLet_scaleName - 60)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(codeInputView.snp.bottom).offset(30)
            make.top.equalTo(codeInputView.snp.bottom).offset(30)
        }
        //: reSendButton.snp.makeConstraints { make in
        reSendButton.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(ScreenWidth-60)
            make.width.equalTo(kLet_scaleName - 60)
            //: make.height.equalTo(36)
            make.height.equalTo(36)
            //: make.top.equalTo(commitButton.snp.bottom).offset(10)
            make.top.equalTo(commitButton.snp.bottom).offset(10)
        }

        //: desLab.snp.makeConstraints { make in
        desLab.snp.makeConstraints { make in
            //: make.top.equalTo(reSendButton.snp.bottom).offset(30)
            make.top.equalTo(reSendButton.snp.bottom).offset(30)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
        }
    }
}
