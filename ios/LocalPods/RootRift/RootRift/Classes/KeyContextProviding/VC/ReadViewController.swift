
//: Declare String Begin

/*: "Personal information" :*/
fileprivate let str_backData:String = "in view collect make equalPerson"
fileprivate let str_upValue:[Character] = ["m","a","t","i","o","n"]

/*: "authPic" :*/
fileprivate let str_withTitle:[Character] = ["a","u","t","h","P","i","c"]

/*: "Face verification" :*/
fileprivate let str_makeData:[Character] = ["F","a","c","e"," ","v","e","r","i","f","i","c","a","t","i","o","n"]

/*: "icon_zc_userconver" :*/
fileprivate let str_frameData:String = "icon_zlet index game"
fileprivate let str_matchName:String = "c_usin else"

/*: "Verify now" :*/
fileprivate let str_namePartyTitle:String = "Verifyview title"
fileprivate let str_playerData:[Character] = [" ","n","o","w"]

/*: "#4A89F3" :*/
fileprivate let str_viewToContent:String = "#4A89F3self gift for"

/*: "Finish" :*/
fileprivate let str_leadingText:String = "aspect message top labFinish"

/*: "#8C7AFF" :*/
fileprivate let str_indexContent:String = "voice more normal if#8C7AFF"

/*: "Skip" :*/
fileprivate let str_sharedValue:String = "Skippic request return"

/*: "icon_successfylly" :*/
fileprivate let str_arrayText:[Character] = ["i","c","o","n","_","s","u","c","c","e"]
fileprivate let str_sizeModeName:String = "ssfylabellabely"

/*: "Submitted successfully" :*/
fileprivate let str_tapIconTitle:String = "Submtype to self info corner"
fileprivate let str_noValue:String = " suctitle between lab value jump"
fileprivate let str_textValue:String = "fvaluelly"

/*: "#2ED180" :*/
fileprivate let str_userTopContent:String = "let data pair transform manager#2ED180"

/*: _ :*/
fileprivate let str_storageName:[Character] = ["_"]

/*: "male" :*/
fileprivate let str_infoName:[UInt8] = [0xb2,0xa6,0xb1,0xaa]

fileprivate func statusStart(lab num: UInt8) -> UInt8 {
    let value = Int(num) - 69
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "female" :*/
fileprivate let str_actualTitle:[Character] = ["f","e","m","a","l","e"]

/*: "RegisterSuccess" :*/
fileprivate let str_controlName:String = "Regispath index"
fileprivate let str_effectTitle:String = "insideess"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ReadViewController.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/9/8.
//

//: import UIKit
import UIKit

//: class TalkingLoginEditAuthAndVideoVC: TalkingBaseViewController {
class ReadViewController: MusicViewController {
    //: private var VideoIconPath = ""
    private var VideoIconPath = ""
    //: private var videoPath = ""
    private var videoPath = ""
    //: var params = [String: Any]()
    var params = [String: Any]()

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: popGesture(isOpen: false)
        priseImage(isOpen: false)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Personal information".localized
        self.title = (String(str_backData.suffix(6)) + "al infor" + String(str_upValue)).localized
        //: self.view.backgroundColor = .white
        self.view.backgroundColor = .white
        //: self.setupSubviews()
        self.thrust()
        //: self.setupSubViewsConstraint()
        self.current()

        //: if !WatercourseThen.share.appConfigMode.skipInputInviteCode {
        if !WatercourseThen.share.appConfigMode.skipInputInviteCode {
            //: skipButton.isHidden = true
            skipButton.isHidden = true
//            skipTipLabel.isHidden = skipButton.isHidden
        }
        //: if WatercourseThen.share.userFillInfoMode.authImage != nil {
        if WatercourseThen.share.userFillInfoMode.authImage != nil {
            //: self.params["authPic"] = WatercourseThen.share.userFillInfoMode.authImage?.jpegData(compressionQuality: 1)
            self.params[(String(str_withTitle))] = WatercourseThen.share.userFillInfoMode.authImage?.jpegData(compressionQuality: 1)
            //: self.setConverView()
            self.erase()
            //: self.finishBtn.isEnabled = true
            self.finishBtn.isEnabled = true
        }
    }

    // MARK: - Lazy Load

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let contentView = UIView.init()
        let contentView = UIView()
        //: return contentView
        return contentView
        //: }()
    }()

    //: lazy var converLB: UILabel = {
    lazy var converLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = .appTitleColor()
        lb.textColor = .ending()
        //: lb.font = UIFont.pingfangFont(type: .Semibold, fontSize: 17)
        lb.font = UIFont.conversationSize(type: .Semibold, fontSize: 17)
        //: lb.text = "Face verification".localized
        lb.text = (String(str_makeData)).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var converImag: UIImageView = {
    lazy var converImag: UIImageView = {
        //: let imagv = UIImageView.init()
        let imagv = UIImageView()
        //: imagv.image = UIImage.withView(name: "icon_zc_userconver")
        imagv.image = UIImage.withView(name: (String(str_frameData.prefix(6)) + String(str_matchName.prefix(4)) + "erconver"))
        //: return imagv
        return imagv
        //: }()
    }()

    //: lazy var converBtn: UIButton = {
    lazy var converBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(converBtnClick), for: UIControl.Event.touchUpInside)
        btn.addTarget(self, action: #selector(propose), for: UIControl.Event.touchUpInside)
        //: var attributedString = NSMutableAttributedString(string: "Verify now".localized)
        var attributedString = NSMutableAttributedString(string: (String(str_namePartyTitle.prefix(6)) + String(str_playerData)).localized)
        //: attributedString.addAttributes([.underlineStyle: NSNumber(value: NSUnderlineStyle.single.rawValue), .foregroundColor: UIColor.init(hex: "#4A89F3")!, .font: UIFont.pingfangFont(type: .Semibold, fontSize: 15)], range: NSRange.init(location: 0, length: attributedString.length))
        attributedString.addAttributes([.underlineStyle: NSNumber(value: NSUnderlineStyle.single.rawValue), .foregroundColor: UIColor(hex: (String(str_viewToContent.prefix(7))))!, .font: UIFont.conversationSize(type: .Semibold, fontSize: 15)], range: NSRange(location: 0, length: attributedString.length))
        //: btn.setAttributedTitle(attributedString, for: UIControl.State.normal)
        btn.setAttributedTitle(attributedString, for: UIControl.State.normal)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var finishBtn: UIButton = {
    lazy var finishBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.conversationSize(type: .Medium, fontSize: 17)
        //: btn.setTitle("Finish".localized, for: .normal)
        btn.setTitle((String(str_leadingText.suffix(6))).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.distancePlay(colors: UIColor.memoryImageAwake(), size: CGSize(width: kLet_scaleName - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(finishBtnClick(isSkip:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(makeToSkip(isSkip:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var skipButton: UIButton = {
    lazy var skipButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitleColor(UIColor.init(hex: "#8C7AFF"), for: .normal)
        btn.setTitleColor(UIColor(hex: (String(str_indexContent.suffix(7)))), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.conversationSize(type: .Medium, fontSize: 17)
        //: let attributeString = NSMutableAttributedString(string: "Skip".localized)
        let attributeString = NSMutableAttributedString(string: (String(str_sharedValue.prefix(4))).localized)
        //: attributeString.addAttribute(.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: attributeString.length))
        attributeString.addAttribute(.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: attributeString.length))
        //: btn.setAttributedTitle(attributeString, for: .normal)
        btn.setAttributedTitle(attributeString, for: .normal)
        //: btn.addTarget(self, action: #selector(skipButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(viewClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
//    lazy var skipTipLabel: UILabel = {
//        let label = UILabel()
//        label.font = .pingfangFont(type: .Regular, fontSize: 12)
//        label.textColor = .touchColor()
//        label.textAlignment = .center
//        label.numberOfLines = 0
//        label.text = "You can feel free to skip this step.".localized
//        return label
//    }()
}

//: extension TalkingLoginEditAuthAndVideoVC {
extension ReadViewController {
    //: func setConverView() {
    func erase() {
        //: self.converImag.image = UIImage.withView(name: "icon_successfylly")
        self.converImag.image = UIImage.withView(name: (String(str_arrayText) + str_sizeModeName.replacingOccurrences(of: "label", with: "l")))
        //: let attributedString = NSMutableAttributedString(string: "Submitted successfully".localized)
        let attributedString = NSMutableAttributedString(string: (String(str_tapIconTitle.prefix(4)) + "itted" + String(str_noValue.prefix(4)) + "cess" + str_textValue.replacingOccurrences(of: "value", with: "u")).localized)
        //: attributedString.addAttributes([.foregroundColor: UIColor.init(hex: "#2ED180")!, .font: UIFont.pingfangFont(type: .Semibold, fontSize: 15)], range: NSRange.init(location: 0, length: attributedString.length))
        attributedString.addAttributes([.foregroundColor: UIColor(hex: (String(str_userTopContent.suffix(7))))!, .font: UIFont.conversationSize(type: .Semibold, fontSize: 15)], range: NSRange(location: 0, length: attributedString.length))
        //: self.converBtn.setAttributedTitle(attributedString, for: UIControl.State.normal)
        self.converBtn.setAttributedTitle(attributedString, for: UIControl.State.normal)
    }
}

/// event
//: extension TalkingLoginEditAuthAndVideoVC {
extension ReadViewController {
    /// 重写返回按钮事件
    //: override func naviPopback() {
    override func pastCover() {
        //: super.naviPopback()
        super.pastCover()
        // 埋点
        //: let eventID = "\(click_registration_information3_backBTN)_\(WatercourseThen.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(kLet_sendButtonValue)_\(WatercourseThen.share.userFillInfoMode.sex == PushDownStackScalarLiteral.male.rawValue ? String(bytes: str_infoName.map{statusStart(lab: $0)}, encoding: .utf8)! : (String(str_actualTitle)))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        kLet_depthIconValue.mightHaveBeenStubZapErrorUploadTo(eventID: eventID)
    }

    //: @objc func converBtnClick() {
    @objc func propose() {
        // 埋点
        //: let eventID = "\(click_registration_information3_verifyBTN)_\(WatercourseThen.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(kLet_connectData)_\(WatercourseThen.share.userFillInfoMode.sex == PushDownStackScalarLiteral.male.rawValue ? String(bytes: str_infoName.map{statusStart(lab: $0)}, encoding: .utf8)! : (String(str_actualTitle)))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        kLet_depthIconValue.mightHaveBeenStubZapErrorUploadTo(eventID: eventID)

        //: let vc = TalkingVerificationExampleVC()
        let vc = CellThen()
        //: vc.isRegisterPush = true
        vc.isRegisterPush = true
        //: self.navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
        //: vc.iconActionBlock = { [weak self] image in
        vc.iconActionBlock = { [weak self] image in
            //: guard let self = self else {
            guard let self = self else {
                //: return
                return
            }
            //: WatercourseThen.share.userFillInfoMode.authImage = image
            WatercourseThen.share.userFillInfoMode.authImage = image
            //: self.params["authPic"] = image.jpegData(compressionQuality: 1)
            self.params[(String(str_withTitle))] = image.jpegData(compressionQuality: 1)
            //: self.setConverView()
            self.erase()
            //: self.finishBtn.isEnabled = true
            self.finishBtn.isEnabled = true
        }
    }

    //: @objc private func skipButtonClick() {
    @objc private func viewClick() {
        // 埋点
        //: let eventID = "\(click_registration_information3_skipBTN)_\(WatercourseThen.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(kLet_voiceData)_\(WatercourseThen.share.userFillInfoMode.sex == PushDownStackScalarLiteral.male.rawValue ? String(bytes: str_infoName.map{statusStart(lab: $0)}, encoding: .utf8)! : (String(str_actualTitle)))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        kLet_depthIconValue.mightHaveBeenStubZapErrorUploadTo(eventID: eventID)

        //: params.removeValue(forKey: "authPic")
        params.removeValue(forKey: (String(str_withTitle)))
        //: finishBtnClick(isSkip: true)
        makeToSkip(isSkip: true)
    }

    //: @objc private func finishBtnClick(isSkip: Bool = false) {
    @objc private func makeToSkip(isSkip: Bool = false) {
        // 埋点
        //: if isSkip == false {
        if isSkip == false {
            //: let eventID = "\(click_registration_information3_finishBTN)_\(WatercourseThen.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
            let eventID = "\(kLet_noMessageData)_\(WatercourseThen.share.userFillInfoMode.sex == PushDownStackScalarLiteral.male.rawValue ? String(bytes: str_infoName.map{statusStart(lab: $0)}, encoding: .utf8)! : (String(str_actualTitle)))"
            //: uploadRecord.uploadRecordEvent(eventID: eventID)
            kLet_depthIconValue.mightHaveBeenStubZapErrorUploadTo(eventID: eventID)
        }

        //: view.endEditing(true)
        view.endEditing(true)
        //: ProgressHUD.show()
        AtAdView.sizeUp()
        //: TalkingLoginRequestTool.req_updateUserInfo(params: params) { succeed, result, errorModel in
        WhiteIndexReactiveCompatible.beginGame(params: params) { succeed, result, _ in
            //: ProgressHUD.dismiss()
            AtAdView.toAction()
            //: if succeed {
            if succeed {
                // 发送通知
                //: NotificationCenter.default.post(name: DID_LOGIN_SUCCESS_NOTIFICATION, object: nil, userInfo: result as! Dictionary<String, Any>)
                NotificationCenter.default.post(name: kLet_iconBottomTitle, object: nil, userInfo: result as! [String: Any])
                // 注册成功埋点
                //: TalkingAdjustManager.share.addEvent(key: "RegisterSuccess")
                NamesAdjustManager.share.appEffect(key: (String(str_controlName.prefix(5)) + "terSu" + str_effectTitle.replacingOccurrences(of: "inside", with: "cc")))
                //: FirebaseAnalyticsManager.share.logEvent(name: "RegisterSuccess")
                CellAnalyticsManager.share.sawLogLayer(name: (String(str_controlName.prefix(5)) + "terSu" + str_effectTitle.replacingOccurrences(of: "inside", with: "cc")))

                //: if WatercourseThen.share.loginUserMode.remindBindEmail == true {
                if WatercourseThen.share.loginUserMode.remindBindEmail == true { // 需要绑定邮箱
                    //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        //: IndoorsPushManager.share.func__pushToLockUserEmailVC(isShowBack: false)
                        IndoorsPushManager.share.modelProgress(isShowBack: false)
                    }
                }
            }
        }
    }
}

//: extension TalkingLoginEditAuthAndVideoVC {
extension ReadViewController {
    //: func setupSubviews() {
    func thrust() {
        //: self.view.addSubview(converLB)
        self.view.addSubview(converLB)
        //: self.view.addSubview(converImag)
        self.view.addSubview(converImag)
        //: self.view.addSubview(converBtn)
        self.view.addSubview(converBtn)
        //: self.view.addSubview(finishBtn)
        self.view.addSubview(finishBtn)
        //: self.view.addSubview(skipButton)
        self.view.addSubview(skipButton)
//        self.view.addSubview(skipTipLabel)
    }

    //: func setupSubViewsConstraint() {
    func current() {
        //: converLB.snp.makeConstraints { make in
        converLB.snp.makeConstraints { make in
            //: make.top.equalTo(34)
            make.top.equalTo(34)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
        }
        //: converImag.snp.makeConstraints { make in
        converImag.snp.makeConstraints { make in
            //: make.top.equalTo(converLB.snp.bottom).offset(20)
            make.top.equalTo(converLB.snp.bottom).offset(20)
            //: make.centerX.equalTo(self.view)
            make.centerX.equalTo(self.view)
            //: make.size.equalTo(125)
            make.size.equalTo(125)
        }
        //: converBtn.snp.makeConstraints { make in
        converBtn.snp.makeConstraints { make in
            //: make.top.equalTo(converImag.snp.bottom).offset(9)
            make.top.equalTo(converImag.snp.bottom).offset(9)
            //: make.centerX.equalTo(self.view)
            make.centerX.equalTo(self.view)
        }

        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.top.equalTo(converBtn.snp.bottom).offset(40)
            make.top.equalTo(converBtn.snp.bottom).offset(40)
            //: make.height.equalTo(51)
            make.height.equalTo(51)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
        }
        //: skipButton.snp.makeConstraints { make in
        skipButton.snp.makeConstraints { make in
            //: make.top.equalTo(finishBtn.snp.bottom).offset(20)
            make.top.equalTo(finishBtn.snp.bottom).offset(20)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 50, height: 18))
            make.size.equalTo(CGSize(width: 50, height: 18))
        }
//        skipTipLabel.snp.makeConstraints { make in
//            make.bottom.equalTo(skipButton.snp.top).offset(-15)
//            make.centerX.equalToSuperview()
//            make.width.equalTo(ScreenWidth-60)
//        }
    }
}
