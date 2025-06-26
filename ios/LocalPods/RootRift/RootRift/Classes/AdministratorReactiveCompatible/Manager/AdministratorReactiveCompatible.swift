
//: Declare String Begin

/*: "content" :*/
fileprivate let str_kindTitle:[Character] = ["c","o","n","t","e","n","t"]

/*: "jumpKey" :*/
fileprivate let str_addButtonValue:String = "jumpKeheight with"
fileprivate let str_mainName:[Character] = ["y"]

/*: "uploadUserHeaderPic" :*/
fileprivate let str_failureViewMakeValue:String = "uptime"
fileprivate let str_combineValue:String = "view key as wayHeade"

/*: "truePersonAuth" :*/
fileprivate let str_attributeData:[Character] = ["t","r","u","e","P","e","r","s","o","n","A","u","t","h"]

/*: "yyyy-MM-dd" :*/
fileprivate let str_acceptTitle:String = "make image inyyyy-"
fileprivate let str_makeValue:[Character] = ["M","M","-","d","d"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AdministratorReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/17.
//

//: import UIKit
import UIKit

//: enum PopupWindowType: CaseIterable {
enum EditionCaseIterable: CaseIterable {
    //: case sign_in
    case sign_in // 签到
    //: case video_Cover
    case video_Cover // 上传视频封面提醒弹窗
    //: case startLive_Tips
    case startLive_Tips // 开播提醒弹窗
    //: case video_Call
    case video_Call // 主动拨打弹窗
    //: case face_Verification
    case face_Verification // 需要真人认证弹窗
    //: case Web_Subscribe
    case Web_Subscribe // 会员订阅弹窗
    //: case Attestation_Refuse
    case Attestation_Refuse // 真人认证，头像上传，被拒绝时提示弹窗
    //: case New_Guidance
    case New_Guidance // 主播引导弹窗（女性首次注册，未完成全部新人任务）
}

//: class TalkingPopupWindowManager: NSObject {
class AdministratorReactiveCompatible: NSObject {
    //: var dataSource = Array<PopupWindowType>()
    var dataSource = [EditionCaseIterable]()
    //: var alertQueue: PublishSubject<PopupWindowType> = PublishSubject<PopupWindowType>()
    var alertQueue: PublishSubject<EditionCaseIterable> = .init()
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: private var isShowLiveTipsView = false
    private var isShowLiveTipsView = false
    /// 通话中，结束后再显示审核拒绝提示弹窗
    //: private var isLateronRefuseView = false
    private var isLateronRefuseView = false

    //: var refuseViewData = [String: String]()
    var refuseViewData = [String: String]()

    //: static let shared = TalkingPopupWindowManager()
    static let shared = AdministratorReactiveCompatible()
    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: setObserver()
        showObserver()
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

//: extension TalkingPopupWindowManager {
extension AdministratorReactiveCompatible {
    //: func setObserver() {
    func showObserver() {
        //: alertQueue.asObservable().subscribe(onNext: { [weak self]  type in
        alertQueue.asObservable().subscribe(onNext: { [weak self] type in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.dataSource.append(type)
            self.dataSource.append(type)
            //: self.showAlert()
            self.cipherBack()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)

        //: NotificationCenter.default.addObserver(self, selector: #selector(showRefuseView), name: VIDEOCALL_END_CLOSEDISCOUNTS_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(showSearch), name: kLet_messageTitle, object: nil)
    }

    //: func setHomePopUpWindow() {
    func checkedSize() {
        // 默认模式, 男性, 未订阅
        //: if WatercourseThen.share.loginUserMode.jumpType == 0,
        if WatercourseThen.share.loginUserMode.jumpType == 0,
           //: WatercourseThen.share.appUserConfigMode.payWinType == 2,
           WatercourseThen.share.appUserConfigMode.payWinType == 2,
           //: WatercourseThen.share.appStatus == AppSkinStatus.normal.rawValue,
           WatercourseThen.share.appStatus == PublishWidthTotal.normal.rawValue,
           //: WatercourseThen.share.loginUserMode.sex == Gender.male.rawValue,
           WatercourseThen.share.loginUserMode.sex == PushDownStackScalarLiteral.male.rawValue,
           //: WatercourseThen.share.loginUserMode.loungePlus == false {
           WatercourseThen.share.loginUserMode.loungePlus == false
        {
            //: self.alertQueue.onNext(PopupWindowType.Web_Subscribe)
            self.alertQueue.onNext(EditionCaseIterable.Web_Subscribe)
        }

        //: if  WatercourseThen.share.loginUserMode.showSignInPage && WatercourseThen.share.loginUserMode.sex == Gender.male.rawValue && WatercourseThen.share.appStatus != AppSkinStatus.special.rawValue {
        if WatercourseThen.share.loginUserMode.showSignInPage, WatercourseThen.share.loginUserMode.sex == PushDownStackScalarLiteral.male.rawValue, WatercourseThen.share.appStatus != PublishWidthTotal.special.rawValue {
            //: self.alertQueue.onNext(PopupWindowType.sign_in)
            self.alertQueue.onNext(EditionCaseIterable.sign_in)
        }

        //: if WatercourseThen.share.loginUserMode.isNaUser == false,
        if WatercourseThen.share.loginUserMode.isNaUser == false,
           //: WatercourseThen.share.appUserConfigMode.videoCover.count > 0,
           WatercourseThen.share.appUserConfigMode.videoCover.count > 0,
           //: WatercourseThen.share.loginUserMode.sex == Gender.female.rawValue,
           WatercourseThen.share.loginUserMode.sex == PushDownStackScalarLiteral.female.rawValue,
           //: WatercourseThen.share.appStatus != AppSkinStatus.special.rawValue {
           WatercourseThen.share.appStatus != PublishWidthTotal.special.rawValue
        {
            //: self.alertQueue.onNext(PopupWindowType.video_Cover)
            self.alertQueue.onNext(EditionCaseIterable.video_Cover)
        }

        //: if WatercourseThen.share.appUserConfigMode.showNewGuidance, WatercourseThen.share.loginUserMode.sex == Gender.female.rawValue && WatercourseThen.share.appStatus != AppSkinStatus.special.rawValue {
        if WatercourseThen.share.appUserConfigMode.showNewGuidance, WatercourseThen.share.loginUserMode.sex == PushDownStackScalarLiteral.female.rawValue, WatercourseThen.share.appStatus != PublishWidthTotal.special.rawValue {
            //: self.alertQueue.onNext(PopupWindowType.New_Guidance)
            self.alertQueue.onNext(EditionCaseIterable.New_Guidance)
        }

        //: if WatercourseThen.share.appUserConfigMode.headPicRejectNotice.count > 0 && WatercourseThen.share.loginUserMode.sex == Gender.female.rawValue && WatercourseThen.share.appStatus != AppSkinStatus.special.rawValue {
        if WatercourseThen.share.appUserConfigMode.headPicRejectNotice.count > 0, WatercourseThen.share.loginUserMode.sex == PushDownStackScalarLiteral.female.rawValue, WatercourseThen.share.appStatus != PublishWidthTotal.special.rawValue {
            //: refuseViewData["content"] = WatercourseThen.share.appUserConfigMode.headPicRejectNotice
            refuseViewData[(String(str_kindTitle))] = WatercourseThen.share.appUserConfigMode.headPicRejectNotice
            //: refuseViewData["jumpKey"] = "uploadUserHeaderPic"
            refuseViewData[(String(str_addButtonValue.prefix(6)) + String(str_mainName))] = (str_failureViewMakeValue.replacingOccurrences(of: "time", with: "lo") + "adUser" + String(str_combineValue.suffix(5)) + "rPic")
            //: self.alertQueue.onNext(PopupWindowType.Attestation_Refuse)
            self.alertQueue.onNext(EditionCaseIterable.Attestation_Refuse)
        }

        //: if WatercourseThen.share.appUserConfigMode.realPicRejectNotice.count > 0 && WatercourseThen.share.loginUserMode.sex == Gender.female.rawValue && WatercourseThen.share.appStatus != AppSkinStatus.special.rawValue {
        if WatercourseThen.share.appUserConfigMode.realPicRejectNotice.count > 0, WatercourseThen.share.loginUserMode.sex == PushDownStackScalarLiteral.female.rawValue, WatercourseThen.share.appStatus != PublishWidthTotal.special.rawValue {
            //: refuseViewData["content"] = WatercourseThen.share.appUserConfigMode.realPicRejectNotice
            refuseViewData[(String(str_kindTitle))] = WatercourseThen.share.appUserConfigMode.realPicRejectNotice
            //: refuseViewData["jumpKey"] = "truePersonAuth"
            refuseViewData[(String(str_addButtonValue.prefix(6)) + String(str_mainName))] = (String(str_attributeData))
            //: self.alertQueue.onNext(PopupWindowType.Attestation_Refuse)
            self.alertQueue.onNext(EditionCaseIterable.Attestation_Refuse)
        }
    }

    //: func startLivePopUpWindow() {
    func cuttingEdgeKey() {
        //: self.alertQueue.onNext(PopupWindowType.startLive_Tips)
        self.alertQueue.onNext(EditionCaseIterable.startLive_Tips)
    }

    /// 主动拨打弹窗
    //: func videoCallPopUpWindow() {
    func imageWindow() {
        //: self.alertQueue.onNext(PopupWindowType.video_Call)
        self.alertQueue.onNext(EditionCaseIterable.video_Call)
    }

    /// 需要真人认证弹窗
    //: func faceVerificationPopUpWindow() {
    func verification() {
        //: self.alertQueue.onNext(PopupWindowType.face_Verification)
        self.alertQueue.onNext(EditionCaseIterable.face_Verification)
    }

    /// 真人认证，头像上传，被拒绝时提示弹窗
    //: func attestationRefusePopUpWindow(dic: [String: Any]) {
    func colorOn(dic: [String: Any]) {
        //: refuseViewData["content"] = dic["content"] as? String
        refuseViewData[(String(str_kindTitle))] = dic[(String(str_kindTitle))] as? String
        //: refuseViewData["jumpKey"] = dic["jumpKey"] as? String
        refuseViewData[(String(str_addButtonValue.prefix(6)) + String(str_mainName))] = dic[(String(str_addButtonValue.prefix(6)) + String(str_mainName))] as? String
        //: guard TalkingSocketManager.shared.isTalking == false else {
        guard NameSocketManager.shared.isTalking == false else {
            //: isLateronRefuseView = true
            isLateronRefuseView = true
            //: return
            return
        }
        //: self.alertQueue.onNext(PopupWindowType.Attestation_Refuse)
        self.alertQueue.onNext(EditionCaseIterable.Attestation_Refuse)
    }

    /// 通话结束后
    //: @objc private func showRefuseView() {
    @objc private func showSearch() {
        //: if isLateronRefuseView {
        if isLateronRefuseView {
            //: self.alertQueue.onNext(PopupWindowType.Attestation_Refuse)
            self.alertQueue.onNext(EditionCaseIterable.Attestation_Refuse)
        }
    }

    //: func showAlert() {
    func cipherBack() {
        //: guard self.dataSource.count > 0 else { return }
        guard self.dataSource.count > 0 else { return }
        //: self.actionForTask(type: self.dataSource.first!)
        self.scrub(type: self.dataSource.first!)
    }

    //: func actionForTask(type: PopupWindowType) {
    func scrub(type: EditionCaseIterable) {
        //: switch type {
        switch type {
        //: case .sign_in:
        case .sign_in:
            //: if let index = self.dataSource.firstIndex(of: .sign_in) {
            if let index = self.dataSource.firstIndex(of: .sign_in) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: IndoorsPushManager.share.func__pushToWebVC(webViewType: .SiginPopup)
            IndoorsPushManager.share.pushType(webViewType: .SiginPopup)

        //: case .video_Cover:
        case .video_Cover:
            //: if let index = self.dataSource.firstIndex(of: .video_Cover) {
            if let index = self.dataSource.firstIndex(of: .video_Cover) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingVideoCoverPopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = CoverWriteView(frame: CGRect(x: 0, y: 0, width: kLet_scaleName, height: kLet_environmentText))
            //: view.show()
            view.errorWithShow()

        //: case .startLive_Tips:
        case .startLive_Tips:
            //: if let index = self.dataSource.firstIndex(of: .startLive_Tips) {
            if let index = self.dataSource.firstIndex(of: .startLive_Tips) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: if isShowLiveTipsView {
            if isShowLiveTipsView {
                //: return
                return
            }
            //: let view = TalkingLiveTipsPopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = AstatineUpView(frame: CGRect(x: 0, y: 0, width: kLet_scaleName, height: kLet_environmentText))
            //: view.show()
            view.showListLive()
            //: isShowLiveTipsView = true
            isShowLiveTipsView = true
            //: view.endBlock = { [weak self] in
            view.endBlock = { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.isShowLiveTipsView = false
                self.isShowLiveTipsView = false
            }

        //: case.video_Call:
        case .video_Call:
            //: if let index = self.dataSource.firstIndex(of: .video_Call) {
            if let index = self.dataSource.firstIndex(of: .video_Call) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingVideoCallPopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = IndoorsThen(frame: CGRect(x: 0, y: 0, width: kLet_scaleName, height: kLet_environmentText))
            //: view.show()
            view.toShow()

        //: case.face_Verification:
        case .face_Verification:
            //: if let index = self.dataSource.firstIndex(of: .face_Verification) {
            if let index = self.dataSource.firstIndex(of: .face_Verification) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingFaceVerificationPopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = HeadUpView(frame: CGRect(x: 0, y: 0, width: kLet_scaleName, height: kLet_environmentText))
            //: view.show()
            view.recordLabel()

        //: case .Web_Subscribe:
        case .Web_Subscribe:
            //: if let index = self.dataSource.firstIndex(of: .Web_Subscribe) {
            if let index = self.dataSource.firstIndex(of: .Web_Subscribe) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let date = Defaults.object(forKey: TalkingMaleUnsubscribedAlertIsShow)
            let date = kLet_timeContent.object(forKey: kLet_netAppText)
            //: let today = NSDate.getTimeString(date: Date(), dateFormat: "yyyy-MM-dd")
            let today = NSDate.formatFinish(date: Date(), dateFormat: (String(str_acceptTitle.suffix(5)) + String(str_makeValue)))
            //: if date == nil || (date as! String) != today {
            if date == nil || (date as! String) != today {
                //: Defaults.set(today, forKey: TalkingMaleUnsubscribedAlertIsShow)
                kLet_timeContent.set(today, forKey: kLet_netAppText)
                //: IndoorsPushManager.share.func__pushToSubscribeAlert()
                IndoorsPushManager.share.digitizerParams()
            }

        //: case.Attestation_Refuse:
        case .Attestation_Refuse:
            //: if let index = self.dataSource.firstIndex(of: .Attestation_Refuse) {
            if let index = self.dataSource.firstIndex(of: .Attestation_Refuse) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingAttestationRefusePopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = AllUpView(frame: CGRect(x: 0, y: 0, width: kLet_scaleName, height: kLet_environmentText))
            //: view.setViewData(dit: refuseViewData)
            view.usufructuaryFill(dit: refuseViewData)
            //: view.show()
            view.sendOn()

        //: case .New_Guidance:
        case .New_Guidance:
            //: if let index = self.dataSource.firstIndex(of: .New_Guidance) {
            if let index = self.dataSource.firstIndex(of: .New_Guidance) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingNewGuidancePopUpView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = ManagerUpView(frame: CGRect(x: 0, y: 0, width: kLet_scaleName, height: kLet_environmentText))
            //: view.show()
            view.atHomeSend()
        }
    }
}
