
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_labelData:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "icon_me_income" :*/
fileprivate let str_videoViewName:[Character] = ["i","c","o","n","_","m","e","_","i","n","c","o","m","e"]

/*: "Income" :*/
fileprivate let str_stageValue:String = "up"
fileprivate let str_selectedData:String = "ncinpute"

/*: "icon_me_male_wallet" :*/
fileprivate let str_speakData:String = "version viewicon_me"
fileprivate let str_backCloseName:[Character] = ["_","m","a","l","e","_","w","a","l","l","e","t"]

/*: "Wallet" :*/
fileprivate let str_acceptText:String = "let makeWallet"

/*: "#7189F7" :*/
fileprivate let str_frameworkData:[Character] = ["#"]
fileprivate let str_bottomText:String = "section need content7189F7"

/*: "Level" :*/
fileprivate let str_touchName:String = "Levelname let head in"

/*: "icon_me_level" :*/
fileprivate let str_statusData:String = "action"
fileprivate let str_picData:String = "con_mcount view"

/*: "$ :*/
fileprivate let str_iconData:String = "object"

/*: "Verification needed before balance check" :*/
fileprivate let str_succeedText:[UInt8] = [0x6b,0x63,0x65,0x68,0x63,0x20,0x65,0x63,0x6e,0x61,0x6c,0x61,0x62,0x20,0x65,0x72,0x6f,0x66,0x65,0x62,0x20,0x64,0x65,0x64,0x65,0x65,0x6e,0x20,0x6e,0x6f,0x69,0x74,0x61,0x63,0x69,0x66,0x69,0x72,0x65,0x56]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CardinalView.swift
//  AbroadTalking
//
//  Created by young on 2023/4/25.
//

//: import UIKit
import UIKit

//: class TalkingMeTwoColumnsCell: UITableViewCell {
class CardinalView: UITableViewCell {
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.selectionStyle = .none
        self.selectionStyle = .none

        //: setupSubviews()
        sizeAcrossGesture()
        //: setupSubViewsConstraint()
        exceptTextConstraint()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_labelData.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var goldCoinsBtn: UIButton = {
    private lazy var goldCoinsBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .white
        btn.backgroundColor = .white
        //: btn.layer.cornerRadius = 6
        btn.layer.cornerRadius = 6
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(goldCoinsButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(iconEqual), for: .touchUpInside)

        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        lab.font = UIFont.conversationSize(type: .Medium, fontSize: 16)
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.ending()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: btn.addSubview(lab)
        btn.addSubview(lab)
        //: lab.snp.makeConstraints { make in
        lab.snp.makeConstraints { make in
            //: make.top.equalTo(11)
            make.top.equalTo(11)
            //: make.leading.equalTo(11)
            make.leading.equalTo(11)
        }

        //: let icon = UIImageView()
        let icon = UIImageView()
        //: icon.contentMode = .scaleAspectFill
        icon.contentMode = .scaleAspectFill
        //: btn.addSubview(icon)
        btn.addSubview(icon)
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.size.equalTo(CGSize(width: 38, height: 37))
            make.size.equalTo(CGSize(width: 38, height: 37))
        }
        //: if WatercourseThen.share.loginUserMode.sex == Gender.female.rawValue && WatercourseThen.share.appStatus != AppSkinStatus.special.rawValue {
        if WatercourseThen.share.loginUserMode.sex == PushDownStackScalarLiteral.female.rawValue && WatercourseThen.share.appStatus != PublishWidthTotal.special.rawValue {
            //: icon.image = UIImage.withView(name: "icon_me_income")
            icon.image = UIImage.withView(name: (String(str_videoViewName)))
            //: lab.text = "Income".localized
            lab.text = (str_stageValue.replacingOccurrences(of: "up", with: "I") + str_selectedData.replacingOccurrences(of: "input", with: "om")).localized
            //: } else {
        } else {
            //: icon.image = UIImage.withView(name: "icon_me_male_wallet")
            icon.image = UIImage.withView(name: (String(str_speakData.suffix(7)) + String(str_backCloseName)))
            //: lab.text = "Wallet".localized
            lab.text = (String(str_acceptText.suffix(6))).localized
        }
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var goldCoinsNum: UILabel = {
    private lazy var goldCoinsNum: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        lab.font = UIFont.conversationSize(type: .Medium, fontSize: 18)
        //: lab.textColor = UIColor(hex: "#7189F7")
        lab.textColor = UIColor(hex: (String(str_frameworkData) + String(str_bottomText.suffix(6))))
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "0"
        lab.text = "0"
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var myLevelBtn: UIButton = {
    private lazy var myLevelBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .white
        btn.backgroundColor = .white
        //: btn.layer.cornerRadius = 6
        btn.layer.cornerRadius = 6
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(myLevelButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(buttonNameClick), for: .touchUpInside)

        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        lab.font = UIFont.conversationSize(type: .Medium, fontSize: 16)
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.ending()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Level".localized
        lab.text = (String(str_touchName.prefix(5))).localized
        //: btn.addSubview(lab)
        btn.addSubview(lab)
        //: lab.snp.makeConstraints { make in
        lab.snp.makeConstraints { make in
            //: make.top.equalTo(11)
            make.top.equalTo(11)
            //: make.leading.equalTo(11)
            make.leading.equalTo(11)
        }

        //: let icon = UIImageView()
        let icon = UIImageView()
        //: icon.image = UIImage.withView(name: "icon_me_level")
        icon.image = UIImage.withView(name: (str_statusData.replacingOccurrences(of: "action", with: "i") + String(str_picData.prefix(5)) + "e_level"))
        //: icon.contentMode = .scaleAspectFill
        icon.contentMode = .scaleAspectFill
        //: btn.addSubview(icon)
        btn.addSubview(icon)
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.size.equalTo(CGSize(width: 39, height: 37))
            make.size.equalTo(CGSize(width: 39, height: 37))
        }
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var myLevelNum: UILabel = {
    private lazy var myLevelNum: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        lab.font = UIFont.conversationSize(type: .Medium, fontSize: 18)
        //: lab.textColor = UIColor(hex: "#7189F7")
        lab.textColor = UIColor(hex: (String(str_frameworkData) + String(str_bottomText.suffix(6))))
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "0"
        lab.text = "0"
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMeTwoColumnsCell {
extension CardinalView {
    //: func setViewData() {
    func marginOfSafetyData() {
        //: if WatercourseThen.share.loginUserMode.sex == Gender.female.rawValue && WatercourseThen.share.appStatus != AppSkinStatus.special.rawValue {
        if WatercourseThen.share.loginUserMode.sex == PushDownStackScalarLiteral.female.rawValue, WatercourseThen.share.appStatus != PublishWidthTotal.special.rawValue {
            //: goldCoinsNum.text = "$\(WatercourseThen.share.loginUserMode.mf_income)"
            goldCoinsNum.text = "$\(WatercourseThen.share.loginUserMode.mf_income)"
            //: } else {
        } else {
            //: goldCoinsNum.text = "\(WatercourseThen.share.loginUserMode.mf_coin)"
            goldCoinsNum.text = "\(WatercourseThen.share.loginUserMode.mf_coin)"
        }
        //: myLevelNum.text = WatercourseThen.share.loginUserMode.level
        myLevelNum.text = WatercourseThen.share.loginUserMode.level
    }

    /// gold coins
    //: @objc private func goldCoinsButtonClick() {
    @objc private func iconEqual() {
        //: incomeClick()
        clickInfo()
    }

    /// my level
    //: @objc private func myLevelButtonClick() {
    @objc private func buttonNameClick() {
        //: IndoorsPushManager.share.func__pushToWebVC(webViewType: .Level)
        IndoorsPushManager.share.pushType(webViewType: .Level)
    }

    /// income
    //: @objc func incomeClick() {
    @objc func clickInfo() {
        //: if WatercourseThen.share.loginUserMode.sex == Gender.female.rawValue && WatercourseThen.share.appStatus != AppSkinStatus.special.rawValue {
        if WatercourseThen.share.loginUserMode.sex == PushDownStackScalarLiteral.female.rawValue, WatercourseThen.share.appStatus != PublishWidthTotal.special.rawValue {
            //: if WatercourseThen.share.loginUserMode.isTPAuth == TPUserAuth.unknown.rawValue || WatercourseThen.share.loginUserMode.isTPAuth == TPUserAuth.isRefused.rawValue {
            if WatercourseThen.share.loginUserMode.isTPAuth == CommandCompatibleValue.unknown.rawValue || WatercourseThen.share.loginUserMode.isTPAuth == CommandCompatibleValue.isRefused.rawValue {
                //: self.func__showStatusBarSuccessMsg(showMsg: "Verification needed before balance check")
                self.sizeExecuteMsg(showMsg: String(bytes: str_succeedText.reversed(), encoding: .utf8)!)
                //: let vc = TalkingFaceVerificationVC()
                let vc = TalkingAtCellVerificationVc()
                //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
                self.toController()?.navigationController?.pushViewController(vc, animated: true)
                //: } else if WatercourseThen.share.loginUserMode.isTPAuth == TPUserAuth.isOnGoing.rawValue {
            } else if WatercourseThen.share.loginUserMode.isTPAuth == CommandCompatibleValue.isOnGoing.rawValue {
                //: self.func__showStatusBarSuccessMsg(showMsg: "Verification needed before balance check")
                self.sizeExecuteMsg(showMsg: String(bytes: str_succeedText.reversed(), encoding: .utf8)!)
                //: let vc = TalkingFinalVerificationVC()
                let vc = KeyReactiveCompatible()
                //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
                self.toController()?.navigationController?.pushViewController(vc, animated: true)

                //: } else {
            } else {
                //: IndoorsPushManager.share.func__pushToWebVC(webViewType: .Balance)
                IndoorsPushManager.share.pushType(webViewType: .Balance)
            }

            //: } else {
        } else {
            //: IndoorsPushManager.share.func__pushToWebVC(webViewType: .RechargeFullPage)
            IndoorsPushManager.share.pushType(webViewType: .RechargeFullPage)
        }
    }
}

// MARK: - Layout

//: extension TalkingMeTwoColumnsCell {
extension CardinalView {
    /// 添加视图
    //: private func setupSubviews() {
    private func sizeAcrossGesture() {
        //: self.contentView.addSubview(goldCoinsBtn)
        self.contentView.addSubview(goldCoinsBtn)
        //: goldCoinsBtn.addSubview(goldCoinsNum)
        goldCoinsBtn.addSubview(goldCoinsNum)
        //: self.contentView.addSubview(myLevelBtn)
        self.contentView.addSubview(myLevelBtn)
        //: myLevelBtn.addSubview(myLevelNum)
        myLevelBtn.addSubview(myLevelNum)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func exceptTextConstraint() {
        //: let btn_width = (ScreenWidth-30-8)/2
        let btn_width = (kLet_scaleName - 30 - 8) / 2
        //: goldCoinsBtn.snp.makeConstraints { make in
        goldCoinsBtn.snp.makeConstraints { make in
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.size.equalTo(CGSize(width: btn_width, height: 70))
            make.size.equalTo(CGSize(width: btn_width, height: 70))
            //: make.bottom.equalToSuperview().offset(-12)
            make.bottom.equalToSuperview().offset(-12)
        }
        //: goldCoinsNum.snp.makeConstraints { make in
        goldCoinsNum.snp.makeConstraints { make in
            //: make.leading.equalTo(11)
            make.leading.equalTo(11)
            //: make.bottom.equalTo(-10)
            make.bottom.equalTo(-10)
        }

        //: myLevelBtn.snp.makeConstraints { make in
        myLevelBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.top.size.bottom.equalTo(goldCoinsBtn)
            make.top.size.bottom.equalTo(goldCoinsBtn)
        }
        //: myLevelNum.snp.makeConstraints { make in
        myLevelNum.snp.makeConstraints { make in
            //: make.leading.equalTo(11)
            make.leading.equalTo(11)
            //: make.bottom.equalTo(-10)
            make.bottom.equalTo(-10)
        }
    }
}
