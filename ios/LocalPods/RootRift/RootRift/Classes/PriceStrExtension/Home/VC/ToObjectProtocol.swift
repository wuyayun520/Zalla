
//: Declare String Begin

/*: "bg_shouye_misanguang_default" :*/
fileprivate let str_distanceValue:[Character] = ["b","g","_","s","h","o","u","y","e","_","m","i"]
fileprivate let str_equalDataValue:String = "sangphonea"
fileprivate let str_buttonSexTitle:[Character] = ["n","g","_","d","e","f","a","u","l","t"]

/*: "#777777" :*/
fileprivate let str_whyCenterTitle:String = "#777777"

/*: "#333333" :*/
fileprivate let str_makeValue:String = "#sourcesource"
fileprivate let str_selectedData:String = "33"

/*: "Party" :*/
fileprivate let str_imageValue:String = "Partymake to"

/*: "Popular" :*/
fileprivate let str_toMessageText:[Character] = ["P","o","p","u","l","a","r"]

/*: "Nearby" :*/
fileprivate let str_bottomName:[Character] = ["N","e","a","r","b","y"]

/*: "New" :*/
fileprivate let str_topTitle:[Character] = ["N","e","w"]

/*: "btn_popular_search_nor" :*/
fileprivate let str_userValue:String = "btn_poplayer hidden if self"
fileprivate let str_privacyData:[Character] = ["p","u","l","a","r","_","s","e","a","r","c","h","_","n","o","r"]

/*: "icon_live_nor" :*/
fileprivate let str_detailValue:String = "icon_lview let"
fileprivate let str_equalName:String = "ive_norlast to"

/*: "btn_popular_ranking_nor" :*/
fileprivate let str_labelModelElseName:String = "video type view succeedbtn_"
fileprivate let str_dragTitle:String = "r_raimage equal"
fileprivate let str_dayData:String = "g_nortext guidance source view"

/*: "Congratulation on your chance to join the Star Plan !" :*/
fileprivate let str_bottomModelData:[UInt8] = [0x21,0x20,0x6e,0x61,0x6c,0x50,0x20,0x72,0x61,0x74,0x53,0x20,0x65,0x68,0x74,0x20,0x6e,0x69,0x6f,0x6a,0x20,0x6f,0x74,0x20,0x65,0x63,0x6e,0x61,0x68,0x63,0x20,0x72,0x75,0x6f,0x79,0x20,0x6e,0x6f,0x20,0x6e,0x6f,0x69,0x74,0x61,0x6c,0x75,0x74,0x61,0x72,0x67,0x6e,0x6f,0x43]

/*: "No, thanks" :*/
fileprivate let str_styleText:[Character] = ["N","o",","," ","t","h","a","n","k","s"]

/*: "Find out more" :*/
fileprivate let str_commentData:String = "cell viewFind "
fileprivate let str_infoValue:String = "out moresize off"

/*: "clickStarProjectpop-upsCancel" :*/
fileprivate let str_toData:String = "data letclickS"
fileprivate let str_sendText:String = "ojehidden"
fileprivate let str_requestValue:[Character] = ["a","n","c","e","l"]

/*: "clickStarProjectpop-upsFindoutmore" :*/
fileprivate let str_listContent:[UInt8] = [0x96,0x9f,0x9c,0x96,0x9e,0x86,0xa7,0x94,0xa5,0x83,0xa5,0xa2,0x9d,0x98,0x96,0xa7,0xa3,0xa2,0xa3,0x60,0xa8,0xa3,0xa6,0x79,0x9c,0xa1,0x97,0xa2,0xa8,0xa7,0xa0,0xa2,0xa5,0x98]

fileprivate func modelKind(make num: UInt8) -> UInt8 {
    let value = Int(num) + 205
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Allow %@ to send you notifications?" :*/
fileprivate let str_myLinkName:[UInt8] = [0x3f,0x73,0x6e,0x6f,0x69,0x74,0x61,0x63,0x69,0x66,0x69,0x74,0x6f,0x6e,0x20,0x75,0x6f,0x79,0x20,0x64,0x6e,0x65,0x73,0x20,0x6f,0x74,0x20,0x40,0x25,0x20,0x77,0x6f,0x6c,0x6c,0x41]

/*: "Cancel" :*/
fileprivate let str_needName:String = "conversation can in add topCancel"

/*: "Settings" :*/
fileprivate let str_aspectName:String = "to"
fileprivate let str_wayHaveName:[Character] = ["e","t","t","i","n","g","s"]

/*: _ :*/
fileprivate let str_withFemaleValue:[Character] = ["_"]

/*: "male" :*/
fileprivate let str_acceptValue:[UInt8] = [0x25,0x29,0x24,0x2d]

private func appThe(button num: UInt8) -> UInt8 {
    return num ^ 72
}

/*: "female" :*/
fileprivate let str_toolName:[Character] = ["f","e","m","a","l","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ToObjectProtocol.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import JXPagingView
import JXPagingView
//: import JXSegmentedView
import JXSegmentedView
//: import UIKit
import UIKit

//: class TalkingSocialViewController: TalkingBaseViewController {
class ToObjectProtocol: MusicViewController {
    //: private let segmentedDataSource = JXSegmentedTitleDataSource()
    private let segmentedDataSource = JXSegmentedTitleDataSource()
    //: private var  isNearbyShow = false
    private var isNearbyShow = false
    //: var  seleteIndex = 1
    var seleteIndex = 1
    //: private var liveTipsTimer: Timer?
    private var liveTipsTimer: Timer? /// 头像动画timer

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: GiftFloatViewManager.shared.activeWhenShow()
        ToViewManager.shared.running()
    }

    //: override func viewDidDisappear(_ animated: Bool) {
    override func viewDidDisappear(_ animated: Bool) {
        //: super.viewDidDisappear(animated)
        super.viewDidDisappear(animated)
        //: GiftFloatViewManager.shared.stopWhenDismiss()
        ToViewManager.shared.assumedName()
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.setupSubviews()
        self.seek()
        //: self.setupSubViewsConstraint()
        self.mentalPictureOf()
        //: self.addNotification()
        self.imageNotification()
        //: self.func__checkStarPlanNeedShow()
        self.countSign()
        //: self.func__turnOnSystemNotification()
        self.shitworkNotification()
        //: self.pushIsClubVideo()
        self.viewVideo()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
        //: stop_liveTipsTimer()
        viewTimerMake()
    }

    // MARK: - Lazy load

    //: private lazy var bottomImgView: UIImageView = {
    private lazy var bottomImgView: UIImageView = {
        //: let imgV = UIImageView(image: UIImage.withView(name: "bg_shouye_misanguang_default"))
        let imgV = UIImageView(image: UIImage.withView(name: (String(str_distanceValue) + str_equalDataValue.replacingOccurrences(of: "phone", with: "u") + String(str_buttonSexTitle))))
        //: imgV.isUserInteractionEnabled = false
        imgV.isUserInteractionEnabled = false
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var categoryView: JXSegmentedView = {
    private lazy var categoryView: JXSegmentedView = {
        //: let segmentedView = JXSegmentedView.init(frame: CGRect.init(x: 0, y: StatusBarHeight, width: ScreenWidth, height: NavigationBarHeight))
        let segmentedView = JXSegmentedView(frame: CGRect(x: 0, y: kLet_environmentContent, width: kLet_scaleName, height: kLet_infoButtonValue))
        //: segmentedDataSource.itemSpacing = 18
        segmentedDataSource.itemSpacing = 18
        //: segmentedDataSource.titles = titleArray
        segmentedDataSource.titles = titleArray
        //: segmentedDataSource.isTitleMaskEnabled = false
        segmentedDataSource.isTitleMaskEnabled = false
        //: segmentedDataSource.isItemSpacingAverageEnabled = false
        segmentedDataSource.isItemSpacingAverageEnabled = false
        //: segmentedDataSource.isSelectedAnimable = false
        segmentedDataSource.isSelectedAnimable = false
        //: segmentedDataSource.titleNormalColor = UIColor.init(hex: "#777777")!
        segmentedDataSource.titleNormalColor = UIColor(hex: (str_whyCenterTitle.capitalized))!
        //: segmentedDataSource.titleSelectedColor = UIColor.init(hex: "#333333")!
        segmentedDataSource.titleSelectedColor = UIColor(hex: (str_makeValue.replacingOccurrences(of: "source", with: "33") + str_selectedData.capitalized))!
        //: segmentedDataSource.titleNormalFont = .pingfangFont(type: .Medium, fontSize: 16)
        segmentedDataSource.titleNormalFont = .conversationSize(type: .Medium, fontSize: 16)
        //: segmentedDataSource.titleSelectedFont = .pingfangFont(type: .Medium, fontSize: 18)
        segmentedDataSource.titleSelectedFont = .conversationSize(type: .Medium, fontSize: 18)
//        segmentedDataSource.itemWidthIncrement = 0
        //: let indicator = JXSegmentedIndicatorLineView()
        let indicator = JXSegmentedIndicatorLineView()
        //: indicator.indicatorWidth = 12
        indicator.indicatorWidth = 12
        //: indicator.indicatorHeight = 4
        indicator.indicatorHeight = 4
        //: indicator.verticalOffset = 4
        indicator.verticalOffset = 4
        //: indicator.lineStyle = .normal
        indicator.lineStyle = .normal
        //: indicator.indicatorColor = UIColor.init(hex: "#333333")!
        indicator.indicatorColor = UIColor(hex: (str_makeValue.replacingOccurrences(of: "source", with: "33") + str_selectedData.capitalized))!
        //: segmentedView.dataSource = segmentedDataSource
        segmentedView.dataSource = segmentedDataSource
        //: segmentedView.indicators = [indicator]
        segmentedView.indicators = [indicator]
        //: segmentedView.delegate = self
        segmentedView.delegate = self
        //: segmentedView.contentScrollView = pagerView.listContainerView.scrollView
        segmentedView.contentScrollView = pagerView.listContainerView.scrollView
        //: segmentedView.defaultSelectedIndex = 1
        segmentedView.defaultSelectedIndex = 1
//        segmentedView.backgroundColor = .clear
        //: if LanguageManager.shared.direction == .rightToLeft {
        if FactoryShowThen.shared.direction == .rightToLeft {
            //: segmentedView.transform = CGAffineTransform(scaleX: -1, y: 1)
            segmentedView.transform = CGAffineTransform(scaleX: -1, y: 1)
        }
        //: return segmentedView
        return segmentedView
        //: }()
    }()

    //: private lazy var pagerView: JXPagingListRefreshView = {
    private lazy var pagerView: JXPagingListRefreshView = {
        //: let view = JXPagingListRefreshView.init(delegate: self, listContainerType: JXPagingListContainerType.scrollView)
        let view = JXPagingListRefreshView(delegate: self, listContainerType: JXPagingListContainerType.scrollView)
        //: view.frame = CGRect.init(x: 0, y: StatusBarHeight, width: ScreenWidth, height: ScreenHeight-TabBarViewHeight-StatusBarHeight)
        view.frame = CGRect(x: 0, y: kLet_environmentContent, width: kLet_scaleName, height: kLet_environmentText - kLet_descriptionValue - kLet_environmentContent)
//        view.pinSectionHeaderVerticalOffset = 20
        //: view.defaultSelectedIndex = 1
        view.defaultSelectedIndex = 1
        //: view.mainTableView.backgroundColor = .clear
        view.mainTableView.backgroundColor = .clear
        //: if LanguageManager.shared.direction == .rightToLeft {
        if FactoryShowThen.shared.direction == .rightToLeft {
            //: view.transform = CGAffineTransform(scaleX: -1, y: 1)
            view.transform = CGAffineTransform(scaleX: -1, y: 1)
        }
        //: return view
        return view
        //: }()
    }()

    //: private lazy var titleArray: [String] = {
    private lazy var titleArray: [String] = {
        //: var array = [String]()
        var array = [String]()

        //: array.append("Party".localized)
        array.append((String(str_imageValue.prefix(5))).localized)
        //: array.append("Popular".localized)
        array.append((String(str_toMessageText)).localized)
        //: array.append("Nearby".localized)
        array.append((String(str_bottomName)).localized)
        //: array.append("New".localized)
        array.append((String(str_topTitle)).localized)
        //: return array
        return array
        //: }()
    }()

    //: lazy var dataVC: [UIViewController] = {
    lazy var dataVC: [UIViewController] = {
        //: var array = [UIViewController]()
        var array = [UIViewController]()
        //: for i in titleArray {
        for i in titleArray {
            //: if i == "Party".localized {
            if i == (String(str_imageValue.prefix(5))).localized {
                //: let partyVC = PartyListViewController.init()
                let partyVC = TableNoseViewController()
                //: array.append(partyVC)
                array.append(partyVC)
                //: }else{
            } else {
                //: let popularVC = SocialPopularViewController.init()
                let popularVC = FavouriteViewDelegate()
                //: if i == "Popular".localized {
                if i == (String(str_toMessageText)).localized {
                    //: popularVC.tabType = .hot
                    popularVC.tabType = .hot
                    //: } else if i == "Nearby".localized {
                } else if i == (String(str_bottomName)).localized {
                    //: popularVC.tabType = .nearby
                    popularVC.tabType = .nearby
                    //: } else if i == "New".localized {
                } else if i == (String(str_topTitle)).localized {
                    //: popularVC.tabType = .new
                    popularVC.tabType = .new
                }
                //: array.append(popularVC)
                array.append(popularVC)
            }
        }
        //: return array
        return array
        //: }()
    }()

    //: private lazy var searchBtn: UIButton = {
    private lazy var searchBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.withView(name: "btn_popular_search_nor"), for: .normal)
        btn.setImage(UIImage.withView(name: (String(str_userValue.prefix(6)) + String(str_privacyData))), for: .normal)
        //: btn.addTarget(self, action: #selector(searchButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(methodCurrent), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var liveBtn: UIButton = {
    private lazy var liveBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.withView(name: "icon_live_nor"), for: .normal)
        btn.setImage(UIImage.withView(name: (String(str_detailValue.prefix(6)) + String(str_equalName.prefix(7)))), for: .normal)
        //: btn.addTarget(self, action: #selector(liveBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(lanthanide), for: .touchUpInside)
        //: btn.isHidden = !(WatercourseThen.share.appStatus == AppSkinStatus.special.rawValue && WatercourseThen.share.loginUserMode.sex == Gender.female.rawValue)
        btn.isHidden = !(WatercourseThen.share.appStatus == PublishWidthTotal.special.rawValue && WatercourseThen.share.loginUserMode.sex == PushDownStackScalarLiteral.female.rawValue)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var rankBtn: UIButton = {
    private lazy var rankBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.withView(name: "btn_popular_ranking_nor"), for: .normal)
        btn.setImage(UIImage.withView(name: (String(str_labelModelElseName.suffix(4)) + "popula" + String(str_dragTitle.prefix(4)) + "nkin" + String(str_dayData.prefix(5)))), for: .normal)
        //: btn.addTarget(self, action: #selector(rankButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(statusAttach), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - 开播提醒弹窗定时器

//: extension TalkingSocialViewController {
extension ToObjectProtocol {
    /// 跳转随机匹配
    //: private func pushIsClubVideo() {
    private func viewVideo() {
        //: if WatercourseThen.share.loginUserMode.jumpType == 1 && WatercourseThen.share.loginUserMode.sex == Gender.male.rawValue && WatercourseThen.share.appStatus == AppSkinStatus.normal.rawValue {
        if WatercourseThen.share.loginUserMode.jumpType == 1, WatercourseThen.share.loginUserMode.sex == PushDownStackScalarLiteral.male.rawValue, WatercourseThen.share.appStatus == PublishWidthTotal.normal.rawValue {
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5) {
                //: IndoorsPushManager.share.func__pushToRandomVideoVC(isBeginRand: false)
                IndoorsPushManager.share.rand(isBeginRand: false)
            }
        }
    }

    /// 排行榜按钮点击事件
    //: @objc private func rankButtonClick() {
    @objc private func statusAttach() {
        //: let rankVC = SocialRankTabVC()
        let rankVC = IndexDataSource()
        //: self.navigationController?.pushViewController(rankVC, animated: true)
        self.navigationController?.pushViewController(rankVC, animated: true)
        //: uploadRecord.uploadRecordEvent(eventID: ClickRankIngButton)
        kLet_depthIconValue.mightHaveBeenStubZapErrorUploadTo(eventID: kLet_endButtonName)
    }

    /// "mf/index/getConfig"请求成功后创建定时器
    //: @objc func setliveTipsTimer() {
    @objc func addDate() {
        //: if WatercourseThen.share.appUserConfigMode.liveDialogInterval > 0 &&
        if WatercourseThen.share.appUserConfigMode.liveDialogInterval > 0,
           //: WatercourseThen.share.loginUserMode.sex == Gender.female.rawValue &&
           WatercourseThen.share.loginUserMode.sex == PushDownStackScalarLiteral.female.rawValue,
           //: WatercourseThen.share.appStatus != AppSkinStatus.special.rawValue {
           WatercourseThen.share.appStatus != PublishWidthTotal.special.rawValue
        {
            //: initLiveTipsTimer()
            executeUp()
            //: liveTipsTimer?.fireDate = Date.init(timeIntervalSinceNow: TimeInterval(WatercourseThen.share.appUserConfigMode.liveDialogInterval))
            liveTipsTimer?.fireDate = Date(timeIntervalSinceNow: TimeInterval(WatercourseThen.share.appUserConfigMode.liveDialogInterval))
        }
    }

    /// 展示开闭提醒弹窗
    //: @objc func setLiveTipsPopView() {
    @objc func liveRefuse() {
        // 模态出来的webView不展示直播提醒弹窗
        //: if let currentVC = self.currentViewController() {
        if let currentVC = self.toController() {
            //: if currentVC.isKind(of: TalkingWebViewController.self) &&
            if currentVC.isKind(of: AtDelegate.self),
               //: (currentVC as! TalkingWebViewController).isModal == true {
               (currentVC as! AtDelegate).isModal == true
            {
                //: return
                return
            }
        }

        //: if WatercourseThen.share.appUserConfigMode.enableLive &&
        if WatercourseThen.share.appUserConfigMode.enableLive,
           //: !TalkingLiveManager.shared().isLive &&
           !ListThen.deleteItem().isLive,
           //: !TalkingSocketManager.shared.isTalking &&
           !NameSocketManager.shared.isTalking,
           //: !TalkingSocketManager.shared.isCalling {
           !NameSocketManager.shared.isCalling
        {
            //: TalkingPopupWindowManager.shared.startLivePopUpWindow()
            AdministratorReactiveCompatible.shared.cuttingEdgeKey()
        }
    }

    /// 初始化定时器
    //: func initLiveTipsTimer() {
    func executeUp() {
        //: let timeInterval = TimeInterval(WatercourseThen.share.appUserConfigMode.liveDialogInterval)
        let timeInterval = TimeInterval(WatercourseThen.share.appUserConfigMode.liveDialogInterval)
        //: liveTipsTimer = Timer.scheduledTimer(timeInterval: timeInterval, target: self, selector: #selector(setLiveTipsPopView), userInfo: nil, repeats: true)
        liveTipsTimer = Timer.scheduledTimer(timeInterval: timeInterval, target: self, selector: #selector(liveRefuse), userInfo: nil, repeats: true)
        //: RunLoop.current.add(liveTipsTimer!, forMode: RunLoop.Mode.common)
        RunLoop.current.add(liveTipsTimer!, forMode: RunLoop.Mode.common)
    }

    /// 停止定时器
    //: @objc func stop_liveTipsTimer() {
    @objc func viewTimerMake() {
        //: if self.liveTipsTimer != nil {
        if self.liveTipsTimer != nil {
            //: self.liveTipsTimer?.invalidate()
            self.liveTipsTimer?.invalidate()
            //: self.liveTipsTimer?.fire()
            self.liveTipsTimer?.fire()
            //: self.liveTipsTimer = nil
            self.liveTipsTimer = nil
        }
    }

    /// 开启直播按钮点击事件
    //: @objc func liveBtnClick() {
    @objc func lanthanide() {
        //: NotificationCenter.default.post(name: LIVE_NEED_OPEN_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: kLet_nextTitle, object: nil)
    }
}

// MARK: - Public Event

//: extension TalkingSocialViewController {
extension ToObjectProtocol {
    /// 检测巨星计划弹窗是否需要弹出
    //: private func func__checkStarPlanNeedShow() {
    private func countSign() {
        //: guard WatercourseThen.share.showWindow == true else { return }
        guard WatercourseThen.share.showWindow == true else { return }
        //: WatercourseThen.share.showWindow = false
        WatercourseThen.share.showWindow = false

        // 加入巨星计划弹窗
        //: TalkingAlertShow.alert(title: nil,
        AlongThen.harvest(title: nil,
                                 //: message: "Congratulation on your chance to join the Star Plan !",
                                 message: String(bytes: str_bottomModelData.reversed(), encoding: .utf8)!,
                                 //: leftBtnTitle: "No, thanks",
                                 leftBtnTitle: (String(str_styleText)),
                                 //: rightBtnTitle: "Find out more") {
                                 rightBtnTitle: (String(str_commentData.suffix(5)) + String(str_infoValue.prefix(8))))
        {
            //: TalkingAlertShow.hideAlert()
            AlongThen.teachingMethod()
            // 统计点击首页巨星邀请弹窗中“no,thanks”的次数
            //: TalkingAdjustManager.share.addEvent(key: "clickStarProjectpop-upsCancel")
            NamesAdjustManager.share.appEffect(key: (String(str_toData.suffix(6)) + "tarPr" + str_sendText.replacingOccurrences(of: "hidden", with: "c") + "tpop-upsC" + String(str_requestValue)))

            //: } rightBlock: {
        } rightBlock: {
            //: TalkingAlertShow.hideAlert()
            AlongThen.teachingMethod()
            // 跳转巨星计划页
            //: IndoorsPushManager.share.func__pushToWebVC(webViewType: .StarPlanIndex)
            IndoorsPushManager.share.pushType(webViewType: .StarPlanIndex)

            // 统计点击首页巨星邀请弹窗中“Find out more”的次数
            //: TalkingAdjustManager.share.addEvent(key: "clickStarProjectpop-upsFindoutmore")
            NamesAdjustManager.share.appEffect(key: String(bytes: str_listContent.map{modelKind(make: $0)}, encoding: .utf8)!)
        }
    }

    /// 检查系统通知是否开启
    //: private func func__turnOnSystemNotification() {
    private func shitworkNotification() {
        // 有随机视频，不弹出开启推送弹窗
        //: if WatercourseThen.share.loginUserMode.jumpType == 1 &&
        if WatercourseThen.share.loginUserMode.jumpType == 1,
           //: WatercourseThen.share.loginUserMode.sex == Gender.male.rawValue &&
           WatercourseThen.share.loginUserMode.sex == PushDownStackScalarLiteral.male.rawValue,
           //: WatercourseThen.share.appStatus == AppSkinStatus.normal.rawValue {
           WatercourseThen.share.appStatus == PublishWidthTotal.normal.rawValue
        {
            //: return
            return
        }

        //: let isShow = Defaults.bool(forKey: TalkingHomeTabTurnOnNotificationsKey)
        let isShow = kLet_timeContent.bool(forKey: kLet_failureValue)
        //: guard isShow == false else { return }
        guard isShow == false else { return }

        //: TalkingPermissionTool.checkPushNotification { isEnable in
        ColorPermissionTool.selectedStatus { isEnable in
            //: guard isEnable == false else { return }
            guard isEnable == false else { return }
            //: DispatchQueue.main.sync {
            DispatchQueue.main.sync {
                //: Defaults.set(true, forKey: TalkingHomeTabTurnOnNotificationsKey)
                kLet_timeContent.set(true, forKey: kLet_failureValue)
                //: TalkingAlertShow.alert(title: nil,
                AlongThen.harvest(title: nil,
                                         //: message: "Allow %@ to send you notifications?".localizedArguments(AppName),
                                         message: String(bytes: str_myLinkName.reversed(), encoding: .utf8)!.alongNext(kLet_maxProgressData),
                                         //: leftBtnTitle: "Cancel".localized,
                                         leftBtnTitle: (String(str_needName.suffix(6))).localized,
                                         //: rightBtnTitle: "Settings".localized) {
                                         rightBtnTitle: (str_aspectName.replacingOccurrences(of: "to", with: "S") + String(str_wayHaveName)).localized)
                {
                    //: TalkingAlertShow.hideAlert()
                    AlongThen.teachingMethod()
                    //: return
                    //: } rightBlock: {
                } rightBlock: {
                    //: if let settingsUrl = URL(string: UIApplication.openSettingsURLString) {
                    if let settingsUrl = URL(string: UIApplication.openSettingsURLString) {
                        //: UIApplication.shared.open(settingsUrl)
                        UIApplication.shared.open(settingsUrl)
                    }
                }
            }
        }
    }

    /// 搜索按钮点击事件
    //: @objc private func searchButtonClick() {
    @objc private func methodCurrent() {
        //: let searchVC = TalkingSearchTabViewController()
        let searchVC = AnalogDigitalConverterReactiveCompatible()
        //: self.navigationController?.pushViewController(searchVC, animated: true)
        self.navigationController?.pushViewController(searchVC, animated: true)
        //: uploadRecord.uploadRecordEvent(eventID: ClickSearchButton)
        kLet_depthIconValue.mightHaveBeenStubZapErrorUploadTo(eventID: kLet_messageContent)
    }

    /// 切换到party
    //: func switchParty() {
    func messageParty() {
        //: categoryView.defaultSelectedIndex = 0
        categoryView.defaultSelectedIndex = 0
        //: categoryView.reloadData()
        categoryView.reloadData()
        //: pagerView.defaultSelectedIndex = 0
        pagerView.defaultSelectedIndex = 0
        //: pagerView.reloadData()
        pagerView.reloadData()
    }
}

// MARK: - NotificationCenter

//: extension TalkingSocialViewController {
extension ToObjectProtocol {
    /// 添加通知
    //: private func addNotification() {
    private func imageNotification() {
        // 礼物首页飘屏
        //: GiftFloatViewManager.shared.addNotifications()
        ToViewManager.shared.dataTable()

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(setliveTipsTimer),
                                               selector: #selector(addDate),
                                               //: name: UPDATE_INDEX_GETCONFIG_NOTIFICATION,
                                               name: kLet_inviteData,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(stop_liveTipsTimer),
                                               selector: #selector(viewTimerMake),
                                               //: name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION,
                                               name: kLet_screenPathName,
                                               //: object: nil)
                                               object: nil)
    }
}

// MARK: - JXPagerViewDelegate

//: extension TalkingSocialViewController: JXSegmentedViewDelegate {
extension ToObjectProtocol: JXSegmentedViewDelegate {
    // 点击item或滑动时【点击标题和滑动视图都会调用】
    //: func segmentedView(_ segmentedView: JXSegmentedView, didSelectedItemAt index: Int) {
    func segmentedView(_: JXSegmentedView, didSelectedItemAt index: Int) {
        //: if seleteIndex == index {
        if seleteIndex == index {
            //: return
            return
        }
        //: seleteIndex = index
        seleteIndex = index
        //: if index == 0 {
        if index == 0 {
            //: uploadRecord.uploadRecordEvent(eventID:"\(click_HomePartyTab)_\(WatercourseThen.share.loginUserMode.sex == Gender.male.rawValue ? "male":"female")")
            kLet_depthIconValue.mightHaveBeenStubZapErrorUploadTo(eventID: "\(kLet_nameDetailTitle)_\(WatercourseThen.share.loginUserMode.sex == PushDownStackScalarLiteral.male.rawValue ? String(bytes: str_acceptValue.map{appThe(button: $0)}, encoding: .utf8)! : (String(str_toolName)))")
            //: }else if index == 1 {
        } else if index == 1 {
            //: let popularVC = dataVC[index] as? SocialPopularViewController
            let popularVC = dataVC[index] as? FavouriteViewDelegate
            //: popularVC?.showSettingsAlertView()
            popularVC?.toPush() // 展示定位设置弹窗
            //: uploadRecord.uploadRecordEvent(eventID: DisplayNearbyListNoP)
            kLet_depthIconValue.mightHaveBeenStubZapErrorUploadTo(eventID: kLet_numberValue)
            //: } else if index == 2 {
        } else if index == 2 {
            //: uploadRecord.uploadRecordEvent(eventID: DisplayNewListNoP)
            kLet_depthIconValue.mightHaveBeenStubZapErrorUploadTo(eventID: kLet_errScreenValue)
        }
    }

    // 添加该方法是为了防止首次进入应用，直接点击nearby无法初始化页面的情况 【该方法只会在点击标题时调用】
    //: func segmentedView(_ segmentedView: JXSegmentedView, didClickSelectedItemAt index: Int) {
    func segmentedView(_: JXSegmentedView, didClickSelectedItemAt index: Int) {
        // 初始点击item时，创建vc

        //: if index == 1 && !isNearbyShow {
        if index == 1 && !isNearbyShow {
            //: isNearbyShow = true
            isNearbyShow = true
        }

        //: pagerView.listContainerView.defaultSelectedIndex = index
        pagerView.listContainerView.defaultSelectedIndex = index
        //: pagerView.listContainerView.reloadData()
        pagerView.listContainerView.reloadData()
    }

    //: func segmentedView(_ segmentedView: JXSegmentedView, didScrollSelectedItemAt index: Int) {
    func segmentedView(_: JXSegmentedView, didScrollSelectedItemAt _: Int) {}
}

// MARK: - JXPagerViewDelegate

//: extension TalkingSocialViewController: JXPagingViewDelegate {
extension ToObjectProtocol: JXPagingViewDelegate {
    //: func pagingView(_ pagingView: JXPagingView, initListAtIndex index: Int) -> JXPagingViewListViewDelegate {
    func pagingView(_: JXPagingView, initListAtIndex index: Int) -> JXPagingViewListViewDelegate {
        //: var type = index
        var type = index
        //: if type < 0 { type = 0 }
        if type < 0 { type = 0 }
        //: if index == 1 {
        if index == 1 {
            //: isNearbyShow = true
            isNearbyShow = true
        }

        //: let popularVC = dataVC[type]
        let popularVC = dataVC[type]
        //: return popularVC as! any JXPagingViewListViewDelegate as JXPagingViewListViewDelegate
        return popularVC as! any JXPagingViewListViewDelegate as JXPagingViewListViewDelegate
    }

    //: func tableHeaderViewHeight(in pagingView: JXPagingView) -> Int {
    func tableHeaderViewHeight(in _: JXPagingView) -> Int {
        //: return 0
        return 0
    }

    //: func tableHeaderView(in pagingView: JXPagingView) -> UIView {
    func tableHeaderView(in _: JXPagingView) -> UIView {
        //: return UIView()
        return UIView()
    }

    //: func heightForPinSectionHeader(in pagingView: JXPagingView) -> Int {
    func heightForPinSectionHeader(in _: JXPagingView) -> Int {
        //: return Int(categoryView.frame.height)
        return Int(categoryView.frame.height)
    }

    //: func viewForPinSectionHeader(in pagingView: JXPagingView) -> UIView {
    func viewForPinSectionHeader(in _: JXPagingView) -> UIView {
        //: return categoryView
        return categoryView
    }

    //: func numberOfLists(in pagingView: JXPagingView) -> Int {
    func numberOfLists(in _: JXPagingView) -> Int {
        //: return titleArray.count
        return titleArray.count
    }
}

// MARK: - Layout

//: extension TalkingSocialViewController {
extension ToObjectProtocol {
    /// 添加视图
    //: private func setupSubviews() {
    private func seek() {
        // 导航底部渐变背景
        //: self.view.addSubview(pagerView)
        self.view.addSubview(pagerView)
        //: categoryView.addSubview(searchBtn)
        categoryView.addSubview(searchBtn)
        //: categoryView.addSubview(rankBtn)
        categoryView.addSubview(rankBtn)
        //: self.view.addSubview(bottomImgView)
        self.view.addSubview(bottomImgView)
        //: self.view.addSubview(liveBtn)
        self.view.addSubview(liveBtn)
        //: self.view.bringSubviewToFront(liveBtn)
        self.view.bringSubviewToFront(liveBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func mentalPictureOf() {
        //: searchBtn.snp.makeConstraints { make in
        searchBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-9)
            make.trailing.equalTo(-9)
            //: make.size.equalTo(30)
            make.size.equalTo(30)
        }
        //: rankBtn.snp.makeConstraints { make in
        rankBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(searchBtn.snp.leading).offset(-10)
            make.trailing.equalTo(searchBtn.snp.leading).offset(-10)
            //: make.size.equalTo(30)
            make.size.equalTo(30)
        }

        //: bottomImgView.snp.makeConstraints { make in
        bottomImgView.snp.makeConstraints { make in
            //: make.leading.top.width.equalToSuperview()
            make.leading.top.width.equalToSuperview()
            //: make.height.equalTo(145+StatusBarHeight)
            make.height.equalTo(145 + kLet_environmentContent)
        }
        //: liveBtn.snp.makeConstraints { make in
        liveBtn.snp.makeConstraints { make in
            //: make.bottom.width.equalTo(-122)
            make.bottom.width.equalTo(-122)
            //: make.trailing.equalTo(-25)
            make.trailing.equalTo(-25)
            //: make.size.equalTo(56)
            make.size.equalTo(56)
        }
    }
}
