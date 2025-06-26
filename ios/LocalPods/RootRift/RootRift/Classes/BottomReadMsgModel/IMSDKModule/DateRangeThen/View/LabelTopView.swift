
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_appViewData:[UInt8] = [0xa3,0xa4,0xa3,0xbe,0xe2,0xa9,0xa5,0xae,0xaf,0xb8,0xf0,0xe3,0xea,0xa2,0xab,0xb9,0xea,0xa4,0xa5,0xbe,0xea,0xa8,0xaf,0xaf,0xa4,0xea,0xa3,0xa7,0xba,0xa6,0xaf,0xa7,0xaf,0xa4,0xbe,0xaf,0xae]

/*: "bth_live_follow_pre" :*/
fileprivate let str_situationValue:String = "bth_lmain equal var index case"
fileprivate let str_barName:String = "ive_temp add"
fileprivate let str_deviceNameValue:[Character] = ["f","o","l","l","o","w","_","p","r","e"]

/*: "btn_live_closed_nor" :*/
fileprivate let str_elementTitle:String = "btn_lbutton thought self"
fileprivate let str_indexName:String = "ivideoe"
fileprivate let str_fatalLabelTitle:String = "let object image data wrap_clo"

/*: "removeAttentionUid" :*/
fileprivate let str_actualText:String = "modele"
fileprivate let str_toRequestData:String = "moveAtphone hidden hidden"
fileprivate let str_dataName:String = "to toolnUid"

/*: "attentionUid" :*/
fileprivate let str_modelTitle:[Character] = ["a","t","t","e","n","t","i","o","n","U"]
fileprivate let str_addDirectionName:String = "ID"

/*: "source" :*/
fileprivate let str_fillValue:[Character] = ["s"]
fileprivate let str_textTitle:[Character] = ["o","u","r","c","e"]

/*: "num" :*/
fileprivate let str_tableName:String = "nequal"

/*: "99+" :*/
fileprivate let str_environmentUserModelName:[UInt8] = [0xb9,0xb9,0xab]

private func poolPlayer(available num: UInt8) -> UInt8 {
    return num ^ 128
}

/*: "UID: :*/
fileprivate let str_arrayValue:[Character] = ["U","I","D",":"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LabelTopView.swift
//  Adjust
//
//  Created by DouXiu on 2024/9/23.
//

//: import UIKit
import UIKit

//: class TalkingVoiceRoomTopView: UIView {
class LabelTopView: UIView {
    //: public var showUserCardBlock: ((_ uid: Int) -> Void)?
    public var showUserCardBlock: ((_ uid: Int) -> Void)?

    /// 更新在线人数定时器
    //: var onlineNunTimer: Timer?
    var onlineNunTimer: Timer?
    /// 在线人数
    //: private var onlineNum = 1
    private var onlineNum = 1
    //: private let numlock = NSLock()
    private let numlock = NSLock()

    /// 语聊房模型
    //: private var partyModel = TalkingVoiceRoomModel()
    private var partyModel = NameHandyJSON()

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        endFinish()
        //: setupSubViewsConstraint()
        afterTitleView()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_appViewData.map{$0^202}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var iconBgBtn: UIButton = {
    private lazy var iconBgBtn: UIButton = {
        //: let v = UIButton()
        let v = UIButton()
        //: v.backgroundColor = .black.withAlphaComponent(0.2)
        v.backgroundColor = .black.withAlphaComponent(0.2)
        //: v.layer.cornerRadius = actualWidth(w: 32)/2
        v.layer.cornerRadius = actualWidth(w: 32) / 2
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.addTarget(self, action: #selector(iconBgButtonClick), for: .touchUpInside)
        v.addTarget(self, action: #selector(guide), for: .touchUpInside)
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
        //: v.layer.cornerRadius = actualWidth(w: 32)/2
        v.layer.cornerRadius = actualWidth(w: 32) / 2
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var nickNameLab: UILabel = {
    private lazy var nickNameLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.showSize(fontSize: 11)
        lab.font = UIFont.showSize(fontSize: 11)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var uidLab: UILabel = {
    private lazy var uidLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.white.withAlphaComponent(0.7)
        lab.textColor = UIColor.white.withAlphaComponent(0.7)
        //: lab.font = UIFont.showSize(fontSize: 11)
        lab.font = UIFont.showSize(fontSize: 11)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var followBtn: UIButton = {
    private lazy var followBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.isHidden = true
        btn.isHidden = true
        //: btn.setImage(UIImage.withView(name: "bth_live_follow_pre"), for: .normal)
        btn.setImage(UIImage.withView(name: (String(str_situationValue.prefix(5)) + String(str_barName.prefix(4)) + String(str_deviceNameValue))), for: .normal)
        //: btn.addTarget(self, action: #selector(followButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(showModelClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var miniBtn: UIButton = {
    private lazy var miniBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.withView(name: "btn_live_closed_nor"), for: .normal)
        btn.setImage(UIImage.withView(name: (String(str_elementTitle.prefix(5)) + str_indexName.replacingOccurrences(of: "video", with: "v") + String(str_fatalLabelTitle.suffix(4)) + "sed_nor")), for: .normal)
        //: btn.addTarget(self, action: #selector(miniButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(clickTitle), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    /// 在线人数
    //: private lazy var onlineNumBtn: UIButton = {
    private lazy var onlineNumBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setBackgroundColor(color: UIColor.black.withAlphaComponent(0.25), forState: .normal)
        btn.toPop(color: UIColor.black.withAlphaComponent(0.25), forState: .normal)
        //: btn.addTarget(self, action: #selector(onlineNumBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(filter), for: .touchUpInside)
        //: btn.layer.cornerRadius = actualWidth(w: 32)/2
        btn.layer.cornerRadius = actualWidth(w: 32) / 2
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.showSize(fontSize: 12)
        btn.titleLabel?.font = UIFont.showSize(fontSize: 12)
        //: btn.setTitle("\(onlineNum)", for: .normal)
        btn.setTitle("\(onlineNum)", for: .normal)
        //: return btn
        return btn
        //: }()
    }()

    /// 在线列表
    //: private lazy var onlineListView: TalkingVoiceRoomOnlineListView = {
    private lazy var onlineListView: DigitizerThen = {
        //: let v = TalkingVoiceRoomOnlineListView()
        let v = DigitizerThen()
        //: v.showUserCardBlock = { [weak self] uid in
        v.showUserCardBlock = { [weak self] uid in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.showUserCardBlock?(uid)
            self.showUserCardBlock?(uid)
        }
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingVoiceRoomTopView {
extension LabelTopView {
    /// 关注/取消关注
    /// - Parameters:
    ///   - uid: 用户Id
    ///   - isAttention: true: 取关；false: 关注
    //: @objc func req_followRequest(uid: Int, isAttention: Bool, completion: ((_ succeed: Bool) -> Void)? = nil) {
    @objc func overTouch(uid: Int, isAttention: Bool, completion: ((_ succeed: Bool) -> Void)? = nil) {
        //: let reachability = try? Reachability()
        let reachability = try? Reachability()
        //: if reachability?.connection == .unavailable {
        if reachability?.connection == .unavailable {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            detailKey(showMsg: kLet_lengthFailTitle)
            //: completion?(false)
            completion?(false)
            //: return
            return
        }

        //: var dict = [String: Any]()
        var dict = [String: Any]()
        //: if isAttention {
        if isAttention {
            //: dict["removeAttentionUid"] = uid
            dict[(str_actualText.replacingOccurrences(of: "model", with: "r") + String(str_toRequestData.prefix(6)) + "tentio" + String(str_dataName.suffix(4)))] = uid
            //: } else {
        } else {
            //: dict["attentionUid"] = uid
            dict[(String(str_modelTitle) + str_addDirectionName.lowercased())] = uid
            //: dict["source"] = "2"
            dict[(String(str_fillValue) + String(str_textTitle))] = "2"
        }
        //: HumanHeadRequestTool.req_atationTool(isAttention: !isAttention, params: dict) { succeed, _, _ in
        HumanHeadRequestTool.notPending(isAttention: !isAttention, params: dict) { succeed, _, _ in
            //: completion?(succeed)
            completion?(succeed)
        }
    }
}

// MARK: - 在线人数

//: extension TalkingVoiceRoomTopView {
extension LabelTopView {
    /// 获取在线人数
    //: @objc private func getPartyOnlineNumber() {
    @objc private func comeBy() {
        //: TalkingVoiceRoomReqTool.req_partyOnlineNum(roomId: partyModel.roomId) { succeed, result, _ in
        ViewReqTool.beforeBallroom(roomId: partyModel.roomId) { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            //: let json = JSON(result ?? [String: Any]())
            let json = JSON(result ?? [String: Any]())
            //: self.onlineNum = json["num"].intValue
            self.onlineNum = json[(str_tableName.replacingOccurrences(of: "equal", with: "um"))].intValue
            //: self.refreshOnlineNum()
            self.nameNum()
        }
    }

    /// 开启定时器
    //: private func startTimer() {
    private func timer() {
        //: guard onlineNunTimer == nil else { return }
        guard onlineNunTimer == nil else { return }
        //: onlineNunTimer = Timer.scheduledTimer(timeInterval: 60, target: self, selector: #selector(getPartyOnlineNumber), userInfo: nil, repeats: true)
        onlineNunTimer = Timer.scheduledTimer(timeInterval: 60, target: self, selector: #selector(comeBy), userInfo: nil, repeats: true)
        //: onlineNunTimer?.fire()
        onlineNunTimer?.fire()
    }

    /// 关闭定时器
    //: func destroyTimer() {
    func chase() {
        //: guard onlineNunTimer != nil else { return }
        guard onlineNunTimer != nil else { return }
        //: onlineNunTimer?.invalidate()
        onlineNunTimer?.invalidate()
        //: onlineNunTimer = nil
        onlineNunTimer = nil
    }

    // 在线人数+1
    //: func onlineNumAdd() {
    func tarotCard() {
        //: numlock.lock()
        numlock.lock()
        //: defer { numlock.unlock() }
        defer { numlock.unlock() }
        //: onlineNum += 1
        onlineNum += 1
        //: refreshOnlineNum()
        nameNum()
    }

    // 在线人数-1
    //: func onlineNumReduce() {
    func aboveUser() {
        //: numlock.lock()
        numlock.lock()
        //: defer { numlock.unlock() }
        defer { numlock.unlock() }
        //: onlineNum -= 1
        onlineNum -= 1
        //: refreshOnlineNum()
        nameNum()
    }

    // 刷新在线人数
    //: private func refreshOnlineNum() {
    private func nameNum() {
        //: onlineNum = max(1, onlineNum)
        onlineNum = max(1, onlineNum)
        //: let str = onlineNum > 99 ? "99+" : "\(onlineNum)"
        let str = onlineNum > 99 ? "99+" : "\(onlineNum)"
        //: onlineNumBtn.setTitle(str, for: .normal)
        onlineNumBtn.setTitle(str, for: .normal)
    }
}

// MARK: - Event

//: extension TalkingVoiceRoomTopView {
extension LabelTopView {
    /// 刷新顶部视图
    //: func refreshVoiceRoomTopView() {
    func equalEmptyView() {
        //: partyModel = TalkingVoiceRoomManager.shared().partyModel
        partyModel = DateRangeThen.portion().partyModel
        //: nickNameLab.text = partyModel.streamerInfo.nickname
        nickNameLab.text = partyModel.streamerInfo.nickname
        //: uidLab.text = "UID:\(partyModel.streamerInfo.uid)"
        uidLab.text = (String(str_arrayValue)) + "\(partyModel.streamerInfo.uid)"
        //: let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: actualWidth(w: 16)))]
        let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: actualWidth(w: 16)))]
        //: icon.setUrlImage(urlStr: partyModel.streamerInfo.headPic, placeImg: UIImage.placeHolderImage(sex: partyModel.streamerInfo.sex), options: optionsInfo)
        icon.optionsFinish(urlStr: partyModel.streamerInfo.headPic, placeImg: UIImage.sendPlant(sex: partyModel.streamerInfo.sex), options: optionsInfo)
        // 是否是主播
        //: let isAnchor = (String(partyModel.streamerInfo.uid) == WatercourseThen.share.loginUid)
        let isAnchor = (String(partyModel.streamerInfo.uid) == WatercourseThen.share.loginUid)
        //: if isAnchor {
        if isAnchor {
            //: refreshFollow(isAttention: true)
            tool(isAttention: true)
            //: } else {
        } else {
            //: refreshFollow(isAttention: partyModel.streamerInfo.isAttention)
            tool(isAttention: partyModel.streamerInfo.isAttention)
        }
        // 定时更新在线人数
        //: startTimer()
        timer()
    }

    /// 展示个人资料卡
    //: @objc private func iconBgButtonClick() {
    @objc private func guide() {
        //: showUserCardBlock?(partyModel.streamerInfo.uid)
        showUserCardBlock?(partyModel.streamerInfo.uid)
    }

    /// 关注按钮点击事件
    //: @objc private func followButtonClick() {
    @objc private func showModelClick() {
        //: req_followRequest(uid: partyModel.streamerInfo.uid, isAttention: partyModel.streamerInfo.isAttention) { [weak self] succeed in
        overTouch(uid: partyModel.streamerInfo.uid, isAttention: partyModel.streamerInfo.isAttention) { [weak self] succeed in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: guard succeed else { return }
            guard succeed else { return }
            //: let isAttention = self.partyModel.streamerInfo.isAttention
            let isAttention = self.partyModel.streamerInfo.isAttention
            //: self.partyModel.streamerInfo.isAttention = !isAttention
            self.partyModel.streamerInfo.isAttention = !isAttention
            //: self.refreshFollow(isAttention: self.partyModel.streamerInfo.isAttention)
            self.tool(isAttention: self.partyModel.streamerInfo.isAttention)
        }
    }

    /// 最小化按钮点击事件
    //: @objc private func miniButtonClick() {
    @objc private func clickTitle() {
        //: superview?.endEditing(true)
        superview?.endEditing(true)
        //: let view = TalkingVoiceRoomCloseView()
        let view = IgnitionKeyReactiveCompatible()
        //: view.show()
        view.clickAddShow()
    }

    /// 刷新关注按钮
    //: func refreshFollow(isAttention: Bool) {
    func tool(isAttention: Bool) {
        //: followBtn.isHidden = isAttention
        followBtn.isHidden = isAttention
        //: iconBgBtn.snp.updateConstraints { make in
        iconBgBtn.snp.updateConstraints { make in
            //: make.width.equalTo(followBtn.isHidden ? actualWidth(w: 115) : actualWidth(w: 130))
            make.width.equalTo(followBtn.isHidden ? actualWidth(w: 115) : actualWidth(w: 130))
        }
    }

    /// 在线人数按钮点击事件
    //: @objc private func onlineNumBtnClick() {
    @objc private func filter() {
        //: onlineListView.showView()
        onlineListView.enableView()
    }
}

// MARK: - Layout

//: extension TalkingVoiceRoomTopView {
extension LabelTopView {
    /// 添加视图
    //: private func setupSubviews() {
    private func endFinish() {
        //: backgroundColor = .clear
        backgroundColor = .clear
        //: addSubview(iconBgBtn)
        addSubview(iconBgBtn)
        //: iconBgBtn.addSubview(icon)
        iconBgBtn.addSubview(icon)
        //: iconBgBtn.addSubview(nickNameLab)
        iconBgBtn.addSubview(nickNameLab)
        //: iconBgBtn.addSubview(uidLab)
        iconBgBtn.addSubview(uidLab)
        //: iconBgBtn.addSubview(followBtn)
        iconBgBtn.addSubview(followBtn)
        //: addSubview(miniBtn)
        addSubview(miniBtn)
        //: addSubview(onlineNumBtn)
        addSubview(onlineNumBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func afterTitleView() {
        //: frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: StatusBarHeight+actualWidth(w: 43))
        frame = CGRect(x: 0, y: 0, width: kLet_scaleName, height: kLet_environmentContent + actualWidth(w: 43))

        //: iconBgBtn.snp.makeConstraints { make in
        iconBgBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight+actualWidth(w: 4))
            make.top.equalTo(kLet_environmentContent + actualWidth(w: 4))
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.height.equalTo(actualWidth(w: 32))
            make.height.equalTo(actualWidth(w: 32))
            //: make.width.equalTo(actualWidth(w: 115))
            make.width.equalTo(actualWidth(w: 115))
        }
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.leading.top.equalToSuperview()
            make.leading.top.equalToSuperview()
            //: make.width.height.equalTo(iconBgBtn.snp.height)
            make.width.height.equalTo(iconBgBtn.snp.height)
        }
        //: nickNameLab.snp.makeConstraints { make in
        nickNameLab.snp.makeConstraints { make in
            //: make.top.equalTo(actualWidth(w: 2))
            make.top.equalTo(actualWidth(w: 2))
            //: make.leading.equalTo(icon.snp.trailing).offset(actualWidth(w: 7))
            make.leading.equalTo(icon.snp.trailing).offset(actualWidth(w: 7))
            //: make.width.equalTo(actualWidth(w: 65))
            make.width.equalTo(actualWidth(w: 65))
        }
        //: uidLab.snp.makeConstraints { make in
        uidLab.snp.makeConstraints { make in
            //: make.bottom.equalTo(-actualWidth(w: 2))
            make.bottom.equalTo(-actualWidth(w: 2))
            //: make.leading.width.equalTo(nickNameLab)
            make.leading.width.equalTo(nickNameLab)
        }
        //: followBtn.snp.makeConstraints { make in
        followBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-actualWidth(w: 6))
            make.trailing.equalTo(-actualWidth(w: 6))
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.width.height.equalTo(actualWidth(w: 20))
            make.width.height.equalTo(actualWidth(w: 20))
        }
        //: miniBtn.snp.makeConstraints { make in
        miniBtn.snp.makeConstraints { make in
            //: make.centerY.equalTo(iconBgBtn)
            make.centerY.equalTo(iconBgBtn)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.width.height.equalTo(actualWidth(w: 32))
            make.width.height.equalTo(actualWidth(w: 32))
        }
        //: onlineNumBtn.snp.makeConstraints { make in
        onlineNumBtn.snp.makeConstraints { make in
            //: make.centerY.equalTo(miniBtn)
            make.centerY.equalTo(miniBtn)
            //: make.trailing.equalTo(miniBtn.snp.leading).offset(-6)
            make.trailing.equalTo(miniBtn.snp.leading).offset(-6)
            //: make.width.height.equalTo(miniBtn)
            make.width.height.equalTo(miniBtn)
        }
    }
}
