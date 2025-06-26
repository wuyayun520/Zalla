
//: Declare String Begin

/*: "#201E50" :*/
fileprivate let str_contentText:[Character] = ["#","2","0","1","E","5","0"]

/*: "#1F1624" :*/
fileprivate let str_shareMainValue:[Character] = ["#","1","F","1","6","2"]
fileprivate let str_infoAutomaticValue:String = "reply"

/*: "quick_video_topview" :*/
fileprivate let str_monthName:String = "quserck"
fileprivate let str_viewContent:String = "topviapp"

/*: "btn_back_white" :*/
fileprivate let str_myData:[Character] = ["b","t","n","_","b","a"]
fileprivate let str_blockName:String = "ck_whiteself type distance quality"

/*: "Random Video" :*/
fileprivate let str_hideData:[Character] = ["R","a","n","d","o","m"," ","V","i","d","e","o"]

/*: "icon_rank_coin" :*/
fileprivate let str_withText:[Character] = ["i","c","o","n","_"]
fileprivate let str_themeContent:[Character] = ["r","a","n","k","_","c","o","i","n"]

/*: "btn_quick_back_nor" :*/
fileprivate let str_toColorName:[Character] = ["b","t","n","_","q","u","i","c","k","_","b","a","c","k","_","n","o"]
fileprivate let str_giftName:[Character] = ["r"]

/*: "icon_video_skip" :*/
fileprivate let str_mainDataTitle:[Character] = ["i","c","o","n","_","v","i","d","e","o","_","s","k","i","p"]

/*: "#9610FF" :*/
fileprivate let str_cellContent:[Character] = ["#","9","6","1","0","F","F"]

/*: "#8566FF" :*/
fileprivate let str_buttonTitle:String = "user make ref#8566FF"

/*: "icon_coin_match_line" :*/
fileprivate let str_mainName:[Character] = ["i","c","o","n","_","c","o","i","n","_","m","a","t","c","h","_","l","i","n","e"]

/*: "matchId" :*/
fileprivate let str_equalData:[UInt8] = [0x9,0x5,0x10,0x7,0xc,0x2d,0x0]

private func packageStyle(back num: UInt8) -> UInt8 {
    return num ^ 100
}

/*: "source" :*/
fileprivate let str_iconText:[UInt8] = [0xcf,0xd3,0xc9,0xce,0xdf,0xd9]

/*: "type" :*/
fileprivate let str_yearMidName:[UInt8] = [0xaf,0xa2,0xab,0xbe]

private func targetCore(tool num: UInt8) -> UInt8 {
    return num ^ 219
}

/*: "uid" :*/
fileprivate let str_bounceValue:[Character] = ["u","i","d"]

/*: "fromFreeCall" :*/
fileprivate let str_moveTimeValue:[Character] = ["f","r","o","m","F","r","e","e","C","a","l","l"]

/*: "cmd" :*/
fileprivate let str_giftRepresentationTitle:[UInt8] = [0xff,0xf1,0xf8]

private func stampPad(tab num: UInt8) -> UInt8 {
    return num ^ 156
}

/*: "requestCall" :*/
fileprivate let str_sharedAddReturnData:String = "subequest"
fileprivate let str_clearValue:String = "var view equal path frameCall"

/*: "data" :*/
fileprivate let str_voiceName:[UInt8] = [0x61,0x74,0x61,0x64]

/*: "onRequestCall" :*/
fileprivate let str_mainTitle:String = "onRreturn size let"
fileprivate let str_tagTitle:String = "EQUE"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  OffAllRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by young on 2022/11/7.
//

//: import UIKit
import UIKit

//: class TalkingMatchResultViewController: TalkingBaseViewController {
class OffAllRecognizerDelegate: MusicViewController {
    //: private var currentModel = TalkingMatchResultModel()
    private var currentModel = AchromaticColorMeasurable() // 当前展示的model

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        // 每次打开更新金额
        //: refreshCoin()
        verso()
    }

    //: override func viewWillDisappear(_ animated: Bool) {
    override func viewWillDisappear(_ animated: Bool) {
        //: super.viewWillDisappear(animated)
        super.viewWillDisappear(animated)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true

        //: setupSubviews()
        unAgency()
        //: setupSubViewsConstraint()
        windowView()
        //: refreshUI()
        dateWith()

        /// 添加刷新余额的通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(refreshCoin),
                                               selector: #selector(verso),
                                               //: name: UPDATE_USER_GETINFOCOLUMN_NOTIFICATION,
                                               name: kLet_tabLimitData,
                                               //: object: nil)
                                               object: nil)
    }

    //: deinit {
    deinit {
        //: TalkingSocketManager.shared.videoMatchDelegate = nil
        NameSocketManager.shared.videoMatchDelegate = nil
        //: TalkingSocketManager.shared.errorDelegate = nil
        NameSocketManager.shared.errorDelegate = nil
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var backView: UIImageView = {
    private lazy var backView: UIImageView = {
        //: let view = UIImageView.init()
        let view = UIImageView()
        //: view.image = UIImage.imageGradientTopToBottonColor(colors: [UIColor.init(hex: "#201E50")!.cgColor, UIColor.init(hex: "#1F1624")!.cgColor], size: CGSize(width: ScreenWidth, height: ScreenHeight))
        view.image = UIImage.actionGradientSize(colors: [UIColor(hex: (String(str_contentText)))!.cgColor, UIColor(hex: (String(str_shareMainValue) + str_infoAutomaticValue.replacingOccurrences(of: "reply", with: "4")))!.cgColor], size: CGSize(width: kLet_scaleName, height: kLet_environmentText))
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true

        //: let topView = UIImageView.init()
        let topView = UIImageView()
        //: topView.image = UIImage.withView(name: "quick_video_topview")
        topView.image = UIImage.withView(name: (str_monthName.replacingOccurrences(of: "user", with: "ui") + "_video_" + str_viewContent.replacingOccurrences(of: "app", with: "ew")))
        //: topView.isUserInteractionEnabled = true
        topView.isUserInteractionEnabled = true
        //: view.addSubview(topView)
        view.addSubview(topView)
        //: topView.snp.makeConstraints { make in
        topView.snp.makeConstraints { make in
            //: make.leading.top.equalTo(0)
            make.leading.top.equalTo(0)
            //: make.width.height.equalTo(actualWidth(w: 218))
            make.width.height.equalTo(actualWidth(w: 218))
        }
        //: return view
        return view
        //: }()
    }()

    //: private lazy var navView: UIView = {
    private lazy var navView: UIView = {
        //: let nav = UIView()
        let nav = UIView()
        //: nav.backgroundColor = .clear
        nav.backgroundColor = .clear
        // 返回
        //: let backBtn = UIButton(type: .custom)
        let backBtn = UIButton(type: .custom)
        //: backBtn.setImage(UIImage.withView(name: "btn_back_white"), for: .normal)
        backBtn.setImage(UIImage.withView(name: (String(str_myData) + String(str_blockName.prefix(8)))), for: .normal)
        //: backBtn.addTarget(self, action: #selector(clickBackButtonAction), for: .touchUpInside)
        backBtn.addTarget(self, action: #selector(fastenerRequest), for: .touchUpInside)
        //: nav.addSubview(backBtn)
        nav.addSubview(backBtn)
        //: backBtn.snp.makeConstraints { make in
        backBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.width.equalTo(20)
            make.width.equalTo(20)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
            //: make.top.equalTo(StatusBarHeight+12)
            make.top.equalTo(kLet_environmentContent + 12)
        }
        // 标题
        //: let titleLab = UILabel()
        let titleLab = UILabel()
        //: titleLab.font = UIFont.showSize(fontSize: 17)
        titleLab.font = UIFont.showSize(fontSize: 17)
        //: titleLab.textColor = UIColor.white
        titleLab.textColor = UIColor.white
        //: titleLab.textAlignment = .center
        titleLab.textAlignment = .center
        //: titleLab.text = "Random Video".localized
        titleLab.text = (String(str_hideData)).localized
        //: nav.addSubview(titleLab)
        nav.addSubview(titleLab)
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.centerY.equalTo(backBtn)
            make.centerY.equalTo(backBtn)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        // 余额
        //: let coinBtn = TalkingButton()
        let coinBtn = MediaControl()
        //: coinBtn.tag = 1001
        coinBtn.tag = 1001
        //: coinBtn.setImage(UIImage.withView(name: "icon_rank_coin"), for: .normal)
        coinBtn.setImage(UIImage.withView(name: (String(str_withText) + String(str_themeContent))), for: .normal)
        //: coinBtn.setImage(UIImage.withView(name: "icon_rank_coin"), for: .disabled)
        coinBtn.setImage(UIImage.withView(name: (String(str_withText) + String(str_themeContent))), for: .disabled)
        //: coinBtn.isEnabled = false
        coinBtn.isEnabled = false
        //: coinBtn.setTitleColor(UIColor.appTitleColor(), for: .normal)
        coinBtn.setTitleColor(UIColor.ending(), for: .normal)
        //: coinBtn.setTitle("\(WatercourseThen.share.loginUserMode.mf_coin)", for: .normal)
        coinBtn.setTitle("\(WatercourseThen.share.loginUserMode.mf_coin)", for: .normal)
        //: coinBtn.titleLabel?.font = UIFont.pingfangFont(type: .Semibold, fontSize: 15)
        coinBtn.titleLabel?.font = UIFont.conversationSize(type: .Semibold, fontSize: 15)
        //: coinBtn.backgroundColor = UIColor.white
        coinBtn.backgroundColor = UIColor.white
        //: coinBtn.layer.cornerRadius = 12
        coinBtn.layer.cornerRadius = 12
        //: coinBtn.imageAlignment = .left
        coinBtn.imageAlignment = .left
//        coinBtn.spaceBetweenTitleAndImage = 3
        //: nav.addSubview(coinBtn)
        nav.addSubview(coinBtn)
        //: coinBtn.snp.makeConstraints { make in
        coinBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-19)
            make.trailing.equalTo(-19)
            //: make.centerY.equalTo(backBtn)
            make.centerY.equalTo(backBtn)
            //: make.height.equalTo(24)
            make.height.equalTo(24)
        }

        //: return nav
        return nav
        //: }()
    }()

    //: private lazy var picturesView: TalkingMatchResultPicturesView = {
    private lazy var picturesView: HeadReactiveCompatible = {
        //: let v = TalkingMatchResultPicturesView(frame: .zero)
        let v = HeadReactiveCompatible(frame: .zero)
        //: v.matchBackBlock = { [weak self] in
        v.matchBackBlock = { [weak self] in
            //: guard let self = self else {
            guard let self = self else {
                //: return
                return
            }
            //: self.clickBackButtonAction()
            self.fastenerRequest()
        }
        //: return v
        return v
        //: }()
    }()

    //: private lazy var showLastBtn: UIButton = {
    private lazy var showLastBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setBackgroundImage(UIImage.withView(name: "btn_quick_back_nor"), for: .normal)
        btn.setBackgroundImage(UIImage.withView(name: (String(str_toColorName) + String(str_giftName))), for: .normal)
        //: btn.addTarget(self, action: #selector(showLastButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(sufficient), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var skipBtn: UIButton = {
    private lazy var skipBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.withView(name: "icon_video_skip"), for: .normal)
        btn.setImage(UIImage.withView(name: (String(str_mainDataTitle))), for: .normal)
        //: btn.addTarget(self, action: #selector(clickBackButtonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(fastenerRequest), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var callBtn: UIButton = {
    private lazy var callBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(callButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(changeClick), for: .touchUpInside)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: [UIColor.init(hex: "#9610FF")!.cgColor, UIColor.init(hex: "#8566FF")!.cgColor], size: CGSize(width: 140, height: 69)), for: .normal)
        btn.setBackgroundImage(UIImage.distancePlay(colors: [UIColor(hex: (String(str_cellContent)))!.cgColor, UIColor(hex: (String(str_buttonTitle.suffix(7))))!.cgColor], size: CGSize(width: 140, height: 69)), for: .normal)
        //: btn.layer.cornerRadius = 69/2
        btn.layer.cornerRadius = 69 / 2
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.titleLabel?.numberOfLines = 2
        btn.titleLabel?.numberOfLines = 2

        //: return btn
        return btn
        //: }()
    }()

    //: lazy var showLastArr: [TalkingMatchResultModel] = {
    lazy var showLastArr: [AchromaticColorMeasurable] = //: return Array<AchromaticColorMeasurable>()
        .init()
    //: }()

    //: lazy var dzView: UIImageView = {
    lazy var dzView: UIImageView = {
        //: let view = UIImageView.init()
        let view = UIImageView()
        //: view.image = UIImage.withView(name: "icon_coin_match_line")
        view.image = UIImage.withView(name: (String(str_mainName)))
        //: view.isHidden = true
        view.isHidden = true
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMatchResultViewController {
extension OffAllRecognizerDelegate {
    /// 返回按钮
    //: @objc private func clickBackButtonAction() {
    @objc private func fastenerRequest() {
        //: if self.presentedViewController != nil {
        if self.presentedViewController != nil { // 可能有重置弹窗未消除的情况，许手动消除
            //: self.presentedViewController?.dismiss(animated: true)
            self.presentedViewController?.dismiss(animated: true)
        }
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }

    /// 拨打视频通话socket
    //: @objc private func callButtonClick() {
    @objc private func changeClick() {
        //: var data: [String: Any] = ["matchId": self.currentModel.matchId,
        var data: [String: Any] = [String(bytes: str_equalData.map{packageStyle(back: $0)}, encoding: .utf8)!: self.currentModel.matchId,
                                   //: "source": self.currentModel.source,
                                   String(bytes: str_iconText.map{$0^188}, encoding: .utf8)!: self.currentModel.source,
                                   //: "type": self.currentModel.type,
                                   String(bytes: str_yearMidName.map{targetCore(tool: $0)}, encoding: .utf8)!: self.currentModel.type,
                                   //: "uid": self.currentModel.uid]
                                   (String(str_bounceValue)): self.currentModel.uid]
        //: if WatercourseThen.share.loginUserMode.freeCallTimes > 0 && WatercourseThen.share.loginUserMode.sex == Gender.male.rawValue {
        if WatercourseThen.share.loginUserMode.freeCallTimes > 0, WatercourseThen.share.loginUserMode.sex == PushDownStackScalarLiteral.male.rawValue {
            //: data.updateValue(1, forKey: "fromFreeCall")
            data.updateValue(1, forKey: (String(str_moveTimeValue)))
        }
        //: let info: [String: Any] = ["cmd": "requestCall", "data": data]
        let info: [String: Any] = [String(bytes: str_giftRepresentationTitle.map{stampPad(tab: $0)}, encoding: .utf8)!: (str_sharedAddReturnData.replacingOccurrences(of: "sub", with: "r") + String(str_clearValue.suffix(4))), String(bytes: str_voiceName.reversed(), encoding: .utf8)!: data]
        //: TalkingSocketManager.shared.sendMessage(info: info)
        NameSocketManager.shared.migration(info: info)
        //: TalkingSocketManager.shared.videoMatchDelegate = self
        NameSocketManager.shared.videoMatchDelegate = self
        //: TalkingSocketManager.shared.errorDelegate = self
        NameSocketManager.shared.errorDelegate = self
    }

    /// 通知刷新余额
    //: @objc private func refreshCoin() {
    @objc private func verso() {
        //: AppManagerRequest.func__getInfoColumn { succeed, result, errorModel in
        ResultReactiveCompatible.solicitation { succeed, _, _ in
            //: guard succeed == true else { return }
            guard succeed == true else { return }

            //: let coinBtn = self.navView.viewWithTag(1001) as! TalkingButton
            let coinBtn = self.navView.viewWithTag(1001) as! MediaControl
            //: coinBtn.setTitle(WatercourseThen.share.loginUserMode.mf_coin, for: .normal)
            coinBtn.setTitle(WatercourseThen.share.loginUserMode.mf_coin, for: .normal)
        }
    }

    /// 展示上一个视频速配结果
    //: @objc private func showLastButtonClick() {
    @objc private func sufficient() {
        //: showLastArr.removeLast()
        showLastArr.removeLast()
        //: refreshUI()
        dateWith()
    }
}

// MARK: - SocketManagerMatchResultDelegate

//: extension TalkingMatchResultViewController: SocketManagerVideoMatchDelegate {
extension OffAllRecognizerDelegate: LikeMatchDelegate {
    //: func socket_match_onVideoMatch(data: [String: Any]) {}
    func coverUp(data _: [String: Any]) {}

    /// 匹配成功，可以拨打通话（此处跳转特殊处理）
    //: func socket_match_onRequestCall(data: [String: Any]) {
    func nudgeAll(data: [String: Any]) {
        //: var arrM = self.navigationController!.viewControllers
        var arrM = self.navigationController!.viewControllers
        //: for (index, vc) in self.navigationController!.viewControllers.enumerated() {
        for (index, vc) in self.navigationController!.viewControllers.enumerated() {
            //: if vc.isKind(of: TalkingMatchResultViewController.self) {
            if vc.isKind(of: OffAllRecognizerDelegate.self) {
                //: arrM.remove(at: index)
                arrM.remove(at: index)
                //: break
                break
            }
        }
        //: var newData = data
        var newData = data
        //: newData["uid"] = self.currentModel.uid
        newData[(String(str_bounceValue))] = self.currentModel.uid
        //: let vc = TalkingVideoChatViewController()
        let vc = UpwardlyViewController()
        //: vc.chatModel = TalkingVideoChatModel.getVideoModel(info: newData, situation: .Start)
        vc.chatModel = PublishChatModel.requestSituation(info: newData, situation: .Start)

        //: vc.hidesBottomBarWhenPushed = true
        vc.hidesBottomBarWhenPushed = true
        //: arrM.append(vc)
        arrM.append(vc)
        //: self.navigationController?.setViewControllers(arrM, animated: true)
        self.navigationController?.setViewControllers(arrM, animated: true)
    }
}

// MARK: - LabelObjectProtocol

//: extension TalkingMatchResultViewController: TalkingSocketManagerErrorDelegate {
extension OffAllRecognizerDelegate: LabelObjectProtocol {
    /// socket收到失败消息
    //: func socket_didRecieveError(errorNo: Int, cmd: String, msg: String, data: [String: Any]) {
    func loadDown(errorNo: Int, cmd: String, msg: String, data _: [String: Any]) {
        //: if cmd == "onRequestCall" {
        if cmd == (String(str_mainTitle.prefix(3)) + str_tagTitle.lowercased() + "stCall") {
            //: self.func__showStatusBarErrorMsg(showMsg: msg)
            self.detailKey(showMsg: msg)
            //: if errorNo == VideoChatErrorCode.CallEnd.rawValue {
            if errorNo == FactorySumLiteral.CallEnd.rawValue {
                //: clickBackButtonAction()
                fastenerRequest()
                //: } else if errorNo == VideoChatErrorCode.MoneyLack.rawValue {
            } else if errorNo == FactorySumLiteral.MoneyLack.rawValue {
                //: guard WatercourseThen.share.appStatus == AppSkinStatus.normal.rawValue else { return }
                guard WatercourseThen.share.appStatus == PublishWidthTotal.normal.rawValue else { return }
                //: IndoorsPushManager.share.func__jumpToWebRecharge(sufficient: false)
                IndoorsPushManager.share.rechargeVideo(sufficient: false)
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingMatchResultViewController {
extension OffAllRecognizerDelegate {
    /// 添加视图
    //: private func setupSubviews() {
    private func unAgency() {
        //: self.view.addSubview(backView)
        self.view.addSubview(backView)
        //: backView.addSubview(navView)
        backView.addSubview(navView)
        //: backView.addSubview(picturesView)
        backView.addSubview(picturesView)
        //: backView.addSubview(showLastBtn)
        backView.addSubview(showLastBtn)
        //: backView.addSubview(skipBtn)
        backView.addSubview(skipBtn)
        //: backView.addSubview(callBtn)
        backView.addSubview(callBtn)
        //: callBtn.addSubview(dzView)
        callBtn.addSubview(dzView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func windowView() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: navView.snp.makeConstraints { make in
        navView.snp.makeConstraints { make in
            //: make.leading.top.width.equalToSuperview()
            make.leading.top.width.equalToSuperview()
            //: make.height.equalTo(StatusBarNavigationBarHeight)
            make.height.equalTo(kLet_barUserName)
        }
        //: callBtn.snp.makeConstraints { make in
        callBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-(kDeviceSafeBottomHeight+36))
            make.bottom.equalTo(-(kLet_partyKeyTitle + 36))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(69)
            make.height.equalTo(69)
            //: make.width.equalTo(140)
            make.width.equalTo(140)
        }

        //: picturesView.snp.makeConstraints { make in
        picturesView.snp.makeConstraints { make in
            //: make.top.equalTo(navView.snp.bottom).offset(actualWidth(w: 17))
            make.top.equalTo(navView.snp.bottom).offset(actualWidth(w: 17))
            //: make.leading.equalTo(18)
            make.leading.equalTo(18)
            //: make.trailing.equalTo(-22)
            make.trailing.equalTo(-22)
            //: make.bottom.equalTo(callBtn.snp.top).offset(-32)
            make.bottom.equalTo(callBtn.snp.top).offset(-32)
        }
        //: showLastBtn.snp.makeConstraints { make in
        showLastBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(callBtn.snp.leading).offset(-20)
            make.trailing.equalTo(callBtn.snp.leading).offset(-20)
            //: make.centerY.equalTo(callBtn)
            make.centerY.equalTo(callBtn)
            //: make.size.equalTo(CGSize(width: 50, height: 50))
            make.size.equalTo(CGSize(width: 50, height: 50))
        }

        //: dzView.snp.makeConstraints { make in
        dzView.snp.makeConstraints { make in
            //: make.leading.equalTo(146)
            make.leading.equalTo(146)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.height.equalTo(8)
            make.height.equalTo(8)
            //: make.width.equalTo(42)
            make.width.equalTo(42)
        }
        //: skipBtn.snp.makeConstraints { make in
        skipBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(callBtn.snp.trailing).offset(21)
            make.leading.equalTo(callBtn.snp.trailing).offset(21)
            //: make.centerY.equalTo(callBtn)
            make.centerY.equalTo(callBtn)
            //: make.size.equalTo(50)
            make.size.equalTo(50)
        }
    }

    /// 刷新UI
    //: private func refreshUI() {
    private func dateWith() {
        //: if showLastArr.count > 0 {
        if showLastArr.count > 0 { // 最后一个是最新数据
            //: currentModel = showLastArr.last!
            currentModel = showLastArr.last!
        }
        //: setPriceBtn()
        dataMoment()
        //: picturesView.updatePicturesView(model: currentModel)
        picturesView.withBuild(model: currentModel)
        //: picturesView.matchPlayVideoBlock = { [weak self] (videoUrl) in
        picturesView.matchPlayVideoBlock = { [weak self] videoUrl in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: let vc = TalkingMomentVideoVC.init(videoPath: videoUrl)
            let vc = UnheardOfViewDelegate(videoPath: videoUrl)
            //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
            self.toController()?.navigationController?.pushViewController(vc, animated: true)
        }

        //: showLastBtn.isHidden = (showLastArr.count >= 2) ? false:true
        showLastBtn.isHidden = (showLastArr.count >= 2) ? false : true

        // 审核模式隐藏金币
        //: if WatercourseThen.share.appStatus != AppSkinStatus.normal.rawValue {
        if WatercourseThen.share.appStatus != PublishWidthTotal.normal.rawValue {
            //: let coinBtn = self.navView.viewWithTag(1001) as! TalkingButton
            let coinBtn = self.navView.viewWithTag(1001) as! MediaControl
            //: coinBtn.isHidden = true
            coinBtn.isHidden = true
            //: setPriceBtn()
            dataMoment()
        }
    }

    //: func setPriceBtn() {
    func dataMoment() {
        //: let attrString = String.setPriceStr(fee: currentModel.fee, originalFee: currentModel.originalFee, freeCallTimes: WatercourseThen.share.loginUserMode.freeCallTimes)
        let attrString = String.lighterage(fee: currentModel.fee, originalFee: currentModel.originalFee, freeCallTimes: WatercourseThen.share.loginUserMode.freeCallTimes)
        //: callBtn.isHidden = false
        callBtn.isHidden = false
        //: callBtn.setAttributedTitle(attrString, for: .normal)
        callBtn.setAttributedTitle(attrString, for: .normal)
    }
}
