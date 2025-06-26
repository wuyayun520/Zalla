
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_cardData:[UInt8] = [0x85,0x8a,0x85,0x90,0x44,0x7f,0x8b,0x80,0x81,0x8e,0x56,0x45,0x3c,0x84,0x7d,0x8f,0x3c,0x8a,0x8b,0x90,0x3c,0x7e,0x81,0x81,0x8a,0x3c,0x85,0x89,0x8c,0x88,0x81,0x89,0x81,0x8a,0x90,0x81,0x80]

fileprivate func searchedVideo(automatically num: UInt8) -> UInt8 {
    let value = Int(num) - 28
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "bg_message_top" :*/
fileprivate let str_imageTitle:String = "if data to textbg_me"
fileprivate let str_rejectValue:[Character] = ["t","o","p"]

/*: "img_me_edit_photo_default" :*/
fileprivate let str_sendTitleContent:String = "imaction"
fileprivate let str_topValue:String = "equal model icon_me_"
fileprivate let str_fullValue:String = "phtimeo"
fileprivate let str_sufficientName:String = "acreatelt"

/*: "icon_lounge" :*/
fileprivate let str_cardName:[Character] = ["i","c","o","n","_"]
fileprivate let str_itemName:String = "lourawge"

/*: "#777777" :*/
fileprivate let str_makeData:String = "head"
fileprivate let str_emptyOccurTitle:String = "colorcolorcolorcolorcolorcolor"

/*: "btn_me_copy" :*/
fileprivate let str_errorTitle:[Character] = ["b","t","n","_","m"]
fileprivate let str_objectMakeName:String = "e_copyenable actual space super"

/*: "btn_me_verify" :*/
fileprivate let str_cellText:String = "manager style plain timebtn_"
fileprivate let str_versionNameContent:String = "ebodyify"

/*: "btn_me_new_edit" :*/
fileprivate let str_makeSectionValue:String = "photo makebtn_m"
fileprivate let str_scaleData:String = "w_editimage view left true"

/*: "Followers" :*/
fileprivate let str_textPlayerContent:[Character] = ["F","o","l","l","o","w","e","r","s"]

/*: "Following" :*/
fileprivate let str_replyData:String = "error"
fileprivate let str_appName:[Character] = ["o","l","l","o","w","i","n","g"]

/*: "#D8D8D8" :*/
fileprivate let str_layData:[Character] = ["#"]
fileprivate let str_effectContent:String = "d8d8d8"

/*: "#FF506D" :*/
fileprivate let str_lengthInfoData:[Character] = ["#","F","F","5","0","6"]
fileprivate let str_reportName:String = "layer"

/*: "Reviewing" :*/
fileprivate let str_dateName:[Character] = ["R","e","v","i","e","w"]
fileprivate let str_fromStatusIfValue:String = "irung"

/*: "headPic" :*/
fileprivate let str_modelContent:String = "frame with lab effectheadPic"

/*: "Modify the success" :*/
fileprivate let str_sTitle:[Character] = ["M","o","d","i","f","y"," ","t","h","e"," ","s","u"]
fileprivate let str_bassName:[Character] = ["c","c","e","s","s"]

/*: "UID:" :*/
fileprivate let str_cellValue:String = "data search let size inUID:"

/*: "btn_me_verifed" :*/
fileprivate let str_slideValue:[Character] = ["b","t","n","_","m","e","_","v","e","r","i","f","e","d"]

/*: "UID Copied" :*/
fileprivate let str_iconTitle:String = "cloud message manager label selfUID C"
fileprivate let str_viewValue:String = "D"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  UnitedStatesThen.swift
//  AbroadTalking
//
//  Created by young on 2023/4/25.
//

//: import UIKit
import UIKit

//: class TalkingMeTopCell: UITableViewCell {
class UnitedStatesThen: UITableViewCell {
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.selectionStyle = .none
        self.selectionStyle = .none

        //: setupSubviews()
        blooper()
        //: setupSubViewsConstraint()
        ofValue()
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_cardData.map{searchedVideo(automatically: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var bgImgView: UIImageView = {
    private lazy var bgImgView: UIImageView = {
        //: let imag = UIImageView.init(image: UIImage.withView(name: "bg_message_top"))
        let imag = UIImageView(image: UIImage.withView(name: (String(str_imageTitle.suffix(5)) + "ssage_" + String(str_rejectValue))))
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var whiteBgView: UIView = {
    private lazy var whiteBgView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: v.layer.cornerRadius = 10
        v.layer.cornerRadius = 10
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var iconImag: UIButton = {
    private lazy var iconImag: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.withView(name: "img_me_edit_photo_default"), for: .normal)
        btn.setImage(UIImage.withView(name: (str_sendTitleContent.replacingOccurrences(of: "action", with: "g") + String(str_topValue.suffix(4)) + "edit_" + str_fullValue.replacingOccurrences(of: "time", with: "ot") + "_def" + str_sufficientName.replacingOccurrences(of: "create", with: "u"))), for: .normal)
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.layer.cornerRadius = 69/2
        btn.layer.cornerRadius = 69 / 2
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(updatePhotoButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(clickTime), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var iconBorder: UIButton = {
    private lazy var iconBorder: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var nameLB: UILabel = {
    private lazy var nameLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Semibold, fontSize: 18)
        lb.font = UIFont.conversationSize(type: .Semibold, fontSize: 18)
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.ending()
        //: lb.text = ""
        lb.text = ""
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var loungeImgV: UIImageView = {
    private lazy var loungeImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.withView(name: "icon_lounge")
        img.image = UIImage.withView(name: (String(str_cardName) + str_itemName.replacingOccurrences(of: "raw", with: "n")))
        //: return img
        return img
        //: }()
    }()

    //: private lazy var idBtn: TalkingButton = {
    private lazy var idBtn: MediaControl = {
        //: let btn = TalkingButton.init()
        let btn = MediaControl()
        //: btn.imageAlignment = .right
        btn.imageAlignment = .right
        //: btn.spaceBetweenTitleAndImage = 4
        btn.spaceBetweenTitleAndImage = 4
        //: btn.setTitleColor(UIColor.init(hex: "#777777"), for: .normal)
        btn.setTitleColor(UIColor(hex: (str_makeData.replacingOccurrences(of: "head", with: "#") + str_emptyOccurTitle.replacingOccurrences(of: "color", with: "7"))), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = UIFont.conversationSize(type: .Regular, fontSize: 14)
        //: btn.setImage(UIImage.withView(name: "btn_me_copy"), for: .normal)
        btn.setImage(UIImage.withView(name: (String(str_errorTitle) + String(str_objectMakeName.prefix(6)))), for: .normal)
        //: btn.addTarget(self, action: #selector(copyBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(imitationClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var verifyBtn: UIButton = {
    private lazy var verifyBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.withView(name: "btn_me_verify"), for: .normal)
        btn.setImage(UIImage.withView(name: (String(str_cellText.suffix(4)) + "me_v" + str_versionNameContent.replacingOccurrences(of: "body", with: "r"))), for: .normal)
        //: btn.addTarget(self, action: #selector(verifyBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(achromaticColor), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var editImag: UIImageView = {
    private lazy var editImag: UIImageView = {
        //: let imag = UIImageView.init(image: UIImage.withView(name: "btn_me_new_edit"))
        let imag = UIImageView(image: UIImage.withView(name: (String(str_makeSectionValue.suffix(5)) + "e_ne" + String(str_scaleData.prefix(6)))))
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var editPushBtn: UIButton = {
    private lazy var editPushBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(editBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(editOn), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var followersBtn: UIButton = {
    private lazy var followersBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(followersBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(doPlay), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var followersLab: UILabel = {
    private lazy var followersLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .touchColor()
        lab.textColor = .touchColor()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Followers".localized
        lab.text = (String(str_textPlayerContent)).localized
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 14)
        lab.font = UIFont.rugular(fontSize: 14)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var followersNum: UILabel = {
    private lazy var followersNum: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appTitleColor()
        lab.textColor = .ending()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "0"
        lab.text = "0"
        //: lab.font = UIFont.showSize(fontSize: 15)
        lab.font = UIFont.showSize(fontSize: 15)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var followingBtn: UIButton = {
    private lazy var followingBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(followingBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(harvestMoon), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var followingLab: UILabel = {
    private lazy var followingLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .touchColor()
        lab.textColor = .touchColor()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Following".localized
        lab.text = (str_replyData.replacingOccurrences(of: "error", with: "F") + String(str_appName)).localized
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 14)
        lab.font = UIFont.rugular(fontSize: 14)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var followingNum: UILabel = {
    private lazy var followingNum: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appTitleColor()
        lab.textColor = .ending()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "0"
        lab.text = "0"
        //: lab.font = UIFont.showSize(fontSize: 15)
        lab.font = UIFont.showSize(fontSize: 15)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var line: UIView = {
    private lazy var line: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#D8D8D8")
        v.backgroundColor = UIColor(hex: (String(str_layData) + str_effectContent.uppercased()))
        //: v.layer.cornerRadius = 1
        v.layer.cornerRadius = 1
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var statusLB: UILabel = {
    private lazy var statusLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 12)
        lb.font = UIFont.conversationSize(type: .Medium, fontSize: 12)
        //: lb.textColor = .white
        lb.textColor = .white
        //: lb.backgroundColor = UIColor.init(hex: "#FF506D")
        lb.backgroundColor = UIColor(hex: (String(str_lengthInfoData) + str_reportName.replacingOccurrences(of: "layer", with: "D")))
        //: lb.text = "Reviewing".localized
        lb.text = (String(str_dateName) + str_fromStatusIfValue.replacingOccurrences(of: "run", with: "n")).localized
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: lb.layer.cornerRadius = 8
        lb.layer.cornerRadius = 8
        //: lb.layer.masksToBounds = true
        lb.layer.masksToBounds = true
        //: lb.isHidden = true
        lb.isHidden = true
        //: return lb
        return lb
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingMeTopCell {
extension UnitedStatesThen {
    /// 更新个人资料
    //: private func req_updateInfo(img: UIImage) {
    private func appAmmunition(img: UIImage) {
        //: let resultData: NSData = img.compressedImageData()! as NSData
        let resultData: NSData = img.image()! as NSData
        //: let dict = ["headPic": resultData]
        let dict = [(String(str_modelContent.suffix(7))): resultData]
        //: ProgressHUD.show()
        AtAdView.sizeUp()
        //: TalkingMeRequestTool.req_UpdateUserInfo(params: dict) { [weak self] succeed, result, errorModel in
        AnteriorNarisRequestTool.customAfter(params: dict) { [weak self] succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            AtAdView.toAction()
            //: guard let self = self else {return}
            guard let self = self else { return }
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
            self.sizeExecuteMsg(showMsg: (String(str_sTitle) + String(str_bassName)).localized)
            //: let data: Dictionary = result as! Dictionary<String, Any>
            let data: Dictionary = result as! [String: Any]
            //: WatercourseThen.share.loginUserMode.headPic = data["headPic"] as? String
            WatercourseThen.share.loginUserMode.headPic = data[(String(str_modelContent.suffix(7)))] as? String
            //: statusLB.isHidden = false
            statusLB.isHidden = false
            //: WatercourseThen.share.loginUserMode.headPicStatus = 0
            WatercourseThen.share.loginUserMode.headPicStatus = 0
            //: self.iconImag.setUrlImage(urlStr: WatercourseThen.share.loginUserMode.headPic ?? "img_me_edit_photo_default")
            self.iconImag.setToAccomplishUpwards(urlStr: WatercourseThen.share.loginUserMode.headPic ?? (str_sendTitleContent.replacingOccurrences(of: "action", with: "g") + String(str_topValue.suffix(4)) + "edit_" + str_fullValue.replacingOccurrences(of: "time", with: "ot") + "_def" + str_sufficientName.replacingOccurrences(of: "create", with: "u")))
        }
    }
}

// MARK: - Event

//: extension TalkingMeTopCell {
extension UnitedStatesThen {
    /// 更新数据
    //: func setViewData() {
    func crucify() {
        //: iconImag.setUrlImage(urlStr: WatercourseThen.share.loginUserMode.headPic ?? "img_me_edit_photo_default")
        iconImag.setToAccomplishUpwards(urlStr: WatercourseThen.share.loginUserMode.headPic ?? (str_sendTitleContent.replacingOccurrences(of: "action", with: "g") + String(str_topValue.suffix(4)) + "edit_" + str_fullValue.replacingOccurrences(of: "time", with: "ot") + "_def" + str_sufficientName.replacingOccurrences(of: "create", with: "u")))
        //: iconBorder.setHeadFrameUrlImage(urlStr: WatercourseThen.share.loginUserMode.headPicFrame)
        iconBorder.dateData(urlStr: WatercourseThen.share.loginUserMode.headPicFrame)
        //: nameLB.textColor = WatercourseThen.share.loginUserMode.loungePlus ? .userVipColor():.appTitleColor()
        nameLB.textColor = WatercourseThen.share.loginUserMode.loungePlus ? .toUser() : .ending()
        //: nameLB.text = WatercourseThen.share.loginUserMode.nickname
        nameLB.text = WatercourseThen.share.loginUserMode.nickname
        //: loungeImgV.isHidden = !WatercourseThen.share.loginUserMode.loungePlus
        loungeImgV.isHidden = !WatercourseThen.share.loginUserMode.loungePlus
        //: idBtn.setTitle("UID:" + WatercourseThen.share.loginUserMode.userID, for: .normal)
        idBtn.setTitle((String(str_cellValue.suffix(4))) + WatercourseThen.share.loginUserMode.userID, for: .normal)
        //: if WatercourseThen.share.loginUserMode.isTPAuth == TPUserAuth.isSuccessed.rawValue {
        if WatercourseThen.share.loginUserMode.isTPAuth == CommandCompatibleValue.isSuccessed.rawValue {
            //: verifyBtn.setImage(UIImage.withView(name: "btn_me_verifed"), for: .normal)
            verifyBtn.setImage(UIImage.withView(name: (String(str_slideValue))), for: .normal)
            //: } else {
        } else {
            //: verifyBtn.setImage(UIImage.withView(name: "btn_me_verify"), for: .normal)
            verifyBtn.setImage(UIImage.withView(name: (String(str_cellText.suffix(4)) + "me_v" + str_versionNameContent.replacingOccurrences(of: "body", with: "r"))), for: .normal)
        }
        //: statusLB.isHidden = (WatercourseThen.share.loginUserMode.headPicStatus != HeadePicStatus.isOnGoing.rawValue)
        statusLB.isHidden = (WatercourseThen.share.loginUserMode.headPicStatus != RangePropertyProtocol.isOnGoing.rawValue)
        //: followersNum.text = WatercourseThen.share.loginUserMode.fansNum ?? "0"
        followersNum.text = WatercourseThen.share.loginUserMode.fansNum ?? "0"
        //: followingNum.text = WatercourseThen.share.loginUserMode.attentionNum ?? "0"
        followingNum.text = WatercourseThen.share.loginUserMode.attentionNum ?? "0"
    }

    /// copy Id
    //: @objc private func copyBtnClick() {
    @objc private func imitationClick() {
        //: let paste = UIPasteboard.general
        let paste = UIPasteboard.general
        //: paste.string = WatercourseThen.share.loginUserMode.userID
        paste.string = WatercourseThen.share.loginUserMode.userID
        //: self.func__showStatusBarSuccessMsg(showMsg: "UID Copied".localized)
        self.sizeExecuteMsg(showMsg: (String(str_iconTitle.suffix(5)) + "opie" + str_viewValue.lowercased()).localized)
    }

    /// 更新photo
    //: @objc private func updatePhotoButtonClick() {
    @objc private func clickTime() {
        //: TalkingPermissionTool.func__openAlbumServiceWithBlock(true) { (isOpen: Bool) in
        ColorPermissionTool.stream(true) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: let vc = TalkingImagePickTool.initImagePickerVc(allowImgCrop: true, needCircleCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                let vc = AtProgressThen.busy(allowImgCrop: true, needCircleCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
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
                            self.appAmmunition(img: image)
                        }
                        //: return
                }
            }
        }
    }

    /// 真人认证
    //: @objc private func verifyBtnClick() {
    @objc private func achromaticColor() {
        // 先判断上传的头像是否通过，再判断真人认证状态
//        if WatercourseThen.share.loginUserMode.headPicStatus == RangePropertyProtocol.unknown.rawValue {
//            self.func__showStatusBarErrorMsg(showMsg: "Please finish uploading your avatar first")
//        } else if WatercourseThen.share.loginUserMode.headPicStatus == RangePropertyProtocol.isOnGoing.rawValue {
//            self.func__showStatusBarErrorMsg(showMsg: "Avatar is under reviewing")
//        } else {
//            isTPAuthTool()
//        }
        //: isTPAuthTool()
        naturalEvent()
    }

    //: private func isTPAuthTool() {
    private func naturalEvent() {
        //: if WatercourseThen.share.loginUserMode.isTPAuth == TPUserAuth.isSuccessed.rawValue {
        if WatercourseThen.share.loginUserMode.isTPAuth == CommandCompatibleValue.isSuccessed.rawValue {
            //: return
            return
                //: } else if WatercourseThen.share.loginUserMode.isTPAuth == TPUserAuth.unknown.rawValue {
        } else if WatercourseThen.share.loginUserMode.isTPAuth == CommandCompatibleValue.unknown.rawValue {
            //: IndoorsPushManager.share.func__pushUserVerifyController(toast: nil)
            IndoorsPushManager.share.overwhelm(toast: nil)
            //: } else if WatercourseThen.share.loginUserMode.isTPAuth == TPUserAuth.isOnGoing.rawValue {
        } else if WatercourseThen.share.loginUserMode.isTPAuth == CommandCompatibleValue.isOnGoing.rawValue {
            //: let vc = TalkingFinalVerificationVC()
            let vc = KeyReactiveCompatible()
            //: IndoorsPushManager.share.func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
            IndoorsPushManager.share.queryEqual()?.navigationController?.pushViewController(vc, animated: true)
            //: } else {
        } else {
            //: IndoorsPushManager.share.func__pushUserVerifyController(toast: nil)
            IndoorsPushManager.share.overwhelm(toast: nil)
        }
    }

    /// 编辑个人资料
    //: @objc private func editBtnClick() {
    @objc private func editOn() {
        //: IndoorsPushManager.share.func__pushToUserDetailVC(uid: WatercourseThen.share.loginUid)
        IndoorsPushManager.share.digitiserView(uid: WatercourseThen.share.loginUid)
    }

    /// followers
    //: @objc private func followersBtnClick() {
    @objc private func doPlay() {
        //: let vc = TalkingFavouriteViewController()
        let vc = RequestViewController()
        //: vc.currentIndex = 0
        vc.currentIndex = 0
        //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
        self.toController()?.navigationController?.pushViewController(vc, animated: true)
    }

    /// following
    //: @objc private func followingBtnClick() {
    @objc private func harvestMoon() {
        //: let vc = TalkingFavouriteViewController()
        let vc = RequestViewController()
        //: vc.currentIndex = 1
        vc.currentIndex = 1
        //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
        self.toController()?.navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: - Layout

//: extension TalkingMeTopCell {
extension UnitedStatesThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func blooper() {
        //: self.contentView.addSubview(bgImgView)
        self.contentView.addSubview(bgImgView)
        //: bgImgView.addSubview(whiteBgView)
        bgImgView.addSubview(whiteBgView)
        //: whiteBgView.addSubview(iconImag)
        whiteBgView.addSubview(iconImag)
        //: whiteBgView.addSubview(iconBorder)
        whiteBgView.addSubview(iconBorder)
        //: whiteBgView.addSubview(nameLB)
        whiteBgView.addSubview(nameLB)
        //: whiteBgView.addSubview(loungeImgV)
        whiteBgView.addSubview(loungeImgV)
        //: whiteBgView.addSubview(idBtn)
        whiteBgView.addSubview(idBtn)
        //: whiteBgView.addSubview(verifyBtn)
        whiteBgView.addSubview(verifyBtn)
        //: whiteBgView.addSubview(editImag)
        whiteBgView.addSubview(editImag)
        //: whiteBgView.addSubview(editPushBtn)
        whiteBgView.addSubview(editPushBtn)
        //: whiteBgView.addSubview(followersBtn)
        whiteBgView.addSubview(followersBtn)
        //: whiteBgView.addSubview(statusLB)
        whiteBgView.addSubview(statusLB)
        //: followersBtn.addSubview(followersLab)
        followersBtn.addSubview(followersLab)
        //: followersBtn.addSubview(followersNum)
        followersBtn.addSubview(followersNum)
        //: whiteBgView.addSubview(followingBtn)
        whiteBgView.addSubview(followingBtn)
        //: followingBtn.addSubview(followingLab)
        followingBtn.addSubview(followingLab)
        //: followingBtn.addSubview(followingNum)
        followingBtn.addSubview(followingNum)
        //: whiteBgView.addSubview(line)
        whiteBgView.addSubview(line)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func ofValue() {
        //: bgImgView.snp.makeConstraints { make in
        bgImgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
            //: make.height.equalTo(StatusBarHeight+181)
            make.height.equalTo(kLet_environmentContent + 181)
        }

        //: whiteBgView.snp.makeConstraints { make in
        whiteBgView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.top.equalTo(StatusBarHeight+9)
            make.top.equalTo(kLet_environmentContent + 9)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.height.equalTo(160)
            make.height.equalTo(160)
        }

        //: iconImag.snp.makeConstraints { make in
        iconImag.snp.makeConstraints { make in
            //: make.leading.top.equalToSuperview().offset(12)
            make.leading.top.equalToSuperview().offset(12)
            //: make.width.height.equalTo(69)
            make.width.height.equalTo(69)
        }
        //: iconBorder.snp.makeConstraints { make in
        iconBorder.snp.makeConstraints { make in
            //: make.leading.top.equalToSuperview().offset(7)
            make.leading.top.equalToSuperview().offset(7)
            //: make.width.height.equalTo(80)
            make.width.height.equalTo(80)
        }
        //: statusLB.snp.makeConstraints { make in
        statusLB.snp.makeConstraints { make in
            //: make.top.equalTo(iconImag.snp.top).offset(-7)
            make.top.equalTo(iconImag.snp.top).offset(-7)
            //: make.centerX.equalTo(iconImag)
            make.centerX.equalTo(iconImag)
            //: make.size.equalTo(CGSize.init(width: 65, height: 16))
            make.size.equalTo(CGSize(width: 65, height: 16))
        }

        //: nameLB.snp.makeConstraints { make in
        nameLB.snp.makeConstraints { make in
            //: make.leading.equalTo(iconImag.snp.trailing).offset(10)
            make.leading.equalTo(iconImag.snp.trailing).offset(10)
            //: make.top.equalTo(iconImag)
            make.top.equalTo(iconImag)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
            //: make.width.lessThanOrEqualTo(ScreenWidth/2)
            make.width.lessThanOrEqualTo(kLet_scaleName / 2)
        }

        //: loungeImgV.snp.makeConstraints { make in
        loungeImgV.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLB.snp.trailing).offset(4)
            make.leading.equalTo(nameLB.snp.trailing).offset(4)
            //: make.centerY.equalTo(nameLB)
            make.centerY.equalTo(nameLB)
            //: make.size.equalTo(CGSize(width: 20, height: 20))
            make.size.equalTo(CGSize(width: 20, height: 20))
        }

        //: idBtn.snp.makeConstraints { make in
        idBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(iconImag.snp.trailing).offset(12)
            make.leading.equalTo(iconImag.snp.trailing).offset(12)
            //: make.top.equalTo(nameLB.snp.bottom).offset(8)
            make.top.equalTo(nameLB.snp.bottom).offset(8)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
        }

        //: verifyBtn.snp.makeConstraints { make in
        verifyBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLB)
            make.leading.equalTo(nameLB)
            //: make.top.equalTo(idBtn.snp.bottom).offset(8)
            make.top.equalTo(idBtn.snp.bottom).offset(8)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
        }

        //: editImag.snp.makeConstraints { make in
        editImag.snp.makeConstraints { make in
            //: make.centerY.equalTo(iconImag)
            make.centerY.equalTo(iconImag)
            //: make.trailing.equalToSuperview().offset(-16)
            make.trailing.equalToSuperview().offset(-16)
            //: make.width.equalTo(6)
            make.width.equalTo(6)
            //: make.height.equalTo(11)
            make.height.equalTo(11)
        }
        //: editPushBtn.snp.makeConstraints { make in
        editPushBtn.snp.makeConstraints { make in
            //: make.centerY.equalTo(editImag)
            make.centerY.equalTo(editImag)
            //: make.trailing.equalToSuperview().offset(-10)
            make.trailing.equalToSuperview().offset(-10)
            //: make.width.height.equalTo(60)
            make.width.height.equalTo(60)
        }

        //: followersBtn.snp.makeConstraints { make in
        followersBtn.snp.makeConstraints { make in
            //: make.top.equalTo(iconImag.snp.bottom)
            make.top.equalTo(iconImag.snp.bottom)
            //: make.leading.bottom.equalToSuperview()
            make.leading.bottom.equalToSuperview()
            //: make.trailing.equalTo(whiteBgView.snp.centerX)
            make.trailing.equalTo(whiteBgView.snp.centerX)
        }
        //: followersLab.snp.makeConstraints { make in
        followersLab.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(25)
            make.top.equalToSuperview().offset(25)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        //: followersNum.snp.makeConstraints { make in
        followersNum.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalToSuperview().offset(-12)
            make.bottom.equalToSuperview().offset(-12)
        }

        //: followingBtn.snp.makeConstraints { make in
        followingBtn.snp.makeConstraints { make in
            //: make.top.equalTo(followersBtn)
            make.top.equalTo(followersBtn)
            //: make.trailing.bottom.equalToSuperview()
            make.trailing.bottom.equalToSuperview()
            //: make.leading.equalTo(whiteBgView.snp.centerX)
            make.leading.equalTo(whiteBgView.snp.centerX)
        }
        //: followingLab.snp.makeConstraints { make in
        followingLab.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(25)
            make.top.equalToSuperview().offset(25)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        //: followingNum.snp.makeConstraints { make in
        followingNum.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalToSuperview().offset(-12)
            make.bottom.equalToSuperview().offset(-12)
        }

        //: line.snp.makeConstraints { make in
        line.snp.makeConstraints { make in
            //: make.top.equalTo(iconImag.snp.bottom).offset(32)
            make.top.equalTo(iconImag.snp.bottom).offset(32)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 2, height: 27))
            make.size.equalTo(CGSize(width: 2, height: 27))
        }
    }
}
