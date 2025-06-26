
//: Declare String Begin

/*: "bg_shouye_misanguang_default" :*/
fileprivate let str_blockModelTitle:String = "bg_shstatus control view true"
fileprivate let str_topData:String = "equalsan"
fileprivate let str_modelValue:[Character] = ["e","f","a","u","l","t"]

/*: "Popular" :*/
fileprivate let str_textErrorData:String = "color letPo"
fileprivate let str_indexEmptyValue:String = "PULAR"

/*: "777777" :*/
fileprivate let str_requestName:String = "stackstackstack"

/*: "icon_moment_news_nor" :*/
fileprivate let str_imageValue:[Character] = ["i","c","o","n","_","m","o","m","e","n","t","_","n","e","w"]
fileprivate let str_buttonContent:[Character] = ["s","_","n","o","r"]

/*: "icon_free_pre" :*/
fileprivate let str_topProgressValue:[Character] = ["i","c","o","n","_","f","r"]
fileprivate let str_tableContent:String = "ee_predynamic judgment direction edit in"

/*: "num" :*/
fileprivate let str_clearText:String = "nuinside"

/*: "99+" :*/
fileprivate let str_pictureTitle:[UInt8] = [0xf6,0xf6,0xe4]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StreamRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

// MARK: - 属性声明 & 生命周期方法

//: class TalkingMomentViewController: TalkingBaseViewController {
class StreamRecognizerDelegate: MusicViewController {
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: setupSubviews()
        holdfast()
        //: setupSubViewsConstraint()
        infoWith()
        //: NotificationCenter.default.addObserver(self, selector: #selector(freeNotif), name: FREEBTN_UPLOAD_POST_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(materialisation), name: kLet_screenSuccessNoText, object: nil)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: load_remindNum()
        think()
    }

    //: private lazy var bottomImgView: UIImageView = {
    private lazy var bottomImgView: UIImageView = {
        //: let imgV = UIImageView(image: UIImage.withView(name: "bg_shouye_misanguang_default"))
        let imgV = UIImageView(image: UIImage.withView(name: (String(str_blockModelTitle.prefix(5)) + "ouye_m" + str_topData.replacingOccurrences(of: "equal", with: "i") + "guang_d" + String(str_modelValue))))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var slideVC: QYSlideNavigationViewController = {
    private lazy var slideVC: StreamViewController = {
        //: let vc = QYSlideNavigationViewController()
        let vc = StreamViewController()
        //: vc.topDistance = NavigationBarHeight
        vc.topDistance = kLet_infoButtonValue
        //: vc.controllerItems = [TalkingPopularMomentVC()]
        vc.controllerItems = [SkimOverViewDelegate()]
        //: vc.titleItems = ["Popular".localized]
        vc.titleItems = [(String(str_textErrorData.suffix(2)) + str_indexEmptyValue.lowercased()).localized]
        //: vc.titleViewBackgroundColor = .clear
        vc.titleViewBackgroundColor = .clear
        //: vc.titleFont = .pingfangFont(type: .Medium, fontSize: 16)
        vc.titleFont = .conversationSize(type: .Medium, fontSize: 16)
        //: vc.selectTitleFont = .pingfangFont(type: .Medium, fontSize: 18)
        vc.selectTitleFont = .conversationSize(type: .Medium, fontSize: 18)
        //: vc.normalColor = UIColor(hex: "777777")!
        vc.normalColor = UIColor(hex: (str_requestName.replacingOccurrences(of: "stack", with: "77")))!
        //: vc.selectedColor = UIColor.appTitleColor()
        vc.selectedColor = UIColor.ending()
        //: vc.hasBttomTabBar = true
        vc.hasBttomTabBar = true
        //: vc.delegate = self
        vc.delegate = self
        //: vc.scrollEnabled = false
        vc.scrollEnabled = false
        //: return vc
        return vc
        //: }()
    }()

    //: private lazy var newsBtn: UIButton = {
    private lazy var newsBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.withView(name: "icon_moment_news_nor"), for: .normal)
        btn.setImage(UIImage.withView(name: (String(str_imageValue) + String(str_buttonContent))), for: .normal)
        //: btn.addTarget(self, action: #selector(newsBtnClickEvent), for: .touchUpInside)
        btn.addTarget(self, action: #selector(prototypal), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var newsBadgeLab: BadgeLab = {
    private lazy var newsBadgeLab: UnknownThen = {
        //: let label = BadgeLab()
        let label = UnknownThen()
        //: label.isHidden = true
        label.isHidden = true
        //: return label
        return label
        //: }()
    }()

    //: private lazy var freeBtn: UIButton = {
    private lazy var freeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setBackgroundImage(UIImage.withView(name: "icon_free_pre"), for: .normal)
        btn.setBackgroundImage(UIImage.withView(name: (String(str_topProgressValue) + String(str_tableContent.prefix(6)))), for: .normal)
        //: btn.addTarget(self, action: #selector(freeBtnClickEvent), for: .touchUpInside)
        btn.addTarget(self, action: #selector(dataWith), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingMomentViewController {
extension StreamRecognizerDelegate {
    /// 获取用户当前未读动态数量
    //: private func load_remindNum() {
    private func think() {
        //: TalkingMomentRequestTool.req_getRemindNum { succeed, result, errorModel in
        StreamRequestTool.germanismCompletion { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            //: let json = JSON(result ?? [])
            let json = JSON(result ?? [])
            //: self.refreshNewsbadge(num: json["num"].intValue)
            self.timeNum(num: json[(str_clearText.replacingOccurrences(of: "inside", with: "m"))].intValue)
        }
    }
}

// MARK: - Event

//: extension TalkingMomentViewController {
extension StreamRecognizerDelegate {
    /// 跳转到动态通知列表
    //: @objc private func newsBtnClickEvent() {
    @objc private func prototypal() {
        //: refreshNewsbadge(num: 0)
        timeNum(num: 0)
        //: let vc = TalkingMomentNewsFeedViewController()
        let vc = AtomicSum85Then()
        //: self.navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
    }

    /// 发布通知
    //: @objc func freeNotif() {
    @objc func materialisation() {
        //: freeBtnClickEvent()
        dataWith()
    }

    /// 发布
    //: @objc func freeBtnClickEvent() {
    @objc func dataWith() {
        //: if WatercourseThen.share.loginUserMode.isTPAuth != TPUserAuth.isSuccessed.rawValue, WatercourseThen.share.loginUserMode.sex == Gender.female.rawValue, WatercourseThen.share.appStatus == AppSkinStatus.normal.rawValue {
        if WatercourseThen.share.loginUserMode.isTPAuth != CommandCompatibleValue.isSuccessed.rawValue, WatercourseThen.share.loginUserMode.sex == PushDownStackScalarLiteral.female.rawValue, WatercourseThen.share.appStatus == PublishWidthTotal.normal.rawValue {
            //: AppManagerRequest.func__requestUserInfo { _, _, _ in
            ResultReactiveCompatible.videoOf { _, _, _ in
                //: if !WatercourseThen.share.loginUserMode.isNaUser,
                if !WatercourseThen.share.loginUserMode.isNaUser,
                   //: WatercourseThen.share.loginUserMode.isTPAuth != TPUserAuth.isSuccessed.rawValue
                   WatercourseThen.share.loginUserMode.isTPAuth != CommandCompatibleValue.isSuccessed.rawValue
                {
                    /// 真人认证提示弹窗
                    //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
                    AdministratorReactiveCompatible.shared.verification()
                    //: return
                    return
                        //: } else {
                } else {
                    //: self.pushFreeVC()
                    self.passOn()
                }
            }
            //: } else {
        } else {
            //: pushFreeVC()
            passOn()
        }
    }

    //: private func pushFreeVC() {
    private func passOn() {
        //: let isShow = Defaults.bool(forKey: TalkingFreeTipsViewIsShow)
        let isShow = kLet_timeContent.bool(forKey: kLet_managerTopValue)
        //: let freeVC = TalkingFreeViewController()
        let freeVC = AtPublishViewController()
        //: freeVC.delegate = slideVC.controllerItems.first as? any TalkingFreeViewControllerDelegate
        freeVC.delegate = slideVC.controllerItems.first as? any TalkingControllerDelegate
        //: guard isShow == false else {
        guard isShow == false else { // 已展示过
            //: navigationController?.pushViewController(freeVC, animated: true)
            navigationController?.pushViewController(freeVC, animated: true)
            //: return
            return
        }
        //: TalkingFreeTipsView().showView {
        HawkNoseReactiveCompatible().iconPlayer {
            //: self.navigationController?.pushViewController(freeVC, animated: true)
            self.navigationController?.pushViewController(freeVC, animated: true)
        }
    }
}

// MARK: - SlideNavigationDelegate

//: extension TalkingMomentViewController: QYSlideNavigationDelegate {
extension StreamRecognizerDelegate: SlideNavigationDelegate {
    //: func selectedViewController(_ viewController: UIViewController, index: Int) {}
    func upStop(_: UIViewController, index _: Int) {}
}

// MARK: - Layout

//: extension TalkingMomentViewController {
extension StreamRecognizerDelegate {
    /// 刷新动态通知角标
    //: func refreshNewsbadge(num: Int) {
    func timeNum(num: Int) {
        //: newsBadgeLab.isHidden = num > 0 ? false:true
        newsBadgeLab.isHidden = num > 0 ? false : true
        //: newsBadgeLab.text = num > 99 ? "99+":String(num)
        newsBadgeLab.text = num > 99 ? "99+" : String(num)
    }

    /// 添加视图
    //: private func setupSubviews() {
    private func holdfast() {
        //: hideNavi = true
        hideNavi = true
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        // 导航底部渐变背景
        //: view.addSubview(bottomImgView)
        view.addSubview(bottomImgView)
        //: addChild(slideVC)
        addChild(slideVC)
        //: view.addSubview(slideVC.view)
        view.addSubview(slideVC.view)
        //: view.addSubview(newsBtn)
        view.addSubview(newsBtn)
        //: view.addSubview(newsBadgeLab)
        view.addSubview(newsBadgeLab)
        //: view.addSubview(freeBtn)
        view.addSubview(freeBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func infoWith() {
        //: bottomImgView.snp.makeConstraints { make in
        bottomImgView.snp.makeConstraints { make in
            //: make.leading.top.width.equalToSuperview()
            make.leading.top.width.equalToSuperview()
            //: make.height.equalTo(145+StatusBarHeight)
            make.height.equalTo(145 + kLet_environmentContent)
        }
        //: newsBtn.snp.makeConstraints { make in
        newsBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(kLet_environmentContent)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.size.equalTo(CGSize(width: 40, height: 40))
            make.size.equalTo(CGSize(width: 40, height: 40))
        }
        //: newsBadgeLab.snp.makeConstraints { make in
        newsBadgeLab.snp.makeConstraints { make in
            //: make.leading.equalTo(newsBtn.snp.trailing).offset(-20)
            make.leading.equalTo(newsBtn.snp.trailing).offset(-20)
            //: make.top.equalTo(newsBtn).offset(2)
            make.top.equalTo(newsBtn).offset(2)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
            //: make.width.greaterThanOrEqualTo(16)
            make.width.greaterThanOrEqualTo(16)
        }
        //: freeBtn.snp.makeConstraints { make in
        freeBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.bottom.equalTo(-115)
            make.bottom.equalTo(-115)
            //: make.size.equalTo(CGSize(width: 55, height: 55))
            make.size.equalTo(CGSize(width: 55, height: 55))
        }
    }
}
