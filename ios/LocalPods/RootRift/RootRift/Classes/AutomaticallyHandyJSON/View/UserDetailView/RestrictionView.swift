
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_mediumData:[UInt8] = [0xec,0xf1,0xec,0xf7,0xab,0xe6,0xf2,0xe7,0xe8,0xf5,0xbd,0xac,0xa3,0xeb,0xe4,0xf6,0xa3,0xf1,0xf2,0xf7,0xa3,0xe5,0xe8,0xe8,0xf1,0xa3,0xec,0xf0,0xf3,0xef,0xe8,0xf0,0xe8,0xf1,0xf7,0xe8,0xe7]

fileprivate func asPoint(with num: UInt8) -> UInt8 {
    let value = Int(num) + 125
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "bg_others_shadow_up" :*/
fileprivate let str_sizePostData:String = "view guard size border textbg_othe"
fileprivate let str_userValue:String = "rs_shpush pop color"

/*: "nav_back_black_nor" :*/
fileprivate let str_leadingName:String = "nav_bareturn edge block scale color"
fileprivate let str_explainTitle:String = "user leading infock_nor"

/*: "btn_detail_more" :*/
fileprivate let str_cellValue:String = "target photobtn_d"
fileprivate let str_textName:String = "let wrap title_more"

/*: "Shielding Success" :*/
fileprivate let str_leadingFlowValue:String = "Shieldinreturn let"
fileprivate let str_withName:String = "label sharedg "
fileprivate let str_windowContent:[Character] = ["S","u","c","c","e","s","s"]

/*: "Unmasking Succeeded" :*/
fileprivate let str_currentTitle:String = "current hidden in mode topUnmask"
fileprivate let str_clearTitle:String = "ing Suimport open"

/*: "Report" :*/
fileprivate let str_estimatedText:[Character] = ["R"]
fileprivate let str_endingData:[Character] = ["e","p","o","r","t"]

/*: "Remvoe Block" :*/
fileprivate let str_titleValue:String = "Remvoeself error size"

/*: "Block" :*/
fileprivate let str_emptyName:String = "Blockgender frame manager"

/*: "Cancel" :*/
fileprivate let str_destinationValue:String = "Cancelwhite let zone session bottom"

/*: "OK" :*/
fileprivate let str_liveValue:String = "than"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RestrictionView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/9.
//

//: import UIKit
import UIKit

//: class TalkingUserDetailNaviBarView: UIView {
class RestrictionView: UIView {
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var isBlack = false
    private var isBlack = false // 是否已拉黑
    //: private var userInfoModel = TalkingUserInfoModel()
    private var userInfoModel = TalkingWhiteTransformable() // 用户资料

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)

        //: setupSubviews()
        eliteRemove()
        //: setupSubViewsConstraint()
        checkRemove()
        //: bindInteraction()
        fastener()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_mediumData.map{asPoint(with: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: private lazy var bgImgView: UIImageView = {
    private lazy var bgImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.withView(name: "bg_others_shadow_up")
        imgV.image = UIImage.withView(name: (String(str_sizePostData.suffix(7)) + String(str_userValue.prefix(5)) + "adow_up"))
        //: return imgV
        return imgV
        //: }()
    }()

    //: lazy var whiteBgView: UIView = {
    lazy var whiteBgView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: v.alpha = 0
        v.alpha = 0
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        lab.font = UIFont.conversationSize(type: .Medium, fontSize: 17)
        //: lab.textColor = .appTitleColor()
        lab.textColor = .ending()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: if LanguageManager.shared.direction == .rightToLeft {
        if FactoryShowThen.shared.direction == .rightToLeft {
            //: lab.lineBreakMode = .byTruncatingHead
            lab.lineBreakMode = .byTruncatingHead
        }
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var backButton: UIButton = {
    lazy var backButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let img = UIImage.withView(name: "nav_back_black_nor").withRenderingMode(.alwaysTemplate)
        let img = UIImage.withView(name: (String(str_leadingName.prefix(6)) + "ck_bla" + String(str_explainTitle.suffix(6)))).withRenderingMode(.alwaysTemplate)
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.tintColor = .white
        btn.tintColor = .white
        //: btn.addTarget(self, action: #selector(clickBackButtonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(sessionAction), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var moreButton: UIButton = {
    lazy var moreButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let img = UIImage.withView(name: "btn_detail_more").withRenderingMode(.alwaysTemplate)
        let img = UIImage.withView(name: (String(str_cellValue.suffix(5)) + "etail" + String(str_textName.suffix(5)))).withRenderingMode(.alwaysTemplate)
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.tintColor = .white
        btn.tintColor = .white
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Request

//: extension TalkingUserDetailNaviBarView {
extension RestrictionView {
    /// 拉黑和取消拉黑
    //: private func req_pullBlackRequest() {
    private func cellRequest() {
        //: TalkingUserRequestManager.func__pullBlackWithUserId(uid: self.userInfoModel.uid, isBlack: !self.isBlack) { succeed, result, errorModel in
        DirectorReactiveCompatible.funcForCompletion(uid: self.userInfoModel.uid, isBlack: !self.isBlack) { succeed, _, _ in
            //: if succeed == true {
            if succeed == true {
                //: self.isBlack = !self.isBlack
                self.isBlack = !self.isBlack
                let toastStr = self.isBlack == true ? "Shielding Success".localized : "Unmasking Succeeded".localized
                //: ProgressHUD.toast(toastStr)
                AtAdView.doToast(toastStr)
            }
        }
    }
}

// MARK: - Event

//: extension TalkingUserDetailNaviBarView {
extension RestrictionView {
    //: @objc private func clickBackButtonAction() {
    @objc private func sessionAction() {
        //: IndoorsPushManager.share.func__getCurrentActivityVC()?.navigationController?.popViewController(animated: true)
        IndoorsPushManager.share.queryEqual()?.navigationController?.popViewController(animated: true)
    }

    //: @objc private func registerMoreButtonAction() {
    @objc private func nameAction() {
        //: let vc = TalkingMunuPopView.init(frame: UIScreen.main.bounds)
        let vc = ColorGiftDataSource(frame: UIScreen.main.bounds)
        //: var titleArr = ["Report".localized]
        var titleArr = [(String(str_estimatedText) + String(str_endingData)).localized]
        //: let uid = Int(userInfoModel.uid) ?? 0
        let uid = Int(userInfoModel.uid) ?? 0

        //: titleArr.append(self.isBlack ? "Remvoe Block".localized : "Block".localized)
        titleArr.append(self.isBlack ? (String(str_titleValue.prefix(6)) + " Block").localized : (String(str_emptyName.prefix(5))).localized)

        //: vc.initwithList(cellTitleList: titleArr)
        vc.collectionList(cellTitleList: titleArr)
        //: vc.munuBlock = { index, str in
        vc.munuBlock = { index, _ in
            //: if index==0 {
            if index == 0 {
                //: self.reportAction()
                self.halogenSize()
                //: } else if index==1 {
            } else if index == 1 {
                //: self.pullBlackAction()
                self.releaseWith()
            }
        }
    }

    /// 举报用户
    //: private func reportAction() {
    private func halogenSize() {
        //: let reportView = TalkingReportAlertView(frame: UIScreen.main.bounds, type: .reportUserType, rId: userInfoModel.uid)
        let reportView = CurrentDataSource(frame: UIScreen.main.bounds, type: .reportUserType, rId: userInfoModel.uid)
        //: reportView.showReportViewIn(view: nil)
        reportView.tip(view: nil)
    }

    /// 拉黑用户
    //: private func pullBlackAction() {
    private func releaseWith() {
        //: guard self.isBlack == false else {
        guard self.isBlack == false else {
            //: req_pullBlackRequest()
            cellRequest()
            //: return
            return
        }

        //: TalkingAlertShow.alert(title: nil, message: kMessage_blocking, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized) {
        AlongThen.harvest(title: nil, message: kLet_seatName, leftBtnTitle: (String(str_destinationValue.prefix(6))).localized, rightBtnTitle: "OK".localized) {
            //: TalkingAlertShow.hideAlert()
            AlongThen.teachingMethod()
            //: } rightBlock: {
        } rightBlock: {
            //: TalkingAlertShow.hideAlert()
            AlongThen.teachingMethod()
            //: self.req_pullBlackRequest()
            self.cellRequest()
        }
    }
}

// MARK: Layout

//: extension TalkingUserDetailNaviBarView {
extension RestrictionView {
    /// 刷新
    //: func refreshView(_ userModel: TalkingUserInfoModel) {
    func serviceList(_ userModel: TalkingWhiteTransformable) {
        //: self.userInfoModel = userModel
        self.userInfoModel = userModel
        //: self.isBlack = userModel.inMyBlackList
        self.isBlack = userModel.inMyBlackList
        //: self.moreButton.isHidden = (userModel.uid == WatercourseThen.share.loginUid)
        self.moreButton.isHidden = (userModel.uid == WatercourseThen.share.loginUid)
        //: titleLab.text = userModel.nickname
        titleLab.text = userModel.nickname
    }

    //: private func setupSubviews() {
    private func eliteRemove() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: addSubview(bgImgView)
        addSubview(bgImgView)
        //: addSubview(whiteBgView)
        addSubview(whiteBgView)
        //: whiteBgView.addSubview(titleLab)
        whiteBgView.addSubview(titleLab)
        //: addSubview(backButton)
        addSubview(backButton)
        //: addSubview(moreButton)
        addSubview(moreButton)
    }

    //: private func setupSubViewsConstraint() {
    private func checkRemove() {
        //: bgImgView.snp.makeConstraints { make in
        bgImgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: whiteBgView.snp.makeConstraints { make in
        whiteBgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(kLet_environmentContent)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(NavigationBarHeight)
            make.height.equalTo(kLet_infoButtonValue)
            //: make.width.equalTo(200)
            make.width.equalTo(200)
        }

        //: backButton.snp.makeConstraints { make in
        backButton.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.width.equalTo(40)
            make.width.equalTo(40)
            //: make.height.equalTo(NavigationBarHeight)
            make.height.equalTo(kLet_infoButtonValue)
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(kLet_environmentContent)
        }

        //: moreButton.snp.makeConstraints { make in
        moreButton.snp.makeConstraints { make in
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.centerY.equalTo(backButton.snp.centerY)
            make.centerY.equalTo(backButton.snp.centerY)
            //: make.size.equalTo(CGSize(width: 45, height: NavigationBarHeight))
            make.size.equalTo(CGSize(width: 45, height: kLet_infoButtonValue))
        }
    }

    //: private func bindInteraction() {
    private func fastener() {
        //: moreButton.rx.controlEvent(.touchUpInside).subscribe(onNext: { [weak self] in
        moreButton.rx.controlEvent(.touchUpInside).subscribe(onNext: { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.registerMoreButtonAction()
            self.nameAction()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)
    }
}
