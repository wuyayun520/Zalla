
//: Declare String Begin

/*: "Email Address" :*/
fileprivate let str_changeName:[Character] = ["E","m","a","i","l"," ","A","d","d","r","e"]
fileprivate let str_tableData:String = "mode"

/*: "Phone number" :*/
fileprivate let str_columnNowText:String = "curve indexPhone"

/*: "Enter the email code sent to" :*/
fileprivate let str_modelText:String = "Enter tbubble me image return for"
fileprivate let str_equalTopData:String = "manager"
fileprivate let str_centerName:String = " emailelse error"
fileprivate let str_finishText:String = "sent tokit make app"

/*: "Enter the phone code sent to" :*/
fileprivate let str_defineData:String = "Enteitem result model"
fileprivate let str_userValue:String = "model asset voice make modee ph"
fileprivate let str_plainText:[Character] = ["e"," ","s"]
fileprivate let str_blockTitle:String = "raw button modelent to"

/*: "(+ :*/
fileprivate let str_equalCollectionContent:[Character] = ["(","+"]

/*: ) :*/
fileprivate let str_jumpData:String = "label"

/*: "8075F5" :*/
fileprivate let str_recordQuantityName:String = "8075Fyou type leading"
fileprivate let str_titleContent:String = "5"

/*: "F4F4F4" :*/
fileprivate let str_responseInfoName:[Character] = ["F","4","F","4","F","4"]

/*: "Resend verification email" :*/
fileprivate let str_pointTitle:String = "background selfResend"
fileprivate let str_pathName:String = "ficliveti"
fileprivate let str_verticalData:[Character] = ["a","i","l"]

/*: "Tips: If you can't receive the verification code, please check whether the message is in spam or not" :*/
fileprivate let str_contentData:[UInt8] = [0x5e,0x63,0x7a,0x79,0x30,0x2a,0x43,0x6c,0x2a,0x73,0x65,0x7f,0x2a,0x69,0x6b,0x64,0x2d,0x7e,0x2a,0x78,0x6f,0x69,0x6f,0x63,0x7c,0x6f,0x2a,0x7e,0x62,0x6f,0x2a,0x7c,0x6f,0x78,0x63,0x6c,0x63,0x69,0x6b,0x7e,0x63,0x65,0x64,0x2a,0x69,0x65,0x6e,0x6f,0x26,0x2a,0x7a,0x66,0x6f,0x6b,0x79,0x6f,0x2a,0x69,0x62,0x6f,0x69,0x61,0x2a,0x7d,0x62,0x6f,0x7e,0x62,0x6f,0x78,0x2a,0x7e,0x62,0x6f,0x2a,0x67,0x6f,0x79,0x79,0x6b,0x6d,0x6f,0x2a,0x63,0x79,0x2a,0x63,0x64,0x2a,0x79,0x7a,0x6b,0x67,0x2a,0x65,0x78,0x2a,0x64,0x65,0x7e]

private func rawClickSection(attention num: UInt8) -> UInt8 {
    return num ^ 10
}

/*: "Bind Email succeed" :*/
fileprivate let str_whiteValue:String = "let pair height cellBind E"
fileprivate let str_colorTitle:String = " succeedmanager color section in"

/*: "Bind Mobile Phone succeed" :*/
fileprivate let str_selectedData:String = "touch corner valueBind M"
fileprivate let str_renderData:[Character] = ["P","h","o","n","e"," ","s","u","c","c","e","e","d"]

/*: "Resend verification email (%@s)" :*/
fileprivate let str_presentLabText:[UInt8] = [0x3,0x16,0x24,0x16,0x1f,0x15,0xd1,0x27,0x16,0x23,0x1a,0x17,0x1a,0x14,0x12,0x25,0x1a,0x20,0x1f,0xd1,0x16,0x1e,0x12,0x1a,0x1d,0xd1,0xd9,0xd6,0xf1,0x24,0xda]

fileprivate func viewTime(address num: UInt8) -> UInt8 {
    let value = Int(num) + 79
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EqualVc.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/1.
//

//: import UIKit
import UIKit

//: class TalkingLoginBindInputCodeVC: TalkingBaseViewController {
class EqualVc: MusicViewController {
    //: public var  phoneOrEmailStr: String = ""  // 邮箱或者Email
    public var phoneOrEmailStr: String = "" // 邮箱或者Email
    //: public var  areaCodeNum: String = ""
    public var areaCodeNum: String = ""
    //: public var  codeStr: String = ""
    public var codeStr: String = ""
    //: public var  viewType: TalkingBindVCType?
    public var viewType: IndexBindType?
    //: var isBack: Bool!
    var isBack: Bool!
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var timerDispose: Disposable?
    private var timerDispose: Disposable?

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.setupSubviews()
        self.placeQuantityeraction()
        //: self.setupSubViewsConstraint()
        self.pushPlayer()
        //: self.bindInteraction()
        self.request()
        //: func_starCodeTime()
        someTime()
    }

    //: override func viewDidDisappear(_ animated: Bool) {
    override func viewDidDisappear(_ animated: Bool) {
        //: super.viewDidDisappear(animated)
        super.viewDidDisappear(animated)
        //: func_endCodeTime()
        conversation()
    }

    //: deinit {
    deinit {
        //: timerDispose?.dispose()
        timerDispose?.dispose()
    }

    // MARK: - Lazy Load

    //: lazy var tipsLabel: UILabel = {
    lazy var tipsLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 17)
        label.font = .conversationSize(type: .Medium, fontSize: 17)
        //: label.textColor = .appTitleColor()
        label.textColor = .ending()
        //: if self.viewType == .BindEmail {
        if self.viewType == .BindEmail {
            //: label.text = "Email Address".localized
            label.text = (String(str_changeName) + str_tableData.replacingOccurrences(of: "mode", with: "ss")).localized
            //: } else {
        } else {
            //: label.text = "Phone number".localized
            label.text = (String(str_columnNowText.suffix(5)) + " number").localized
        }
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: return label
        return label
        //: }()
    }()

    //: lazy var titleLabel: UILabel = {
    lazy var titleLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 16)
        label.font = .conversationSize(type: .Regular, fontSize: 16)
        //: label.textColor = .appTitleColor()
        label.textColor = .ending()

        //: if self.viewType == .BindEmail {
        if self.viewType == .BindEmail {
            //: label.text = "Enter the email code sent to".localized
            label.text = (String(str_modelText.prefix(7)) + str_equalTopData.replacingOccurrences(of: "manager", with: "he") + String(str_centerName.prefix(6)) + " code " + String(str_finishText.prefix(7))).localized
            //: } else {
        } else {
            //: label.text = "Enter the phone code sent to".localized
            label.text = (String(str_defineData.prefix(4)) + "r th" + String(str_userValue.suffix(4)) + "one cod" + String(str_plainText) + String(str_blockTitle.suffix(6))).localized
        }
        //: return label
        return label
        //: }()
    }()

    //: lazy var inputLabel: UILabel = {
    lazy var inputLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 16)
        label.font = .conversationSize(type: .Medium, fontSize: 16)
        //: label.textColor = .appThemeColor()
        label.textColor = .smallFor()
        //: label.text = (self.viewType == .BindEmail ? "\(phoneOrEmailStr)" : "(+\(areaCodeNum))\(phoneOrEmailStr)")
        label.text = (self.viewType == .BindEmail ? "\(phoneOrEmailStr)" : "(+\(areaCodeNum))\(phoneOrEmailStr)")
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: return label
        return label
        //: }()
    }()

    //: lazy var codeInputView: TalkingCodeInputView = {
    lazy var codeInputView: CutAddView = {
        //: let codeView = TalkingCodeInputView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: 70), codeNumber: 6, labelTextColor: .white, mainColor: UIColor(hex: "8075F5")!, normalColor: UIColor(hex: "F4F4F4")!, margin: 12)
        let codeView = CutAddView(frame: CGRect(x: 0, y: 0, width: kLet_scaleName, height: 70), codeNumber: 6, labelTextColor: .white, mainColor: UIColor(hex: (String(str_recordQuantityName.prefix(5)) + str_titleContent.capitalized))!, normalColor: UIColor(hex: (String(str_responseInfoName)))!, margin: 12)
        //: if LanguageManager.shared.direction == .rightToLeft {
        if FactoryShowThen.shared.direction == .rightToLeft {
            //: codeView.layer.transform =  CATransform3DMakeRotation(CGFloat(Double.pi), 0, 1, 0)
            codeView.layer.transform = CATransform3DMakeRotation(CGFloat(Double.pi), 0, 1, 0) // 镜像
        }
        //: return codeView
        return codeView
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
        //: btn.setTitle("Resend verification email".localized, for: .normal)
        btn.setTitle((String(str_pointTitle.suffix(6)) + " veri" + str_pathName.replacingOccurrences(of: "live", with: "a") + "on em" + String(str_verticalData)).localized, for: .normal)
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
        let str = String(bytes: str_contentData.map{rawClickSection(attention: $0)}, encoding: .utf8)!.localized
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

// MARK: - Public Event

//: extension TalkingLoginBindInputCodeVC {
extension EqualVc {
    //: func func__bindEmailAction() {
    func reAction() {
        //: self.view.endEditing(true)
        self.view.endEditing(true)
        //: ProgressHUD.show(superView: view)
        AtAdView.linkLine(superView: view)
        //: if viewType == .BindEmail {
        if viewType == .BindEmail {
            //: TalkingLoginRequestTool.req_bindEmailCode(emailCode: codeStr) { succeed, result, errorModel in
            WhiteIndexReactiveCompatible.bindLabel(emailCode: codeStr) { succeed, _, _ in
                //: ProgressHUD.dismiss()
                AtAdView.toAction()
                //: if succeed {
                if succeed {
                    //: WatercourseThen.share.loginUserMode.email = self.phoneOrEmailStr
                    WatercourseThen.share.loginUserMode.email = self.phoneOrEmailStr
                    //: self.func__showStatusBarSuccessMsg(showMsg: "Bind Email succeed".localized)
                    self.sizeExecuteMsg(showMsg: (String(str_whiteValue.suffix(6)) + "mail" + String(str_colorTitle.prefix(8))).localized)
                    //: let count: Int = (self.navigationController?.viewControllers.count)!
                    let count: Int = (self.navigationController?.viewControllers.count)!
                    //: if count >= 3 {
                    if count >= 3 {
                        //: let count = count - 3
                        let count = count - 3
                        //: let vc = self.navigationController?.viewControllers[count]
                        let vc = self.navigationController?.viewControllers[count]
                        //: self.navigationController?.popToViewController(vc!, animated: true)
                        self.navigationController?.popToViewController(vc!, animated: true)
                    }
                    //: } else {
                } else {
                    //: self.codeInputView.func__resetCodeInputView()
                    self.codeInputView.contentBlock()
                    //: self.codeInputView.startEdit()
                    self.codeInputView.once()
                }
            }
            //: } else {
        } else {
            //: TalkingLoginRequestTool.req_MobileBind(phoneStr: self.phoneOrEmailStr, areaStr: areaCodeNum, vcode: self.codeStr) { [self]  succeed, result, errorModel in
            WhiteIndexReactiveCompatible.pan(phoneStr: self.phoneOrEmailStr, areaStr: areaCodeNum, vcode: self.codeStr) { [self] succeed, _, _ in
                //: ProgressHUD.dismiss()
                AtAdView.toAction()
                //: if !succeed {
                if !succeed {
                    //: self.codeInputView.startEdit()
                    self.codeInputView.once()
                    //: return
                    return
                }
                //: WatercourseThen.share.loginUserMode.mobile = self.phoneOrEmailStr
                WatercourseThen.share.loginUserMode.mobile = self.phoneOrEmailStr
                //: self.func__showStatusBarSuccessMsg(showMsg: "Bind Mobile Phone succeed".localized)
                self.sizeExecuteMsg(showMsg: (String(str_selectedData.suffix(6)) + "obile " + String(str_renderData)).localized)
                //: for index in 0..<(self.navigationController?.viewControllers.count)! {
                for index in 0 ..< (self.navigationController?.viewControllers.count)! {
                    //: if self.navigationController?.viewControllers[index] .isKind(of: TalkingSettingsUniversalVC.self) == true {
                    if self.navigationController?.viewControllers[index].isKind(of: PerformanceViewDelegate.self) == true {
                        //: let vc = (self.navigationController?.viewControllers[index] as? TalkingSettingsUniversalVC)!
                        let vc = (self.navigationController?.viewControllers[index] as? PerformanceViewDelegate)!
                        //: self.navigationController?.popToViewController(vc, animated: true)
                        self.navigationController?.popToViewController(vc, animated: true)
                        //: return
                        return
                    }
                }
            }
        }
    }

    //: func func__resendEmailCodeAction() {
    func exhibit() {
        //: self.view.endEditing(true)
        self.view.endEditing(true)
        //: ProgressHUD.show(superView: view)
        AtAdView.linkLine(superView: view)
        //: if viewType == .BindEmail {
        if viewType == .BindEmail {
            //: TalkingLoginRequestTool.req_getBindEmailCode(emailStr: self.phoneOrEmailStr, isBind: true) { succeed, result, errorModel in
            WhiteIndexReactiveCompatible.from(emailStr: self.phoneOrEmailStr, isBind: true) { succeed, _, _ in
                //: ProgressHUD.dismiss()
                AtAdView.toAction()
                //: if succeed {
                if succeed {
                    //: self.func_starCodeTime()
                    self.someTime()
                    //: self.codeInputView.func__resetCodeInputView()
                    self.codeInputView.contentBlock()
                }
                //: self.codeInputView.startEdit()
                self.codeInputView.once()
            }
            //: } else {
        } else {
            //: TalkingLoginRequestTool.req_bindPhoneGetCode(phoneStr: self.phoneOrEmailStr, areaStr: areaCodeNum, completion: { succeed, result, errorModel in
            WhiteIndexReactiveCompatible.modelIn(phoneStr: self.phoneOrEmailStr, areaStr: areaCodeNum, completion: { succeed, _, _ in
                //: ProgressHUD.dismiss()
                AtAdView.toAction()
                //: if succeed {
                if succeed {
                    //: self.codeInputView.func__resetCodeInputView()
                    self.codeInputView.contentBlock()
                    //: self.func_starCodeTime()
                    self.someTime()
                }
                //: self.codeInputView.startEdit()
                self.codeInputView.once()
                //: })
            })
        }
    }

    //: func func_starCodeTime() {
    func someTime() {
        //: if timerDispose != nil {
        if timerDispose != nil {
            //: timerDispose?.dispose()
            timerDispose?.dispose()
        }
        //: var timeCount = 300
        var timeCount = 300
        //: timerDispose = Observable<Int>.interval(.seconds(1), scheduler: MainScheduler.instance)
        timerDispose = Observable<Int>.interval(.seconds(1), scheduler: MainScheduler.instance)
            //: .subscribe(onNext: { [weak self] num in
            .subscribe(onNext: { [weak self] _ in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: timeCount -= 1
                timeCount -= 1
                //: self.commitButton.isEnabled = (timeCount <= 0)
                self.commitButton.isEnabled = (timeCount <= 0)
                //: if timeCount > 0 {
                if timeCount > 0 {
                    //: self.commitButton.setTitle("Resend verification email (%@s)".localizedArguments(timeCount), for: .normal)
                    self.commitButton.setTitle(String(bytes: str_presentLabText.map{viewTime(address: $0)}, encoding: .utf8)!.alongNext(timeCount), for: .normal)
                    //: } else {
                } else {
                    //: self.func_endCodeTime()
                    self.conversation()
                    //: self.commitButton.setTitle("Resend verification email".localized, for: .normal)
                    self.commitButton.setTitle((String(str_pointTitle.suffix(6)) + " veri" + str_pathName.replacingOccurrences(of: "live", with: "a") + "on em" + String(str_verticalData)).localized, for: .normal)
                }
                //: })
            })
    }

    //: func func_endCodeTime() {
    func conversation() {
        //: timerDispose?.dispose()
        timerDispose?.dispose()
    }
}

// MARK: - Layout

//: extension TalkingLoginBindInputCodeVC {
extension EqualVc {
    // 添加视图
    //: private func setupSubviews() {
    private func placeQuantityeraction() {
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.addSubview(tipsLabel)
        view.addSubview(tipsLabel)
        //: view.addSubview(titleLabel)
        view.addSubview(titleLabel)
        //: view.addSubview(inputLabel)
        view.addSubview(inputLabel)
        //: view.addSubview(codeInputView)
        view.addSubview(codeInputView)
        //: view.addSubview(commitButton)
        view.addSubview(commitButton)
        //: view.addSubview(desLab)
        view.addSubview(desLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func pushPlayer() {
        //: tipsLabel.snp.makeConstraints { make in
        tipsLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.top.equalTo(34)
            make.top.equalTo(34)
        }
        //: titleLabel.snp.makeConstraints { make in
        titleLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(tipsLabel.snp.bottom).offset(40)
            make.top.equalTo(tipsLabel.snp.bottom).offset(40)
        }
        //: inputLabel.snp.makeConstraints { make in
        inputLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(titleLabel.snp.bottom)
            make.top.equalTo(titleLabel.snp.bottom)
        }
        //: codeInputView.snp.makeConstraints { make in
        codeInputView.snp.makeConstraints { make in
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.height.equalTo(70)
            make.height.equalTo(70)
            //: make.top.equalTo(inputLabel.snp.bottom).offset(24)
            make.top.equalTo(inputLabel.snp.bottom).offset(24)
        }
        //: commitButton.snp.makeConstraints { make in
        commitButton.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(codeInputView.snp.bottom).offset(30)
            make.top.equalTo(codeInputView.snp.bottom).offset(30)
        }
        //: desLab.snp.makeConstraints { make in
        desLab.snp.makeConstraints { make in
            //: make.top.equalTo(commitButton.snp.bottom).offset(36)
            make.top.equalTo(commitButton.snp.bottom).offset(36)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func request() {
        //: commitButton.rx.controlEvent(.touchUpInside)
        commitButton.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.func__resendEmailCodeAction()
                self.exhibit()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: codeInputView.codeBlock = { [weak self] (codeStr: String) -> Void in
        codeInputView.codeBlock = { [weak self] (codeStr: String) in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if codeStr.count == 6 {
            if codeStr.count == 6 {
                //: self.codeStr = codeStr
                self.codeStr = codeStr
                //: self.func__bindEmailAction()
                self.reAction()
            }
            //: return
        }
    }
}
