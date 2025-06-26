
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_appTitle:[UInt8] = [0x2,0x5,0x2,0x1f,0x43,0x8,0x4,0xf,0xe,0x19,0x51,0x42,0x4b,0x3,0xa,0x18,0x4b,0x5,0x4,0x1f,0x4b,0x9,0xe,0xe,0x5,0x4b,0x2,0x6,0x1b,0x7,0xe,0x6,0xe,0x5,0x1f,0xe,0xf]

private func dataTo(clear num: UInt8) -> UInt8 {
    return num ^ 107
}

/*: "Personal information" :*/
fileprivate let str_frameData:String = "Persouser value sub"
fileprivate let str_awakeValue:[Character] = ["n","a","l"," ","i","n","f","o","r","m","a","t","i","o","n"]

/*: "PushDownStackScalarLiteral" :*/
fileprivate let str_touchName:String = "Genderin always style image"

/*: "Once gender is set, it Cannot be changed." :*/
fileprivate let str_countValue:[UInt8] = [0xe,0x2f,0x22,0x24,0x61,0x26,0x24,0x2f,0x25,0x24,0x33,0x61,0x28,0x32,0x61,0x32,0x24,0x35,0x6d,0x61,0x28,0x35,0x61,0x2,0x20,0x2f,0x2f,0x2e,0x35,0x61,0x23,0x24,0x61,0x22,0x29,0x20,0x2f,0x26,0x24,0x25,0x6f]

/*: "#2ABBFF" :*/
fileprivate let str_makeTitle:[Character] = ["#","2","A","B","B","F","F"]

/*: "btn_male_nv_nor" :*/
fileprivate let str_minimizeSkinName:[Character] = ["b","t","n","_","m","a"]
fileprivate let str_finishPartyValue:String = "lab varle_nv_nor"

/*: "btn_male_nv_sel" :*/
fileprivate let str_feeMakeFalseText:String = "confirm post searchbtn_"
fileprivate let str_frameContent:String = "let return self makenv_se"
fileprivate let str_giftBackCurveName:[Character] = ["l"]

/*: "Male" :*/
fileprivate let str_nextTitle:String = "place with falseMale"

/*: "#FF5372" :*/
fileprivate let str_titleValue:String = "path origin self self#FF5372"

/*: "btn_female_nv_nor" :*/
fileprivate let str_dataValue:String = "btn_feheight official view height return"
fileprivate let str_cameraTitle:String = "macolor"
fileprivate let str_inputThenValue:String = "menu type info datae_nv"

/*: "btn_female_nv_sel" :*/
fileprivate let str_selectedEditTitle:String = "bottom corner let ifbtn_"
fileprivate let str_topData:String = "v_selblind view equal label normal"

/*: "Female" :*/
fileprivate let str_directionText:[Character] = ["F"]
fileprivate let str_modelTitle:[Character] = ["e","m","a","l","e"]

/*: "Next" :*/
fileprivate let str_withName:[Character] = ["N","e","x","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ImageGenderVc.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/30.
//

//: import UIKit
import UIKit

//: class TalkingLoginGenderVC: TalkingBaseViewController {
class ImageGenderVc: MusicViewController {
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_appTitle.map{dataTo(clear: $0)}, encoding: .utf8)!)
    }

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
        self.title = (String(str_frameData.prefix(5)) + String(str_awakeValue)).localized
        //: WatercourseThen.share.userFillInfoMode.sex = "1"
        WatercourseThen.share.userFillInfoMode.sex = "1"
        //: self.setupSubviews()
        self.subviewsEnable()
        //: self.setupSubViewsConstraint()
        self.mTheoryConstraint()
        //: self.bindInteraction()
        self.indicator()
        //: func__checkNextBtnState()
        add()
    }

    //: deinit {
    deinit {}

    //: private lazy var logoTitleLabel: UILabel = {
    private lazy var logoTitleLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Semibold, fontSize: 17)
        label.font = .conversationSize(type: .Semibold, fontSize: 17)
        //: label.textColor = .appTitleColor()
        label.textColor = .ending()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.text = "Gender".localized
        label.text = (String(str_touchName.prefix(6))).localized
        //: return label
        return label
        //: }()
    }()

    //: private lazy var genderTipLabel: UILabel = {
    private lazy var genderTipLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 15)
        label.font = .conversationSize(type: .Regular, fontSize: 15)
        //: label.textColor = .appValueColor()
        label.textColor = .obtrudeUpon()
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: label.text = "Once gender is set, it Cannot be changed.".localized
        label.text = String(bytes: str_countValue.map{$0^65}, encoding: .utf8)!.localized
        //: return label
        return label
        //: }()
    }()

    //: private lazy var maleButton: TalkingButton = {
    private lazy var maleButton: MediaControl = {
        //: let btn = TalkingButton(type: .custom)
        let btn = MediaControl(type: .custom)
        //: btn.isSelected = false
        btn.isSelected = false
        //: btn.spaceBetweenTitleAndImage = 20
        btn.spaceBetweenTitleAndImage = 20
        //: btn.setBackgroundColor(color: UIColor.init(red: 244/255.0, green: 244/255.0, blue: 244/255.0, alpha: 1.0), forState: .normal)
        btn.toPop(color: UIColor(red: 244 / 255.0, green: 244 / 255.0, blue: 244 / 255.0, alpha: 1.0), forState: .normal)
        //: btn.setBackgroundColor(color: UIColor.init(hex: "#2ABBFF")!, forState: .selected)
        btn.toPop(color: UIColor(hex: (String(str_makeTitle)))!, forState: .selected)
        //: btn.setImage(UIImage.withView(name: "btn_male_nv_nor"), for: .normal)
        btn.setImage(UIImage.withView(name: (String(str_minimizeSkinName) + String(str_finishPartyValue.suffix(9)))), for: .normal)
        //: btn.setImage(UIImage.withView(name: "btn_male_nv_sel"), for: .selected)
        btn.setImage(UIImage.withView(name: (String(str_feeMakeFalseText.suffix(4)) + "male_" + String(str_frameContent.suffix(5)) + String(str_giftBackCurveName))), for: .selected)
        //: btn.setTitle("Male".localized, for: .normal)
        btn.setTitle((String(str_nextTitle.suffix(4))).localized, for: .normal)
        //: btn.setTitle("Male".localized, for: .selected)
        btn.setTitle((String(str_nextTitle.suffix(4))).localized, for: .selected)
        //: btn.setTitleColor(.black, for: .normal)
        btn.setTitleColor(.black, for: .normal)
        //: btn.setTitleColor(.white, for: .selected)
        btn.setTitleColor(.white, for: .selected)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.titleLabel?.font = UIFont.pingfangRugularFont(fontSize: 17)
        btn.titleLabel?.font = UIFont.rugular(fontSize: 17)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var femaleButton: TalkingButton = {
    private lazy var femaleButton: MediaControl = {
        //: let btn = TalkingButton(type: .custom)
        let btn = MediaControl(type: .custom)
        //: btn.isSelected = false
        btn.isSelected = false
        //: btn.spaceBetweenTitleAndImage = 20
        btn.spaceBetweenTitleAndImage = 20
        //: btn.setBackgroundColor(color: UIColor.init(red: 244/255.0, green: 244/255.0, blue: 244/255.0, alpha: 1.0), forState: .normal)
        btn.toPop(color: UIColor(red: 244 / 255.0, green: 244 / 255.0, blue: 244 / 255.0, alpha: 1.0), forState: .normal)
        //: btn.setBackgroundColor(color: UIColor.init(hex: "#FF5372")!, forState: .selected)
        btn.toPop(color: UIColor(hex: (String(str_titleValue.suffix(7))))!, forState: .selected)
        //: btn.setImage(UIImage.withView(name: "btn_female_nv_nor"), for: .normal)
        btn.setImage(UIImage.withView(name: (String(str_dataValue.prefix(6)) + str_cameraTitle.replacingOccurrences(of: "color", with: "l") + String(str_inputThenValue.suffix(4)) + "_nor")), for: .normal)
        //: btn.setImage(UIImage.withView(name: "btn_female_nv_sel"), for: .selected)
        btn.setImage(UIImage.withView(name: (String(str_selectedEditTitle.suffix(4)) + "female_n" + String(str_topData.prefix(5)))), for: .selected)
        //: btn.setTitle("Female".localized, for: .normal)
        btn.setTitle((String(str_directionText) + String(str_modelTitle)).localized, for: .normal)
        //: btn.setTitle("Female".localized, for: .selected)
        btn.setTitle((String(str_directionText) + String(str_modelTitle)).localized, for: .selected)
        //: btn.setTitleColor(.black, for: .normal)
        btn.setTitleColor(.black, for: .normal)
        //: btn.setTitleColor(.white, for: .selected)
        btn.setTitleColor(.white, for: .selected)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.titleLabel?.font = UIFont.pingfangRugularFont(fontSize: 17)
        btn.titleLabel?.font = UIFont.rugular(fontSize: 17)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var commitButton: UIButton = {
    private lazy var commitButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.conversationSize(type: .Medium, fontSize: 17)
        //: btn.setTitle("Next".localized, for: .normal)
        btn.setTitle((String(str_withName)).localized, for: .normal)
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
}

// MARK: - Public Event

//: extension TalkingLoginGenderVC {
extension ImageGenderVc {
    //: private func func__checkNextBtnState() {
    private func add() {
        //: if WatercourseThen.share.userFillInfoMode.sex == "1" {
        if WatercourseThen.share.userFillInfoMode.sex == "1" {
            //: self.commitButton.isEnabled = true
            self.commitButton.isEnabled = true
            //: self.maleButton.isSelected = true
            self.maleButton.isSelected = true
            //: self.femaleButton.isSelected = false
            self.femaleButton.isSelected = false
            //: } else if WatercourseThen.share.userFillInfoMode.sex == "2"{
        } else if WatercourseThen.share.userFillInfoMode.sex == "2" {
            //: self.commitButton.isEnabled = true
            self.commitButton.isEnabled = true
            //: self.maleButton.isSelected = false
            self.maleButton.isSelected = false
            //: self.femaleButton.isSelected = true
            self.femaleButton.isSelected = true
            //: } else {
        } else {
            //: self.commitButton.isEnabled = false
            self.commitButton.isEnabled = false
            //: self.maleButton.isSelected = false
            self.maleButton.isSelected = false
            //: self.femaleButton.isSelected = false
            self.femaleButton.isSelected = false
        }
    }

    //: private func func__pushToNextProgress() {
    private func make() {
        //        // 1.3 判断用户设备SIM卡归属地是否来自被剔除的国家或地区
        //        // 1.4 判断用户设备是否开启VPN
//        if WatercourseThen.share.appConfigMode.vpnSimCardCheck {
//
//            guard  !GazetteThen.isUsedProxy() && !GazetteThen.isUsedVPN() else {
//                self.func__showStatusBarErrorMsg(showMsg: "Network error. Check it and try again.".localized)
//                self.navigationController?.popToRootViewController(animated: true)
//                NotificationCenter.default.post(name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION, object: nil, userInfo: nil)
//                ResultReactiveCompatible.func__reportDeviceID()
//                return
//            }
//        }
        /// 清除后面已填写过资料
        //: let sex = WatercourseThen.share.userFillInfoMode.sex
        let sex = WatercourseThen.share.userFillInfoMode.sex
        //: WatercourseThen.share.userFillInfoMode = UserFillInfoModel.init()
        WatercourseThen.share.userFillInfoMode = ResultInfoModel()
        //: WatercourseThen.share.userFillInfoMode.sex = sex
        WatercourseThen.share.userFillInfoMode.sex = sex
        //: let VC = TalkingLoginEditInfoVC()
        let VC = VoiceViewController()
        //: self.navigationController?.pushViewController(VC, animated: true)
        self.navigationController?.pushViewController(VC, animated: true)
    }
}

// MARK: - Layout

//: extension TalkingLoginGenderVC {
extension ImageGenderVc {
    // 添加视图
    //: private func setupSubviews() {
    private func subviewsEnable() {
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.addSubview(logoTitleLabel)
        view.addSubview(logoTitleLabel)
        //: view.addSubview(genderTipLabel)
        view.addSubview(genderTipLabel)
        //: view.addSubview(maleButton)
        view.addSubview(maleButton)
        //: view.addSubview(femaleButton)
        view.addSubview(femaleButton)
        //: view.addSubview(commitButton)
        view.addSubview(commitButton)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func mTheoryConstraint() {
        //: logoTitleLabel.snp.makeConstraints { make in
        logoTitleLabel.snp.makeConstraints { make in
            //: make.top.equalTo(34)
            make.top.equalTo(34)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
        }
        //: genderTipLabel.snp.makeConstraints { make in
        genderTipLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(ScreenWidth-60)
            make.width.equalTo(kLet_scaleName - 60)
            //: make.top.equalTo(logoTitleLabel.snp.bottom).offset(6)
            make.top.equalTo(logoTitleLabel.snp.bottom).offset(6)
        }
        //: maleButton.snp.makeConstraints { make in
        maleButton.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.width.equalTo(actualWidth(w: 140))
            make.width.equalTo(actualWidth(w: 140))
            //: make.height.equalTo(actualWidth(w: 50))
            make.height.equalTo(actualWidth(w: 50))
            //: make.top.equalTo(genderTipLabel.snp.bottom).offset(20)
            make.top.equalTo(genderTipLabel.snp.bottom).offset(20)
        }
        //: femaleButton.snp.makeConstraints { make in
        femaleButton.snp.makeConstraints { make in
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.width.equalTo(actualWidth(w: 140))
            make.width.equalTo(actualWidth(w: 140))
            //: make.height.equalTo(actualWidth(w: 50))
            make.height.equalTo(actualWidth(w: 50))
            //: make.top.equalTo(genderTipLabel.snp.bottom).offset(20)
            make.top.equalTo(genderTipLabel.snp.bottom).offset(20)
        }
        //: commitButton.snp.makeConstraints { make in
        commitButton.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(ScreenWidth-60)
            make.width.equalTo(kLet_scaleName - 60)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(maleButton.snp.bottom).offset(40)
            make.top.equalTo(maleButton.snp.bottom).offset(40)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func indicator() {
        //: commitButton.rx.tap
        commitButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.func__pushToNextProgress()
                self.make()

                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: femaleButton.rx.tap
        femaleButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: WatercourseThen.share.userFillInfoMode.sex = "2"
                WatercourseThen.share.userFillInfoMode.sex = "2"
                //: self.func__checkNextBtnState()
                self.add()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: maleButton.rx.tap
        maleButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: WatercourseThen.share.userFillInfoMode.sex = "1"
                WatercourseThen.share.userFillInfoMode.sex = "1"
                //: self.func__checkNextBtnState()
                self.add()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }
}
