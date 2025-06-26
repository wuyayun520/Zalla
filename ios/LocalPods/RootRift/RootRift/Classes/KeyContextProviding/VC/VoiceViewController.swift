
//: Declare String Begin

/*: "Personal information" :*/
fileprivate let str_contentValue:[Character] = ["P","e","r","s","o","n","a","l"," ","i","n","f","o","r","m"]
fileprivate let str_infoValue:String = "apicion"

/*: _ :*/
fileprivate let str_layerTitle:[Character] = ["_"]

/*: "male" :*/
fileprivate let str_stageText:[UInt8] = [0x3f,0x33,0x3e,0x37]

private func addSystem(view num: UInt8) -> UInt8 {
    return num ^ 82
}

/*: "female" :*/
fileprivate let str_photoName:[Character] = ["f","e","m","a","l","e"]

/*: "sex" :*/
fileprivate let str_equalName:String = "seimage"

/*: "nickname" :*/
fileprivate let str_replyTitle:String = "nicknshowe"

/*: "birthday" :*/
fileprivate let str_onText:String = "birnormal"

/*: "%.2d" :*/
fileprivate let str_textValue:String = "%.2dfor load"

/*: - :*/
fileprivate let str_tableName:[Character] = ["-"]

/*: "User :*/
fileprivate let str_toTitle:String = "Userdata color label lab"

/*: "invite_code" :*/
fileprivate let str_sizeValue:[UInt8] = [0x2c,0x31,0x39,0x2c,0x37,0x28,0x22,0x26,0x32,0x27,0x28]

fileprivate func marginColor(image num: UInt8) -> UInt8 {
    let value = Int(num) - 195
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  VoiceViewController.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/30.
//

//: import UIKit
import UIKit

//: class TalkingLoginEditInfoVC: TalkingBaseViewController {
class VoiceViewController: MusicViewController {
    //: fileprivate let disposeBag = DisposeBag()
    fileprivate let disposeBag = DisposeBag()

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: popGesture(isOpen: false)
        priseImage(isOpen: false)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        // 返回到此页面时，重新赋值
        //: if editInfoView.nameInputView.text?.count ?? 0 > 0 {
        if editInfoView.nameInputView.text?.count ?? 0 > 0 {
            //: WatercourseThen.share.userFillInfoMode.nickName = editInfoView.nameInputView.text ?? ""
            WatercourseThen.share.userFillInfoMode.nickName = editInfoView.nameInputView.text ?? ""
        }
        //: if editInfoView.inviteCodeInputView.text?.count ?? 0 > 0 {
        if editInfoView.inviteCodeInputView.text?.count ?? 0 > 0 {
            //: WatercourseThen.share.userFillInfoMode.inviteCode = editInfoView.inviteCodeInputView.text ?? ""
            WatercourseThen.share.userFillInfoMode.inviteCode = editInfoView.inviteCodeInputView.text ?? ""
        }
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: title = "Personal information".localized
        title = (String(str_contentValue) + str_infoValue.replacingOccurrences(of: "pic", with: "t")).localized
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: setupSubviews()
        buildVideo()
        //: setupSubViewsConstraint()
        remind()
        //: bindInteraction()
        original()
        //: addTapGestureRecognizer()
        recognizer()
    }

    // MARK: - Lazy Load

    //: private lazy var editInfoView: TalkingLoginEditInfoView = {
    private lazy var editInfoView: LikeUpObjectProtocol = {
        //: let infoView = TalkingLoginEditInfoView()
        let infoView = LikeUpObjectProtocol()
        //: return infoView
        return infoView
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginEditInfoVC {
extension VoiceViewController {
    /// 重写返回按钮事件
    //: override func naviPopback() {
    override func pastCover() {
        //: super.naviPopback()
        super.pastCover()
        // 埋点
        //: let eventID = "\(click_registration_information1_backBTN)_\(WatercourseThen.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(kLet_netTopContent)_\(WatercourseThen.share.userFillInfoMode.sex == PushDownStackScalarLiteral.male.rawValue ? String(bytes: str_stageText.map{addSystem(view: $0)}, encoding: .utf8)! : (String(str_photoName)))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        kLet_depthIconValue.mightHaveBeenStubZapErrorUploadTo(eventID: eventID)
    }

    /// next事件
    //: private func commitControlAction() {
    private func send() {
        //: if WatercourseThen.share.userFillInfoMode.nickName.count <= 0 {
        if WatercourseThen.share.userFillInfoMode.nickName.count <= 0 {
            //: getRandomNickname()
            generate()
        }
        //: var params = [String: Any]()
        var params = [String: Any]()
        //: params["sex"] = WatercourseThen.share.userFillInfoMode.sex
        params[(str_equalName.replacingOccurrences(of: "image", with: "x"))] = WatercourseThen.share.userFillInfoMode.sex
        //: params["nickname"] = WatercourseThen.share.userFillInfoMode.nickName
        params[(str_replyTitle.replacingOccurrences(of: "show", with: "am"))] = WatercourseThen.share.userFillInfoMode.nickName
        //: params["birthday"] = "\(String(format: "%.2d", WatercourseThen.share.userFillInfoMode.birthMonth))-\(String(format: "%.2d", WatercourseThen.share.userFillInfoMode.birthDay))-\(WatercourseThen.share.userFillInfoMode.birthYear)"
        params[(str_onText.replacingOccurrences(of: "normal", with: "t") + "hday")] = "\(String(format: "%.2d", WatercourseThen.share.userFillInfoMode.birthMonth))-\(String(format: "%.2d", WatercourseThen.share.userFillInfoMode.birthDay))-\(WatercourseThen.share.userFillInfoMode.birthYear)"
        //: let VC = TalkingLoginEditPhotoVC()
        let VC = ConstraintRecognizerDelegate()
        //: VC.params = params
        VC.params = params
        //: currentViewController()?.navigationController?.pushViewController(VC, animated: true)
        toController()?.navigationController?.pushViewController(VC, animated: true)
    }

    /// skip事件
    //: private func func__skipBtnAction() {
    private func precedent() {
        //: getRandomNickname()
        generate()
        //: WatercourseThen.share.userFillInfoMode.setBirth()
        WatercourseThen.share.userFillInfoMode.bagCommencementChange()
        //: WatercourseThen.share.userFillInfoMode.inviteCode = ""
        WatercourseThen.share.userFillInfoMode.inviteCode = ""
        //: commitControlAction()
        send()
    }

    /// 获取随机昵称
    //: private func getRandomNickname() {
    private func generate() {
        //: let randCode = Int(arc4random_uniform(899999) + 100000)
        let randCode = Int(arc4random_uniform(899_999) + 100_000)
        //: WatercourseThen.share.userFillInfoMode.nickName = "User\(randCode)"
        WatercourseThen.share.userFillInfoMode.nickName = (String(str_toTitle.prefix(4))) + "\(randCode)"
    }
}

// MARK: - Layout

//: extension TalkingLoginEditInfoVC {
extension VoiceViewController {
    // 添加视图
    //: private func setupSubviews() {
    private func buildVideo() {
        //: view.addSubview(editInfoView)
        view.addSubview(editInfoView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func remind() {
        //: editInfoView.snp.makeConstraints { make in
        editInfoView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func original() {
        //: editInfoView.btnBlock = { [weak self] (_ type: EditInfoType) in
        editInfoView.btnBlock = { [weak self] (_ type: CornerInfoType) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: switch type {
            switch type {
            //: case .HeadPic: break
            case .HeadPic: break
            //: case .NickName: break
            case .NickName: break
            //: case .Birth: break
            case .Birth: break
            //: case .Finish:
            case .Finish:
                // 埋点
                //: let eventID = "\(click_registration_information1_nextBTN)_\(WatercourseThen.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
                let eventID = "\(kLet_eventUserDomainData)_\(WatercourseThen.share.userFillInfoMode.sex == PushDownStackScalarLiteral.male.rawValue ? String(bytes: str_stageText.map{addSystem(view: $0)}, encoding: .utf8)! : (String(str_photoName)))"
                //: uploadRecord.uploadRecordEvent(eventID: eventID)
                kLet_depthIconValue.mightHaveBeenStubZapErrorUploadTo(eventID: eventID)

                // 校验验证码
                //: if WatercourseThen.share.userFillInfoMode.inviteCode.count > 0 {
                if WatercourseThen.share.userFillInfoMode.inviteCode.count > 0 {
                    //: let params = ["invite_code": WatercourseThen.share.userFillInfoMode.inviteCode]
                    let params = [String(bytes: str_sizeValue.map{marginColor(image: $0)}, encoding: .utf8)!: WatercourseThen.share.userFillInfoMode.inviteCode]
                    //: TalkingLoginRequestTool.req_CheckCodeData(params: params) { succeed, _, _ in
                    WhiteIndexReactiveCompatible.instanceCompletion(params: params) { succeed, _, _ in
                        //: guard succeed else { return }
                        guard succeed else { return }
                        //: self.commitControlAction()
                        self.send()
                    }

                    //: } else {
                } else {
                    //: self.commitControlAction()
                    self.send()
                }

            //: case .Skip:
            case .Skip:
                // 埋点
                //: let eventID = "\(click_registration_information1_skipBTN)_\(WatercourseThen.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
                let eventID = "\(kLet_lengthTitle)_\(WatercourseThen.share.userFillInfoMode.sex == PushDownStackScalarLiteral.male.rawValue ? String(bytes: str_stageText.map{addSystem(view: $0)}, encoding: .utf8)! : (String(str_photoName)))"
                //: uploadRecord.uploadRecordEvent(eventID: eventID)
                kLet_depthIconValue.mightHaveBeenStubZapErrorUploadTo(eventID: eventID)
                //: self.func__skipBtnAction()
                self.precedent()
            }
        }
    }
}
