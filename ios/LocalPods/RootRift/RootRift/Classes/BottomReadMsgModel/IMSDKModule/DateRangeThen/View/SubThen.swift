
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_inputValue:[UInt8] = [0xa7,0xa0,0xa7,0xba,0xe6,0xad,0xa1,0xaa,0xab,0xbc,0xf4,0xe7,0xee,0xa6,0xaf,0xbd,0xee,0xa0,0xa1,0xba,0xee,0xac,0xab,0xab,0xa0,0xee,0xa7,0xa3,0xbe,0xa2,0xab,0xa3,0xab,0xa0,0xba,0xab,0xaa]

private func ifElsePoint(lab num: UInt8) -> UInt8 {
    return num ^ 206
}

/*: "#7166F9" :*/
fileprivate let str_headTitle:[Character] = ["#","7","1","6","6","F","9"]

/*: "party_seat_mike_close" :*/
fileprivate let str_makeText:String = "parindicatory"
fileprivate let str_addTitle:String = "cell bind path model show_seat_"
fileprivate let str_tempData:String = "video to result false uniform_close"

/*: "party_seat_host" :*/
fileprivate let str_backgroundData:[Character] = ["p","a","r","t","y","_","s"]
fileprivate let str_cookieName:[Character] = ["e","a","t","_","h","o","s","t"]

/*: "#FA9D33" :*/
fileprivate let str_frameTitle:String = "#FA9D33player cell in print view"

/*: "party_seat_heartvalue" :*/
fileprivate let str_labTitle:[Character] = ["p","a","r","t","y"]
fileprivate let str_toData:String = "_seform violation"
fileprivate let str_expressData:[Character] = ["a","t","_","h","e","a","r","t","v","a","l","u","e"]

/*: "party_seat_lock" :*/
fileprivate let str_pointName:[UInt8] = [0x30,0x21,0x32,0x34,0x39,0x1f,0x33,0x25,0x21,0x34,0x1f,0x2c,0x2f,0x23,0x2b]

/*: "party_seat_empty" :*/
fileprivate let str_shareTitle:String = "gift frame rightparty_s"
fileprivate let str_randomSectionContent:[Character] = ["e","a","t","_","e","m","p","t","y"]

/*: "99999+" :*/
fileprivate let str_thumbName:[UInt8] = [0xe9,0xe9,0xe9,0xe9,0xe9,0xdb]

fileprivate func conversationNotice(size num: UInt8) -> UInt8 {
    let value = Int(num) - 176
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Unlock" :*/
fileprivate let str_arrayText:String = "u"
fileprivate let str_intoValue:[Character] = ["n","l","o","c","k"]

/*: "The seat is locked, click on the empty seat to play" :*/
fileprivate let str_detailToReturnName:[UInt8] = [0x64,0x58,0x55,0x10,0x43,0x55,0x51,0x44,0x10,0x59,0x43,0x10,0x5c,0x5f,0x53,0x5b,0x55,0x54,0x1c,0x10,0x53,0x5c,0x59,0x53,0x5b,0x10,0x5f,0x5e,0x10,0x44,0x58,0x55,0x10,0x55,0x5d,0x40,0x44,0x49,0x10,0x43,0x55,0x51,0x44,0x10,0x44,0x5f,0x10,0x40,0x5c,0x51,0x49]

private func compartmentStyle(environment num: UInt8) -> UInt8 {
    return num ^ 48
}

/*: "Under mic" :*/
fileprivate let str_hostValue:[Character] = ["U","n","d","e","r"," ","m","i","c"]

/*: _ :*/
fileprivate let str_managerData:String = "_"

/*: "male" :*/
fileprivate let str_modeData:[UInt8] = [0xa0,0xac,0xa1,0xa8]

private func scaleOfMeasurement(to num: UInt8) -> UInt8 {
    return num ^ 205
}

/*: "female" :*/
fileprivate let str_rowData:[Character] = ["f","e","m","a","l","e"]

/*: "On mic" :*/
fileprivate let str_sizeValue:String = "special manager false index succeedOn mic"

/*: "Lock" :*/
fileprivate let str_appValue:String = "model file image inviteLock"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SubThen.swift
//  RootRift
//
//  Created by DouXiu on 2024/9/24.
//

//: import UIKit
import UIKit

/// 当前Item宽高
//: let MikePositionItemView_Size = CGSize(width: (ScreenWidth - 35) / 4, height: actualWidth(w: 102))
let kLet_turnName = CGSize(width: (kLet_scaleName - 35) / 4, height: actualWidth(w: 102))

//: class TalkingMikePositionItemView: UIView {
class SubThen: UIView {
    /// 用户资料卡block
    //: public var showUserCardBlock: ((_ uid: Int) -> Void)?
    public var showUserCardBlock: ((_ uid: Int) -> Void)?
    /// 麦位
    //: private var position = 0
    private var position = 0
    /// 麦位模型
    //: private var itemModel = TalkingMikeListItemModel()
    private var itemModel = ScaleMeasurable()
    /// 是否正在动画
    //: private var isAnimation = false
    private var isAnimation = false
    /// 1s内最大音浪值
    //: private var maxAmplitude = 0.0
    private var maxAmplitude = 0.0

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        atState()
        //: setupSubViewsConstraint()
        serverView()
        //: bindInteraction()
        attach()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_inputValue.map{ifElsePoint(lab: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var animationV1: UIView = {
    private lazy var animationV1: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#7166F9")?.withAlphaComponent(0.15)
        v.backgroundColor = UIColor(hex: (String(str_headTitle)))?.withAlphaComponent(0.15)
        //: v.layer.cornerRadius = 29
        v.layer.cornerRadius = 29
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var animationV2: UIView = {
    private lazy var animationV2: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#7166F9")?.withAlphaComponent(0.55)
        v.backgroundColor = UIColor(hex: (String(str_headTitle)))?.withAlphaComponent(0.55)
        //: v.layer.cornerRadius = 25
        v.layer.cornerRadius = 25
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var icon: UIImageView = {
    private lazy var icon: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.contentMode = .scaleAspectFill
        v.contentMode = .scaleAspectFill
        //: v.layer.cornerRadius = 25
        v.layer.cornerRadius = 25
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.isUserInteractionEnabled = true
        v.isUserInteractionEnabled = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var mikeCloseImgV: UIImageView = {
    private lazy var mikeCloseImgV: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage.withView(name: "party_seat_mike_close")
        v.image = UIImage.withView(name: (str_makeText.replacingOccurrences(of: "indicator", with: "t") + String(str_addTitle.suffix(6)) + "mike" + String(str_tempData.suffix(6))))
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var stackView: UIStackView = {
    private lazy var stackView: UIStackView = {
        //: let v = UIStackView()
        let v = UIStackView()
        //: v.axis = .horizontal
        v.axis = .horizontal
        //: v.alignment = .center
        v.alignment = .center
        //: v.spacing = 2
        v.spacing = 2
        //: return v
        return v
        //: }()
    }()

    //: private lazy var houseImgV: UIImageView = {
    private lazy var houseImgV: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage.withView(name: "party_seat_host")
        v.image = UIImage.withView(name: (String(str_backgroundData) + String(str_cookieName)))
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var seatNumLab: UILabel = {
    private lazy var seatNumLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.backgroundColor = UIColor(hex: "#FA9D33")
        lab.backgroundColor = UIColor(hex: (String(str_frameTitle.prefix(7))))
        //: lab.font = UIFont.showSize(fontSize: 9)
        lab.font = UIFont.showSize(fontSize: 9)
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.layer.cornerRadius = actualWidth(w: 12) / 2
        lab.layer.cornerRadius = actualWidth(w: 12) / 2
        //: lab.layer.masksToBounds = true
        lab.layer.masksToBounds = true
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var nickNameLab: UILabel = {
    private lazy var nickNameLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 12)
        lab.font = UIFont.rugular(fontSize: 12)
        //: lab.textColor = .white
        lab.textColor = .white
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var heartCoinBtn: TalkingButton = {
    private lazy var heartCoinBtn: MediaControl = {
        //: let btn = TalkingButton()
        let btn = MediaControl()
        //: btn.setImage(UIImage.withView(name: "party_seat_heartvalue"), for: .normal)
        btn.setImage(UIImage.withView(name: (String(str_labTitle) + String(str_toData.prefix(3)) + String(str_expressData))), for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Regular, fontSize: 8)
        btn.titleLabel?.font = .conversationSize(type: .Regular, fontSize: 8)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("0", for: .normal)
        btn.setTitle("0", for: .normal)
        //: btn.spaceBetweenTitleAndImage = 2
        btn.spaceBetweenTitleAndImage = 2
        //: btn.backgroundColor = UIColor.white.withAlphaComponent(0.15)
        btn.backgroundColor = UIColor.white.withAlphaComponent(0.15)
        //: btn.layer.cornerRadius = actualWidth(w: 12) / 2
        btn.layer.cornerRadius = actualWidth(w: 12) / 2
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMikePositionItemView {
extension SubThen {
    /// 刷新视图
    /// - Parameters:
    ///   - seatNumber: 席位
    ///   - model: 模型
    //: func refreshMikeItemView(_ seatNumber: Int, model: TalkingMikeListItemModel) {
    func molarityPreformation(_ seatNumber: Int, model: ScaleMeasurable) {
        //: position = seatNumber
        position = seatNumber
        //: itemModel = model
        itemModel = model
        //: seatNumLab.text = "\(seatNumber + 1)"
        seatNumLab.text = "\(seatNumber + 1)"

        //: guard model.posStatus == 0, model.uid > 0 else {
        guard model.posStatus == 0, model.uid > 0 else {
            //: let imgStr = (itemModel.posStatus == 1) ? "party_seat_lock" : "party_seat_empty"
            let imgStr = (itemModel.posStatus == 1) ? String(bytes: str_pointName.map{$0^64}, encoding: .utf8)! : (String(str_shareTitle.suffix(7)) + String(str_randomSectionContent))
            //: icon.image = UIImage.withView(name: imgStr)
            icon.image = UIImage.withView(name: imgStr)
            //: mikeCloseImgV.isHidden = true
            mikeCloseImgV.isHidden = true
            //: houseImgV.isHidden = true
            houseImgV.isHidden = true
            //: nickNameLab.isHidden = true
            nickNameLab.isHidden = true
            //: heartCoinBtn.isHidden = true
            heartCoinBtn.isHidden = true
            //: return
            return
        }

        // 麦位开启，麦上有人
        //: let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: actualWidth(w: 25)))]
        let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: actualWidth(w: 25)))]
        //: icon.setUrlImage(urlStr: model.headPic, options: optionsInfo)
        icon.optionsFinish(urlStr: model.headPic, options: optionsInfo)
        //: mikeCloseImgV.isHidden = (model.mikeStatus == 2)
        mikeCloseImgV.isHidden = (model.mikeStatus == 2)
        // 是否是主播
        //: houseImgV.isHidden = !(model.uid == TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid)
        houseImgV.isHidden = !(model.uid == DateRangeThen.portion().partyModel.streamerInfo.uid)
        //: nickNameLab.text = model.nickname
        nickNameLab.text = model.nickname
        //: nickNameLab.isHidden = false
        nickNameLab.isHidden = false
        //: let heartValue = (model.coin > 99999) ? "99999+" : String(model.coin)
        let heartValue = (model.coin > 99999) ? String(bytes: str_thumbName.map{conversationNotice(size: $0)}, encoding: .utf8)! : String(model.coin)
        //: heartCoinBtn.setTitle(heartValue, for: .normal)
        heartCoinBtn.setTitle(heartValue, for: .normal)
        //: heartCoinBtn.isHidden = false
        heartCoinBtn.isHidden = false
        //: let width = heartCoinBtn.titleLabel!.text!.size(withAttributes: [.font: heartCoinBtn.titleLabel!.font!]).width + actualWidth(w: 20)
        let width = heartCoinBtn.titleLabel!.text!.size(withAttributes: [.font: heartCoinBtn.titleLabel!.font!]).width + actualWidth(w: 20)
        //: heartCoinBtn.snp.updateConstraints { make in
        heartCoinBtn.snp.updateConstraints { make in
            //: make.width.equalTo(width)
            make.width.equalTo(width)
        }
    }

    /// 麦位点击事件
    //: @objc func tapGestureRecognizer(_ tap: UITapGestureRecognizer) {
    @objc func fromRecognizer(_: UITapGestureRecognizer) {
        // 是否房主
        //: let isAnchor = (String(TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid) == WatercourseThen.share.loginUid)
        let isAnchor = (String(DateRangeThen.portion().partyModel.streamerInfo.uid) == WatercourseThen.share.loginUid)
        //: guard itemModel.posStatus == 0 else {
        guard itemModel.posStatus == 0 else {
            //: if itemModel.posStatus == 1 {
            if itemModel.posStatus == 1 { // 麦位锁定
                //: if isAnchor {
                if isAnchor { // 房主
                    //: let vc = TalkingMunuPopView(frame: UIScreen.main.bounds)
                    let vc = ColorGiftDataSource(frame: UIScreen.main.bounds)
                    //: vc.initwithList(cellTitleList: ["Unlock".localized])
                    vc.collectionList(cellTitleList: [(str_arrayText.uppercased() + String(str_intoValue)).localized])
                    //: vc.cancelColor = .appTitleColor()
                    vc.cancelColor = .ending()
                    //: vc.munuBlock = { [weak self] _, str in
                    vc.munuBlock = { [weak self] _, str in
                        //: guard let self = self else { return }
                        guard let self = self else { return }
                        //: if str == "Unlock".localized {
                        if str == (str_arrayText.uppercased() + String(str_intoValue)).localized {
                            //: TalkingVoiceRoomManager.shared().voiceRoom_reqAdminChangeMike(uid: 0, type: 2, position: position)
                            DateRangeThen.portion().livePosition(uid: 0, type: 2, position: position)
                        }
                    }

                    //: } else {
                } else {
                    //: func__showStatusBarErrorMsg(showMsg: "The seat is locked, click on the empty seat to play".localized)
                    detailKey(showMsg: String(bytes: str_detailToReturnName.map{compartmentStyle(environment: $0)}, encoding: .utf8)!.localized)
                }
            }
            //: return
            return
        }

        // 麦位开启
        //: if itemModel.uid > 0 {
        if itemModel.uid > 0 { // 麦上有人
            //: if String(itemModel.uid) == WatercourseThen.share.loginUid {
            if String(itemModel.uid) == WatercourseThen.share.loginUid { // 点击自己麦位
                // 用户主动下麦
                //: let vc = TalkingMunuPopView(frame: UIScreen.main.bounds)
                let vc = ColorGiftDataSource(frame: UIScreen.main.bounds)
                //: vc.initwithList(cellTitleList: ["Under mic".localized])
                vc.collectionList(cellTitleList: [(String(str_hostValue)).localized])
                //: vc.cancelColor = .appTitleColor()
                vc.cancelColor = .ending()
                //: vc.munuBlock = { [weak self] _, str in
                vc.munuBlock = { [weak self] _, str in
                    //: guard let self = self else { return }
                    guard let self = self else { return }
                    //: if str == "Under mic".localized {
                    if str == (String(str_hostValue)).localized {
                        //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 2, position: position)
                        DateRangeThen.portion().product(type: 2, position: position)
                        //: uploadRecord.uploadRecordEvent(eventID: "\(click_partyDetail_underMic)_\(WatercourseThen.share.loginUserMode.sex == Gender.male.rawValue ? "male" : "female")")
                        kLet_depthIconValue.mightHaveBeenStubZapErrorUploadTo(eventID: "\(kLet_appText)_\(WatercourseThen.share.loginUserMode.sex == PushDownStackScalarLiteral.male.rawValue ? String(bytes: str_modeData.map{scaleOfMeasurement(to: $0)}, encoding: .utf8)! : (String(str_rowData)))")
                    }
                }

                //: } else {
            } else { // 点击别人麦位, 查看资料卡
                //: showUserCardBlock?(itemModel.uid)
                showUserCardBlock?(itemModel.uid)
            }

            //: } else {
        } else { // 空位
            //: if isAnchor {
            if isAnchor { // 房主
                //: let vc = TalkingMunuPopView(frame: UIScreen.main.bounds)
                let vc = ColorGiftDataSource(frame: UIScreen.main.bounds)
                //: vc.initwithList(cellTitleList: ["On mic".localized, "Lock".localized])
                vc.collectionList(cellTitleList: [(String(str_sizeValue.suffix(6))).localized, (String(str_appValue.suffix(4))).localized])
                //: vc.cancelColor = .appTitleColor()
                vc.cancelColor = .ending()
                //: vc.munuBlock = { [weak self] _, str in
                vc.munuBlock = { [weak self] _, str in
                    //: guard let self = self else { return }
                    guard let self = self else { return }
                    //: if str == "On mic".localized {
                    if str == (String(str_sizeValue.suffix(6))).localized {
                        //: if TalkingVoiceRoomManager.shared().partyModel.position >= 0 {
                        if DateRangeThen.portion().partyModel.position >= 0 { // 在麦位上切麦
                            //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 3,
                            DateRangeThen.portion().product(type: 3,
                                                                      //: position: TalkingVoiceRoomManager.shared().partyModel.position,
                                                                      position: DateRangeThen.portion().partyModel.position,
                                                                      //: toPosition: position)
                                                                      toPosition: position)
                            //: } else {
                        } else {
                            //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 1, position: position)
                            DateRangeThen.portion().product(type: 1, position: position)
                            //: uploadRecord.uploadRecordEvent(eventID: "\(click_partyDetail_onMic)_\(WatercourseThen.share.loginUserMode.sex == Gender.male.rawValue ? "male" : "female")")
                            kLet_depthIconValue.mightHaveBeenStubZapErrorUploadTo(eventID: "\(kLet_liveSenseText)_\(WatercourseThen.share.loginUserMode.sex == PushDownStackScalarLiteral.male.rawValue ? String(bytes: str_modeData.map{scaleOfMeasurement(to: $0)}, encoding: .utf8)! : (String(str_rowData)))")
                        }

                        //: } else if str == "Lock".localized {
                    } else if str == (String(str_appValue.suffix(4))).localized {
                        //: TalkingVoiceRoomManager.shared().voiceRoom_reqAdminChangeMike(uid: 0, type: 1, position: position)
                        DateRangeThen.portion().livePosition(uid: 0, type: 1, position: position)
                    }
                }

                //: } else {
            } else { // 观众在麦位上切麦，否则上麦
                //: if TalkingVoiceRoomManager.shared().partyModel.position >= 0 {
                if DateRangeThen.portion().partyModel.position >= 0 {
                    //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 3,
                    DateRangeThen.portion().product(type: 3,
                                                              //: position: TalkingVoiceRoomManager.shared().partyModel.position,
                                                              position: DateRangeThen.portion().partyModel.position,
                                                              //: toPosition: position)
                                                              toPosition: position)
                    //: } else {
                } else {
                    //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 1, position: position)
                    DateRangeThen.portion().product(type: 1, position: position)
                    //: uploadRecord.uploadRecordEvent(eventID: "\(click_partyDetail_onMic)_\(WatercourseThen.share.loginUserMode.sex == Gender.male.rawValue ? "male" : "female")")
                    kLet_depthIconValue.mightHaveBeenStubZapErrorUploadTo(eventID: "\(kLet_liveSenseText)_\(WatercourseThen.share.loginUserMode.sex == PushDownStackScalarLiteral.male.rawValue ? String(bytes: str_modeData.map{scaleOfMeasurement(to: $0)}, encoding: .utf8)! : (String(str_rowData)))")
                }
            }
        }
    }
}

// MARK: - 音浪动效

//: extension TalkingMikePositionItemView {
extension SubThen {
    /// 播放音浪值动效
    /// - Parameter amplitude: 音浪值
    //: func animateCircle(withAmplitude amplitude: CGFloat) {
    func animateEqualAmplitude(withAmplitude amplitude: CGFloat) {
        //: maxAmplitude = max(maxAmplitude, amplitude)
        maxAmplitude = max(maxAmplitude, amplitude)
        //: guard isAnimation == false else { return }
        guard isAnimation == false else { return }
        //: isAnimation = true
        isAnimation = true

        //: animationV1.isHidden = false
        animationV1.isHidden = false
        //: animationV2.isHidden = false
        animationV2.isHidden = false
        //: let scale1 = (25 + (maxAmplitude / 100) * 7) / 25
        let scale1 = (25 + (maxAmplitude / 100) * 7) / 25
        //: let scale2 = (29 + (maxAmplitude / 100) * 8) / 29
        let scale2 = (29 + (maxAmplitude / 100) * 8) / 29
        //: maxAmplitude = 0.0
        maxAmplitude = 0.0
        //: UIView.animate(withDuration: 1, animations: {
        UIView.animate(withDuration: 1, animations: {
            //: self.animationV1.transform = CGAffineTransform(scaleX: scale1, y: scale1)
            self.animationV1.transform = CGAffineTransform(scaleX: scale1, y: scale1)
            //: self.animationV2.transform = CGAffineTransform(scaleX: scale2, y: scale2)
            self.animationV2.transform = CGAffineTransform(scaleX: scale2, y: scale2)
            //: }) { _ in
        }) { _ in
            //: self.animationV1.transform = .identity
            self.animationV1.transform = .identity
            //: self.animationV2.transform = .identity
            self.animationV2.transform = .identity
            //: self.animationV1.isHidden = true
            self.animationV1.isHidden = true
            //: self.animationV2.isHidden = true
            self.animationV2.isHidden = true
            //: self.isAnimation = false
            self.isAnimation = false
        }
    }
}

// MARK: - Layout

//: extension TalkingMikePositionItemView {
extension SubThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func atState() {
        //: addSubview(animationV1)
        addSubview(animationV1)
        //: addSubview(animationV2)
        addSubview(animationV2)
        //: addSubview(icon)
        addSubview(icon)
        //: addSubview(mikeCloseImgV)
        addSubview(mikeCloseImgV)
        //: addSubview(stackView)
        addSubview(stackView)
        //: stackView.addArrangedSubview(houseImgV)
        stackView.addArrangedSubview(houseImgV)
        //: stackView.addArrangedSubview(seatNumLab)
        stackView.addArrangedSubview(seatNumLab)
        //: stackView.addArrangedSubview(nickNameLab)
        stackView.addArrangedSubview(nickNameLab)
        //: addSubview(heartCoinBtn)
        addSubview(heartCoinBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func serverView() {
        //: animationV1.snp.makeConstraints { make in
        animationV1.snp.makeConstraints { make in
            //: make.top.equalTo(actualWidth(w: 8))
            make.top.equalTo(actualWidth(w: 8))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(58)
            make.width.height.equalTo(58)
        }

        //: animationV2.snp.makeConstraints { make in
        animationV2.snp.makeConstraints { make in
            //: make.center.equalTo(animationV1)
            make.center.equalTo(animationV1)
            //: make.width.height.equalTo(50)
            make.width.height.equalTo(50)
        }

        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.center.equalTo(animationV1)
            make.center.equalTo(animationV1)
            //: make.width.height.equalTo(50)
            make.width.height.equalTo(50)
        }

        //: mikeCloseImgV.snp.makeConstraints { make in
        mikeCloseImgV.snp.makeConstraints { make in
            //: make.trailing.bottom.equalTo(icon).offset(3)
            make.trailing.bottom.equalTo(icon).offset(3)
            //: make.width.height.equalTo(actualWidth(w: 18))
            make.width.height.equalTo(actualWidth(w: 18))
        }

        //: stackView.snp.makeConstraints { make in
        stackView.snp.makeConstraints { make in
            //: make.top.equalTo(icon.snp.bottom).offset(actualWidth(w: 6))
            make.top.equalTo(icon.snp.bottom).offset(actualWidth(w: 6))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.lessThanOrEqualToSuperview()
            make.width.lessThanOrEqualToSuperview()
        }
        //: houseImgV.snp.makeConstraints { make in
        houseImgV.snp.makeConstraints { make in
            //: make.width.height.equalTo(actualWidth(w: 12))
            make.width.height.equalTo(actualWidth(w: 12))
        }
        //: seatNumLab.snp.makeConstraints { make in
        seatNumLab.snp.makeConstraints { make in
            //: make.width.height.equalTo(actualWidth(w: 12))
            make.width.height.equalTo(actualWidth(w: 12))
        }

        //: heartCoinBtn.snp.makeConstraints { make in
        heartCoinBtn.snp.makeConstraints { make in
            //: make.top.equalTo(icon.snp.bottom).offset(actualWidth(w: 24))
            make.top.equalTo(icon.snp.bottom).offset(actualWidth(w: 24))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(actualWidth(w: 12))
            make.height.equalTo(actualWidth(w: 12))
            //: make.width.equalTo(actualWidth(w: 21))
            make.width.equalTo(actualWidth(w: 21))
        }
    }

    /// 添加事件
    //: private func bindInteraction() {
    private func attach() {
        //: let tap = UITapGestureRecognizer(target: self, action: #selector(tapGestureRecognizer))
        let tap = UITapGestureRecognizer(target: self, action: #selector(fromRecognizer))
        //: addGestureRecognizer(tap)
        addGestureRecognizer(tap)
    }
}
