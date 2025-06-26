
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_statusValue:[UInt8] = [0x1f,0x18,0x1f,0x2,0x5e,0x15,0x19,0x12,0x13,0x4,0x4c,0x5f,0x56,0x1e,0x17,0x5,0x56,0x18,0x19,0x2,0x56,0x14,0x13,0x13,0x18,0x56,0x1f,0x1b,0x6,0x1a,0x13,0x1b,0x13,0x18,0x2,0x13,0x12]

private func toolVoice(file num: UInt8) -> UInt8 {
    return num ^ 118
}

/*: "  " :*/
fileprivate let str_colorName:String = "transformtransform"

/*: "Say something...     " :*/
fileprivate let str_edgeText:[Character] = ["S","a","y"," ","s","o","m","e","t","h","i","n","g",".",".","."," "," "," "]
fileprivate let str_selectedImageText:String = "viewview"

/*: "party_bottom_mic_open" :*/
fileprivate let str_succeedValue:String = "apparty"
fileprivate let str_rawValue:String = "_"
fileprivate let str_cornerUpgradeTitle:String = "edgeott"
fileprivate let str_messageName:String = "type show size_open"

/*: "party_bottom_mic_close" :*/
fileprivate let str_homeDataValue:[Character] = ["p","a","r","t","y","_","b","o","t","t","o","m","_"]
fileprivate let str_equalSizeText:String = "icon"
fileprivate let str_backgroundRecordValue:[Character] = ["c","_","c","l","o","s","e"]

/*: "btn_video_gift_nor" :*/
fileprivate let str_cellValue:[Character] = ["b","t"]
fileprivate let str_addText:String = "white path interaction titlen_vide"
fileprivate let str_sourceValue:String = "log location plus_nor"

/*: "btn_live_sx_nor" :*/
fileprivate let str_effectValue:[Character] = ["b","t","n","_","l","i"]
fileprivate let str_pointCountMoreValue:String = "ve_sxclass female"

/*: "btn_live_sx_pre" :*/
fileprivate let str_pageValue:String = "head capbtn_li"
fileprivate let str_jumpValue:[Character] = ["v","e","_","s","x","_","p","r","e"]

/*: "#FF2348" :*/
fileprivate let str_sizeText:[Character] = ["#","F","F","2","3"]
fileprivate let str_bottomContent:[Character] = ["4","8"]

/*: "Please contact the host to turn on the mic" :*/
fileprivate let str_colorValue:[UInt8] = [0xd,0x31,0x38,0x3c,0x2e,0x38,0x7d,0x3e,0x32,0x33,0x29,0x3c,0x3e,0x29,0x7d,0x29,0x35,0x38,0x7d,0x35,0x32,0x2e,0x29,0x7d,0x29,0x32,0x7d,0x29,0x28,0x2f,0x33,0x7d,0x32,0x33,0x7d,0x29,0x35,0x38,0x7d,0x30,0x34,0x3e]

private func wayOfLifeLetter(add num: UInt8) -> UInt8 {
    return num ^ 93
}

/*: ", :*/
fileprivate let str_itemData:String = "will"

/*: "Please select an object" :*/
fileprivate let str_giftFileContent:[Character] = ["P","l","e","a","s","e"," ","s","e","l","e","c","t"," ","a","n"," ","o","b","j","e","c","t"]

/*: "toUid" :*/
fileprivate let str_iconTextRegionName:String = "toUidpath user gift"

/*: "giftId" :*/
fileprivate let str_moreAddName:[Character] = ["g","i","f","t","I","d"]

/*: "giftNum" :*/
fileprivate let str_titleData:String = "giftNumadd nor let view"

/*: "roomId" :*/
fileprivate let str_blockViewName:String = "roomIdtop if model intimate"

/*: "pkgItemsetId" :*/
fileprivate let str_firstValue:String = "pkgIharvest var female"
fileprivate let str_genderText:[Character] = ["d"]

/*: "totalMfCoin" :*/
fileprivate let str_modelStyleValue:String = "TOTA"
fileprivate let str_youData:[Character] = ["n"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CountingReactiveCompatible.swift
//  RootRift
//
//  Created by DouXiu on 2024/9/25.
//

//: import UIKit
import UIKit

//: @objc protocol TalkingVoiceRoomBottomViewDelegate: NSObjectProtocol {
@objc protocol ViewObjectProtocol: NSObjectProtocol {
    /// 发布弹幕按钮点击事件
    //: func bottom_commentBtnClick()
    func colorTo()
}

//: class TalkingVoiceRoomBottomView: UIView {
class CountingReactiveCompatible: UIView {
    //: open weak var delegate: TalkingVoiceRoomBottomViewDelegate?
    open weak var delegate: ViewObjectProtocol?
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        appTask()
        //: setupSubViewsConstraint()
        noneView()
        //: TalkingV2Listener.shared.func__addDelegate(self)
        TalkingV2Listener.shared.modelDelegate(self)
        //: refreshRedCountStatus()
        miscountShared()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_statusValue.map{toolVoice(file: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var commentBtn: UIButton = {
    private lazy var commentBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("  " + "Say something...     ".localized, for: .normal)
        btn.setTitle("  " + (String(str_edgeText) + str_selectedImageText.replacingOccurrences(of: "view", with: " ")).localized, for: .normal)
        //: btn.setTitleColor(UIColor(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 0.8), for: .normal)
        btn.setTitleColor(UIColor(red: 255 / 255.0, green: 255 / 255.0, blue: 255 / 255.0, alpha: 0.8), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = UIFont.conversationSize(type: .Regular, fontSize: 14)
        //: btn.setBackgroundColor(color: UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 0.25), forState: .normal)
        btn.toPop(color: UIColor(red: 0 / 255.0, green: 0 / 255.0, blue: 0 / 255.0, alpha: 0.25), forState: .normal)
        //: btn.layer.cornerRadius = 17
        btn.layer.cornerRadius = 17
        //: if LanguageManager.shared.direction == .rightToLeft {
        if FactoryShowThen.shared.direction == .rightToLeft {
            //: btn.contentHorizontalAlignment = .right
            btn.contentHorizontalAlignment = .right
            //: } else {
        } else {
            //: btn.contentHorizontalAlignment = .left
            btn.contentHorizontalAlignment = .left
        }
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(commentBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(afterClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var stackView: UIStackView = {
    private lazy var stackView: UIStackView = {
        //: let v = UIStackView()
        let v = UIStackView()
        //: v.axis = .horizontal
        v.axis = .horizontal
        //: v.alignment = .trailing
        v.alignment = .trailing
        //: v.distribution = .equalSpacing
        v.distribution = .equalSpacing
        //: v.spacing = 10
        v.spacing = 10
        //: return v
        return v
        //: }()
    }()

    //: private lazy var micBtn: UIButton = {
    private lazy var micBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.withView(name: "party_bottom_mic_open"), for: .normal)
        btn.setImage(UIImage.withView(name: (str_succeedValue.replacingOccurrences(of: "app", with: "p") + str_rawValue.capitalized + str_cornerUpgradeTitle.replacingOccurrences(of: "edge", with: "b") + "om_mic" + String(str_messageName.suffix(5)))), for: .normal)
        //: btn.setImage(UIImage.withView(name: "party_bottom_mic_close"), for: .selected)
        btn.setImage(UIImage.withView(name: (String(str_homeDataValue) + str_equalSizeText.replacingOccurrences(of: "icon", with: "mi") + String(str_backgroundRecordValue))), for: .selected)
        //: btn.addTarget(self, action: #selector(micBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(inside), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var giftBtn: UIButton = {
    private lazy var giftBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.withView(name: "btn_video_gift_nor"), for: .normal)
        btn.setImage(UIImage.withView(name: (String(str_cellValue) + String(str_addText.suffix(6)) + "o_gift" + String(str_sourceValue.suffix(4)))), for: .normal)
        //: btn.setImage(UIImage.withView(name: "btn_video_gift_nor"), for: .selected)
        btn.setImage(UIImage.withView(name: (String(str_cellValue) + String(str_addText.suffix(6)) + "o_gift" + String(str_sourceValue.suffix(4)))), for: .selected)
        //: btn.addTarget(self, action: #selector(giftBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(onBlockClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var chatBtn: UIButton = {
    private lazy var chatBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.withView(name: "btn_live_sx_nor"), for: .normal)
        btn.setImage(UIImage.withView(name: (String(str_effectValue) + String(str_pointCountMoreValue.prefix(5)) + "_nor")), for: .normal)
        //: btn.setImage(UIImage.withView(name: "btn_live_sx_pre"), for: .highlighted)
        btn.setImage(UIImage.withView(name: (String(str_pageValue.suffix(6)) + String(str_jumpValue))), for: .highlighted)
        //: btn.addTarget(self, action: #selector(chatBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(rowClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var redCountLab: UILabel = {
    private lazy var redCountLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.backgroundColor = UIColor(hex: "#FF2348")
        lab.backgroundColor = UIColor(hex: (String(str_sizeText) + String(str_bottomContent)))
        //: lab.layer.cornerRadius = 3.5
        lab.layer.cornerRadius = 3.5
        //: lab.layer.masksToBounds = true
        lab.layer.masksToBounds = true
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var giftView: TalkingChatGiftView = {
    private lazy var giftView: RangeReactiveCompatible = {
        //: let giftV = TalkingChatGiftView(style: .party)
        let giftV = RangeReactiveCompatible(style: .party)
        //: giftV.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        giftV.frame = CGRect(x: 0, y: 0, width: kLet_scaleName, height: kLet_environmentText)
        //: return giftV
        return giftV
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVoiceRoomBottomView {
extension CountingReactiveCompatible {
    /// 刷新底部视图麦克风状态
    //: func refreshBottomMicStatus() {
    func replace() {
        //: guard let itemModel = TalkingVoiceRoomManager.shared().getMikePosition(key: TalkingVoiceRoomManager.shared().partyModel.position) else {
        guard let itemModel = DateRangeThen.portion().endHave(key: DateRangeThen.portion().partyModel.position) else {
            //: micBtn.isHidden = true
            micBtn.isHidden = true
            //: return
            return
        }
        //: micBtn.isHidden = false
        micBtn.isHidden = false
        //: micBtn.isSelected = (itemModel.mikeStatus != 2)
        micBtn.isSelected = (itemModel.mikeStatus != 2)
    }

    /// 刷新礼物面板上麦头像
    //: func refreshGiftIcon() {
    func iconShow() {
        //: giftView.partyIconView.refreshIconView()
        giftView.partyIconView.press()
    }

    /// 拉起弹幕评论按钮点击事件
    //: @objc private func commentBtnClick() {
    @objc private func afterClick() {
        //: delegate?.bottom_commentBtnClick()
        delegate?.colorTo()
    }

    /// 麦克风按钮点击事件
    //: @objc private func micBtnClick() {
    @objc private func inside() {
        // 切换麦克风状态
        //: guard let itemModel = TalkingVoiceRoomManager.shared().getMikePosition(key: TalkingVoiceRoomManager.shared().partyModel.position) else {
        guard let itemModel = DateRangeThen.portion().endHave(key: DateRangeThen.portion().partyModel.position) else {
            //: return
            return
        }
        //: switch itemModel.mikeStatus {
        switch itemModel.mikeStatus {
        //: case 0:
        case 0: // 闭麦
            //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 4, position: TalkingVoiceRoomManager.shared().partyModel.position)
            DateRangeThen.portion().product(type: 4, position: DateRangeThen.portion().partyModel.position)

        //: case 1:
        case 1: // 房主闭麦
            //: func__showStatusBarErrorMsg(showMsg: "Please contact the host to turn on the mic".localized)
            detailKey(showMsg: String(bytes: str_colorValue.map{wayOfLifeLetter(add: $0)}, encoding: .utf8)!.localized)

        //: case 2:
        case 2: // 开麦
            //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 5, position: TalkingVoiceRoomManager.shared().partyModel.position)
            DateRangeThen.portion().product(type: 5, position: DateRangeThen.portion().partyModel.position)

        //: default:
        default:
            //: break
            break
        }
    }

    /// 聊天列表按钮点击事件
    //: @objc private func chatBtnClick() {
    @objc private func rowClick() {
        //: IndoorsPushManager.share.func__pushToChatListVC(isHalfView: true)
        IndoorsPushManager.share.ad(isHalfView: true)
    }

    /// 送礼按钮点击事件
    //: @objc private func giftBtnClick() {
    @objc private func onBlockClick() {
        //: func__sendGift()
        countCommon()
    }
}

// MARK: - 送礼

//: extension TalkingVoiceRoomBottomView {
extension CountingReactiveCompatible {
    /// 展示礼物面板
    //: func func__sendGift(selectedUid: String? = nil) {
    func countCommon(selectedUid: String? = nil) {
        //: TalkingChatGiftManager.share.func__sendGiftEvent(type: .party, completion: {
        ExaggerateReactiveCompatible.share.priceTagToImage(type: .party, completion: {
            //: self.func__showGiftChoiceView(selectedUid: selectedUid)
            self.parUid(selectedUid: selectedUid)
            //: })
        })
    }

    //: func func__showGiftChoiceView(selectedUid: String? = nil) {
    func parUid(selectedUid: String? = nil) {
        //: giftView.updateGiftInfo(needReload: true, mf_coin: WatercourseThen.share.loginUserMode.mf_coin)
        giftView.infoTime(needReload: true, mf_coin: WatercourseThen.share.loginUserMode.mf_coin)
        //: currentViewController()?.view.addSubview(giftView)
        toController()?.view.addSubview(giftView)
        //: if selectedUid != nil {
        if selectedUid != nil { // 选中单个用户
            //: giftView.partyIconView.refreshAllIcon(allSelected: false, selectedUid: selectedUid)
            giftView.partyIconView.giftBy(allSelected: false, selectedUid: selectedUid)
            //: } else {
        } else { // 全部选中
            //: giftView.partyIconView.refreshAllIcon(allSelected: true)
            giftView.partyIconView.giftBy(allSelected: true)
        }
        //: giftView.showView()
        giftView.shortness()
        //: giftView.sendActionBlock = { [weak self] (_ giftModel: TalkingRoomGiftModel, _ num: String) in
        giftView.sendActionBlock = { [weak self] (_ giftModel: AdMeasurable, _ num: String) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.func__sendGiftMsg(giftModel: giftModel, giftNum: num)
            self.labPlay(giftModel: giftModel, giftNum: num)
        }
    }

    /// 送礼
    //: func func__sendGiftMsg(giftModel: TalkingRoomGiftModel, giftNum: String) {
    func labPlay(giftModel: AdMeasurable, giftNum: String) {
        //: let reachability = try? Reachability()
        let reachability = try? Reachability()
        //: if reachability?.connection == .unavailable {
        if reachability?.connection == .unavailable {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            detailKey(showMsg: kLet_lengthFailTitle)
            //: return
            return
        }

        // 拼接需要送礼的Uid
        //: var toUid = ""
        var toUid = ""
        //: TalkingVoiceRoomManager.shared().getAllMikePositions().forEach { _, model in
        DateRangeThen.portion().possibility().forEach { _, model in
            //: if model.uid > 0, String(model.uid) != WatercourseThen.share.loginUid, model.needGift == true {
            if model.uid > 0, String(model.uid) != WatercourseThen.share.loginUid, model.needGift == true {
                //: if toUid.count > 0 {
                if toUid.count > 0 {
                    //: toUid.append(",\(model.uid)")
                    toUid.append(",\(model.uid)")
                    //: } else {
                } else {
                    //: toUid.append("\(model.uid)")
                    toUid.append("\(model.uid)")
                }
            }
        }
        //: guard toUid.count > 0 else {
        guard toUid.count > 0 else {
            //: func__showStatusBarErrorMsg(showMsg: "Please select an object".localized)
            detailKey(showMsg: (String(str_giftFileContent)).localized)
            //: return
            return
        }

        //: var params: [String: Any] = [:]
        var params: [String: Any] = [:]
        //: params["toUid"] = toUid
        params[(String(str_iconTextRegionName.prefix(5)))] = toUid
        //: params["giftId"] = giftModel.gid
        params[(String(str_moreAddName))] = giftModel.gid
        //: params["giftNum"] = giftNum
        params[(String(str_titleData.prefix(7)))] = giftNum
        //: params["roomId"] = TalkingVoiceRoomManager.shared().partyModel.roomId
        params[(String(str_blockViewName.prefix(6)))] = DateRangeThen.portion().partyModel.roomId
        //: if giftModel.pkgItemsetId != nil {
        if giftModel.pkgItemsetId != nil {
            //: params["pkgItemsetId"] = giftModel.pkgItemsetId
            params[(String(str_firstValue.prefix(4)) + "temsetI" + String(str_genderText))] = giftModel.pkgItemsetId
        }

        //: HumanHeadRequestTool.req_sendPartyGift(param: params, completion: { succeed, result, errorModel in
        HumanHeadRequestTool.connect(param: params, completion: { succeed, result, errorModel in
            //: guard succeed else {
            guard succeed else {
                //: self.dealSendMsgError(errorCode: errorModel!.errorCode, errorStr: errorModel!.errorMsg, isGift: true, isResend: false)
                self.outRecent(errorCode: errorModel!.errorCode, errorStr: errorModel!.errorMsg, isGift: true, isResend: false)
                //: return
                return
            }
            // 更新本地礼物背包
            //: if giftModel.pkgItemsetId != nil {
            if giftModel.pkgItemsetId != nil {
                //: self.giftView.bags_removeGiftPackage(pkgItemsetId: giftModel.pkgItemsetId!, num: Int(giftNum) ?? 0)
                self.giftView.roundLagniappe(pkgItemsetId: giftModel.pkgItemsetId!, num: Int(giftNum) ?? 0)
            }
            //: self.func__insertGiftMessageWithExtral(extral: result as! [String: Any])
            self.userMe(extral: result as! [String: Any])
            //: })
        })
    }

    //: func func__insertGiftMessageWithExtral(extral: [String: Any]) {
    func userMe(extral: [String: Any]) {
        //: let extralInfo = extral
        let extralInfo = extral
        //: if extralInfo.keys.contains("totalMfCoin") {
        if extralInfo.keys.contains((str_modelStyleValue.lowercased() + "lMfCoi" + String(str_youData))) {
            //: let totalMfCoin: NSNumber = extralInfo["totalMfCoin"] as! NSNumber
            let totalMfCoin: NSNumber = extralInfo[(str_modelStyleValue.lowercased() + "lMfCoi" + String(str_youData))] as! NSNumber
            //: WatercourseThen.share.loginUserMode.mf_coin = totalMfCoin.stringValue
            WatercourseThen.share.loginUserMode.mf_coin = totalMfCoin.stringValue
        }
        //: giftView.updateGiftInfo(needReload: false, mf_coin: WatercourseThen.share.loginUserMode.mf_coin)
        giftView.infoTime(needReload: false, mf_coin: WatercourseThen.share.loginUserMode.mf_coin)
    }

    //: func dealSendMsgError(errorCode: Int, errorStr: String, isGift: Bool, isResend: Bool) {
    func outRecent(errorCode: Int, errorStr: String, isGift _: Bool, isResend _: Bool) {
        //: if errorCode == 50203 {
        if errorCode == 50203 {
            //: guard WatercourseThen.share.loginUserMode.status != 1 else {
            guard WatercourseThen.share.loginUserMode.status != 1 else {
                //: if !errorStr.isEmptyString {
                if !errorStr.isEmptyString {
                    //: func__showStatusBarErrorMsg(showMsg: errorStr)
                    detailKey(showMsg: errorStr)
                }
                //: return
                return
            }
            //: IndoorsPushManager.share.func__jumpToWebRecharge(clickEvent: clickSendingiftsButton, sufficient: false)
            IndoorsPushManager.share.rechargeVideo(clickEvent: kLet_countTitle, sufficient: false)
            //: giftView.dismissView()
            giftView.imagePushAside()

            //: } else if errorCode == 10888 {
        } else if errorCode == 10888 {
            //: let view = TalkingLiveVipSubscribePopView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = VoiceView(frame: CGRect(x: 0, y: 0, width: kLet_scaleName, height: kLet_environmentText))
            //: view.show()
            view.devise()

            //: } else {
        } else {
            //: if !errorStr.isEmptyString {
            if !errorStr.isEmptyString {
                //: func__showStatusBarErrorMsg(showMsg: errorStr)
                detailKey(showMsg: errorStr)
            }
        }
    }
}

// MARK: - NameManagerDelegate【刷新私信红点状态】

//: extension TalkingVoiceRoomBottomView: IMManagerDelegate {
extension CountingReactiveCompatible: NameManagerDelegate {
    //: func onUnreadMsgCountChanged(count: Int) {
    func explainUp(count _: Int) {
        //: refreshRedCountStatus()
        miscountShared()
    }

    /// 刷新消息未读数状态
    //: func refreshRedCountStatus() {
    func miscountShared() {
        //: var msgCount = 0
        var msgCount = 0
        //: let convLists = [TalkingV2Listener.shared.topConvList, TalkingV2Listener.shared.norConvList]
        let convLists = [TalkingV2Listener.shared.topConvList, TalkingV2Listener.shared.norConvList]
        //: for list in convLists {
        for list in convLists {
            //: if let model = list.first(where: { $0.chatType == .private && $0.unreadCount > 0 }) {
            if let model = list.first(where: { $0.chatType == .private && $0.unreadCount > 0 }) {
                //: msgCount += Int(model.unreadCount)
                msgCount += Int(model.unreadCount)
                //: break
                break // 找到第一个未读消息后退出，不需要全部计算，只要有未读数就展示红点
            }
        }
        //: redCountLab.isHidden = (msgCount == 0)
        redCountLab.isHidden = (msgCount == 0)
    }
}

// MARK: - Layout

//: extension TalkingVoiceRoomBottomView {
extension CountingReactiveCompatible {
    /// 添加视图
    //: private func setupSubviews() {
    private func appTask() {
        //: addSubview(commentBtn)
        addSubview(commentBtn)
        //: addSubview(stackView)
        addSubview(stackView)
        //: stackView.addArrangedSubview(micBtn)
        stackView.addArrangedSubview(micBtn)
        //: stackView.addArrangedSubview(chatBtn)
        stackView.addArrangedSubview(chatBtn)
        //: chatBtn.addSubview(redCountLab)
        chatBtn.addSubview(redCountLab)
        //: stackView.addArrangedSubview(giftBtn)
        stackView.addArrangedSubview(giftBtn)
    }

    /// 更新布局
    //: private func setupSubViewsConstraint() {
    private func noneView() {
        //: commentBtn.snp.makeConstraints { make in
        commentBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.height.equalTo(actualWidth(w: 33))
            make.height.equalTo(actualWidth(w: 33))
            //: make.width.equalTo(actualWidth(w: 157))
            make.width.equalTo(actualWidth(w: 157))
        }

        //: stackView.snp.makeConstraints { make in
        stackView.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
        }
        //: micBtn.snp.makeConstraints { make in
        micBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(33)
            make.width.height.equalTo(33)
        }
        //: giftBtn.snp.makeConstraints { make in
        giftBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(micBtn)
            make.width.height.equalTo(micBtn)
        }
        //: chatBtn.snp.makeConstraints { make in
        chatBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(micBtn)
            make.width.height.equalTo(micBtn)
        }

        //: redCountLab.snp.makeConstraints { make in
        redCountLab.snp.makeConstraints { make in
            //: make.top.equalTo(7)
            make.top.equalTo(7)
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
            //: make.width.height.equalTo(7)
            make.width.height.equalTo(7)
        }
    }
}
