
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_objectValue:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "img_faceverification_photo" :*/
fileprivate let str_cancelData:String = "img_ftitle icon item value"
fileprivate let str_layerBubbleName:[Character] = ["f","i"]
fileprivate let str_tableName:String = "catsize"

/*: "Face verification" :*/
fileprivate let str_sharedData:[Character] = ["F","a","c","e"," ","v","e","r","i","f"]
fileprivate let str_startVideoReturnContent:String = "icatidatan"

/*: "A real-person verification of your profile will get you more and better matches." :*/
fileprivate let str_targetValue:[UInt8] = [0xc2,0xa3,0xf1,0xe6,0xe2,0xef,0xae,0xf3,0xe6,0xf1,0xf0,0xec,0xed,0xa3,0xf5,0xe6,0xf1,0xea,0xe5,0xea,0xe0,0xe2,0xf7,0xea,0xec,0xed,0xa3,0xec,0xe5,0xa3,0xfa,0xec,0xf6,0xf1,0xa3,0xf3,0xf1,0xec,0xe5,0xea,0xef,0xe6,0xa3,0xf4,0xea,0xef,0xef,0xa3,0xe4,0xe6,0xf7,0xa3,0xfa,0xec,0xf6,0xa3,0xee,0xec,0xf1,0xe6,0xa3,0xe2,0xed,0xe7,0xa3,0xe1,0xe6,0xf7,0xf7,0xe6,0xf1,0xa3,0xee,0xe2,0xf7,0xe0,0xeb,0xe6,0xf0,0xad]

private func titleTouch(device num: UInt8) -> UInt8 {
    return num ^ 131
}

/*: "· Take the photo by following the posing guide." :*/
fileprivate let str_modeMediumContent:[UInt8] = [0xc7,0xbc,0x25,0x59,0x66,0x70,0x6a,0x25,0x79,0x6d,0x6a,0x25,0x75,0x6d,0x74,0x79,0x74,0x25,0x67,0x7e,0x25,0x6b,0x74,0x71,0x71,0x74,0x7c,0x6e,0x73,0x6c,0x25,0x79,0x6d,0x6a,0x25,0x75,0x74,0x78,0x6e,0x73,0x6c,0x25,0x6c,0x7a,0x6e,0x69,0x6a,0x33]

fileprivate func criminalRecord(index num: UInt8) -> UInt8 {
    let value = Int(num) - 5
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "· The person in the photo must be the account owner." :*/
fileprivate let str_backgroundMomentValue:[UInt8] = [0x44,0x31,0xa6,0xd2,0xee,0xe3,0xa6,0xf6,0xe3,0xf4,0xf5,0xe9,0xe8,0xa6,0xef,0xe8,0xa6,0xf2,0xee,0xe3,0xa6,0xf6,0xee,0xe9,0xf2,0xe9,0xa6,0xeb,0xf3,0xf5,0xf2,0xa6,0xe4,0xe3,0xa6,0xf2,0xee,0xe3,0xa6,0xe7,0xe5,0xe5,0xe9,0xf3,0xe8,0xf2,0xa6,0xe9,0xf1,0xe8,0xe3,0xf4,0xa8]

private func liveSelf(on num: UInt8) -> UInt8 {
    return num ^ 134
}

/*: "Continue" :*/
fileprivate let str_secondData:[Character] = ["C","o","n","t","i","n","u"]
fileprivate let str_statusValue:[Character] = ["e"]

/*: "btn_me_back_continue" :*/
fileprivate let str_actionData:String = "back model media modelbtn_"
fileprivate let str_succeedTitle:String = "me_bin view true return"
fileprivate let str_appValue:String = "continattache"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LikeVerificationView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingFaceVerificationView: UIView {
class LikeVerificationView: UIView {
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: typealias ContinueBtnClickBlock = () -> Void
    typealias ContinueBtnClickBlock = () -> Void
    //: var btnClickBlock: ContinueBtnClickBlock?
    var btnClickBlock: ContinueBtnClickBlock?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: createSubViews()
        bar()
        //: layoutSubViewsConstraints()
        buttonEnable()
        //: bindInteraction()
        equalRoot()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_objectValue.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var faceBackImageView: UIImageView = {
    lazy var faceBackImageView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.image = UIImage.withView(name: "img_faceverification_photo")
        imgView.image = UIImage.withView(name: (String(str_cancelData.prefix(5)) + "aceveri" + String(str_layerBubbleName) + str_tableName.replacingOccurrences(of: "size", with: "io") + "n_photo"))
        //: return imgView
        return imgView
        //: }()
    }()

    //: lazy var verificationTitleLab: UILabel = {
    lazy var verificationTitleLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Face verification".localized
        lb.text = (String(str_sharedData) + str_startVideoReturnContent.replacingOccurrences(of: "data", with: "o")).localized
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
        //: lb.text = "A real-person verification of your profile will get you more and better matches.".localized
        lb.text = String(bytes: str_targetValue.map{titleTouch(device: $0)}, encoding: .utf8)!.localized
        //: lb.textColor = .touchColor()
        lb.textColor = .touchColor()
        //: lb.font = .pingfangFont(type: .Medium, fontSize: 18)
        lb.font = .conversationSize(type: .Medium, fontSize: 18)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var subFirstDesLab: UILabel = {
    lazy var subFirstDesLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "· Take the photo by following the posing guide.".localized
        lb.text = String(bytes: str_modeMediumContent.map{criminalRecord(index: $0)}, encoding: .utf8)!.localized
        //: lb.textColor = .appTitleColor()
        lb.textColor = .ending()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 16)
        lb.font = .conversationSize(type: .Regular, fontSize: 16)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var subSecondDesLab: UILabel = {
    lazy var subSecondDesLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "· The person in the photo must be the account owner.".localized
        lb.text = String(bytes: str_backgroundMomentValue.map{liveSelf(on: $0)}, encoding: .utf8)!.localized
        //: lb.textColor = .appTitleColor()
        lb.textColor = .ending()
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
        //: btn.setTitle("Continue".localized, for: .normal)
        btn.setTitle((String(str_secondData) + String(str_statusValue)).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.withView(name: "btn_me_back_continue"), for: .normal)
        btn.setBackgroundImage(UIImage.withView(name: (String(str_actionData.suffix(4)) + String(str_succeedTitle.prefix(4)) + "ack_" + str_appValue.replacingOccurrences(of: "attach", with: "u"))), for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = .conversationSize(type: .Medium, fontSize: 17)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingFaceVerificationView {
extension LikeVerificationView {
    //: @objc func registerBtnAction() {
    @objc func timeAction() {
        //: if btnClickBlock != nil {
        if btnClickBlock != nil {
            //: btnClickBlock!()
            btnClickBlock!()
        }
    }

    //: private func bindInteraction() {
    private func equalRoot() {
        //: continueBtn.rx.controlEvent(.touchUpInside)
        continueBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.registerBtnAction()
                self.timeAction()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }
}

// MARK: - Layout

//: extension TalkingFaceVerificationView {
extension LikeVerificationView {
    //: func createSubViews() {
    func bar() {
        //: addSubview(faceBackImageView)
        addSubview(faceBackImageView)
        //: addSubview(verificationTitleLab)
        addSubview(verificationTitleLab)
        //: addSubview(verificationDesLab)
        addSubview(verificationDesLab)
        //: addSubview(subFirstDesLab)
        addSubview(subFirstDesLab)
        //: addSubview(subSecondDesLab)
        addSubview(subSecondDesLab)
        //: addSubview(continueBtn)
        addSubview(continueBtn)
    }

    //: func layoutSubViewsConstraints() {
    func buttonEnable() {
        //: let imgSize = faceBackImageView.image?.size
        let imgSize = faceBackImageView.image?.size
        //: let fitH = imgSize!.height * ScreenWidth / imgSize!.width
        let fitH = imgSize!.height * kLet_scaleName / imgSize!.width
        //: faceBackImageView.snp.makeConstraints { make in
        faceBackImageView.snp.makeConstraints { make in
            //: make.top.equalTo(actualHeight(h: 11)+StatusBarHeight)
            make.top.equalTo(actualHeight(h: 11) + kLet_environmentContent)
            //: make.leading.trailing.equalTo(0)
            make.leading.trailing.equalTo(0)
            //: make.height.equalTo(fitH)
            make.height.equalTo(fitH)
        }
        //: verificationTitleLab.snp.makeConstraints { make in
        verificationTitleLab.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.trailing.equalTo(actualWidth(w: -5))
            make.trailing.equalTo(actualWidth(w: -5))
            //: make.top.equalTo(faceBackImageView.snp.bottom).offset(actualHeight(h: 26))
            make.top.equalTo(faceBackImageView.snp.bottom).offset(actualHeight(h: 26))
        }
        //: verificationDesLab.snp.makeConstraints { make in
        verificationDesLab.snp.makeConstraints { make in
            //: make.leading.equalTo(verificationTitleLab.snp.leading)
            make.leading.equalTo(verificationTitleLab.snp.leading)
            //: make.trailing.equalTo(verificationTitleLab.snp.trailing)
            make.trailing.equalTo(verificationTitleLab.snp.trailing)
            //: make.top.equalTo(verificationTitleLab.snp.bottom).offset(actualHeight(h: 10))
            make.top.equalTo(verificationTitleLab.snp.bottom).offset(actualHeight(h: 10))
        }
        //: subFirstDesLab.snp.makeConstraints { make in
        subFirstDesLab.snp.makeConstraints { make in
            //: make.leading.equalTo(verificationTitleLab.snp.leading)
            make.leading.equalTo(verificationTitleLab.snp.leading)
            //: make.trailing.equalTo(verificationTitleLab.snp.trailing)
            make.trailing.equalTo(verificationTitleLab.snp.trailing)
            //: make.top.equalTo(verificationDesLab.snp.bottom).offset(actualHeight(h: 12))
            make.top.equalTo(verificationDesLab.snp.bottom).offset(actualHeight(h: 12))
        }
        //: subSecondDesLab.snp.makeConstraints { make in
        subSecondDesLab.snp.makeConstraints { make in
            //: make.leading.equalTo(verificationTitleLab.snp.leading)
            make.leading.equalTo(verificationTitleLab.snp.leading)
            //: make.trailing.equalTo(verificationTitleLab.snp.trailing)
            make.trailing.equalTo(verificationTitleLab.snp.trailing)
            //: make.top.equalTo(subFirstDesLab.snp.bottom).offset(actualHeight(h: 9))
            make.top.equalTo(subFirstDesLab.snp.bottom).offset(actualHeight(h: 9))
        }
        //: continueBtn.snp.makeConstraints { make in
        continueBtn.snp.makeConstraints { make in
            //: make.top.equalTo(subSecondDesLab.snp.bottom).offset(actualHeight(h: 24))
            make.top.equalTo(subSecondDesLab.snp.bottom).offset(actualHeight(h: 24))
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.width.equalTo(267)
            make.width.equalTo(267)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
    }
}
