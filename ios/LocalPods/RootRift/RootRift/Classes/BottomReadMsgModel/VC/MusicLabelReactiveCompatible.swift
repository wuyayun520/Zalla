
//: Declare String Begin

/*: "bg_message_top" :*/
fileprivate let str_equalValue:String = "inside title self varbg_me"
fileprivate let str_managerResultData:[Character] = ["s","s","a","g","e","_","t","o","p"]

/*: "777777" :*/
fileprivate let str_liveData:String = "777777"

/*: "Messages" :*/
fileprivate let str_messageData:String = "Mescollect data bottom equal"
fileprivate let str_managerCaptureName:String = "saimages"

/*: "Who like me" :*/
fileprivate let str_indexText:String = "Who lilet value for status more"

/*: "Call" :*/
fileprivate let str_centerData:[Character] = ["C","a","l","l"]

/*: "#FF2348" :*/
fileprivate let str_arrayValue:String = "#FF2348top color type"

/*: "Current network unavailable" :*/
fileprivate let str_replyName:[Character] = ["C","u","r","r","e","n","t"," ","n","e","t","w","o","r","k"," ","u","n","a","v","a"]
fileprivate let str_blockText:[Character] = ["i","l","a","b","l","e"]

/*: "icon_yidu_pre" :*/
fileprivate let str_indexContent:[Character] = ["i","c","o","n","_","y"]
fileprivate let str_fieldContent:String = "equal data awake touch viewidu_pre"

/*: "99+" :*/
fileprivate let str_titleRequestData:String = "99+"

/*: "transform.rotation" :*/
fileprivate let str_cellText:[Character] = ["t","r","a","n","s"]
fileprivate let str_actualName:[Character] = ["f","o","r","m"]
fileprivate let str_labelValue:String = ".rotview head go"

/*: "transform.scale" :*/
fileprivate let str_cornerMediumTitle:String = "TRANS"
fileprivate let str_modelPlayerText:String = "CALE"

/*: "zoom&shake" :*/
fileprivate let str_socialTitle:String = "let status index makezoom&s"

/*: "yyyy-MM-dd" :*/
fileprivate let str_tapTitle:String = "show trueyyyy-"
fileprivate let str_mainAppSuperData:String = "view add model userMM-dd"

/*: "Allow %@ to send you notifications?" :*/
fileprivate let str_modelTextName:[UInt8] = [0xc6,0xf1,0xf1,0xf4,0xfc,0xa5,0xaa,0xc5,0xa5,0xf9,0xf4,0xa5,0xf8,0xea,0xf3,0xe9,0xa5,0xfe,0xf4,0xfa,0xa5,0xf3,0xf4,0xf9,0xee,0xeb,0xee,0xe8,0xe6,0xf9,0xee,0xf4,0xf3,0xf8,0xc4]

fileprivate func sharedSize(view num: UInt8) -> UInt8 {
    let value = Int(num) + 123
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Cancel" :*/
fileprivate let str_directionValue:[Character] = ["C","a","n","c","e","l"]

/*: "Settings" :*/
fileprivate let str_modelTitle:String = "type to show leading labSettin"
fileprivate let str_processValue:String = "contents"

/*: "badNumber" :*/
fileprivate let str_tapFileInsertTitle:String = "model classbadN"

/*: "isConnection" :*/
fileprivate let str_outputData:[Character] = ["i","s","C","o","n","n","e","c"]
fileprivate let str_voiceData:[Character] = ["t","i","o","n"]

/*: "networkStatus" :*/
fileprivate let str_giftName:[Character] = ["n","e","t","w","o","r","k","S","t","a","t","u"]
fileprivate let str_timeName:[Character] = ["s"]

/*: "unreadMessageNum" :*/
fileprivate let str_modelValue:[Character] = ["u","n","r","e","a","d","M","e","s","s","a"]
fileprivate let str_inputName:[Character] = ["g","e","N","u","m"]

/*: "Do you want to mark all messages as read?" :*/
fileprivate let str_perData:[UInt8] = [0x7c,0x57,0x18,0x41,0x57,0x4d,0x18,0x4f,0x59,0x56,0x4c,0x18,0x4c,0x57,0x18,0x55,0x59,0x4a,0x53,0x18,0x59,0x54,0x54,0x18,0x55,0x5d,0x4b,0x4b,0x59,0x5f,0x5d,0x4b,0x18,0x59,0x4b,0x18,0x4a,0x5d,0x59,0x5c,0x7]

private func yellowVar(equal num: UInt8) -> UInt8 {
    return num ^ 56
}

/*: "OK" :*/
fileprivate let str_containerData:[Character] = ["O","K"]

/*: "消息列表一键已读失败：code: :*/
fileprivate let str_layerTitle:[Character] = ["\u{6d88}","息","\u{5217}","\u{8868}","一","键"]
fileprivate let str_colorValue:[Character] = ["已"]
fileprivate let str_equalData:[Character] = ["\u{8bfb}","失","败","\u{ff1a}","c","o","d","e",":"]

/*: , desc: :*/
fileprivate let str_currentData:String = ", desc:self hidden image player"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MusicLabelReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

//: class TalkingMessageViewController: TalkingBaseViewController {
class MusicLabelReactiveCompatible: MusicViewController {
    //: var isNoChangeTop = false
    var isNoChangeTop = false
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var seleteIndex = 0
    private var seleteIndex = 0

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: setIsShowCleanAmimat()
        receiveTotaleraction()
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: createUI()
        remote()
        //: bindInteraction()
        mutual()
        //: func__turnOnSystemNotification()
        vacate()
    }

    // MARK: - Lazy load

    // 背景
    //: private lazy var colorImageView: UIImageView = {
    private lazy var colorImageView: UIImageView = {
        //: let colorV = UIImageView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: 100+StatusBarNavigationBarHeight))
        let colorV = UIImageView(frame: CGRect(x: 0, y: 0, width: kLet_scaleName, height: 100 + kLet_barUserName))
        //: colorV.image = UIImage.withView(name: "bg_message_top")
        colorV.image = UIImage.withView(name: (String(str_equalValue.suffix(5)) + String(str_managerResultData)))
        //: return colorV
        return colorV
        //: }()
    }()

    //: private lazy var noticeView: TalkingNoticeTipView = {
    private lazy var noticeView: TalkingHeadOrientationView = {
        //: let V = TalkingNoticeTipView()
        let V = TalkingHeadOrientationView()
        //: V.isHidden = true
        V.isHidden = true
        //: return V
        return V
        //: }()
    }()

    //: private lazy var slideVC: QYSlideNavigationViewController = {
    private lazy var slideVC: StreamViewController = {
        //: let vc = QYSlideNavigationViewController()
        let vc = StreamViewController()
        //: vc.topDistance = 0
        vc.topDistance = 0
        //: vc.controllerItems = controllerItems
        vc.controllerItems = controllerItems
        //: vc.titleItems = titleItems
        vc.titleItems = titleItems
        //: vc.rightSpace = 60
        vc.rightSpace = 60
        //: vc.titleViewBackgroundColor = .clear
        vc.titleViewBackgroundColor = .clear
        //: vc.titleFont = .pingfangFont(type: .Medium, fontSize: 16)
        vc.titleFont = .conversationSize(type: .Medium, fontSize: 16)
        //: vc.selectTitleFont = .pingfangFont(type: .Medium, fontSize: 18)
        vc.selectTitleFont = .conversationSize(type: .Medium, fontSize: 18)
        //: vc.normalColor = UIColor(hex: "777777")!
        vc.normalColor = UIColor(hex: (str_liveData.capitalized))!
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

    //: private lazy var controllerItems: [TalkingBaseViewController] = {
    private lazy var controllerItems: [MusicViewController] = {
        //: var arr = [self.chatListVC, TalkingWhoLikeViewController()]
        var arr = [self.chatListVC, ResultRecognizerDelegate()]
        //: if WatercourseThen.share.loginUserMode.callTabSwitch == 1 {
        if WatercourseThen.share.loginUserMode.callTabSwitch == 1 {
            //: arr.insert(TalkingVideoCallVC(), at: arr.count-1)
            arr.insert(SubBecomeDataSource(), at: arr.count - 1)
        }
        //: return arr
        return arr

        //: }()
    }()

    //: private lazy var chatListVC: TalkingChatListViewController = {
    private lazy var chatListVC: TalkingEqualControllerRecognizerDelegate = {
        //: let vc = TalkingChatListViewController()
        let vc = TalkingEqualControllerRecognizerDelegate()
        //: return vc
        return vc
        //: }()
    }()

    //: private lazy var titleItems: [String] = {
    private lazy var titleItems: [String] = {
        //: var arr = ["Messages".localized, "Who like me".localized]
        var arr = [(String(str_messageData.prefix(3)) + str_managerCaptureName.replacingOccurrences(of: "image", with: "ge")).localized, (String(str_indexText.prefix(6)) + "ke me").localized]
        //: if WatercourseThen.share.loginUserMode.callTabSwitch == 1 {
        if WatercourseThen.share.loginUserMode.callTabSwitch == 1 {
            //: arr.insert("Call".localized, at: arr.count-1)
            arr.insert((String(str_centerData)).localized, at: arr.count - 1)
        }
        //: return arr
        return arr
        //: }()
    }()

    // 断网提醒
    //: private lazy var netTipLabel: UILabel = {
    private lazy var netTipLabel: UILabel = {
        //: let tipView = UILabel.init(frame: CGRect(x: 0, y: StatusBarNavigationBarHeight, width: ScreenWidth, height: 30))
        let tipView = UILabel(frame: CGRect(x: 0, y: kLet_barUserName, width: kLet_scaleName, height: 30))
        //: tipView.font = UIFont.pingfangRugularFont(fontSize: 14)
        tipView.font = UIFont.rugular(fontSize: 14)
        //: tipView.textColor = .white
        tipView.textColor = .white
        //: tipView.backgroundColor = UIColor.init(hex: "#FF2348")?.withAlphaComponent(0.8)
        tipView.backgroundColor = UIColor(hex: (String(str_arrayValue.prefix(7))))?.withAlphaComponent(0.8)
        //: tipView.textAlignment = .center
        tipView.textAlignment = .center
        //: tipView.text = "Current network unavailable".localized
        tipView.text = (String(str_replyName) + String(str_blockText)).localized
        //: tipView.isHidden = true
        tipView.isHidden = true
        //: return tipView
        return tipView
        //: }()
    }()

    // message红点角标
    //: private lazy var msgNumLabel: BadgeLab = {
    private lazy var msgNumLabel: UnknownThen = {
        //: let numbLabel = BadgeLab()
        let numbLabel = UnknownThen()
        //: numbLabel.isHidden = true
        numbLabel.isHidden = true
        //: return numbLabel
        return numbLabel
        //: }()
    }()

    // whoLikeMe红点角标
    //: private lazy var badgLB: BadgeLab = {
    private lazy var badgLB: UnknownThen = {
        //: let numbLabel = BadgeLab()
        let numbLabel = UnknownThen()
        //: numbLabel.isHidden = true
        numbLabel.isHidden = true
        //: return numbLabel
        return numbLabel
        //: }()
    }()

    // 一键清除
    //: private lazy var cleanBtn: UIButton = {
    private lazy var cleanBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.backgroundColor = .clear
        btn.backgroundColor = .clear
        //: btn.setImage(UIImage.withView(name: "icon_yidu_pre"), for: .normal)
        btn.setImage(UIImage.withView(name: (String(str_indexContent) + String(str_fieldContent.suffix(7)))), for: .normal)
        //: btn.setImage(UIImage.withView(name: "icon_yidu_pre"), for: .highlighted)
        btn.setImage(UIImage.withView(name: (String(str_indexContent) + String(str_fieldContent.suffix(7)))), for: .highlighted)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - SlideNavigationDelegate

//: extension TalkingMessageViewController: QYSlideNavigationDelegate {
extension MusicLabelReactiveCompatible: SlideNavigationDelegate {
    //: func selectedViewController(_ viewController: UIViewController, index: Int) {
    func upStop(_ viewController: UIViewController, index: Int) {
        //: self.seleteIndex = Int(index)
        self.seleteIndex = Int(index)
        //: if viewController.isKind(of: TalkingChatListViewController.self) {
        if viewController.isKind(of: TalkingEqualControllerRecognizerDelegate.self) {
            //: self.cleanBtn.isHidden = false
            self.cleanBtn.isHidden = false
            //: setIsShowCleanAmimat()
            receiveTotaleraction()

            //: } else if viewController.isKind(of: TalkingWhoLikeViewController.self) {
        } else if viewController.isKind(of: ResultRecognizerDelegate.self) {
            //: self.cleanBtn.isHidden = true
            self.cleanBtn.isHidden = true
            //: uploadRecord.uploadRecordEvent(eventID: ClickWLikeMeTabNoP)
            kLet_depthIconValue.mightHaveBeenStubZapErrorUploadTo(eventID: kLet_diskCreateFormalTitle)
        }
    }
}

// MARK: - Event

//: extension TalkingMessageViewController {
extension MusicLabelReactiveCompatible {
    //: func setIsTopAll() {
    func queryStubAll() {
        /// 默认选中all
        //: if seleteIndex == 0 {
        if seleteIndex == 0 {
            //: let vc = slideVC.controllerItems.first as? TalkingChatListViewController
            let vc = slideVC.controllerItems.first as? TalkingEqualControllerRecognizerDelegate
            //: vc?.resetToTopItemView()
            vc?.demonstrate()
            // 刷新在线状态
            //: vc?.refreshOnlineStatus(isFirst: true)
            vc?.secondElementFirst(isFirst: true)
        }
    }

    /// 无网络提示
    //: func func__checkNetTipState() {
    func countimateAdd() {
        //: if WatercourseThen.share.networkStatus != .Unavailable && TalkingV2Listener.shared.isConnection {
        if WatercourseThen.share.networkStatus != .Unavailable, TalkingV2Listener.shared.isConnection {
            //: netTipLabel.isHidden = true
            netTipLabel.isHidden = true
            //: } else {
        } else {
            //: netTipLabel.isHidden = false
            netTipLabel.isHidden = false
        }
    }

    /// message红点
    //: func func__messagebadgLBState(num: Int) {
    func fileChange(num: Int) {
        //: if num > 0 {
        if num > 0 {
            //: msgNumLabel.isHidden = false
            msgNumLabel.isHidden = false
            //: if num > 99 {
            if num > 99 {
                //: msgNumLabel.text = "99+"
                msgNumLabel.text = "99+"
                //: } else {
            } else {
                //: msgNumLabel.text = String(num)
                msgNumLabel.text = String(num)
            }
            //: } else {
        } else {
            //: msgNumLabel.isHidden = true
            msgNumLabel.isHidden = true
        }
    }

    /// 一键清除动画
    //: func setIsShowCleanAmimat() {
    func receiveTotaleraction() {
        //: let unreadMsgCount = WatercourseThen.share.unreadMessageNum
        let unreadMsgCount = WatercourseThen.share.unreadMessageNum
        //: let isClean: Bool = UserDefaults.standard.object(forKey: isShowCleanAnimatCacheKey) as? Bool ?? false
        let isClean: Bool = UserDefaults.standard.object(forKey: kLet_tabData) as? Bool ?? false
        //: if unreadMsgCount >= 10 && !isClean {
        if unreadMsgCount >= 10, !isClean {
            //: self.cleanBtnBtnAnimat()
            self.script()
        }
    }

    //: func cleanBtnBtnAnimat() {
    func script() {
        //: let degreesToRadians = 180.0 * .pi
        let degreesToRadians = 180.0 * .pi
        //: let angle1 = 0 / degreesToRadians
        let angle1 = 0 / degreesToRadians
        //: let angle2 = 100 / degreesToRadians
        let angle2 = 100 / degreesToRadians
        //: let angle3 = -100 / degreesToRadians
        let angle3 = -100 / degreesToRadians
        //: let angle4 = 100 / degreesToRadians
        let angle4 = 100 / degreesToRadians
        //: let angle5 = -100 / degreesToRadians
        let angle5 = -100 / degreesToRadians
        //: let angle6 = 0 / degreesToRadians
        let angle6 = 0 / degreesToRadians

        //: let du1: NSNumber = 0
        let du1: NSNumber = 0
        //: let du2: NSNumber = 0.13
        let du2: NSNumber = 0.13
        //: let du3: NSNumber = 0.3
        let du3: NSNumber = 0.3
        //: let du4: NSNumber = 0.47
        let du4: NSNumber = 0.47
        //: let du5: NSNumber = 0.8
        let du5: NSNumber = 0.8
        //: let du6: NSNumber = 1.0
        let du6: NSNumber = 1.0

        // 旋转
        //: let roate = CAKeyframeAnimation.init(keyPath: "transform.rotation")
        let roate = CAKeyframeAnimation(keyPath: (String(str_cellText) + String(str_actualName) + String(str_labelValue.prefix(4)) + "ation"))
        //: roate.values = [(angle1), (angle2), (angle3), (angle4), (angle5), (angle6)]
        roate.values = [angle1, angle2, angle3, angle4, angle5, angle6]
        //: roate.keyTimes = [(du1), (du2), (du3), (du4), (du5), (du6)]
        roate.keyTimes = [du1, du2, du3, du4, du5, du6]

        // 缩放
        //: let zoom = CAKeyframeAnimation.init(keyPath: "transform.scale")
        let zoom = CAKeyframeAnimation(keyPath: (str_cornerMediumTitle.lowercased() + "form.s" + str_modelPlayerText.lowercased()))
        //: zoom.values = [(1.0), (1.2), (1.0)]
        zoom.values = [1.0, 1.2, 1.0]
        //: zoom.keyTimes = [(0), (0.5), (1.0)]
        zoom.keyTimes = [0, 0.5, 1.0]

        //
        //: let groupAnnimation = CAAnimationGroup.init()
        let groupAnnimation = CAAnimationGroup()
        //: groupAnnimation.autoreverses = false
        groupAnnimation.autoreverses = false
        //: groupAnnimation.animations = [roate, zoom]
        groupAnnimation.animations = [roate, zoom]
        //: groupAnnimation.duration = 1.0
        groupAnnimation.duration = 1.0
        //: groupAnnimation.repeatCount = 2
        groupAnnimation.repeatCount = 2
        //: groupAnnimation.isRemovedOnCompletion = false
        groupAnnimation.isRemovedOnCompletion = false
        //: groupAnnimation.fillMode = .forwards
        groupAnnimation.fillMode = .forwards
        //: cleanBtn.layer.add(groupAnnimation, forKey: "zoom&shake")
        cleanBtn.layer.add(groupAnnimation, forKey: (String(str_socialTitle.suffix(6)) + "hake"))
    }

    /// 检查系统通知是否开启
    //: private func func__turnOnSystemNotification() {
    private func vacate() {
        //: TalkingPermissionTool.checkPushNotification { isEnable in
        ColorPermissionTool.selectedStatus { isEnable in

            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: if isEnable {
                if isEnable {
                    //: self.noticeView.isHidden = true
                    self.noticeView.isHidden = true
                    //: self.func__hideNotificationTipView(hide: true)
                    self.buryOpenHide(hide: true)
                    //: }else{
                } else {
                    /// 页面顶部提示
                    //: let today = NSDate.getTimeString(date: Date(), dateFormat: "yyyy-MM-dd")
                    let today = NSDate.formatFinish(date: Date(), dateFormat: (String(str_tapTitle.suffix(5)) + String(str_mainAppSuperData.suffix(5))))
                    //: if let closeDateStr = Defaults.string(forKey: TalkingMessageTabCloseNotificationsKey), today == closeDateStr {
                    if let closeDateStr = kLet_timeContent.string(forKey: kLet_matchText), today == closeDateStr {
                        //: self.func__hideNotificationTipView(hide: true)
                        self.buryOpenHide(hide: true)
                        //: }else{
                    } else {
                        //: self.func__hideNotificationTipView(hide: false)
                        self.buryOpenHide(hide: false)
                    }
                    /// 弹框逻辑
                    //: let isShow = Defaults.bool(forKey: TalkingMessageTabTurnOnNotificationsKey)
                    let isShow = kLet_timeContent.bool(forKey: kLet_liveSenseName)
                    //: if !isShow {
                    if !isShow {
                        //: Defaults.set(true, forKey: TalkingMessageTabTurnOnNotificationsKey)
                        kLet_timeContent.set(true, forKey: kLet_liveSenseName)
                        //: TalkingAlertShow.alert(title: nil,
                        AlongThen.harvest(title: nil,
                                                 //: message: "Allow %@ to send you notifications?".localizedArguments(AppName),
                                                 message: String(bytes: str_modelTextName.map{sharedSize(view: $0)}, encoding: .utf8)!.alongNext(kLet_maxProgressData),
                                                 //: leftBtnTitle: "Cancel".localized,
                                                 leftBtnTitle: (String(str_directionValue)).localized,
                                                 //: rightBtnTitle: "Settings".localized) {
                                                 rightBtnTitle: (String(str_modelTitle.suffix(6)) + str_processValue.replacingOccurrences(of: "content", with: "g")).localized)
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
        }
    }

    //: private func func__hideNotificationTipView(hide: Bool) {
    private func buryOpenHide(hide: Bool) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: if hide{
            if hide {
                //: self.noticeView.isHidden = true
                self.noticeView.isHidden = true
                //: self.slideVC.view.snp.updateConstraints { make in
                self.slideVC.view.snp.updateConstraints { make in
                    //: make.top.equalToSuperview().offset(StatusBarHeight)
                    make.top.equalToSuperview().offset(kLet_environmentContent)
                }
                //: self.slideVC.viewHeight = ScreenHeight - StatusBarHeight - TabBarViewHeight
                self.slideVC.viewHeight = kLet_environmentText - kLet_environmentContent - kLet_descriptionValue
                //: }else{
            } else {
                //: self.noticeView.isHidden = false
                self.noticeView.isHidden = false
                //: self.slideVC.view.snp.updateConstraints { make in
                self.slideVC.view.snp.updateConstraints { make in
                    //: make.top.equalToSuperview().offset(StatusBarHeight + self.noticeView.viewHeight)
                    make.top.equalToSuperview().offset(kLet_environmentContent + self.noticeView.viewHeight)
                }
                //: self.slideVC.viewHeight = ScreenHeight - self.noticeView.bottom - TabBarViewHeight
                self.slideVC.viewHeight = kLet_environmentText - self.noticeView.bottom - kLet_descriptionValue
            }
        }
    }
}

// MARK: - 通知

//: extension TalkingMessageViewController {
extension MusicLabelReactiveCompatible {
    /// who like me 红点通知
    //: @objc func showbadgNumberNotif(notification: NSNotification) {
    @objc func addGift(notification: NSNotification) {
        //: let userinfo = notification.userInfo as![String: AnyObject]
        let userinfo = notification.userInfo as! [String: AnyObject]
        //: let badNumber: Int  = userinfo["badNumber"] as! Int
        let badNumber: Int = userinfo[(String(str_tapFileInsertTitle.suffix(4)) + "umber")] as! Int
        //: badgLB.isHidden = false
        badgLB.isHidden = false
        //: if badNumber > 99 {
        if badNumber > 99 {
            //: badgLB.text = "99+"
            badgLB.text = "99+"
            //: } else if badNumber<=0 {
        } else if badNumber <= 0 {
            //: badgLB.isHidden = true
            badgLB.isHidden = true
            //: badgLB.text = "0"
            badgLB.text = "0"
            //: } else {
        } else {
            //: badgLB.text = String(badNumber)
            badgLB.text = String(badNumber)
        }
    }
}

// MARK: - Layout

//: extension TalkingMessageViewController {
extension MusicLabelReactiveCompatible {
    /// UI
    //: private func createUI() {
    private func remote() {
        //: view.backgroundColor = .white
        view.backgroundColor = .white

        //: view.addSubview(colorImageView)
        view.addSubview(colorImageView)
        //: view.addSubview(noticeView)
        view.addSubview(noticeView)
        //: self.addChild(slideVC)
        self.addChild(slideVC)

        //: self.view.addSubview(slideVC.view)
        self.view.addSubview(slideVC.view)
        //: slideVC.view.backgroundColor = UIColor.clear
        slideVC.view.backgroundColor = UIColor.clear
        //: slideVC.view.snp.makeConstraints { make in
        slideVC.view.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(StatusBarHeight)
            make.top.equalToSuperview().offset(kLet_environmentContent)
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.bottom.equalToSuperview()
            make.bottom.equalToSuperview()
        }

        //: for btn in slideVC.allBtn {
        for btn in slideVC.allBtn {
            //: let curenbrn: UIButton = btn
            let curenbrn: UIButton = btn
            //: if curenbrn.titleLabel!.text == "Who like me".localized {
            if curenbrn.titleLabel!.text == (String(str_indexText.prefix(6)) + "ke me").localized {
                //: (curenbrn as AnyObject).addSubview(badgLB)
                (curenbrn as AnyObject).addSubview(badgLB)
                //: badgLB.snp.makeConstraints { make in
                badgLB.snp.makeConstraints { make in
                    //: make.leading.equalTo(curenbrn.titleLabel!.snp.trailing).offset(-5)
                    make.leading.equalTo(curenbrn.titleLabel!.snp.trailing).offset(-5)
                    //: make.top.equalTo(curenbrn).offset(7)
                    make.top.equalTo(curenbrn).offset(7)
                    //: make.height.equalTo(16)
                    make.height.equalTo(16)
                    //: make.width.greaterThanOrEqualTo(16)
                    make.width.greaterThanOrEqualTo(16)
                }
                //: badgLB.isHidden = true
                badgLB.isHidden = true
                //: } else if (curenbrn.titleLabel!.text == "Messages".localized) {
            } else if curenbrn.titleLabel!.text == (String(str_messageData.prefix(3)) + str_managerCaptureName.replacingOccurrences(of: "image", with: "ge")).localized {
                //: (curenbrn as AnyObject).addSubview(msgNumLabel)
                (curenbrn as AnyObject).addSubview(msgNumLabel)
                //: msgNumLabel.snp.makeConstraints { make in
                msgNumLabel.snp.makeConstraints { make in
                    //: make.leading.equalTo(curenbrn.titleLabel!.snp.trailing).offset(-5)
                    make.leading.equalTo(curenbrn.titleLabel!.snp.trailing).offset(-5)
                    //: make.top.equalTo(curenbrn).offset(7)
                    make.top.equalTo(curenbrn).offset(7)
                    //: make.height.equalTo(16)
                    make.height.equalTo(16)
                    //: make.width.greaterThanOrEqualTo(16)
                    make.width.greaterThanOrEqualTo(16)
                }
            }
        }

        //: view.addSubview(cleanBtn)
        view.addSubview(cleanBtn)
        //: cleanBtn.snp.makeConstraints { make in
        cleanBtn.snp.makeConstraints { make in
            //: make.top.equalTo(slideVC.view.snp.top)
            make.top.equalTo(slideVC.view.snp.top)
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
            //: make.size.equalTo(CGSize(width: 44, height: 44))
            make.size.equalTo(CGSize(width: 44, height: 44))
        }

        //: view.addSubview(netTipLabel)
        view.addSubview(netTipLabel)
        //: netTipLabel.snp.makeConstraints { make in
        netTipLabel.snp.makeConstraints { make in
            //: make.top.equalTo(slideVC.view.snp.top).offset(44)
            make.top.equalTo(slideVC.view.snp.top).offset(44)
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.height.equalTo(30)
            make.height.equalTo(30)
        }
    }

    /// 绑定事件
    //: private func bindInteraction() {
    private func mutual() {
        //: TalkingV2Listener.shared.rx
        TalkingV2Listener.shared.rx
            //: .observeWeakly(Bool.self, "isConnection")
            .observeWeakly(Bool.self, (String(str_outputData) + String(str_voiceData)))
            //: .subscribe(onNext: { [weak self] (value) in
            .subscribe(onNext: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.func__checkNetTipState()
                self.countimateAdd()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: WatercourseThen.share.rx.observeWeakly(Int.self, "networkStatus")
        WatercourseThen.share.rx.observeWeakly(Int.self, (String(str_giftName) + String(str_timeName)))
            //: .subscribe(onNext: { [weak self]  (value) in
            .subscribe(onNext: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.func__checkNetTipState()
                self.countimateAdd()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        // 展示全部红点
        //: WatercourseThen.share.rx.observeWeakly(Int.self, "unreadMessageNum")
        WatercourseThen.share.rx.observeWeakly(Int.self, (String(str_modelValue) + String(str_inputName)))
            //: .subscribe(onNext: { [weak self] (value) in
            .subscribe(onNext: { [weak self] value in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: let valueInt = value ?? 0
                let valueInt = value ?? 0
                //: self.func__messagebadgLBState(num: valueInt)
                self.fileChange(num: valueInt)
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: cleanBtn.rx.controlEvent(.touchUpInside)
        cleanBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: {
            .subscribe(onNext: {
                //: let config = ShowAlertConfig()
                let config = ReloadAlertConfig()
                //: config.alignment = .center
                config.alignment = .center

                //: TalkingAlertShow.customAlert(message: "Do you want to mark all messages as read?".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, leftBlock: {
                AlongThen.jumpTime(message: String(bytes: str_perData.map{yellowVar(equal: $0)}, encoding: .utf8)!.localized, leftBtnTitle: (String(str_directionValue)).localized, rightBtnTitle: "OK".localized, leftBlock: {
                    //: TalkingAlertShow.hideAlert()
                    AlongThen.teachingMethod()

                    //: }, rightBlock: {
                }, rightBlock: {
                    //: V2TIMManager.sharedInstance().markAllMessage {
                    V2TIMManager.sharedInstance().markAllMessage {
                        //: UserDefaults.standard.set(true, forKey: isShowCleanAnimatCacheKey)
                        UserDefaults.standard.set(true, forKey: kLet_tabData)
                        //: } fail: { code, desc in
                    } fail: { code, desc in
                        //: UploadLogTool.writeLog(msg: "消息列表一键已读失败：code:\(code), desc:\(String(describing: desc))")
                        EnableReactiveCompatible.nameBy(msg: (String(str_layerTitle) + String(str_colorValue) + String(str_equalData)) + "\(code)" + (String(str_currentData.prefix(7))) + "\(String(describing: desc))")
                    }
                    //: }, config: config)
                }, config: config)

                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        // who like me 红点通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(showbadgNumberNotif(notification:)),
                                               selector: #selector(addGift(notification:)),
                                               //: name: WHOLIKEME_BADGENUMBER_NOTIF,
                                               name: kLet_playTitleValue,
                                               //: object: nil)
                                               object: nil)

        //: noticeView.closeBtnBlock = { [weak self] ()  -> Void in
        noticeView.closeBtnBlock = { [weak self] () in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: let today = NSDate.getTimeString(date: Date(), dateFormat: "yyyy-MM-dd")
            let today = NSDate.formatFinish(date: Date(), dateFormat: (String(str_tapTitle.suffix(5)) + String(str_mainAppSuperData.suffix(5))))
            //: Defaults.set(today, forKey: TalkingMessageTabCloseNotificationsKey)
            kLet_timeContent.set(today, forKey: kLet_matchText)
            //: self.func__hideNotificationTipView(hide: true)
            self.buryOpenHide(hide: true)
        }

        //: NotificationCenter.default.rx.notification( UIApplication.willEnterForegroundNotification)
        NotificationCenter.default.rx.notification(UIApplication.willEnterForegroundNotification)
            //: .subscribe(onNext: { [weak self] (notification) in
            .subscribe(onNext: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.func__turnOnSystemNotification()
                self.vacate()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }
}
