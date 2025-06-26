
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_indexData:[UInt8] = [0xb3,0xb4,0xb3,0xae,0xf2,0xb9,0xb5,0xbe,0xbf,0xa8,0xe0,0xf3,0xfa,0xb2,0xbb,0xa9,0xfa,0xb4,0xb5,0xae,0xfa,0xb8,0xbf,0xbf,0xb4,0xfa,0xb3,0xb7,0xaa,0xb6,0xbf,0xb7,0xbf,0xb4,0xae,0xbf,0xbe]

private func valueCenter(clear num: UInt8) -> UInt8 {
    return num ^ 218
}

/*: "img_faceverification_pose" :*/
fileprivate let str_modeAppAfterValue:String = "img_fato condition view"
fileprivate let str_arrayTitle:String = "ATIO"

/*: "Strike this pose and take a photo" :*/
fileprivate let str_labelValue:[UInt8] = [0x6f,0x74,0x6f,0x68,0x70,0x20,0x61,0x20,0x65,0x6b,0x61,0x74,0x20,0x64,0x6e,0x61,0x20,0x65,0x73,0x6f,0x70,0x20,0x73,0x69,0x68,0x74,0x20,0x65,0x6b,0x69,0x72,0x74,0x53]

/*: "Your photo will never be uploaded to your profile or shown to anyone else." :*/
fileprivate let str_observerRefuseViewName:[UInt8] = [0x48,0x7e,0x64,0x63,0x31,0x61,0x79,0x7e,0x65,0x7e,0x31,0x66,0x78,0x7d,0x7d,0x31,0x7f,0x74,0x67,0x74,0x63,0x31,0x73,0x74,0x31,0x64,0x61,0x7d,0x7e,0x70,0x75,0x74,0x75,0x31,0x65,0x7e,0x31,0x68,0x7e,0x64,0x63,0x31,0x61,0x63,0x7e,0x77,0x78,0x7d,0x74,0x31,0x7e,0x63,0x31,0x62,0x79,0x7e,0x66,0x7f,0x31,0x65,0x7e,0x31,0x70,0x7f,0x68,0x7e,0x7f,0x74,0x31,0x74,0x7d,0x62,0x74,0x3f]

/*: "Camera" :*/
fileprivate let str_greetText:[Character] = ["C","a","m","e","r","a"]

/*: "btn_me_back_continue" :*/
fileprivate let str_topName:[Character] = ["b","t","n","_","m","e","_","b","a","c","k","_","c","o","n","t","i","n","u","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WriteLostExampleView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingVerificationExampleView: UIView {
class WriteLostExampleView: UIView {
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: typealias CameraBtnClickBlock = () -> Void
    typealias CameraBtnClickBlock = () -> Void
    //: var btnClickBlock: CameraBtnClickBlock?
    var btnClickBlock: CameraBtnClickBlock?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: createSubViews()
        subFrom()
        //: layoutSubViewsConstraints()
        scaleOfMeasurement()
        //: bindInteraction()
        first()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_indexData.map{valueCenter(clear: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var faceBackImageView: UIImageView = {
    lazy var faceBackImageView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.image = UIImage.withView(name: "img_faceverification_pose")
        imgView.image = UIImage.withView(name: (String(str_modeAppAfterValue.prefix(6)) + "ceverific" + str_arrayTitle.lowercased() + "n_pose"))
        //: return imgView
        return imgView
        //: }()
    }()

    //: lazy var verificationTitleLab: UILabel = {
    lazy var verificationTitleLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Strike this pose and take a photo".localized
        lb.text = String(bytes: str_labelValue.reversed(), encoding: .utf8)!.localized
        //: lb.textColor = .appTitleColor()
        lb.textColor = .ending()
        //: lb.font = .pingfangFont(type: .Medium, fontSize: 22)
        lb.font = .conversationSize(type: .Medium, fontSize: 22)
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var verificationDesLab: UILabel = {
    lazy var verificationDesLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Your photo will never be uploaded to your profile or shown to anyone else.".localized
        lb.text = String(bytes: str_observerRefuseViewName.map{$0^17}, encoding: .utf8)!.localized
        //: lb.textColor = .appValueColor()
        lb.textColor = .obtrudeUpon()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 16)
        lb.font = .conversationSize(type: .Regular, fontSize: 16)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var continueBtn: UIButton = {
    lazy var continueBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Camera".localized, for: .normal)
        btn.setTitle((String(str_greetText)).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.withView(name: "btn_me_back_continue"), for: .normal)
        btn.setBackgroundImage(UIImage.withView(name: (String(str_topName))), for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = .conversationSize(type: .Medium, fontSize: 17)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVerificationExampleView {
extension WriteLostExampleView {
    //: @objc func registerBtnAction() {
    @objc func enter() {
        //: if btnClickBlock != nil {
        if btnClickBlock != nil {
            //: btnClickBlock!()
            btnClickBlock!()
        }
    }

    //: private func bindInteraction() {
    private func first() {
        //: continueBtn.rx.controlEvent(.touchUpInside)
        continueBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.registerBtnAction()
                self.enter()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }
}

// MARK: - Layout

//: extension TalkingVerificationExampleView {
extension WriteLostExampleView {
    //: func createSubViews() {
    func subFrom() {
        //: addSubview(faceBackImageView)
        addSubview(faceBackImageView)
        //: addSubview(verificationTitleLab)
        addSubview(verificationTitleLab)
        //: addSubview(verificationDesLab)
        addSubview(verificationDesLab)
        //: addSubview(continueBtn)
        addSubview(continueBtn)
    }

    //: func layoutSubViewsConstraints() {
    func scaleOfMeasurement() {
        //: let fitH = 686 * (ScreenWidth - actualWidth(w: 30)) / 690
        let fitH = 686 * (kLet_scaleName - actualWidth(w: 30)) / 690
        //: faceBackImageView.snp.makeConstraints { make in
        faceBackImageView.snp.makeConstraints { make in
            //: make.top.equalTo((actualHeight(h: 18)))
            make.top.equalTo(actualHeight(h: 18))
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.width.equalTo(ScreenWidth-actualWidth(w: 30))
            make.width.equalTo(kLet_scaleName - actualWidth(w: 30))
            //: make.height.equalTo(fitH)
            make.height.equalTo(fitH)
        }
        //: verificationTitleLab.snp.makeConstraints { make in
        verificationTitleLab.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.trailing.equalTo(actualWidth(w: -15))
            make.trailing.equalTo(actualWidth(w: -15))
            //: make.top.equalTo(faceBackImageView.snp.bottom).offset(actualHeight(h: 24))
            make.top.equalTo(faceBackImageView.snp.bottom).offset(actualHeight(h: 24))
        }
        //: verificationDesLab.snp.makeConstraints { make in
        verificationDesLab.snp.makeConstraints { make in
            //: make.leading.equalTo(verificationTitleLab.snp.leading)
            make.leading.equalTo(verificationTitleLab.snp.leading)
            //: make.trailing.equalTo(verificationTitleLab.snp.trailing)
            make.trailing.equalTo(verificationTitleLab.snp.trailing)
            //: make.top.equalTo(verificationTitleLab.snp.bottom).offset(10)
            make.top.equalTo(verificationTitleLab.snp.bottom).offset(10)
        }
        //: continueBtn.snp.makeConstraints { make in
        continueBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-actualHeight(h: 34)-kDeviceSafeBottomHeight)
            make.bottom.equalTo(-actualHeight(h: 34) - kLet_partyKeyTitle)
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.width.equalTo(267)
            make.width.equalTo(267)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
    }
}
