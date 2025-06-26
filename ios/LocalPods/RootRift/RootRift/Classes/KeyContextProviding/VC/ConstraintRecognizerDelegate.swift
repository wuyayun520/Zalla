
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_kindValue:[UInt8] = [0xc9,0xce,0xc9,0xd4,0x88,0xc3,0xcf,0xc4,0xc5,0xd2,0x9a,0x89,0x80,0xc8,0xc1,0xd3,0x80,0xce,0xcf,0xd4,0x80,0xc2,0xc5,0xc5,0xce,0x80,0xc9,0xcd,0xd0,0xcc,0xc5,0xcd,0xc5,0xce,0xd4,0xc5,0xc4]

fileprivate func phaseOfTheMoon(shared num: UInt8) -> UInt8 {
    let value = Int(num) - 96
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Personal information" :*/
fileprivate let str_guideInputContent:String = "feed cover size version transformPers"
fileprivate let str_changeTitle:String = "invideo"

/*: _ :*/
fileprivate let str_norEqualData:[Character] = ["_"]

/*: "male" :*/
fileprivate let str_cellUserData:[UInt8] = [0x0,0xc,0x1,0x8]

private func nameNumber(standard num: UInt8) -> UInt8 {
    return num ^ 109
}

/*: "female" :*/
fileprivate let str_tableContent:String = "femamodele"

/*: "newHeadPic" :*/
fileprivate let str_viewValue:[Character] = ["n","e","w","H","e","a","d"]
fileprivate let str_modelText:String = "Picpush bottom label"

/*: "invite_code" :*/
fileprivate let str_buttonData:String = "indata"
fileprivate let str_tableText:String = "cornerde"

/*: "codeFillType" :*/
fileprivate let str_transactionBlockLetTitle:String = "codeFiof pic limit else"
fileprivate let str_enterData:String = "llTypeguard to key"

/*: "RegisterSuccess" :*/
fileprivate let str_titleValue:String = "Regisdirection view lab with"
fileprivate let str_makeLabData:String = "name extension path origin varterSuc"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ConstraintRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2024/5/24.
//

//: import UIKit
import UIKit

//: class TalkingLoginEditPhotoVC: TalkingBaseViewController {
class ConstraintRecognizerDelegate: MusicViewController {
    //: fileprivate let disposeBag = DisposeBag()
    fileprivate let disposeBag = DisposeBag()
    //: var params = [String: Any]()
    var params = [String: Any]()
    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_kindValue.map{phaseOfTheMoon(shared: $0)}, encoding: .utf8)!)
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
        self.title = (String(str_guideInputContent.suffix(4)) + "onal " + str_changeTitle.replacingOccurrences(of: "video", with: "fo") + "rmation").localized
        //: self.view.backgroundColor = .white
        self.view.backgroundColor = .white
        //: self.setupSubviews()
        self.path()
        //: self.setupSubViewsConstraint()
        self.warning()
        //: self.bindInteraction()
        self.place()
        //: addTapGestureRecognizer()
        recognizer()

        //: func__checkFinishBtnState()
        countimate()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: lazy var editInfoView: TalkingLoginEditPhotoView = {
    lazy var editInfoView: SingingVoiceThen = {
        //: let infoView = TalkingLoginEditPhotoView.init()
        let infoView = SingingVoiceThen()
        //: return infoView
        return infoView
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginEditPhotoVC {
extension ConstraintRecognizerDelegate {
    /// 重写返回按钮事件
    //: override func naviPopback() {
    override func pastCover() {
        //: super.naviPopback()
        super.pastCover()
        // 埋点
        //: let eventID = "\(click_registration_information2_backBTN)_\(WatercourseThen.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(kLet_needWithoutValue)_\(WatercourseThen.share.userFillInfoMode.sex == PushDownStackScalarLiteral.male.rawValue ? String(bytes: str_cellUserData.map{nameNumber(standard: $0)}, encoding: .utf8)! : (str_tableContent.replacingOccurrences(of: "model", with: "l")))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        kLet_depthIconValue.mightHaveBeenStubZapErrorUploadTo(eventID: eventID)
    }

    /// next事件
    //: func commitControlAction() {
    func employWith() {
        // 埋点
        //: let eventID = "\(click_registration_information2_nextBTN)_\(WatercourseThen.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(kLet_routeDeviceData)_\(WatercourseThen.share.userFillInfoMode.sex == PushDownStackScalarLiteral.male.rawValue ? String(bytes: str_cellUserData.map{nameNumber(standard: $0)}, encoding: .utf8)! : (str_tableContent.replacingOccurrences(of: "model", with: "l")))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        kLet_depthIconValue.mightHaveBeenStubZapErrorUploadTo(eventID: eventID)

        //: if WatercourseThen.share.userFillInfoMode.headImage != nil {
        if WatercourseThen.share.userFillInfoMode.headImage != nil {
            //: let image = WatercourseThen.share.userFillInfoMode.headImage!
            let image = WatercourseThen.share.userFillInfoMode.headImage!
            //: params["newHeadPic"] = image.jpegData(compressionQuality: 1)
            params[(String(str_viewValue) + String(str_modelText.prefix(3)))] = image.jpegData(compressionQuality: 1)
        }
        //: if WatercourseThen.share.userFillInfoMode.inviteCode.count > 0 {
        if WatercourseThen.share.userFillInfoMode.inviteCode.count > 0 {
            //: params["invite_code"] = WatercourseThen.share.userFillInfoMode.inviteCode
            params[(str_buttonData.replacingOccurrences(of: "data", with: "vi") + "te_c" + str_tableText.replacingOccurrences(of: "corner", with: "o"))] = WatercourseThen.share.userFillInfoMode.inviteCode

            //: } else {
        } else {
            //: let inviteCode = UserDefaults.standard.string(forKey: SaveInviteCodeKey)
            let inviteCode = UserDefaults.standard.string(forKey: kLet_tabText)
            //: if inviteCode?.count ?? 0 > 1 {
            if inviteCode?.count ?? 0 > 1 {
                //: params["invite_code"] = inviteCode
                params[(str_buttonData.replacingOccurrences(of: "data", with: "vi") + "te_c" + str_tableText.replacingOccurrences(of: "corner", with: "o"))] = inviteCode
                //: params["codeFillType"] = 1
                params[(String(str_transactionBlockLetTitle.prefix(6)) + String(str_enterData.prefix(6)))] = 1
            }
        }

        //: if WatercourseThen.share.userFillInfoMode.sex == "1" {
        if WatercourseThen.share.userFillInfoMode.sex == "1" {
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
                    NamesAdjustManager.share.appEffect(key: (String(str_titleValue.prefix(5)) + String(str_makeLabData.suffix(6)) + "cess"))
                    //: FirebaseAnalyticsManager.share.logEvent(name: "RegisterSuccess")
                    CellAnalyticsManager.share.sawLogLayer(name: (String(str_titleValue.prefix(5)) + String(str_makeLabData.suffix(6)) + "cess"))

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
            //: } else {
        } else {
            //: let VC = TalkingLoginEditAuthAndVideoVC.init()
            let VC = ReadViewController()
            //: VC.params = params
            VC.params = params
            //: self.currentViewController()?.navigationController?.pushViewController(VC, animated: true)
            self.toController()?.navigationController?.pushViewController(VC, animated: true)
        }
    }

    //: func func__checkFinishBtnState() {
    func countimate() {
        //: let headImg = WatercourseThen.share.userFillInfoMode.headImage ?? nil
        let headImg = WatercourseThen.share.userFillInfoMode.headImage ?? nil
        //: editInfoView.commitButton.isEnabled = headImg != nil
        editInfoView.commitButton.isEnabled = headImg != nil
    }
}

// MARK: - Delegate

//: extension TalkingLoginEditPhotoVC: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
extension ConstraintRecognizerDelegate: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    //: private func func__choicePhotos() {
    private func fill() {
        //: TalkingPermissionTool.func__openAlbumServiceWithBlock(true) {  (isOpen: Bool) in
        ColorPermissionTool.stream(true) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: let vc = TalkingImagePickTool.initImagePickerVc(allowImgCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                let vc = AtProgressThen.busy(allowImgCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                //: vc.modalPresentationStyle = .fullScreen
                vc.modalPresentationStyle = .fullScreen
                //: IndoorsPushManager.share.func__getCurrentActivityVC()?.present(vc, animated: true)
                IndoorsPushManager.share.queryEqual()?.present(vc, animated: true)
                //: vc.didFinishPickingPhotosHandle = { [weak self] ( photos: Array<UIImage>?,
                vc.didFinishPickingPhotosHandle = { [weak self] (photos: [UIImage]?,
                                                                 //: assets: Array<Any>?,
                                                                 _: [Any]?,
                                                                 //: isSelectOriginalPhoto: Bool?)  in
                                                                 _: Bool?) in
                        //: guard let self = self else {return}
                        guard let self = self else { return }
                        //: if photos!.count > 0 {
                        if photos!.count > 0 {
                            //: WatercourseThen.share.userFillInfoMode.headImage = photos![0]
                            WatercourseThen.share.userFillInfoMode.headImage = photos![0]
                            //: self.editInfoView.addHeadButton.setImage(photos![0], for: .normal)
                            self.editInfoView.addHeadButton.setImage(photos![0], for: .normal)
                            //: self.func__checkFinishBtnState()
                            self.countimate()
                        }
                }
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingLoginEditPhotoVC {
extension ConstraintRecognizerDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func path() {
        //: view.addSubview(editInfoView)
        view.addSubview(editInfoView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func warning() {
        //: editInfoView.snp.makeConstraints { make in
        editInfoView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func place() {
        //: editInfoView.btnBlock = { [weak self] (_ type: EditInfoType) -> Void in
        editInfoView.btnBlock = { [weak self] (_ type: CornerInfoType) in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: switch type {
            switch type {
            //: case .HeadPic:
            case .HeadPic:
                //: func__choicePhotos()
                fill()
            //: break
            //: case .NickName, .Birth, .Skip: break
            case .NickName, .Birth, .Skip: break
            //: case .Finish:
            case .Finish:
                //: self.commitControlAction()
                self.employWith()
                //: break
            }

            //: return
        }
    }
}
