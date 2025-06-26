
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_textValue:[UInt8] = [0x1c,0x1b,0x1c,0x1,0x5d,0x16,0x1a,0x11,0x10,0x7,0x4f,0x5c,0x55,0x1d,0x14,0x6,0x55,0x1b,0x1a,0x1,0x55,0x17,0x10,0x10,0x1b,0x55,0x1c,0x18,0x5,0x19,0x10,0x18,0x10,0x1b,0x1,0x10,0x11]

/*: "  " :*/
fileprivate let str_imageTapName:String = "managermanager"

/*: "Say something...     " :*/
fileprivate let str_downName:String = "Say soself model effect style"
fileprivate let str_commentName:[Character] = ["m","e","t","h","i","n","g","."]
fileprivate let str_makeData:[Character] = [".","."," "," "," "," "," "]

/*: "btn_video_gift_nor" :*/
fileprivate let str_equalContentVarValue:String = "btn_viname portion action"
fileprivate let str_leadingTitle:String = "gift_norinput center"

/*: "btn_live_gd_nor" :*/
fileprivate let str_tapSearchedContent:String = "appear player make white interestbtn_"
fileprivate let str_constraintMakeValue:String = "d_nohidden model cover index"
fileprivate let str_remainValue:[Character] = ["r"]

/*: "btn_live_gd_pre" :*/
fileprivate let str_sectionEqualContent:String = "btn_data else click to text"
fileprivate let str_pathText:String = "_gd_prguard to type share"
fileprivate let str_titleValue:[Character] = ["e"]

/*: "btn_live_sx_nor" :*/
fileprivate let str_screenData:String = "btn_liimage show label"
fileprivate let str_sharedYouData:String = "row"
fileprivate let str_managerData:String = "_sx_norsocial type show var layer"

/*: "btn_live_sx_pre" :*/
fileprivate let str_colorText:[Character] = ["b","t","n","_","l","i","v","e","_","s","x"]
fileprivate let str_toVoiceData:String = "_premanager super"

/*: "#FF2348" :*/
fileprivate let str_kitText:[Character] = ["#","F","F","2","3","4","8"]

/*: "btn_live_yx_nor" :*/
fileprivate let str_cancelValue:String = "return add selfbtn_liv"
fileprivate let str_atTitle:String = "active"
fileprivate let str_transformPlayerModelName:String = "_yx_norenter image block on"

/*: "btn_live_yx_pre" :*/
fileprivate let str_viewValue:String = "fill lab layer view userbtn_l"
fileprivate let str_managerWithText:String = "_prevideo back user"

/*: "toUid" :*/
fileprivate let str_colorData:String = "toUidclosed view"

/*: "giftId" :*/
fileprivate let str_topName:String = "giftIdtitle last image raw"

/*: "giftNum" :*/
fileprivate let str_sharedValue:[Character] = ["g"]
fileprivate let str_borderText:String = "add letiftNum"

/*: "pkgItemsetId" :*/
fileprivate let str_giftValue:String = "extension path time leftpkgI"
fileprivate let str_frameValue:[Character] = ["t","I","d"]

/*: "totalMfCoin" :*/
fileprivate let str_bottomData:[Character] = ["t","o","t","a","l","M","f"]
fileprivate let str_pushText:String = "Coinif return"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TentBottomView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

//: @objc protocol TalkingLiveRoomBottomViewDelegate: NSObjectProtocol {
@objc protocol PassePartoutViewDelegate: NSObjectProtocol {
    //: func func__commentBtnClick()
    func overIndex()
}

//: class TalkingLiveRoomBottomView: UIView {
class TentBottomView: UIView {
    //: var toUid: String?
    var toUid: String? /// 送给谁

    //: open weak var delegate: TalkingLiveRoomBottomViewDelegate?
    open weak var delegate: PassePartoutViewDelegate?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        modeSubviews()
        //: setupSubViewsConstraint()
        offSize()
        //: TalkingV2Listener.shared.func__addDelegate(self)
        TalkingV2Listener.shared.modelDelegate(self)
        //: refreshRedCountStatus()
        pothouseStatus()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_textValue.map{$0^117}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.clear
        view.backgroundColor = UIColor.clear
        //: return view
        return view
        //: }()
    }()

    //: private lazy var commentBtn: UIButton = {
    private lazy var commentBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("  " + "Say something...     ".localized, for: .normal)
        btn.setTitle("  " + (String(str_downName.prefix(6)) + String(str_commentName) + String(str_makeData)).localized, for: .normal)
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
        btn.addTarget(self, action: #selector(bottomOn), for: .touchUpInside)
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
        //: v.alignment = .leading
        v.alignment = .leading
        //: v.distribution = .equalSpacing
        v.distribution = .equalSpacing
        //: v.spacing = 10
        v.spacing = 10
        //: return v
        return v
        //: }()
    }()

    //: private lazy var giftBtn: UIButton = {
    private lazy var giftBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.withView(name: "btn_video_gift_nor"), for: .normal)
        btn.setImage(UIImage.withView(name: (String(str_equalContentVarValue.prefix(6)) + "deo_" + String(str_leadingTitle.prefix(8)))), for: .normal)
        //: btn.setImage(UIImage.withView(name: "btn_video_gift_nor"), for: .selected)
        btn.setImage(UIImage.withView(name: (String(str_equalContentVarValue.prefix(6)) + "deo_" + String(str_leadingTitle.prefix(8)))), for: .selected)
        //: btn.addTarget(self, action: #selector(giftBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(dismissByEdit), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var moreBtn: UIButton = {
    private lazy var moreBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.withView(name: "btn_live_gd_nor"), for: .normal)
        btn.setImage(UIImage.withView(name: (String(str_tapSearchedContent.suffix(4)) + "live_g" + String(str_constraintMakeValue.prefix(4)) + String(str_remainValue))), for: .normal)
        //: btn.setImage(UIImage.withView(name: "btn_live_gd_pre"), for: .highlighted)
        btn.setImage(UIImage.withView(name: (String(str_sectionEqualContent.prefix(4)) + "live" + String(str_pathText.prefix(6)) + String(str_titleValue))), for: .highlighted)
        //: btn.addTarget(self, action: #selector(moreBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(selectTo), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var chatBtn: UIButton = {
    private lazy var chatBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.withView(name: "btn_live_sx_nor"), for: .normal)
        btn.setImage(UIImage.withView(name: (String(str_screenData.prefix(6)) + str_sharedYouData.replacingOccurrences(of: "row", with: "ve") + String(str_managerData.prefix(7)))), for: .normal)
        //: btn.setImage(UIImage.withView(name: "btn_live_sx_pre"), for: .highlighted)
        btn.setImage(UIImage.withView(name: (String(str_colorText) + String(str_toVoiceData.prefix(4)))), for: .highlighted)
        //: btn.addTarget(self, action: #selector(chatBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(unpaid), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var redCountLab: UILabel = {
    private lazy var redCountLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.backgroundColor = UIColor(hex: "#FF2348")
        lab.backgroundColor = UIColor(hex: (String(str_kitText)))
        //: lab.layer.cornerRadius = 3.5
        lab.layer.cornerRadius = 3.5
        //: lab.layer.masksToBounds = true
        lab.layer.masksToBounds = true
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var gameBtn: UIButton = {
    private lazy var gameBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.withView(name: "btn_live_yx_nor"), for: .normal)
        btn.setImage(UIImage.withView(name: (String(str_cancelValue.suffix(7)) + str_atTitle.replacingOccurrences(of: "active", with: "e") + String(str_transformPlayerModelName.prefix(7)))), for: .normal)
        //: btn.setImage(UIImage.withView(name: "btn_live_yx_pre"), for: .highlighted)
        btn.setImage(UIImage.withView(name: (String(str_viewValue.suffix(5)) + "ive_yx" + String(str_managerWithText.prefix(4)))), for: .highlighted)
        //: btn.addTarget(self, action: #selector(gameBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(candid), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var giftView: TalkingChatGiftView = {
    private lazy var giftView: RangeReactiveCompatible = {
        //: let giftV = TalkingChatGiftView(style: .live)
        let giftV = RangeReactiveCompatible(style: .live)
        //: giftV.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        giftV.frame = CGRect(x: 0, y: 0, width: kLet_scaleName, height: kLet_environmentText)
        //: return giftV
        return giftV
        //: }()
    }()

    //: private lazy var moreView: TalkingLiveRoomMoreView = {
    private lazy var moreView: ReloadUpView = {
        //: let v = TalkingLiveRoomMoreView()
        let v = ReloadUpView()
        //: return v
        return v
        //: }()
    }()

    //: private lazy var gamesView: TalkingLiveRoomGamesView = {
    private lazy var gamesView: NeighborDataSource = {
        //: let v = TalkingLiveRoomGamesView()
        let v = NeighborDataSource()
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingLiveRoomBottomView {
extension TentBottomView {
    /// 拉起弹幕评论
    //: @objc private func commentBtnClick() {
    @objc private func bottomOn() {
        //: delegate?.func__commentBtnClick()
        delegate?.overIndex()
    }

    /// 送礼
    //: @objc private func giftBtnClick() {
    @objc private func dismissByEdit() {
        //: func__sendGift()
        tagBy()
    }

    /// 聊天列表
    //: @objc private func chatBtnClick() {
    @objc private func unpaid() {
        //: IndoorsPushManager.share.func__pushToChatListVC(isHalfView: true)
        IndoorsPushManager.share.ad(isHalfView: true)
    }

    /// 更多
    //: @objc private func moreBtnClick() {
    @objc private func selectTo() {
        //: moreView.showView()
        moreView.account()
    }

    /// 游戏
    //: @objc private func gameBtnClick() {
    @objc private func candid() {
        //: gamesView.showView(from: .LiveRoom)
        gamesView.sound(from: .LiveRoom)
    }
}

// MARK: - NameManagerDelegate【刷新私信红点状态】

//: extension TalkingLiveRoomBottomView: IMManagerDelegate {
extension TentBottomView: NameManagerDelegate {
    //: func onUnreadMsgCountChanged(count: Int) {
    func explainUp(count _: Int) {
        //: refreshRedCountStatus()
        pothouseStatus()
    }

    /// 刷新消息未读数状态
    //: func refreshRedCountStatus() {
    func pothouseStatus() {
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

// MARK: - 送礼

//: extension TalkingLiveRoomBottomView {
extension TentBottomView {
    //: func func__sendGift() {
    func tagBy() {
        //: TalkingChatGiftManager.share.func__sendGiftEvent(type: .live, completion: {
        ExaggerateReactiveCompatible.share.priceTagToImage(type: .live, completion: {
            //: self.func__showGiftChoiceView()
            self.showView()
            //: })
        })
    }

    //: func func__showGiftChoiceView() {
    func showView() {
        //: giftView.updateGiftInfo(needReload: true, mf_coin: WatercourseThen.share.loginUserMode.mf_coin)
        giftView.infoTime(needReload: true, mf_coin: WatercourseThen.share.loginUserMode.mf_coin)
        //: currentViewController()?.view.addSubview(giftView)
        toController()?.view.addSubview(giftView)
        //: giftView.showView()
        giftView.shortness()

        //: giftView.sendActionBlock = { [weak self] (_ giftModel: TalkingRoomGiftModel, _ num: String) in
        giftView.sendActionBlock = { [weak self] (_ giftModel: AdMeasurable, _ num: String) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.func__sendGiftMsg(giftModel: giftModel, giftNum: num)
            self.viewPop(giftModel: giftModel, giftNum: num)
        }
    }

    //: func func__sendGiftMsg(giftModel: TalkingRoomGiftModel, giftNum: String) {
    func viewPop(giftModel: AdMeasurable, giftNum: String) {
        //: let reachability = try? Reachability()
        let reachability = try? Reachability()
        //: if reachability?.connection == .unavailable {
        if reachability?.connection == .unavailable {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            detailKey(showMsg: kLet_lengthFailTitle)
            //: return
            return
        }
        //: var params: [String: Any] = [:]
        var params: [String: Any] = [:]
        //: if toUid != nil {
        if toUid != nil {
            //: params["toUid"] = toUid
            params[(String(str_colorData.prefix(5)))] = toUid
        }
        //: params["giftId"] = giftModel.gid
        params[(String(str_topName.prefix(6)))] = giftModel.gid
        //: params["giftNum"] = giftNum
        params[(String(str_sharedValue) + String(str_borderText.suffix(6)))] = giftNum
        //: if giftModel.pkgItemsetId != nil {
        if giftModel.pkgItemsetId != nil {
            //: params["pkgItemsetId"] = giftModel.pkgItemsetId
            params[(String(str_giftValue.suffix(4)) + "temse" + String(str_frameValue))] = giftModel.pkgItemsetId
        }

        //: HumanHeadRequestTool.req_SendGiftLive(param: params, completion: { succeed, result, errorModel in
        HumanHeadRequestTool.scutWork(param: params, completion: { succeed, result, errorModel in
            //: guard succeed else {
            guard succeed else {
                //: self.dealSendMsgError(errorCode: errorModel!.errorCode, errorStr: errorModel!.errorMsg, isGift: true, isResend: false)
                self.subPrepare(errorCode: errorModel!.errorCode, errorStr: errorModel!.errorMsg, isGift: true, isResend: false)
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
            self.extral(extral: result as! [String: Any])
            //: })
        })
    }

    //: func func__insertGiftMessageWithExtral(extral: [String: Any]) {
    func extral(extral: [String: Any]) {
        //: let extralInfo = extral
        let extralInfo = extral

        //: if extralInfo.keys.contains("totalMfCoin") {
        if extralInfo.keys.contains((String(str_bottomData) + String(str_pushText.prefix(4)))) {
            //: let totalMfCoin: NSNumber = extralInfo["totalMfCoin"] as! NSNumber
            let totalMfCoin: NSNumber = extralInfo[(String(str_bottomData) + String(str_pushText.prefix(4)))] as! NSNumber
            //: WatercourseThen.share.loginUserMode.mf_coin = totalMfCoin.stringValue
            WatercourseThen.share.loginUserMode.mf_coin = totalMfCoin.stringValue
        }
        //: giftView.updateGiftInfo(needReload: false, mf_coin: WatercourseThen.share.loginUserMode.mf_coin)
        giftView.infoTime(needReload: false, mf_coin: WatercourseThen.share.loginUserMode.mf_coin)
    }

    //: func dealSendMsgError(errorCode: Int, errorStr: String, isGift: Bool, isResend: Bool) {
    func subPrepare(errorCode: Int, errorStr: String, isGift _: Bool, isResend _: Bool) {
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

// MARK: - Layout

//: extension TalkingLiveRoomBottomView {
extension TentBottomView {
    /// 刷新底部视图
    //: func refreshBottomView(_ liveModel: TalkingLiveRoomModel) {
    func clickMedium(_ liveModel: PerformanceTransformable) {
        //: toUid = String(liveModel.streamerInfo.uid)
        toUid = String(liveModel.streamerInfo.uid)
        // 非主播没有更多按钮
        //: let isAnchor = (String(liveModel.streamerInfo.uid) == WatercourseThen.share.loginUid)
        let isAnchor = (String(liveModel.streamerInfo.uid) == WatercourseThen.share.loginUid)
        //: if isAnchor == false {
        if isAnchor == false {
            //: stackView.removeArrangedSubview(moreBtn)
            stackView.removeArrangedSubview(moreBtn)
            //: moreBtn.isHidden = true
            moreBtn.isHidden = true
        }

        // 非审核模式 && 有游戏
        //: if WatercourseThen.share.appStatus != AppSkinStatus.special.rawValue,
        if WatercourseThen.share.appStatus != PublishWidthTotal.special.rawValue,
           //: liveModel.gameList.count > 0
           liveModel.gameList.count > 0
        {
            //: gameBtn.isHidden = false
            gameBtn.isHidden = false
            //: } else {
        } else {
            //: stackView.removeArrangedSubview(gameBtn)
            stackView.removeArrangedSubview(gameBtn)
            //: gameBtn.isHidden = true
            gameBtn.isHidden = true
        }
    }

    //: func setupSubviews() {
    func modeSubviews() {
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(commentBtn)
        contentView.addSubview(commentBtn)
        //: contentView.addSubview(stackView)
        contentView.addSubview(stackView)
        //: stackView.addArrangedSubview(gameBtn)
        stackView.addArrangedSubview(gameBtn)
        //: stackView.addArrangedSubview(chatBtn)
        stackView.addArrangedSubview(chatBtn)
        //: chatBtn.addSubview(redCountLab)
        chatBtn.addSubview(redCountLab)
        //: stackView.addArrangedSubview(moreBtn)
        stackView.addArrangedSubview(moreBtn)
        //: stackView.addArrangedSubview(giftBtn)
        stackView.addArrangedSubview(giftBtn)
    }

    //: func setupSubViewsConstraint() {
    func offSize() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.leading.trailing.bottom.equalTo(self)
            make.top.leading.trailing.bottom.equalTo(self)
        }
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

        //: giftBtn.snp.makeConstraints { make in
        giftBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(33)
            make.width.height.equalTo(33)
        }
        //: moreBtn.snp.makeConstraints { make in
        moreBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(giftBtn)
            make.width.height.equalTo(giftBtn)
        }
        //: chatBtn.snp.makeConstraints { make in
        chatBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(giftBtn)
            make.width.height.equalTo(giftBtn)
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
        //: gameBtn.snp.makeConstraints { make in
        gameBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(giftBtn)
            make.width.height.equalTo(giftBtn)
        }
    }
}
