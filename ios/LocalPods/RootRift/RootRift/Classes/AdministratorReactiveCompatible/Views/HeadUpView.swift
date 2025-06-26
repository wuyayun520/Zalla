
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_awakeSizeName:[UInt8] = [0x51,0x56,0x51,0x4c,0x10,0x5b,0x57,0x5c,0x5d,0x4a,0x2,0x11,0x18,0x50,0x59,0x4b,0x18,0x56,0x57,0x4c,0x18,0x5a,0x5d,0x5d,0x56,0x18,0x51,0x55,0x48,0x54,0x5d,0x55,0x5d,0x56,0x4c,0x5d,0x5c]

/*: "icon_window_verification" :*/
fileprivate let str_effectData:String = "icon_wimanager send image"
fileprivate let str_iconName:String = "ndow_vwith error"
fileprivate let str_listContent:String = "tocattoon"

/*: "Go to certify" :*/
fileprivate let str_pointData:[Character] = ["G","o"," ","t","o"," ","c"]
fileprivate let str_whiteValue:String = "eloadify"

/*: "btn_me_program_photo_delete" :*/
fileprivate let str_targetValue:[Character] = ["b","t","n","_","m"]
fileprivate let str_labelValue:String = "e_progapplication var self effect fit"
fileprivate let str_blockValue:String = "manager party next cellhoto_"

/*: "Authentication is under reviewing" :*/
fileprivate let str_sourceTitle:[UInt8] = [0x1e,0x2a,0x2b,0x37,0x3a,0x31,0x2b,0x36,0x3c,0x3e,0x2b,0x36,0x30,0x31,0x7f,0x36,0x2c,0x7f,0x2a,0x31,0x3b,0x3a,0x2d,0x7f,0x2d,0x3a,0x29,0x36,0x3a,0x28,0x36,0x31,0x38]

private func equalSocial(top num: UInt8) -> UInt8 {
    return num ^ 95
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  HeadUpView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/15.
//

//: import UIKit
import UIKit

//: class TalkingFaceVerificationPopUpView: UIView {
class HeadUpView: UIView {
    //: var popView: TalkingPopView?
    var popView: MessageScalePopView?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.userSubviewsSize()
        //: self.setupSubViewsConstraint()
        self.cloutConstraint()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_awakeSizeName.map{$0^56}, encoding: .utf8)!)
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
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: return view
        return view
        //: }()
    }()

    //: private lazy var backIcon: UIImageView = {
    private lazy var backIcon: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.setUrlImage(urlStr: WatercourseThen.share.appUserConfigMode.rpWindowBg, placeImg: UIImage.withView(name: "icon_window_verification"))
        imag.optionsFinish(urlStr: WatercourseThen.share.appUserConfigMode.rpWindowBg, placeImg: UIImage.withView(name: (String(str_effectData.prefix(7)) + String(str_iconName.prefix(6)) + "erif" + str_listContent.replacingOccurrences(of: "to", with: "i"))))
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
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
        //: btn.setTitle("Go to certify".localized, for: .normal)
        btn.setTitle((String(str_pointData) + str_whiteValue.replacingOccurrences(of: "load", with: "rt")).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.showSize(fontSize: 16)
        btn.titleLabel?.font = UIFont.showSize(fontSize: 16)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(exceptBarTime), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.withView(name: "btn_me_program_photo_delete"), for: .normal)
        btn.setImage(UIImage.withView(name: (String(str_targetValue) + String(str_labelValue.prefix(6)) + "ram_p" + String(str_blockValue.suffix(5)) + "delete")), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(blind), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingFaceVerificationPopUpView {
extension HeadUpView {
    //: @objc private func finishBtnClick() {
    @objc private func exceptBarTime() {
        //: dismiss()
        videoTo()
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
            //: self.func__showStatusBarErrorMsg(showMsg: "Authentication is under reviewing".localized)
            self.detailKey(showMsg: String(bytes: str_sourceTitle.map{equalSocial(top: $0)}, encoding: .utf8)!.localized)
            //: } else {
        } else {
            //: IndoorsPushManager.share.func__pushUserVerifyController(toast: nil)
            IndoorsPushManager.share.overwhelm(toast: nil)
        }
    }

    //: @objc private func closeBtnClick() {
    @objc private func blind() {
        //: dismiss()
        videoTo()
    }

    //: func show() {
    func recordLabel() {
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
    @objc func videoTo() {
        //: popView?.dismissView()
        popView?.reject()
        //: popView = nil
        popView = nil
    }
}

// MARK: - Layout

//: extension TalkingFaceVerificationPopUpView {
extension HeadUpView {
    // 添加视图
    //: private func setupSubviews() {
    private func userSubviewsSize() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(backIcon)
        contentView.addSubview(backIcon)
        //: backIcon.addSubview(finishBtn)
        backIcon.addSubview(finishBtn)
        //: contentView.addSubview(closeBtn)
        contentView.addSubview(closeBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func cloutConstraint() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.equalTo(ScreenHeight/4)
            make.top.equalTo(kLet_environmentText / 4)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 319, height: 386+60))
            make.size.equalTo(CGSize(width: 319, height: 386 + 60))
        }

        //: backIcon.snp.makeConstraints { make in
        backIcon.snp.makeConstraints { make in
            //: make.leading.trailing.top.equalToSuperview()
            make.leading.trailing.top.equalToSuperview()
            //: make.height.equalTo(386)
            make.height.equalTo(386)
        }

        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-25)
            make.bottom.equalTo(-25)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.height.equalTo(203)
            make.height.equalTo(203)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(backIcon.snp.bottom).offset(30)
            make.top.equalTo(backIcon.snp.bottom).offset(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(30)
            make.size.equalTo(30)
        }
    }
}
