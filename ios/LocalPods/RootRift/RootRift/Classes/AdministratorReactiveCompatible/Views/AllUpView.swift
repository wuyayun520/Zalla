
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_appText:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "icon_livetc_warn" :*/
fileprivate let str_atName:[Character] = ["i","c","o","n","_","l","i","v"]
fileprivate let str_fieldData:String = "app size add elseetc_warn"

/*: "System notification" :*/
fileprivate let str_leadingText:[Character] = ["S","y","s","t","e","m"," ","n","o","t","i","f","i","c","a","t","i","o","n"]

/*: "Upload Now" :*/
fileprivate let str_bottomData:String = "yellow of lab card tagUpload "
fileprivate let str_spaceName:String = "manager keyNow"

/*: "btn_me_program_photo_delete" :*/
fileprivate let str_frontTitle:String = "btn_mdecide user view size after"
fileprivate let str_partyTitle:String = "AM"
fileprivate let str_succeedValue:String = "_phomanager color request selected"
fileprivate let str_lastData:String = "lplayere"

/*: "content" :*/
fileprivate let str_differenceContent:String = "congiftengift"

/*: "jumpKey" :*/
fileprivate let str_frameTitle:String = "jumpKadd model"
fileprivate let str_rawData:[Character] = ["e","y"]

/*: "uploadUserHeaderPic" :*/
fileprivate let str_descriptionClickData:[Character] = ["u","p","l","o","a","d","U","s","e","r","H","e","a","d","e","r","P","i","c"]

/*: "truePersonAuth" :*/
fileprivate let str_iconValue:String = "return stringtruePer"
fileprivate let str_popText:String = "sadd"
fileprivate let str_normalData:String = "nAuthmodel player make"

/*: "headPic" :*/
fileprivate let str_messageTotalContent:String = "headPicself model height data false"

/*: "Modify the success" :*/
fileprivate let str_contentWithValue:String = "Modifmake actual"
fileprivate let str_actualValue:[Character] = ["c","e","s","s"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AllUpView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2024/5/23.
//

//: import UIKit
import UIKit

/// 真人认证被拒,头像审核提示弹窗

//: class TalkingAttestationRefusePopUpView: UIView {
class AllUpView: UIView {
    //: var popView: TalkingPopView?
    var popView: MessageScalePopView?
    //: var pushType = ""
    var pushType = ""

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.labUser()
        //: self.setupSubViewsConstraint()
        self.movement()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_appText.reversed(), encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: view.layer.cornerRadius = 16
        view.layer.cornerRadius = 16
        //: return view
        return view
        //: }()
    }()

    //: private lazy var topIcon: UIImageView = {
    private lazy var topIcon: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.image = UIImage.withView(name: "icon_livetc_warn")
        imag.image = UIImage.withView(name: (String(str_atName) + String(str_fieldData.suffix(8))))
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var title: UILabel = {
    private lazy var title: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = UIColor.black
        lb.textColor = UIColor.black
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        lb.font = UIFont.conversationSize(type: .Medium, fontSize: 18)
        //: lb.text = "System notification".localized
        lb.text = (String(str_leadingText)).localized
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var mesageLB: UILabel = {
    private lazy var mesageLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = UIColor.black
        lb.textColor = UIColor.black
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        lb.font = UIFont.conversationSize(type: .Regular, fontSize: 16)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var finishBtn: UIButton = {
    private lazy var finishBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))), for: .normal)
        btn.setBackgroundImage(UIImage.distancePlay(colors: UIColor.memoryImageAwake(), size: CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))), for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("Upload Now".localized, for: .normal)
        btn.setTitle((String(str_bottomData.suffix(7)) + String(str_spaceName.suffix(3))).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.showSize(fontSize: 18)
        btn.titleLabel?.font = UIFont.showSize(fontSize: 18)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(implementAdd), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.withView(name: "btn_me_program_photo_delete"), for: .normal)
        btn.setImage(UIImage.withView(name: (String(str_frontTitle.prefix(5)) + "e_progr" + str_partyTitle.lowercased() + String(str_succeedValue.prefix(4)) + "to_de" + str_lastData.replacingOccurrences(of: "player", with: "et"))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(upwardsTitle), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingAttestationRefusePopUpView {
extension AllUpView {
    //: func setViewData(dit: [String: String]) {
    func usufructuaryFill(dit: [String: String]) {
        //: mesageLB.text = dit["content"]
        mesageLB.text = dit[(str_differenceContent.replacingOccurrences(of: "gift", with: "t"))]
        //: pushType = dit["jumpKey"] ?? ""
        pushType = dit[(String(str_frameTitle.prefix(5)) + String(str_rawData))] ?? ""
    }

    //: @objc private func finishBtnClick() {
    @objc private func implementAdd() {
        //: if pushType == "uploadUserHeaderPic" {
        if pushType == (String(str_descriptionClickData)) {
            //: updatePhotoButtonClick()
            source()
            //: } else if pushType == "truePersonAuth" {
        } else if pushType == (String(str_iconValue.suffix(7)) + str_popText.replacingOccurrences(of: "add", with: "o") + String(str_normalData.prefix(5))) {
            //: WatercourseThen.share.loginUserMode.isTPAuth = "3"
            WatercourseThen.share.loginUserMode.isTPAuth = "3"
            //: IndoorsPushManager.share.func__pushUserVerifyController(toast: nil)
            IndoorsPushManager.share.overwhelm(toast: nil)
            //: dismiss()
            when()
        }
    }

    //: @objc private func closeBtnClick() {
    @objc private func upwardsTitle() {
        //: dismiss()
        when()
    }

    //: func show() {
    func sendOn() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = MessageScalePopView(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.sharedLive(view: self)
        //: popView?.showInView(view: ListMacroDefine.getWindow())
        popView?.targetView(view: ListMacroDefine.startLoad())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func when() {
        //: popView?.dismissView()
        popView?.reject()
        //: popView = nil
        popView = nil
    }

    /// 更新photo
    //: private func updatePhotoButtonClick() {
    private func source() {
        //: TalkingPermissionTool.func__openAlbumServiceWithBlock(true) { (isOpen: Bool) in
        ColorPermissionTool.stream(true) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: let vc = TalkingImagePickTool.initImagePickerVc(allowImgCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                let vc = AtProgressThen.busy(allowImgCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                //: vc.modalPresentationStyle = .fullScreen
                vc.modalPresentationStyle = .fullScreen
                //: self.currentViewController()?.present(vc, animated: true)
                self.toController()?.present(vc, animated: true)
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
                            //: let image: UIImage = photos?[0] ?? UIImage()
                            let image: UIImage = photos?[0] ?? UIImage()
                            // 上传头像
                            //: self.req_updateInfo(img: image)
                            self.getCracking(img: image)
                        }
                        //: return
                }
                //: vc.imagePickerControllerDidCancelHandle = { [weak self] in
                vc.imagePickerControllerDidCancelHandle = { [weak self] in
                    //: guard let self = self else {return}
                    guard let self = self else { return }
                    //: self.dismiss()
                    self.when()
                }
                //: } else {
            } else {
                //: self.dismiss()
                self.when()
            }
        }
    }

    //: private func req_updateInfo(img: UIImage) {
    private func getCracking(img: UIImage) {
        //: let resultData: NSData = img.compressedImageData()! as NSData
        let resultData: NSData = img.image()! as NSData
        //: let dict = ["headPic": resultData]
        let dict = [(String(str_messageTotalContent.prefix(7))): resultData]
        //: ProgressHUD.show()
        AtAdView.sizeUp()
        //: TalkingMeRequestTool.req_UpdateUserInfo(params: dict) { [weak self] succeed, result, errorModel in
        AnteriorNarisRequestTool.customAfter(params: dict) { [weak self] succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            AtAdView.toAction()
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.dismiss()
            self.when()
            //: guard succeed else {
            guard succeed else {
                //: if errorModel?.errorCode != 100 {
                if errorModel?.errorCode != 100 {
                    //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                    self.detailKey(showMsg: errorModel!.errorMsg)
                }
                //: return
                return
            }
            //: self.func__showStatusBarSuccessMsg(showMsg: "Modify the success".localized)
            self.sizeExecuteMsg(showMsg: (String(str_contentWithValue.prefix(5)) + "y the suc" + String(str_actualValue)).localized)
            //: let data: Dictionary = result as! Dictionary<String, Any>
            let data: Dictionary = result as! [String: Any]
            //: WatercourseThen.share.loginUserMode.headPic = data["headPic"] as? String
            WatercourseThen.share.loginUserMode.headPic = data[(String(str_messageTotalContent.prefix(7)))] as? String
            //: WatercourseThen.share.loginUserMode.headPicStatus = 0
            WatercourseThen.share.loginUserMode.headPicStatus = 0
        }
    }
}

// MARK: - Layout

//: extension TalkingAttestationRefusePopUpView {
extension AllUpView {
    // 添加视图
    //: private func setupSubviews() {
    private func labUser() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.addSubview(title)
        contentView.addSubview(title)
        //: contentView.addSubview(mesageLB)
        contentView.addSubview(mesageLB)
        //: contentView.addSubview(finishBtn)
        contentView.addSubview(finishBtn)
        //: self.addSubview(closeBtn)
        self.addSubview(closeBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func movement() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 297), height: actualWidth(w: 350)))
            make.size.equalTo(CGSize(width: actualWidth(w: 297), height: actualWidth(w: 350)))
        }
        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(30)
            make.top.equalTo(30)
            //: make.size.equalTo(actualWidth(w: 93))
            make.size.equalTo(actualWidth(w: 93))
        }
        //: title.snp.makeConstraints { make in
        title.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(topIcon.snp.bottom).offset(21)
            make.top.equalTo(topIcon.snp.bottom).offset(21)
        }
        //: mesageLB.snp.makeConstraints { make in
        mesageLB.snp.makeConstraints { make in
            //: make.leading.equalTo(21)
            make.leading.equalTo(21)
            //: make.trailing.equalTo(-21)
            make.trailing.equalTo(-21)
            //: make.top.equalTo(title.snp.bottom).offset(10)
            make.top.equalTo(title.snp.bottom).offset(10)
        }

        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-20)
            make.bottom.equalTo(-20)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.width.equalTo(203)
            make.width.equalTo(203)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(contentView.snp.bottom).offset(30)
            make.top.equalTo(contentView.snp.bottom).offset(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(30)
            make.size.equalTo(30)
        }
    }
}
