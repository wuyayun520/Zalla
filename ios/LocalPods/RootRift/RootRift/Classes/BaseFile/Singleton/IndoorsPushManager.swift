
//: Declare String Begin

/*: "fee" :*/
fileprivate let str_modeKeyNameData:String = "withe"

/*: "VIPFee" :*/
fileprivate let str_quoteUpgradeContent:String = "VIPFepath if content self path"
fileprivate let str_wantTitle:String = "app"

/*: "chattingNum" :*/
fileprivate let str_endingData:String = "chrestorett"
fileprivate let str_frameDoingData:[Character] = ["i","n","g","N","u","m"]

/*: "You're already in her live room" :*/
fileprivate let str_viewVideoContent:[UInt8] = [0xb9,0xcf,0xd5,0x87,0xd2,0xc5,0x80,0xc1,0xcc,0xd2,0xc5,0xc1,0xc4,0xd9,0x80,0xc9,0xce,0x80,0xc8,0xc5,0xd2,0x80,0xcc,0xc9,0xd6,0xc5,0x80,0xd2,0xcf,0xcf,0xcd]

fileprivate func messageTool(party num: UInt8) -> UInt8 {
    let value = Int(num) - 96
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "toUid" :*/
fileprivate let str_makeDataStatusTitle:[UInt8] = [0x64,0x69,0x55,0x6f,0x74]

/*: "momentId" :*/
fileprivate let str_atText:[UInt8] = [0x51,0x53,0x51,0x59,0x52,0x48,0x75,0x58]

private func layerInput(location num: UInt8) -> UInt8 {
    return num ^ 60
}

/*: "extra" :*/
fileprivate let str_iconContent:[UInt8] = [0xe,0x13,0x1f,0x19,0xa]

private func militaryInstallation(touch num: UInt8) -> UInt8 {
    return num ^ 107
}

/*: "uid" :*/
fileprivate let str_managerTitle:[UInt8] = [0x7,0x1b,0x16]

/*: "onlineStatus" :*/
fileprivate let str_tabData:[UInt8] = [0x3e,0x3f,0x3d,0x38,0x3f,0x34,0x2,0x25,0x30,0x25,0x24,0x22]

private func addTo(version num: UInt8) -> UInt8 {
    return num ^ 81
}

/*: "isNewUser" :*/
fileprivate let str_placeValue:[UInt8] = [0x42,0x58,0x65,0x4e,0x5c,0x7e,0x58,0x4e,0x59]

/*: "userStatus" :*/
fileprivate let str_mName:[UInt8] = [0xe4,0xe2,0xf4,0xe3,0xc2,0xe5,0xf0,0xe5,0xe4,0xe2]

/*: "Account is restricted！" :*/
fileprivate let str_equalName:String = "extension case nameAccount"
fileprivate let str_sizeValue:String = " is rhead cell"
fileprivate let str_makeValue:String = "ted！export model return"

/*: "Failed to enter the chat room. Please try again later" :*/
fileprivate let str_currentData:[UInt8] = [0xde,0xf9,0xf1,0xf4,0xfd,0xfc,0xb8,0xec,0xf7,0xb8,0xfd,0xf6,0xec,0xfd,0xea,0xb8,0xec,0xf0,0xfd,0xb8,0xfb,0xf0,0xf9,0xec,0xb8,0xea,0xf7,0xf7,0xf5,0xb6,0xb8,0xc8,0xf4,0xfd,0xf9,0xeb,0xfd,0xb8,0xec,0xea,0xe1,0xb8,0xf9,0xff,0xf9,0xf1,0xf6,0xb8,0xf4,0xf9,0xec,0xfd,0xea]

/*: "url" :*/
fileprivate let str_needData:String = "urmodel"

/*: "userDetail" :*/
fileprivate let str_mainMarginData:[Character] = ["u","s","e","r","D","e","t","a","i"]
fileprivate let str_imageEnterLimitTitle:String = "card"

/*: "&type=7" :*/
fileprivate let str_nameValue:[Character] = ["&","t","y","p","e","=","7"]

/*: "amount" :*/
fileprivate let str_errorBackgroundData:[UInt8] = [0x74,0x6e,0x75,0x6f,0x6d,0x61]

/*: "transparency" :*/
fileprivate let str_indexContent:[Character] = ["t","r","a","n","s","p","a"]
fileprivate let str_backData:String = "rencwhite"

/*: "`%^{}" :*/
fileprivate let str_pathValue:[Character] = ["`","%","^","{","}"]

/*: "[]|\\<>" :*/
fileprivate let str_appearanceYearData:String = "[]|\\<>"

/*: "version= :*/
fileprivate let str_leadingContent:[Character] = ["v","e","r","s","i"]
fileprivate let str_mainFatalData:String = "table path shared let wrapon="

/*: &packageId= :*/
fileprivate let str_iconLiveText:[Character] = ["&","p","a","c","k","a","g","e","I","d","="]

/*: &bundleId= :*/
fileprivate let str_bagName:[Character] = ["&","b","u","n","d","l","e","I"]
fileprivate let str_removeValue:String = "d=to cell"

/*: & :*/
fileprivate let str_textData:String = "&"

/*: ? :*/
fileprivate let str_stackValue:[Character] = ["?"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  IndoorsPushManager.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/31.
//

//: import UIKit
import UIKit

//: public class IndoorsPushManager: NSObject {
public class IndoorsPushManager: NSObject {
    //: @objc static public let share = IndoorsPushManager()
    @objc public static let share = IndoorsPushManager()
    //: private override init() {}
    override private init() {}
}

//: extension IndoorsPushManager {
extension IndoorsPushManager {
    // MARK: - 随机视频入口

    //: func func__pushToRandomVideoVC(isBeginRand: Bool) {
    func rand(isBeginRand: Bool) {
        //: uploadRecord.uploadRecordEvent(eventID: ClickInRandomvideo)
        kLet_depthIconValue.mightHaveBeenStubZapErrorUploadTo(eventID: kLet_exploreName)
        //: guard TalkingSocketManager.shared.isTalking == false else {
        guard NameSocketManager.shared.isTalking == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.detailKey(showMsg: kLet_networkViewTitle)
            //: return
            return
        }
        //: TalkingPermissionTool.checkCameraAndMicrophone { isOpen in
        ColorPermissionTool.behindQuantityMicrophone { isOpen in
            //: guard isOpen == true else { return }
            guard isOpen == true else { return }
            //: TalkingQuickVideoManager.req_videoMatchCheck() { succeed, result, errorModel in
            HumanHeadReactiveCompatible.builder { succeed, result, _ in
                //: guard succeed else { return }
                guard succeed else { return }
                //: let json = JSON(result ?? [String: Any]())
                let json = JSON(result ?? [String: Any]())
                //: let vc = TalkingRandomVideoViewController()
                let vc = ReadFactoryReactiveCompatible()
                //: vc.fee = json["fee"].intValue
                vc.fee = json[(str_modeKeyNameData.replacingOccurrences(of: "with", with: "fe"))].intValue
                //: vc.vipFee = json["VIPFee"].intValue
                vc.vipFee = json[(String(str_quoteUpgradeContent.prefix(5)) + str_wantTitle.replacingOccurrences(of: "app", with: "e"))].intValue
                //: vc.chattingNum = json["chattingNum"].intValue
                vc.chattingNum = json[(str_endingData.replacingOccurrences(of: "restore", with: "a") + String(str_frameDoingData))].intValue
                //: vc.isBeginRand = isBeginRand
                vc.isBeginRand = isBeginRand
                //: vc.isFirstRandow = isBeginRand
                vc.isFirstRandow = isBeginRand
                //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
                self.toController()?.navigationController?.pushViewController(vc, animated: true)
            }
        }
    }

    // MARK: - 完善资料

    //: func func__pushToFillUserInfoVC() {
    func dataDirect() {
        //: WatercourseThen.share.userFillInfoMode = UserFillInfoModel.init()
        WatercourseThen.share.userFillInfoMode = ResultInfoModel()
        //: let VC = TalkingLoginGenderVC()
        let VC = ImageGenderVc()
        //: let currentVC = func__getCurrentActivityVC()
        let currentVC = queryEqual()
        //: if currentVC != nil {
        if currentVC != nil {
            //: currentVC?.navigationController?.pushViewController(VC, animated: true)
            currentVC?.navigationController?.pushViewController(VC, animated: true)
        }
    }

    // MARK: - 绑定邮箱

    /// - Parameters:
    ///   - type: 类型
    ///   - isShowBack: 是否显示返回按钮
    //: func func__pushToLockUserEmailVC(isShowBack: Bool = true) {
    func modelProgress(isShowBack: Bool = true) {
        //: let currentVC = func__getCurrentActivityVC()
        let currentVC = queryEqual()
        //: if currentVC != nil {
        if currentVC != nil {
            //: if currentVC!.isKind(of: TalkingLoginBindEmailVC.self) ||
            if currentVC!.isKind(of: CastThen.self) ||
                //: currentVC!.isKind(of: TalkingLoginMainViewController.self) {
                currentVC!.isKind(of: ControllerThen.self)
            {
                //: return
                return
            }
            //: let vc = TalkingLoginBindEmailVC()
            let vc = CastThen()
            //: vc.isBack = isShowBack
            vc.isBack = isShowBack
            //: currentVC?.navigationController?.pushViewController(vc, animated: true)
            currentVC?.navigationController?.pushViewController(vc, animated: true)
        }
    }

    // MARK: - 跳转个人资料

    //: func func__pushToUserDetailVC(uid: String?) {
    func digitiserView(uid: String?) {
        //: guard let currentVC = self.currentViewController() else { return }
        guard let currentVC = self.toController() else { return }
        //: if let liveVC = currentVC as? TalkingLiveBeautifyViewController, TalkingLiveManager.shared().isLive {
        if let liveVC = currentVC as? NoseViewController, ListThen.deleteItem().isLive {
            // 从主播页跳转个人资料时，切小屏模式
            //: liveVC.topView.miniButtonClick()
            liveVC.topView.humans()

            //: } else if currentVC.isKind(of: TalkingVoiceRoomViewController.self), TalkingVoiceRoomManager.shared().isParty {
        } else if currentVC.isKind(of: VoiceReactiveCompatible.self), DateRangeThen.portion().isParty {
            //: TalkingVoiceRoomManager.shared().voiceRoom_mini()
            DateRangeThen.portion().toMini()

            //: } else if let profileVC = currentVC as? TalkingUserDetailViewController {
        } else if let profileVC = currentVC as? SubUnknownRecognizerDelegate {
            // 同一用户的资料页已经在顶部，只刷新
            //: if profileVC.uid == uid {
            if profileVC.uid == uid {
                //: profileVC.requestAllData()
                profileVC.atVisible()
                //: return
                return
            }
        }

        //: let vc = TalkingUserDetailViewController(tempUid: uid)
        let vc = SubUnknownRecognizerDelegate(tempUid: uid)
        //: getNavigationController()?.pushViewController(vc, animated: true)
        trimDown()?.pushViewController(vc, animated: true)
    }

    // MARK: - 观众侧进入直播间

    /// 观众侧跳转到直播间
    /// - Parameters:
    ///   - uid: 主播id
    ///   - enterType: 入口
    //: func func_audiencePushToLiveRoomVC(uid: String, enterType: LiveEnterType) {
    func removeType(uid: String, enterType: ImageEnterType) {
        //: guard TalkingPermissionTool.isLiveOrPartyActive() == false else { return }
        guard ColorPermissionTool.messageConversationContainer() == false else { return }

        // 同一直播间只能进一次
        //: guard String(TalkingLiveManager.shared().liveRoomModel.streamerInfo.uid) != uid else {
        guard String(ListThen.deleteItem().liveRoomModel.streamerInfo.uid) != uid else {
            //: self.func__showStatusBarErrorMsg(showMsg: "You're already in her live room".localized)
            self.detailKey(showMsg: String(bytes: str_viewVideoContent.map{messageTool(party: $0)}, encoding: .utf8)!.localized)
            //: return
            return
        }
        // 校验接口，通过后进入直播间
        //: TalkingAudienceManager().req_enterLiveRoom(streamerUid: uid) { succeed, result, errorModel in
        OrganicStructureReactiveCompatible().query(streamerUid: uid) { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            //: guard let livemodel = TalkingLiveRoomModel.deserialize(from: result as? Dictionary) else { return }
            guard let livemodel = PerformanceTransformable.deserialize(from: result as? Dictionary) else { return }
            // 退出之前的直播间
            //: let currentVC = self.func__getCurrentActivityVC()
            let currentVC = self.queryEqual()
            //: if let vcArr = currentVC?.navigationController?.viewControllers {
            if let vcArr = currentVC?.navigationController?.viewControllers {
                //: for index in 0..<(vcArr.count) {
                for index in 0 ..< (vcArr.count) {
                    //: let vc = vcArr[index]
                    let vc = vcArr[index]
                    //: if vc.isKind(of: TalkingLivePullStreamsViewController.self) == true {
                    if vc.isKind(of: ColorManagerDelegate.self) == true {
                        //: (vc as! TalkingLivePullStreamsViewController).popCurrentViewController()
                        (vc as! ColorManagerDelegate).futurism()
                    }
                }
            }

            // 进入新直播间
            //: TalkingLiveManager.shared().liveRoomModel = livemodel
            ListThen.deleteItem().liveRoomModel = livemodel
            //: let liveVc = TalkingLivePullStreamsViewController()
            let liveVc = ColorManagerDelegate()
            //: liveVc.type = enterType
            liveVc.type = enterType
            //: currentVC?.navigationController?.pushViewController(liveVc, animated: true)
            currentVC?.navigationController?.pushViewController(liveVc, animated: true)
            // 埋点
            //: switch enterType {
            switch enterType {
            //: case .match:
            case .match:
                //: uploadRecord.uploadRecordEvent(eventID: ClickMatchLiveWindowNoP, toUid: uid)
                kLet_depthIconValue.mightHaveBeenStubZapErrorUploadTo(eventID: kLet_statusAppScreenTitle, toUid: uid)
            //: case .userDetail:
            case .userDetail:
                //: uploadRecord.uploadRecordEvent(eventID: ClickProfileLiveWindowNoP, toUid: uid)
                kLet_depthIconValue.mightHaveBeenStubZapErrorUploadTo(eventID: kLet_viewClickText, toUid: uid)
            //: case .unknown: break
            case .unknown: break
            }
        }
    }

    /// 进入语聊房
    /// - Parameters:
    ///   - roomId: 房间Id（nil：创建房间；有值：进入房间）
    //: func func_pushToVoiceRoomVC(roomId: String? = nil) {
    func fire(roomId: String? = nil) {
        //: if TalkingLiveManager.shared().isLive == true {
        if ListThen.deleteItem().isLive == true { // 直播中
            //: func__showStatusBarErrorMsg(showMsg: kMessage_live_limit)
            detailKey(showMsg: kLet_changeText)
            //: return
            return
        }
        //: if roomId == TalkingVoiceRoomManager.shared().partyModel.roomId {
        if roomId == DateRangeThen.portion().partyModel.roomId { // 返回语聊房
            //: TalkingVoiceRoomManager.shared().voiceRoom_goback()
            DateRangeThen.portion().errorModel()
            //: return
            return
        }
        //: if TalkingVoiceRoomManager.shared().isParty == true {
        if DateRangeThen.portion().isParty == true { // 切换语聊房
            //: if roomId != nil {
            if roomId != nil {
                //: TalkingVoiceRoomManager.shared().voiceRoom_switch(roomId: roomId!, beforeRoomId: TalkingVoiceRoomManager.shared().partyModel.roomId)
                DateRangeThen.portion().popId(roomId: roomId!, beforeRoomId: DateRangeThen.portion().partyModel.roomId)
            }
            //: return
            return
        }
        //: TalkingVoiceRoomManager.shared().voiceRoom_checkAndTurnOn(roomId: roomId)
        DateRangeThen.portion().dowryLive(roomId: roomId)
    }

    // MARK: - 跳转聊天

    /// 跳转到消息列表页
    /// - Parameter isHalf: 是否半屏展示
    //: func func__pushToChatListVC(isHalfView: Bool = false) {
    func ad(isHalfView: Bool = false) {
        //: let vc = TalkingChatListViewController(isHalfView: isHalfView)
        let vc = TalkingEqualControllerRecognizerDelegate(isHalfView: isHalfView)
        //: let currentVC = func__getCurrentActivityVC()
        let currentVC = queryEqual()
        //: if isHalfView == false {
        if isHalfView == false {
            //: currentVC?.navigationController?.pushViewController(vc, animated: true)
            currentVC?.navigationController?.pushViewController(vc, animated: true)
            //: } else {
        } else {
            //: currentVC?.addChild(vc)
            currentVC?.addChild(vc)
            //: currentVC?.view.addSubview(vc.view)
            currentVC?.view.addSubview(vc.view)
        }
    }

    /// 跳转到消息聊天页
    /// - Parameters:
    ///   - chatID: 对方Id
    ///   - isFrom: 私聊页入口
    /// - Returns: 消息聊天页

    //: func func__pushToPriveteChatVC(chatID: String, isFrom: PrivateChatIsFromEnum = .Normal, completion: ((_ vc: TalkingPrivateChatController) -> Void)? = nil ) {
    func executeMention(chatID: String, isFrom: SubFromEnum = .Normal, completion: ((_ vc: RawControllerDelegate) -> Void)? = nil) {
        //: guard chatID.count > 0 else { return }
        guard chatID.count > 0 else { return }

        //: if chatID != ListMacroDefine.getXiaoMiID() {
        if chatID != ListMacroDefine.suspend() { // 系统消息
            //: ProgressHUD.show()
            AtAdView.sizeUp()
            //: let param = ["toUid": chatID, "momentId": "0", "extra": "1"]
            let param = [String(bytes: str_makeDataStatusTitle.reversed(), encoding: .utf8)!: chatID, String(bytes: str_atText.map{layerInput(location: $0)}, encoding: .utf8)!: "0", String(bytes: str_iconContent.map{militaryInstallation(touch: $0)}, encoding: .utf8)!: "1"]
            //: HumanHeadRequestTool.req_refreshUserChatInfo(param: param) { [weak self] succeed, result, errorModel in
            HumanHeadRequestTool.dataOf(param: param) { [weak self] succeed, result, _ in
                //: ProgressHUD.dismiss()
                AtAdView.toAction()
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: guard succeed else { return }
                guard succeed else { return }

                //: let userWrap = MixedThen.func__transformedChatinfo(userDic: result as! Dictionary<String, Any>)
                let userWrap = MixedThen.jump(userDic: result as! [String: Any])
                //: UtiliserThen.cache_updateMsgUserInfoAndPostNotif(with: userWrap)
                UtiliserThen.messageWithPostUtiliserNotifAfterModifyAnd(with: userWrap)
                // 更新消息列表用户在线状态
                //: let userInfo = ["uid": chatID,
                let userInfo = [String(bytes: str_managerTitle.map{$0^114}, encoding: .utf8)!: chatID,
                                //: "onlineStatus": userWrap.onlineStatus,
                                String(bytes: str_tabData.map{addTo(version: $0)}, encoding: .utf8)!: userWrap.onlineStatus,
                                //: "isNewUser":userWrap.isNewUser,
                                String(bytes: str_placeValue.map{$0^43}, encoding: .utf8)!: userWrap.isNewUser,
                                //: "userStatus": userWrap.userStatus]
                                String(bytes: str_mName.map{$0^145}, encoding: .utf8)!: userWrap.userStatus]
                //: NotificationCenter.default.post(name: MSGLIST_UPDATE_ONLINESTATUS_NOTIFICATION,
                NotificationCenter.default.post(name: kLet_formalText,
                                                //: object: nil,
                                                object: nil,
                                                //: userInfo: userInfo)
                                                userInfo: userInfo)
                //: if userWrap.userStatus == 3 {
                if userWrap.userStatus == 3 { /// 被封号
                    //: self.func__showStatusBarErrorMsg(showMsg: "Account is restricted！".localized)
                    self.detailKey(showMsg: (String(str_equalName.suffix(7)) + String(str_sizeValue.prefix(5)) + "estric" + String(str_makeValue.prefix(4))).localized)
                    //: return
                    return
                }
                //: DispatchQueue.main.async {
                DispatchQueue.main.async {
                    //: let chatVC = self.func__canPushToPriveteChatVC(chatID: chatID, isFrom: isFrom, userWrap: userWrap)
                    let chatVC = self.totaleractionAcrossAdd(chatID: chatID, isFrom: isFrom, userWrap: userWrap)
                    //: completion?(chatVC)
                    completion?(chatVC)
                }
            }
            //: }else{
        } else {
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: let chatVC = self.func__canPushToPriveteChatVC(chatID: chatID, isFrom: isFrom, userWrap: MixedThen())
                let chatVC = self.totaleractionAcrossAdd(chatID: chatID, isFrom: isFrom, userWrap: MixedThen())
                //: completion?(chatVC)
                completion?(chatVC)
            }
        }
    }

    //: func func__canPushToPriveteChatVC(chatID: String, isFrom: PrivateChatIsFromEnum = .Normal, userWrap: MixedThen ) -> TalkingPrivateChatController {
    func totaleractionAcrossAdd(chatID: String, isFrom: SubFromEnum = .Normal, userWrap: MixedThen) -> RawControllerDelegate {
        //: let currentVC = func__getCurrentActivityVC()
        let currentVC = queryEqual()
        //: if isFrom != .LiveRoom, let vcArr = currentVC?.navigationController?.viewControllers {
        if isFrom != .LiveRoom, let vcArr = currentVC?.navigationController?.viewControllers {
            //: for index in 0..<(vcArr.count) {
            for index in 0 ..< (vcArr.count) {
                //: if vcArr[index] .isKind(of: TalkingPrivateChatController.self) == true {
                if vcArr[index].isKind(of: RawControllerDelegate.self) == true {
                    //: let vc = vcArr[index] as! TalkingPrivateChatController
                    let vc = vcArr[index] as! RawControllerDelegate
                    //: if vc.targetId == chatID {
                    if vc.targetId == chatID {
                        //: currentVC?.navigationController?.popToViewController(vc, animated: true)
                        currentVC?.navigationController?.popToViewController(vc, animated: true)
                        //: return vc
                        return vc
                    }
                }
            }
        }

        //: let vc = TalkingPrivateChatController(chatID: chatID, isFrom: isFrom, userWrap: userWrap)
        let vc = RawControllerDelegate(chatID: chatID, isFrom: isFrom, userWrap: userWrap)
        //: if isFrom == .LiveRoom {
        if isFrom == .LiveRoom {
            //: currentVC?.addChild(vc)
            currentVC?.addChild(vc)
            //: currentVC?.view.addSubview(vc.view)
            currentVC?.view.addSubview(vc.view)
            //: } else {
        } else {
            //: currentVC?.navigationController?.pushViewController(vc, animated: true)
            currentVC?.navigationController?.pushViewController(vc, animated: true)
        }
        //: return vc
        return vc
    }

    // MARK: - 跳转群聊

    //: func func__pushToGroupChat(groupId: String) {
    func showRange(groupId: String) {
        //: guard groupId.count > 0 else { return }
        guard groupId.count > 0 else { return }
        //: ProgressHUD.show()
        AtAdView.sizeUp()
        //: HumanHeadRequestTool.req_checkChatRoom(roomId: groupId) { succeed, result, errorModel in
        HumanHeadRequestTool.selectEmptyDeed(roomId: groupId) { succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            AtAdView.toAction()
            //: guard succeed == true else {
            guard succeed == true else {
                //: if errorModel?.errorCode == 106 {
                if errorModel?.errorCode == 106 {
                    //: } else {
                } else {
                    //: self.func__showStatusBarErrorMsg(showMsg: errorModel?.errorMsg ?? "")
                    self.detailKey(showMsg: errorModel?.errorMsg ?? "")
                    //: if errorModel?.errorCode == 103 {
                    if errorModel?.errorCode == 103 { // 不在家族里
                    }
                }

                //: return
                return
            }

            //: guard let data = result as? [String: Any] else {
            guard let data = result as? [String: Any] else {
                //: return
                return
            }

            //: if ListMacroDefine.isGroupChat(groupId) {
            if ListMacroDefine.colorQuantity(groupId) {
                //: } else {
            } else { // 公共聊天室
                //: V2TIMManager.sharedInstance().joinGroup(groupId, msg: nil) {
                V2TIMManager.sharedInstance().joinGroup(groupId, msg: nil) {
                    //: guard self.func__checkIsGroupChatVC(roomId: groupId) == false else { return }
                    guard self.referencePoint(roomId: groupId) == false else { return }
                    //: let vc = TalkingGroupChatController(groupType: GroupType_Meeting, infoData: data)
                    let vc = AllRecognizerDelegate(groupType: GroupType_Meeting, infoData: data)
                    //: self.func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
                    self.queryEqual()?.navigationController?.pushViewController(vc, animated: true)

                    //: } fail: { code, desc in
                } fail: { code, _ in
                    //: if code == 10013 {
                    if code == 10013 { // 程序异常退出，未退出聊天室
                        //: guard self.func__checkIsGroupChatVC(roomId: groupId) == false else { return }
                        guard self.referencePoint(roomId: groupId) == false else { return }
                        //: let vc = TalkingGroupChatController(groupType: GroupType_Meeting, infoData: data)
                        let vc = AllRecognizerDelegate(groupType: GroupType_Meeting, infoData: data)
                        //: self.func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
                        self.queryEqual()?.navigationController?.pushViewController(vc, animated: true)
                        //: } else {
                    } else {
                        //: self.func__showStatusBarErrorMsg(showMsg: "Failed to enter the chat room. Please try again later".localized)
                        self.detailKey(showMsg: String(bytes: str_currentData.map{$0^152}, encoding: .utf8)!.localized)
                    }
                }
            }
        }
    }

    /// 检测堆栈中是否有群聊控制器，有则跳转到群聊页
    /// - Parameter roomId: 房间Id
    /// - Returns: 检测结果（true: 有; false: 无）
    //: private func func__checkIsGroupChatVC(roomId: String) -> Bool {
    private func referencePoint(roomId: String) -> Bool {
        //: let currentVC = self.func__getCurrentActivityVC()
        let currentVC = self.queryEqual()
        //: if let vcArr = currentVC?.navigationController?.viewControllers {
        if let vcArr = currentVC?.navigationController?.viewControllers {
            //: for index in 0..<(vcArr.count) {
            for index in 0 ..< (vcArr.count) {
                //: if vcArr[index].isKind(of: TalkingGroupChatController.self) == true {
                if vcArr[index].isKind(of: AllRecognizerDelegate.self) == true {
                    //: let vc = vcArr[index] as! TalkingGroupChatController
                    let vc = vcArr[index] as! AllRecognizerDelegate
                    //: if vc.infoModel.roomId == roomId {
                    if vc.infoModel.roomId == roomId {
                        //: currentVC?.navigationController?.popToViewController(vc, animated: true)
                        currentVC?.navigationController?.popToViewController(vc, animated: true)
                        //: return true
                        return true
                    }
                }
            }
        }

        //: return false
        return false
    }

    // MARK: - 真人认证

    //: func func__pushUserVerifyController(toast: String?) {
    func overwhelm(toast: String?) {
        //: let tpAuth = TPUserAuth(rawValue: WatercourseThen.share.loginUserMode.isTPAuth)
        let tpAuth = CommandCompatibleValue(rawValue: WatercourseThen.share.loginUserMode.isTPAuth)
        //: switch(tpAuth) {
        switch tpAuth {
        //: case .unknown, .isRefused:
        case .unknown, .isRefused:
            //: let vc = TalkingFaceVerificationVC()
            let vc = TalkingAtCellVerificationVc()
            //: vc.toastStr = toast ?? ""
            vc.toastStr = toast ?? ""
            //: let currentVC = func__getCurrentActivityVC()
            let currentVC = queryEqual()
            //: currentVC?.navigationController?.pushViewController(vc, animated: true)
            currentVC?.navigationController?.pushViewController(vc, animated: true)

        //: case .isOnGoing:
        case .isOnGoing:
            //: let vc = TalkingFinalVerificationVC()
            let vc = KeyReactiveCompatible()
            //: let currentVC = func__getCurrentActivityVC()
            let currentVC = queryEqual()
            //: currentVC?.navigationController?.pushViewController(vc, animated: true)
            currentVC?.navigationController?.pushViewController(vc, animated: true)

        //: default:
        default:
            //: break
            break
        }
    }

    // MARK: - 任意用户的动态列表

    //: func func__pushUserPostListWithUid(uid: String) {
    func faqDate(uid _: String) {}

    // MARK: - 反馈feebook

    //: func func__pushFeedbackVC() {
    func natural() {
        //: let currentVC = func__getCurrentActivityVC()
        let currentVC = queryEqual()
        //: let vc = TalkingFeedbackVC.init()
        let vc = FactoryReactiveCompatible()
        //: currentVC?.navigationController?.pushViewController(vc, animated: true)
        currentVC?.navigationController?.pushViewController(vc, animated: true)
    }

    // MARK: - 消息跳转

    //: func func__actionPushForMessage(jumpModel: TalkingMessageJumpModel) {
    func kind(jumpModel: NameModelType) {
        //: if jumpModel.jumpKey == "url" {
        if jumpModel.jumpKey == (str_needData.replacingOccurrences(of: "model", with: "l")) {
            //: func__pushToWebVC(urlStr: jumpModel.url)
            feather(urlStr: jumpModel.url)
            //: } else if jumpModel.jumpKey == "userDetail"{
        } else if jumpModel.jumpKey == (String(str_mainMarginData) + str_imageEnterLimitTitle.replacingOccurrences(of: "card", with: "l")) {}
    }

    // MARK: - 会员订阅网页

    //: @objc public func func__pushToSubscribePageWebVC() {
    @objc public func timeText() {
        //: IndoorsPushManager.share.func__pushToWebVC(webViewType: .SubscribePage)
        IndoorsPushManager.share.pushType(webViewType: .SubscribePage)
    }

    // MARK: - 设置密码页面

    /// 跳转设置密码页面
    /// - Parameters:
    ///   - type: 手机号/邮箱
    ///   - content: 展示内容
    ///   - isNewPwd: 是否新设置密码（修改需要验证码）
    //: func func__pushToSetNewPasswordVC(type: LoginType, content: String, isNewPwd: Bool) {
    func passAway(type: PublishTitleConvertible, content: String, isNewPwd: Bool) {
        //: let vc = TalkingSetNewPasswordVC()
        let vc = BranchReactiveCompatible()
        //: vc.type = type
        vc.type = type
        //: vc.content = content
        vc.content = content
        //: vc.isNewPwd = isNewPwd
        vc.isNewPwd = isNewPwd
        //: func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
        queryEqual()?.navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: - 跳转H5

//: extension IndoorsPushManager {
extension IndoorsPushManager {
    // 跳转全屏H5入口
    //: func func__pushToWebVC(webViewType: WebUrlType) {
    func pushType(webViewType: VoicePublishNameConvertible) {
        //: func__pushToWebVC(webViewType: webViewType, webConfig: TalkingWebConfig())
        nowDataConverter(webViewType: webViewType, webConfig: ReloadConfig())
    }

    /// 余额不足跳转充值/订阅页
    /// - Parameters:
    ///   - clickEvent: 埋点事件
    ///   - sufficient: 余额是否充足（默认true）
    //: func func__jumpToWebRecharge(clickEvent: String = "", sufficient: Bool = true, appendParams: String = "&type=7") {
    func rechargeVideo(clickEvent: String = "", sufficient: Bool = true, appendParams: String = (String(str_nameValue))) {
        //: let payWinType = WatercourseThen.share.appUserConfigMode.payWinType
        let payWinType = WatercourseThen.share.appUserConfigMode.payWinType
        // 样式：半屏充值页 || (已订阅 && 余额不足)
        //: if payWinType == 1 || (WatercourseThen.share.loginUserMode.loungePlus && sufficient == false) {
        if payWinType == 1 || (WatercourseThen.share.loginUserMode.loungePlus && sufficient == false) { // 半屏充值页
            //: func__pushToHalfWebVC(webViewType: .RechargeHalfPage, clickEvent: clickEvent)
            afterRandom(webViewType: .RechargeHalfPage, clickEvent: clickEvent)

            //: } else if payWinType == 2 {
        } else if payWinType == 2 { // 会员订阅弹窗
            //: func__pushToSubscribeAlert(appendParams: appendParams)
            digitizerParams(appendParams: appendParams)
        }
    }

    /// 跳转会员订阅弹窗
    /// - Parameter appendParams: url拼接参数（假视频流程拼接："&type=6；默认流程："&type=7"）
    //: func func__pushToSubscribeAlert(appendParams: String = "&type=7") {
    func digitizerParams(appendParams: String = (String(str_nameValue))) {
        //: var urlStr = TalkingWebManager.getFullUrl(urlType: .SubscribeAlert)
        var urlStr = AdErrorReactiveCompatible.viewType(urlType: .SubscribeAlert)
        //: urlStr.append(appendParams)
        urlStr.append(appendParams)
        //: IndoorsPushManager.share.func__pushToWebVC(urlStr: urlStr)
        IndoorsPushManager.share.feather(urlStr: urlStr)
        // 曝光用户数埋点
        //: uploadRecord.uploadRecordEvent(eventID: subscribtionRecordButton, parameterStr: ["amount": 0])
        kLet_depthIconValue.fromCell(eventID: kLet_tableDoingdText, parameterStr: [String(bytes: str_errorBackgroundData.reversed(), encoding: .utf8)!: 0])
    }

    /// 跳转半屏H5入口
    /// - Parameters:
    ///   - webViewType: 网页URL
    ///   - clickEvent: 埋点事件
    //: func func__pushToHalfWebVC(webViewType: WebUrlType, clickEvent: String = "") {
    func afterRandom(webViewType: VoicePublishNameConvertible, clickEvent: String = "") {
        //: var config = TalkingWebConfig.init()
        var config = ReloadConfig()
        //: config.showLoadingView = false
        config.showLoadingView = false
        //: config.isHalfView = true
        config.isHalfView = true
        //: func__pushToWebVC(webViewType: webViewType, webConfig: config)
        nowDataConverter(webViewType: webViewType, webConfig: config)
        // 充值埋点
        //: if webViewType == .RechargeHalfPage {
        if webViewType == .RechargeHalfPage {
            //: RECHARGE_CLICK_EVENT = clickEvent
            kLet_detailImageData = clickEvent
            //: if clickEvent.count > 0 {
            if clickEvent.count > 0 {
                //: uploadRecord.uploadRecordEvent(eventID: clickEvent, parameterStr: ["amount": 0])
                kLet_depthIconValue.fromCell(eventID: clickEvent, parameterStr: [String(bytes: str_errorBackgroundData.reversed(), encoding: .utf8)!: 0])
            }
        }
    }

    //: func func__pushToWebVC(webViewType: WebUrlType, webConfig: TalkingWebConfig) {
    func nowDataConverter(webViewType: VoicePublishNameConvertible, webConfig: ReloadConfig) {
        //: let urlStr = TalkingWebManager.getFullUrl(urlType: webViewType)
        let urlStr = AdErrorReactiveCompatible.viewType(urlType: webViewType)
        //: func__pushToWebView(urlStr: urlStr, webViewType: webViewType, webConfig: webConfig)
        progressTo(urlStr: urlStr, webViewType: webViewType, webConfig: webConfig)
    }

    //: func func__pushToWebVC(urlStr: String?, webConfig: TalkingWebConfig? = nil) {
    func feather(urlStr: String?, webConfig: ReloadConfig? = nil) {
        //: let config = (webConfig == nil) ? TalkingWebConfig():webConfig
        let config = (webConfig == nil) ? ReloadConfig() : webConfig
        //: func__pushToWebView(urlStr: urlStr, webViewType: nil, webConfig: config!)
        progressTo(urlStr: urlStr, webViewType: nil, webConfig: config!)
    }

    //: func func__pushToWebView(urlStr: String?, webViewType: WebUrlType?, webConfig: TalkingWebConfig) {
    func progressTo(urlStr: String?, webViewType: VoicePublishNameConvertible?, webConfig: ReloadConfig) {
        //: guard urlStr != nil && urlStr != "" else { return }
        guard urlStr != nil, urlStr != "" else { return }
        //: var config = webConfig
        var config = webConfig

        // 有值且大于0，半屏按照比例展示
        //: if config.widthHeight ?? 0 > 0 {
        if config.widthHeight ?? 0 > 0 {
            //: config.isHalfView = true
            config.isHalfView = true
        }
        // 解析url中带的参数
        //: let urlParams = JSON(urlStr!.urlParameters ?? [:])
        let urlParams = JSON(urlStr!.urlParameters ?? [:])
        //: if urlParams["transparency"].stringValue == "1" { // 透明背景
        if urlParams[(String(str_indexContent) + str_backData.replacingOccurrences(of: "white", with: "y"))].stringValue == "1" { // 透明背景
            //: config.clearBgColor = true
            config.clearBgColor = true
        }

        // url拼接参数
        //: let allowCharSet: CharacterSet = CharacterSet.init(charactersIn: "`%^{}\"[]|\\<>").inverted
        let allowCharSet = CharacterSet(charactersIn: "`%^{}" + "\"" + "[]|\\<>").inverted
        //: var urlStr = urlStr!.addingPercentEncoding(withAllowedCharacters: allowCharSet)!
        var urlStr = urlStr!.addingPercentEncoding(withAllowedCharacters: allowCharSet)!
        //: let otherParams = "version=\(AppNetVersion)&packageId=\(PackageID)&bundleId=\(AppBundle)"
        let otherParams = (String(str_leadingContent) + String(str_mainFatalData.suffix(3))) + "\(kLet_licenseRequestDoingTitle)" + (String(str_iconLiveText)) + "\(kLet_voiceValue)" + (String(str_bagName) + String(str_removeValue.prefix(2))) + "\(kLet_clickReplaceHeightValue)"
        //: if urlStr.contains("?") {
        if urlStr.contains("?") {
            //: urlStr = "\(urlStr)&\(otherParams)"
            urlStr = "\(urlStr)&\(otherParams)"
            //: } else {
        } else {
            //: urlStr = "\(urlStr)?\(otherParams)"
            urlStr = "\(urlStr)?\(otherParams)"
        }

        //: let vc = TalkingWebViewController.init(urlString: urlStr, webViewType: webViewType, webConfig: config)
        let vc = AtDelegate(urlString: urlStr, webViewType: webViewType, webConfig: config)

        // 展示网页
        //: if let currentVC = func__getCurrentActivityVC() {
        if let currentVC = queryEqual() {
            // 如果当前视图是模态上来的，跳转到下级时只能使用模态效果跳转
            //: var currentVCIsPresent = false
            var currentVCIsPresent = false
            //: if currentVC.isKind(of: TalkingWebViewController.self) &&
            if currentVC.isKind(of: AtDelegate.self) &&
                //: (currentVC as! TalkingWebViewController).isModal == true {
                (currentVC as! AtDelegate).isModal == true
            {
                //: currentVCIsPresent = true
                currentVCIsPresent = true
            }

            //: if config.isHalfView {
            if config.isHalfView { // 半屏使用present
                //: if config.widthHeight == nil {
                if config.widthHeight == nil {
                    //: vc.tranConfig.frameOfPresentedView = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight*2/3)
                    vc.tranConfig.frameOfPresentedView = CGRect(x: 0, y: 0, width: kLet_scaleName, height: kLet_environmentText * 2 / 3)
                    //: vc.tranConfig.configCorner(corners: [.topLeft, .topRight], radius: 18)
                    vc.tranConfig.addPlace(corners: [.topLeft, .topRight], radius: 18)
                    //: } else {
                } else {
                    //: vc.tranConfig.frameOfPresentedView = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenWidth/config.widthHeight!)
                    vc.tranConfig.frameOfPresentedView = CGRect(x: 0, y: 0, width: kLet_scaleName, height: kLet_scaleName / config.widthHeight!)
                }
                //: vc.isModal = true
                vc.isModal = true
                //: currentVC.present(vc, animated: true)
                currentVC.present(vc, animated: true)

                //: } else if config.clearBgColor || currentVCIsPresent {
            } else if config.clearBgColor || currentVCIsPresent { // 透明背景只能用present
                //: vc.tranConfig.frameOfPresentedView = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
                vc.tranConfig.frameOfPresentedView = CGRect(x: 0, y: 0, width: kLet_scaleName, height: kLet_environmentText)
                //: vc.isModal = true
                vc.isModal = true
                //: currentVC.present(vc, animated: true)
                currentVC.present(vc, animated: true)

                //: } else {
            } else {
                //: vc.isModal = false
                vc.isModal = false
                //: currentVC.navigationController?.pushViewController(vc, animated: true)
                currentVC.navigationController?.pushViewController(vc, animated: true)
            }
        }
    }
}

// MARK: - 获取当前视图、导航

//: extension IndoorsPushManager {
public extension IndoorsPushManager {
    //: @objc public func func__getCurrentActivityVC() -> UIViewController? {
    @objc func queryEqual() -> UIViewController? {
        //: return currentViewController()
        return toController()
    }
}

//: struct TalkingMessageJumpModel: HandyJSON {
struct NameModelType: HandyJSON {
    //: var jumpKey: String?
    var jumpKey: String? // 评论的id
    //: var jumpUid: String?
    var jumpUid: String?
    //: var url: String?
    var url: String?
}
