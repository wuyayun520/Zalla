
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_playerSumData:[UInt8] = [0x39,0x3e,0x39,0x44,0xf8,0x33,0x3f,0x34,0x35,0x42,0xa,0xf9,0xf0,0x38,0x31,0x43,0xf0,0x3e,0x3f,0x44,0xf0,0x32,0x35,0x35,0x3e,0xf0,0x39,0x3d,0x40,0x3c,0x35,0x3d,0x35,0x3e,0x44,0x35,0x34]

fileprivate func thenSource(main num: UInt8) -> UInt8 {
    let value = Int(num) - 208
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "icon_live_vipsubscribe_back" :*/
fileprivate let str_labData:String = "iccount"
fileprivate let str_normalText:String = "_vipin at"
fileprivate let str_makeValue:String = "ribbeauty"

/*: "icon_live_vipsubscribe_topback" :*/
fileprivate let str_middleName:String = "IC"
fileprivate let str_cellValue:String = "on_lextension size"
fileprivate let str_appearPageViewName:String = "targetsubs"
fileprivate let str_firstRequestValue:String = "e_toplabel no image index"

/*: "Open VIP\nto give Exclusive gifts" :*/
fileprivate let str_equalName:[UInt8] = [0xf8,0x19,0xe,0x17,0xc9,0xff,0xf2,0xf9,0xb3,0x1d,0x18,0xc9,0x10,0x12,0x1f,0xe,0xc9,0xee,0x21,0xc,0x15,0x1e,0x1c,0x12,0x1f,0xe,0xc9,0x10,0x12,0xf,0x1d,0x1c]

fileprivate func startValue(object num: UInt8) -> UInt8 {
    let value = Int(num) - 169
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Giving an Exclusive gift will appeal to her" :*/
fileprivate let str_shareTitle:[UInt8] = [0x85,0xab,0xb4,0xab,0xac,0xa5,0xe2,0xa3,0xac,0xe2,0x87,0xba,0xa1,0xae,0xb7,0xb1,0xab,0xb4,0xa7,0xe2,0xa5,0xab,0xa4,0xb6,0xe2,0xb5,0xab,0xae,0xae,0xe2,0xa3,0xb2,0xb2,0xa7,0xa3,0xae,0xe2,0xb6,0xad,0xe2,0xaa,0xa7,0xb0]

private func cellSay(add num: UInt8) -> UInt8 {
    return num ^ 194
}

/*: "Subscribe" :*/
fileprivate let str_arrayContent:[Character] = ["S","u","b","s","c","r","i","b","e"]

/*: "Cancel" :*/
fileprivate let str_timeEqualContent:String = "Cancellet jump log"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  VoiceView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/10/31.
//

//: import UIKit
import UIKit

//: class TalkingLiveVipSubscribePopView: UIView {
class VoiceView: UIView {
    //: var endBlock: (() -> Void)?
    var endBlock: (() -> Void)?

    //: var popView: TalkingPopView?
    var popView: MessageScalePopView?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.theSelectedTag()
        //: self.setupSubViewsConstraint()
        self.diagnosticProcedure()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_playerSumData.map{thenSource(main: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // 懒加载初始化

    //: lazy var contentImg: UIImageView = {
    lazy var contentImg: UIImageView = {
        //: let img = UIImageView.init()
        let img = UIImageView()
        //: img.image = UIImage.withView(name: "icon_live_vipsubscribe_back")
        img.image = UIImage.withView(name: (str_labData.replacingOccurrences(of: "count", with: "on") + "_live" + String(str_normalText.prefix(4)) + "subsc" + str_makeValue.replacingOccurrences(of: "beauty", with: "e") + "_back"))
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: return img
        return img
        //: }()
    }()

    //: lazy var topImg: UIImageView = {
    lazy var topImg: UIImageView = {
        //: let iamg = UIImageView.init()
        let iamg = UIImageView()
        //: iamg.image = UIImage.withView(name: "icon_live_vipsubscribe_topback")
        iamg.image = UIImage.withView(name: (str_middleName.lowercased() + String(str_cellValue.prefix(4)) + "ive_v" + str_appearPageViewName.replacingOccurrences(of: "target", with: "ip") + "crib" + String(str_firstRequestValue.prefix(5)) + "back"))
        //: iamg.contentMode = .scaleAspectFill
        iamg.contentMode = .scaleAspectFill
        //: return iamg
        return iamg
        //: }()
    }()

    //: lazy var titleLabel: UILabel = {
    lazy var titleLabel: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.ending()
        //: lab.font = UIFont.systemFont(ofSize: 20, weight: .heavy)
        lab.font = UIFont.systemFont(ofSize: 20, weight: .heavy)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.text = "Open VIP\nto give Exclusive gifts".localized
        lab.text = String(bytes: str_equalName.map{startValue(object: $0)}, encoding: .utf8)!.localized
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var messageView: UILabel = {
    lazy var messageView: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        lb.font = UIFont.conversationSize(type: .Regular, fontSize: 16)
        //: lb.text = "Giving an Exclusive gift will appeal to her".localized
        lb.text = String(bytes: str_shareTitle.map{cellSay(add: $0)}, encoding: .utf8)!.localized
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.ending()
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.backgroundColor = .clear
        lb.backgroundColor = .clear
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var finishBtn: UIButton = {
    private lazy var finishBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Subscribe".localized, for: .normal)
        btn.setTitle((String(str_arrayContent)).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.conversationSize(type: .Medium, fontSize: 16)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 130, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.distancePlay(colors: UIColor.memoryImageAwake(), size: CGSize(width: 130, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(finishOutUponVerbalise), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Cancel".localized, for: .normal)
        btn.setTitle((String(str_timeEqualContent.prefix(6))).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.conversationSize(type: .Medium, fontSize: 16)
        //: btn.setTitleColor(.touchColor(), for: .normal)
        btn.setTitleColor(.touchColor(), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.layer.borderColor = UIColor.touchColor().cgColor
        btn.layer.borderColor = UIColor.touchColor().cgColor
        //: btn.layer.borderWidth = 1
        btn.layer.borderWidth = 1
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(sinceAdd), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingLiveVipSubscribePopView {
extension VoiceView {
    //: @objc func finishBtnClick() {
    @objc func finishOutUponVerbalise() {
        //: dismiss()
        equalDismiss()
        //: IndoorsPushManager.share.func__pushToSubscribePageWebVC()
        IndoorsPushManager.share.timeText()
    }

    //: @objc func closeBtnClick() {
    @objc func sinceAdd() {
        //: dismiss()
        equalDismiss()
    }

    //: func show() {
    func devise() {
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
    @objc func equalDismiss() {
        //: self.endBlock?()
        self.endBlock?()
        //: popView?.dismissView()
        popView?.reject()
        //: popView = nil
        popView = nil
    }
}

//: extension TalkingLiveVipSubscribePopView {
extension VoiceView {
    // 添加视图
    //: private func setupSubviews() {
    private func theSelectedTag() {
        //: self.addSubview(contentImg)
        self.addSubview(contentImg)
        //: contentImg.addSubview(topImg)
        contentImg.addSubview(topImg)
        //: contentImg.addSubview(closeBtn)
        contentImg.addSubview(closeBtn)
        //: contentImg.addSubview(titleLabel)
        contentImg.addSubview(titleLabel)
        //: contentImg.addSubview(messageView)
        contentImg.addSubview(messageView)
        //: contentImg.addSubview(finishBtn)
        contentImg.addSubview(finishBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func diagnosticProcedure() {
        //: let width = 295
        let width = 295
        //: let btnWidth = (width-12*2-11)/2
        let btnWidth = (width - 12 * 2 - 11) / 2
        //: contentImg.snp.makeConstraints { make in
        contentImg.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: width, height: 230))
            make.size.equalTo(CGSize(width: width, height: 230))
        }

        //: topImg.snp.makeConstraints { make in
        topImg.snp.makeConstraints { make in
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
            //: make.top.equalTo(-47)
            make.top.equalTo(-47)
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 139), height: actualWidth(w: 109)))
            make.size.equalTo(CGSize(width: actualWidth(w: 139), height: actualWidth(w: 109)))
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-16)
            make.bottom.equalTo(-16)
            //: make.leading.equalTo(12)
            make.leading.equalTo(12)
            //: make.size.equalTo(CGSize.init(width: btnWidth, height: 50))
            make.size.equalTo(CGSize(width: btnWidth, height: 50))
        }

        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.bottom.size.equalTo(closeBtn)
            make.bottom.size.equalTo(closeBtn)
            //: make.leading.equalTo(closeBtn.snp.trailing).offset(11)
            make.leading.equalTo(closeBtn.snp.trailing).offset(11)
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
        }

        //: titleLabel.snp.makeConstraints { make in
        titleLabel.snp.makeConstraints { make in
            //: make.top.equalTo(30)
            make.top.equalTo(30)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-28)
            make.trailing.equalTo(-28)
            //: make.height.equalTo(53)
            make.height.equalTo(53)
        }

        //: messageView.snp.makeConstraints { make in
        messageView.snp.makeConstraints { make in
            //: make.top.equalTo(titleLabel.snp.bottom).offset(10)
            make.top.equalTo(titleLabel.snp.bottom).offset(10)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-19)
            make.trailing.equalTo(-19)
            //: make.bottom.equalTo(finishBtn.snp.top).offset(-18)
            make.bottom.equalTo(finishBtn.snp.top).offset(-18)
        }
    }
}
