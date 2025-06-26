
//: Declare String Begin

/*: "New friends" :*/
fileprivate let str_lockName:String = "Nein player"
fileprivate let str_helpContent:String = "else raw color for letw fri"

/*: "icon_yidu_pre" :*/
fileprivate let str_firstValue:[Character] = ["i","c","o","n","_","y","i"]
fileprivate let str_modelValue:String = "extension label end first selfdu_pre"

/*: "You've got no message yet." :*/
fileprivate let str_crushTitle:String = "You\'ve"
fileprivate let str_foundationValue:String = "no meson main path let"
fileprivate let str_sharedValue:String = "color height viewyet."

/*: "icon_kong_kong_default" :*/
fileprivate let str_actionData:[Character] = ["i","c","o","n","_","k","o","n","g"]
fileprivate let str_originAddName:String = "_kong_to action"

/*: "Cancel" :*/
fileprivate let str_locationData:[Character] = ["C","a","n","c","e","l"]

/*: "OK" :*/
fileprivate let str_onColorTitle:String = "ok"

/*: "uid" :*/
fileprivate let str_addUserTitle:[UInt8] = [0x64,0x69,0x75]

/*: "Do you want to mark all messages as read?" :*/
fileprivate let str_selectValue:[UInt8] = [0x45,0x70,0x21,0x7a,0x70,0x76,0x21,0x78,0x62,0x6f,0x75,0x21,0x75,0x70,0x21,0x6e,0x62,0x73,0x6c,0x21,0x62,0x6d,0x6d,0x21,0x6e,0x66,0x74,0x74,0x62,0x68,0x66,0x74,0x21,0x62,0x74,0x21,0x73,0x66,0x62,0x65,0x40]

fileprivate func scoopUp(frame num: UInt8) -> UInt8 {
    let value = Int(num) - 1
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "MoreMessages一键已读失败：code: :*/
fileprivate let str_cornerName:String = "MoreMsuper let self self player"
fileprivate let str_toDomainName:String = "es一键已model index"
fileprivate let str_normalFillViewValue:String = "tool multiple first manager modelode:"

/*: , desc: :*/
fileprivate let str_progressTitle:String = "phone "
fileprivate let str_sizeData:String = "desc:make info equal add"

/*: "btn_message_report_nor" :*/
fileprivate let str_taskData:String = "btn_view icon environment"
fileprivate let str_customResultRandomText:String = "size mini true icon tempage_"
fileprivate let str_sendContent:String = "omutual"

/*: "#FF935D" :*/
fileprivate let str_showData:String = "list environment view account view#FF935D"

/*: "btn_message_block_nor" :*/
fileprivate let str_cookieMomentName:String = "btn_mtable type"
fileprivate let str_controlMatchClearData:String = "ge_blsize collection extension"

/*: "#C179F9" :*/
fileprivate let str_ofValue:[Character] = ["#","C","1","7","9","F","9"]

/*: "btn_message_delete_nor" :*/
fileprivate let str_containerLabAddData:[Character] = ["b","t","n","_","m","e","s","s","a","g","e","_","d","e","l","e","t"]
fileprivate let str_styleViewRowValue:String = "e_norby now for play image"

/*: "#FF506D" :*/
fileprivate let str_viewValue:String = "add"
fileprivate let str_effectContentName:String = "FF506actual"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ArrayAdViewDelegate.swift
//  AbroadTalking
//
//  Created by young on 2023/9/27.
//

//: import UIKit
import UIKit

//: class TalkingMoreMessagesListViewController: TalkingBaseViewController {
class ArrayAdViewDelegate: MusicViewController {
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "New friends".localized
        self.title = (String(str_lockName.prefix(2)) + String(str_helpContent.suffix(5)) + "ends").localized
        //: let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 24, height: 24))
        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 24, height: 24))
        //: btn.setImage(UIImage.withView(name: "icon_yidu_pre"), for: .normal)
        btn.setImage(UIImage.withView(name: (String(str_firstValue) + String(str_modelValue.suffix(6)))), for: .normal)
        //: btn.addTarget(self, action: #selector(clearBadgeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(towardTargetDismiss), for: .touchUpInside)
        //: let item = UIBarButtonItem(customView: btn)
        let item = UIBarButtonItem(customView: btn)
        //: self.navigationItem.rightBarButtonItem = item
        self.navigationItem.rightBarButtonItem = item

        //: TalkingV2Listener.shared.func__addDelegate(self)
        TalkingV2Listener.shared.modelDelegate(self)
        //: func__installNotificationObservers()
        getWithoutGivenName()
        //: createUI()
        transmutationUi()
        //: self.manager.req_moreMsgInitData()
        self.manager.photoData()
        //: refreshTableView()
        giftView()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy load

    //: private lazy var tableView: UITableView = {
    private lazy var tableView: UITableView = {
        //: let tableView = UITableView.init(frame: .zero, style: .grouped)
        let tableView = UITableView(frame: .zero, style: .grouped)
        //: tableView.delegate = self
        tableView.delegate = self
        //: tableView.dataSource = self
        tableView.dataSource = self
        //: tableView.backgroundColor = .clear
        tableView.backgroundColor = .clear
        //: tableView.separatorStyle = .none
        tableView.separatorStyle = .none
        //: tableView.register(TalkingChatListTableCell.self, forCellReuseIdentifier: TalkingChatListTableCell.className())
        tableView.register(ColorScaleView.self, forCellReuseIdentifier: ColorScaleView.className())
        //: return tableView
        return tableView
        //: }()
    }()

    //: private lazy var emptyView: EmptyView = {
    private lazy var emptyView: EmptyView = {
        //: var style = EmptyStyle()
        var style = ImageEmptyStyle()
        //: style.TipsTitle = "You've got no message yet.".localized
        style.TipsTitle = (str_crushTitle + " got " + String(str_foundationValue.prefix(6)) + "sage " + String(str_sharedValue.suffix(4))).localized
        //: style.TipsIcon = "icon_kong_kong_default"
        style.TipsIcon = (String(str_actionData) + String(str_originAddName.prefix(6)) + "default")
        //: let emptyView = EmptyView.init(frame: .zero, style: style)
        let emptyView = EmptyView(frame: .zero, style: style)
        //: emptyView.isHidden = true
        emptyView.isHidden = true
        //: return emptyView
        return emptyView
        //: }()
    }()

    //: private lazy var manager: TalkingChatListManager = {
    private lazy var manager: AtListManager = //: return AtListManager()
        .init()
    //: }()
}

// MARK: - 刷新

//: extension TalkingMoreMessagesListViewController {
extension ArrayAdViewDelegate {
    /// 刷新表格
    //: func refreshTableView() {
    func giftView() {
        //: guard self.manager.moreMsgArr.count != 0 else {
        guard self.manager.moreMsgArr.count != 0 else {
            //: self.tableView.isHidden = true
            self.tableView.isHidden = true
            //: self.emptyView.isHidden = false
            self.emptyView.isHidden = false
            //: self.reloadData()
            self.dataDoing()
            //: return
            return
        }

        //: self.tableView.isHidden = false
        self.tableView.isHidden = false
        //: self.emptyView.isHidden = true
        self.emptyView.isHidden = true
        //: self.reloadData()
        self.dataDoing()
    }

    /// 刷新
    //: func reloadData() {
    func dataDoing() {
        //: self.tableView.reloadData()
        self.tableView.reloadData()
    }
}

// MARK: - Event

//: extension TalkingMoreMessagesListViewController {
extension ArrayAdViewDelegate {
    // 删除会话cell
    //: func deleteChatListCell(conversationModel: TalkingConversationModel) {
    func behindClick(conversationModel: WithConversationModel) {
        //: if !TalkingV2Listener.shared.func__checkCanOperateList() { return }
        if !TalkingV2Listener.shared.agendum() { return }

        //: AbTalkingPrivateChatAnimatTool.shared.removeConversionAnimat(targetID: conversationModel.targetId)
        InsularThen.shared.markView(targetID: conversationModel.targetId)
        //: TalkingV2Listener.shared.func__removeConversation(targetId: conversationModel.targetId, dataType: .moreList)
        TalkingV2Listener.shared.materialType(targetId: conversationModel.targetId, dataType: .moreList)
        //: self.manager.req_removeConversationModel(conversationModel: conversationModel)
        self.manager.sharedBy(conversationModel: conversationModel)
        //: self.tableView.reloadData()
        self.tableView.reloadData()
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.25) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.25) {
            // 刷新表格，更新红点
            //: self.refreshTableView()
            self.giftView()
        }
    }

    // 拉黑会话
    //: func blockChatListCell(conversationModel: TalkingConversationModel) {
    func resignMake(conversationModel: WithConversationModel) {
        // 拉黑/解除拉黑
        //: TalkingAlertShow.alert(title: nil,
        AlongThen.harvest(title: nil,
                                 //: message: kMessage_blocking,
                                 message: kLet_seatName,
                                 //: leftBtnTitle: "Cancel".localized,
                                 leftBtnTitle: (String(str_locationData)).localized,
                                 //: rightBtnTitle: "OK".localized) {
                                 rightBtnTitle: "OK".localized)
        {
            //: TalkingAlertShow.hideAlert()
            AlongThen.teachingMethod()
            //: } rightBlock: {
        } rightBlock: {
            //: TalkingAlertShow.hideAlert()
            AlongThen.teachingMethod()

            //: TalkingUserRequestManager.func__pullBlackWithUserId(uid: conversationModel.userID, isBlack: true) { succeed, result, errorModel in
            DirectorReactiveCompatible.funcForCompletion(uid: conversationModel.userID, isBlack: true) { succeed, _, _ in
                //: guard succeed == true else {
                guard succeed == true else {
                    //: return
                    return
                }
                // 拉黑成功，从列表中移除
                //: self.deleteChatListCell(conversationModel: conversationModel)
                self.behindClick(conversationModel: conversationModel)
                //: NotificationCenter.default.post(name: LIVE_BLOCK_USER_NOTIFICATION,
                NotificationCenter.default.post(name: kLet_keyFormalData,
                                                //: object: nil,
                                                object: nil,
                                                //: userInfo: ["uid": conversationModel.userID])
                                                userInfo: [String(bytes: str_addUserTitle.reversed(), encoding: .utf8)!: conversationModel.userID])
            }
        }
    }

    // 举报会话
    //: func reportChatListCell(conversationModel: TalkingConversationModel) {
    func storageModel(conversationModel: WithConversationModel) {
        //: let reportView = TalkingReportAlertView.init(frame: UIScreen.main.bounds, type: .reportUserType, rId: conversationModel.targetId)
        let reportView = CurrentDataSource(frame: UIScreen.main.bounds, type: .reportUserType, rId: conversationModel.targetId)
        //: reportView.showReportViewIn(view: nil)
        reportView.tip(view: nil)
    }

    /// 清除红点角标
    //: @objc private func clearBadgeButtonClick() {
    @objc private func towardTargetDismiss() {
        //: let config = ShowAlertConfig()
        let config = ReloadAlertConfig()
        //: config.alignment = .center
        config.alignment = .center

        //: TalkingAlertShow.customAlert(message: "Do you want to mark all messages as read?".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, leftBlock: {
        AlongThen.jumpTime(message: String(bytes: str_selectValue.map{scoopUp(frame: $0)}, encoding: .utf8)!.localized, leftBtnTitle: (String(str_locationData)).localized, rightBtnTitle: "OK".localized, leftBlock: {
            //: TalkingAlertShow.hideAlert()
            AlongThen.teachingMethod()

            //: }, rightBlock: {
        }, rightBlock: {
            //: guard self.manager.req_moreMsgGetUnredConversationCount() > 0 else { return }
            guard self.manager.belowTable() > 0 else { return }
            //: self.manager.moreMsgArr.forEach { model in
            self.manager.moreMsgArr.forEach { model in
                //: guard model.unreadCount > 0 else { return }
                guard model.unreadCount > 0 else { return }
                //: V2TIMManager.sharedInstance().markC2CMessage(asRead: model.userID) {
                V2TIMManager.sharedInstance().markC2CMessage(asRead: model.userID) {
                    //: } fail: { code, desc in
                } fail: { code, desc in
                    //: UploadLogTool.writeLog(msg: "MoreMessages一键已读失败：code:\(code), desc:\(String(describing: desc))")
                    EnableReactiveCompatible.nameBy(msg: (String(str_cornerName.prefix(5)) + "essag" + String(str_toDomainName.prefix(5)) + "\u{8bfb}失败：c" + String(str_normalFillViewValue.suffix(4))) + "\(code)" + (str_progressTitle.replacingOccurrences(of: "phone", with: ",") + String(str_sizeData.prefix(5))) + "\(String(describing: desc))")
                }
            }

            //: }, config: config)
        }, config: config)
    }
}

// MARK: - 通知

//: extension TalkingMoreMessagesListViewController {
extension ArrayAdViewDelegate {
    //: func func__installNotificationObservers() {
    func getWithoutGivenName() {
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__getUserInfoDataFinish(notification:)),
                                               selector: #selector(visible(notification:)),
                                               //: name: USER_INFO_MSG_LIST_NOTIFICATION,
                                               name: kLet_objectViewValue,
                                               //: object: nil)
                                               object: nil)

        // 更新消息列表用户在线状态
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__updateUserOnlineStatus(notif:)),
                                               selector: #selector(anTalk(notif:)),
                                               //: name: MSGLIST_UPDATE_ONLINESTATUS_NOTIFICATION,
                                               name: kLet_formalText,
                                               //: object: nil)
                                               object: nil)
    }

    //: @objc func func__getUserInfoDataFinish(notification: NSNotification) {
    @objc func visible(notification: NSNotification) {
        //: let dic = notification.object as? Dictionary<String, Any>
        let dic = notification.object as? [String: Any]
        //: for userID in dic!.keys {
        for userID in dic!.keys {
            //: let aInfoWrap: MixedThen = dic![userID] as! MixedThen
            let aInfoWrap: MixedThen = dic![userID] as! MixedThen
            //: let aModel: TalkingConversationModel? = TalkingV2Listener.shared.func__getCacheConversationModel(targetId: userID)
            let aModel: WithConversationModel? = TalkingV2Listener.shared.viewApp(targetId: userID)
            //: if aModel != nil && aModel!.gj_userInfo != aInfoWrap {
            if aModel != nil, aModel!.gj_userInfo != aInfoWrap {
                //: aModel!.gj_userInfo = aInfoWrap
                aModel!.gj_userInfo = aInfoWrap
            }
        }
        //: setHaveLocalInmate()
        seat()

        //: self.reloadData()
        self.dataDoing()
    }

    /// 音视频新通话新建立的会话，本地缓存有时，更新会话标识
    //: func setHaveLocalInmate() {
    func seat() {
        //: let intimate: Dictionary<String, Any> = UserDefaults.standard.object(forKey: isConversationIntimateCacheKey) as? Dictionary<String, Any> ?? Dictionary.init()
        let intimate: [String: Any] = UserDefaults.standard.object(forKey: kLet_numberContent) as? [String: Any] ?? Dictionary()
        //: for userID in intimate.keys {
        for userID in intimate.keys {
            //: let aModel: TalkingConversationModel? = TalkingV2Listener.shared.func__getCacheConversationModel(targetId: userID)
            let aModel: WithConversationModel? = TalkingV2Listener.shared.viewApp(targetId: userID)
            //: if aModel != nil {
            if aModel != nil {
                //: aModel!.gj_userInfo?.isHaveSession = true
                aModel!.gj_userInfo?.isHaveSession = true
            }
        }
        //: UserDefaults.standard.set(Dictionary<String, Any>.init(), forKey: isConversationIntimateCacheKey)
        UserDefaults.standard.set(Dictionary<String, Any>.init(), forKey: kLet_numberContent)
    }

    /// 更新消息列表用户在线状态
    //: @objc private func func__updateUserOnlineStatus(notif: Notification) {
    @objc private func anTalk(notif: Notification) {
        //: guard let userInfo = notif.userInfo else { return }
        guard let userInfo = notif.userInfo else { return }
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: if self.manager.update_userOnlineStatus(userInfo: userInfo as! [String: Any]) == true {
            if self.manager.allOf(userInfo: userInfo as! [String: Any]) == true {
                //: self.tableView.reloadData()
                self.tableView.reloadData()
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingMoreMessagesListViewController: UITableViewDelegate, UITableViewDataSource {
extension ArrayAdViewDelegate: UITableViewDelegate, UITableViewDataSource {
    /// - UITableViewDataSource
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return self.manager.moreMsgArr.count
        return self.manager.moreMsgArr.count
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingChatListTableCell.className(), for: indexPath) as! TalkingChatListTableCell
        let cell = tableView.dequeueReusableCell(withIdentifier: ColorScaleView.className(), for: indexPath) as! ColorScaleView
        //: var model = self.manager.req_moreMsgConversationModel(indexPath: indexPath)
        var model = self.manager.insideInformation(indexPath: indexPath)
        //: model = self.manager.getUserInfoFromCache(model: model)
        model = self.manager.transportation(model: model)
        //: if !(model?.gj_userInfo?.tpAuth ?? false) {
        if !(model?.gj_userInfo?.tpAuth ?? false) {
            //: model?.gj_userInfo?.tpAuth = model?.ismoreAPAuto ?? false
            model?.gj_userInfo?.tpAuth = model?.ismoreAPAuto ?? false
        }
        //: cell.refreshCell(model: model)
        cell.transitionModel(model: model)

        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
    func tableView(_: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        //: guard let model = self.manager.req_moreMsgConversationModel(indexPath: indexPath) else {
        guard let model = self.manager.insideInformation(indexPath: indexPath) else {
            //: return false
            return false
        }
        //: guard model.chatType == .private else { return false }
        guard model.chatType == .private else { return false }

        //: return true
        return true
    }

    //: @available(iOS 11.0, *)
    @available(iOS 11.0, *)
    //: func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
    func tableView(_: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        //: guard let model = self.manager.req_moreMsgConversationModel(indexPath: indexPath) else { return nil }
        guard let model = self.manager.insideInformation(indexPath: indexPath) else { return nil }

        // 举报
        //: let reportBtn = UIContextualAction(style: .normal, title: nil) { action, view, completionHandler in
        let reportBtn = UIContextualAction(style: .normal, title: nil) { _, _, completionHandler in
            //: self.reportChatListCell(conversationModel: model)
            self.storageModel(conversationModel: model)
            //: completionHandler(false)
            completionHandler(false)
        }
        //: if let reportBtnTrashcan = UIImage.withView(name: "btn_message_report_nor").cgImage {
        if let reportBtnTrashcan = UIImage.withView(name: (String(str_taskData.prefix(4)) + "mess" + String(str_customResultRandomText.suffix(4)) + "report_n" + str_sendContent.replacingOccurrences(of: "mutual", with: "r"))).cgImage {
            //: reportBtn.image = ImageWithoutRender(cgImage: reportBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
            reportBtn.image = WithoutImage(cgImage: reportBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
        }
        //: reportBtn.backgroundColor = UIColor(hex: "#FF935D")
        reportBtn.backgroundColor = UIColor(hex: (String(str_showData.suffix(7))))

        // 拉黑
        //: let blockBtn = UIContextualAction(style: .normal, title: nil) { action, view, completionHandler in
        let blockBtn = UIContextualAction(style: .normal, title: nil) { _, _, completionHandler in
            //: self.blockChatListCell(conversationModel: model)
            self.resignMake(conversationModel: model)
            //: completionHandler(false)
            completionHandler(false)
        }
        //: if let blockBtnTrashcan = UIImage.withView(name: "btn_message_block_nor").cgImage {
        if let blockBtnTrashcan = UIImage.withView(name: (String(str_cookieMomentName.prefix(5)) + "essa" + String(str_controlMatchClearData.prefix(5)) + "ock_nor")).cgImage {
            //: blockBtn.image = ImageWithoutRender(cgImage: blockBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
            blockBtn.image = WithoutImage(cgImage: blockBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
        }
        //: blockBtn.backgroundColor = UIColor(hex: "#C179F9")
        blockBtn.backgroundColor = UIColor(hex: (String(str_ofValue)))

        // 删除
        //: let deleteBtn = UIContextualAction(style: .normal, title: nil) { action, view, completionHandler in
        let deleteBtn = UIContextualAction(style: .normal, title: nil) { _, _, completionHandler in
            //: self.deleteChatListCell(conversationModel: model)
            self.behindClick(conversationModel: model)
            //: completionHandler(false)
            completionHandler(false)
        }
        //: if let deleteBtnTrashcan = UIImage.withView(name: "btn_message_delete_nor").cgImage {
        if let deleteBtnTrashcan = UIImage.withView(name: (String(str_containerLabAddData) + String(str_styleViewRowValue.prefix(5)))).cgImage {
            //: deleteBtn.image = ImageWithoutRender(cgImage: deleteBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
            deleteBtn.image = WithoutImage(cgImage: deleteBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
        }
        //: deleteBtn.backgroundColor = UIColor(hex: "#FF506D")
        deleteBtn.backgroundColor = UIColor(hex: (str_viewValue.replacingOccurrences(of: "add", with: "#") + str_effectContentName.replacingOccurrences(of: "actual", with: "D")))

        //: let actions = [deleteBtn, blockBtn, reportBtn]
        let actions = [deleteBtn, blockBtn, reportBtn]
        //: let config = UISwipeActionsConfiguration(actions: actions)
        let config = UISwipeActionsConfiguration(actions: actions)
        //: config.performsFirstActionWithFullSwipe = false
        config.performsFirstActionWithFullSwipe = false
        //: return config
        return config
    }

    /// - UITableViewDelegate
    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 76.0
        return 76.0
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection _: Int) -> CGFloat {
        //: return 0.01
        return 0.01
    }

    //: func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForFooterInSection _: Int) -> CGFloat {
        //: return 0.01
        return 0.01
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection _: Int) -> UIView? {
        //: return UIView()
        return UIView()
    }

    //: func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForFooterInSection _: Int) -> UIView? {
        //: return UIView()
        return UIView()
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: tableView.deselectRow(at: indexPath, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
        //: guard let model = self.manager.req_moreMsgConversationModel(indexPath: indexPath) else {
        guard let model = self.manager.insideInformation(indexPath: indexPath) else {
            //: return
            return
        }
        // 入口埋点
        //: uploadRecord.uploadRecordEvent(eventID: ClickUserChatNoP, toUid: model.targetId)
        kLet_depthIconValue.mightHaveBeenStubZapErrorUploadTo(eventID: kLet_deviceGiftData, toUid: model.targetId)
        //: IndoorsPushManager.share.func__pushToPriveteChatVC(chatID: model.targetId) { vc in
        IndoorsPushManager.share.executeMention(chatID: model.targetId) { vc in
            //: if model.gj_userInfo != nil {
            if model.gj_userInfo != nil {
                //: vc.isHaveSession = model.gj_userInfo!.isHaveSession
                vc.isHaveSession = model.gj_userInfo!.isHaveSession
            }
        }
    }
}

// MARK: - TalkingTXIMDelegate

//: extension TalkingMoreMessagesListViewController: IMManagerDelegate {
extension ArrayAdViewDelegate: NameManagerDelegate {
    //: func onRefreshConversationList(data: [TalkingConversationModel]) {
    func coriolisEffect(data _: [WithConversationModel]) {
        //: self.manager.req_moreMsgInitData()
        self.manager.photoData()
        //: refreshTableView()
        giftView()
    }
}

// MARK: - Layout

//: extension TalkingMoreMessagesListViewController {
extension ArrayAdViewDelegate {
    /// UI
    //: private func createUI() {
    private func transmutationUi() {
        //: view.addSubview(tableView)
        view.addSubview(tableView)
        //: tableView.snp.makeConstraints { make in
        tableView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: self.view.addSubview(emptyView)
        self.view.addSubview(emptyView)
        //: emptyView.snp.makeConstraints { make in
        emptyView.snp.makeConstraints { make in
            //: make.edges.equalTo(tableView)
            make.edges.equalTo(tableView)
        }
        //: emptyView.emptyBlock = { [weak self] in
        emptyView.emptyBlock = { [weak self] in
            //: self?.reloadData()
            self?.dataDoing()
        }
    }
}
