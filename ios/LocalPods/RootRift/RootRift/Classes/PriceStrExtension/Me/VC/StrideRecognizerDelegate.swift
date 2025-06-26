
//: Declare String Begin

/*: "mfBean" :*/
fileprivate let str_tablePushData:[UInt8] = [0xa3,0x9c,0x78,0x9b,0x97,0xa4]

fileprivate func errorTime(manager num: UInt8) -> UInt8 {
    let value = Int(num) + 202
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "bannerList" :*/
fileprivate let str_iconTitle:[Character] = ["b","a","n","n","e","r","L","i","s","t"]

/*: "icon_me_chatsettings" :*/
fileprivate let str_coverContent:String = "succeed app enable max keyicon_"
fileprivate let str_descriptionTitle:String = "tsettinreport"
fileprivate let str_textData:String = "S"

/*: "icon_me_automatic" :*/
fileprivate let str_playNameTitle:[Character] = ["i","c","o","n","_","m","e","_","a","u"]
fileprivate let str_userHeadTitle:[Character] = ["t","o","m","a","t","i","c"]

/*: "icon_me_settings" :*/
fileprivate let str_scaleData:[Character] = ["i","c","o","n","_"]
fileprivate let str_laterVideoText:[Character] = ["m","e","_","s","e","t"]
fileprivate let str_atWillName:String = "tiusergs"

/*: "icon_me_tc" :*/
fileprivate let str_nameBlockData:String = "main sizeicon_m"
fileprivate let str_toTextData:String = "with appe_tc"

/*: "icon_me_videoSet" :*/
fileprivate let str_modelName:String = "icon_extension size video page"
fileprivate let str_succeedValue:String = "label any view equal screeneoSet"

/*: "icon_me_bs" :*/
fileprivate let str_timeInfoTitle:[Character] = ["i","c","o","n","_"]
fileprivate let str_imageValue:String = "me_bsend self"

/*: "Enter " :*/
fileprivate let str_modelFinishName:[Character] = ["E"]
fileprivate let str_lastContent:String = "nter memory if to"

/*: "Settings" :*/
fileprivate let str_tableValue:String = "Sein count top view if"
fileprivate let str_managerName:[Character] = ["t","t","i","n","g","s"]

/*: " and open " :*/
fileprivate let str_photoValue:[Character] = [" ","a","n","d"]
fileprivate let str_miniGiftCenterText:String = " open gift view"

/*: "Camera" :*/
fileprivate let str_originValue:String = "Camerasound label data if"

/*: " permission to use this function normally" :*/
fileprivate let str_backData:[UInt8] = [0xac,0xfc,0xe9,0xfe,0xe1,0xe5,0xff,0xff,0xe5,0xe3,0xe2,0xac,0xf8,0xe3,0xac,0xf9,0xff,0xe9,0xac,0xf8,0xe4,0xe5,0xff,0xac,0xea,0xf9,0xe2,0xef,0xf8,0xe5,0xe3,0xe2,0xac,0xe2,0xe3,0xfe,0xe1,0xed,0xe0,0xe0,0xf5]

private func magnitudePath(on num: UInt8) -> UInt8 {
    return num ^ 140
}

/*: "Cancel" :*/
fileprivate let str_firstText:[Character] = ["C","a","n","c","e","l"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StrideRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by young on 2023/4/25.
//

//: import UIKit
import UIKit

//: class TalkingMeViewController: TalkingBaseViewController {
class StrideRecognizerDelegate: MusicViewController {
    //: private var tupleData = [(CenterItemType, String)]()
    private var tupleData = [(ViewContiguousBytes, String)]()
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.modelCard()
        //: reloadLocalData()
        reloadEqual()
        //: func__reqBanner()
        stopMake()
        //: setupSubviews()
        punctuateColor()
        //: setupSubViewsConstraint()
        fillHost()

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(pushEdit),
                                               selector: #selector(jamOn),
                                               //: name: PUSH_MEEDIT_NOTIFICATION,
                                               name: kLet_useContent,
                                               //: object: nil)
                                               object: nil)
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__requestUserInfo),
                                               selector: #selector(sizeInfo),
                                               //: name: USER_UPDATE_LOUNGEPLUSINFO_NOTIFICATION,
                                               name: kLet_partyFailValue,
                                               //: object: nil)
                                               object: nil)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: func__requestUserInfo()
        sizeInfo()
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    // MARK: - Lazy Load

    //: private lazy var tableView: UITableView = {
    private lazy var tableView: UITableView = {
        //: let table = UITableView(frame: .zero, style: .plain)
        let table = UITableView(frame: .zero, style: .plain)
        //: table.backgroundColor = .clear
        table.backgroundColor = .clear
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.tableHeaderView = UIView()
        table.tableHeaderView = UIView()
        //: table.sectionHeaderHeight = 0
        table.sectionHeaderHeight = 0
        //: table.sectionFooterHeight = 0
        table.sectionFooterHeight = 0
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
        //: table.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 12, right: 0)
        table.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 12, right: 0)
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: table.contentInsetAdjustmentBehavior = .never
            table.contentInsetAdjustmentBehavior = .never
            //: if #available(iOS 15.0, *) {
            if #available(iOS 15.0, *) {
                //: UITableView.appearance().sectionHeaderTopPadding = 0
                UITableView.appearance().sectionHeaderTopPadding = 0
            }
            //: } else {
        } else {
            //: self.automaticallyAdjustsScrollViewInsets = false
            self.automaticallyAdjustsScrollViewInsets = false
        }
        //: table.register(UITableViewCell.self, forCellReuseIdentifier: UITableViewCell.className())
        table.register(UITableViewCell.self, forCellReuseIdentifier: UITableViewCell.className())
        //: table.register(TalkingMeTopCell.self, forCellReuseIdentifier: TalkingMeTopCell.className())
        table.register(UnitedStatesThen.self, forCellReuseIdentifier: UnitedStatesThen.className())
        //: table.register(TalkingMeBannerCell.self, forCellReuseIdentifier: TalkingMeBannerCell.className())
        table.register(CellBannerDelegate.self, forCellReuseIdentifier: CellBannerDelegate.className())
        //: table.register(TalkingMeTwoColumnsCell.self, forCellReuseIdentifier: TalkingMeTwoColumnsCell.className())
        table.register(CardinalView.self, forCellReuseIdentifier: CardinalView.className())
        //: table.register(TalkingMeThreeColumnsCell.self, forCellReuseIdentifier: TalkingMeThreeColumnsCell.className())
        table.register(ReadViewDelegate.self, forCellReuseIdentifier: ReadViewDelegate.className())
        //: table.register(TalkingUserCenterCell.self, forCellReuseIdentifier: TalkingUserCenterCell.className())
        table.register(RemoveCenterCell.self, forCellReuseIdentifier: RemoveCenterCell.className())
        //: table.addHeaderRefresh { [weak self] in
        table.addToComplection { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.headerRefresh()
            self.voiceRefresh()
        }
        //: return table
        return table
        //: }()
    }()

    //: lazy var bannerListData: [SocialAdBannerModel] = {
    lazy var bannerListData: [CurrentModelType] = //: return Array<CurrentModelType>()
        .init()
    //: }()
}

// MARK: - Request

//: extension TalkingMeViewController {
extension StrideRecognizerDelegate {
    /// 下拉刷新
    //: private func headerRefresh() {
    private func voiceRefresh() {
        //: tableView.mj_header?.beginRefreshing()
        tableView.mj_header?.beginRefreshing()
        //: func__requestUserInfo()
        sizeInfo()
    }

    /// 刷新个人资料接口
    //: @objc private func func__requestUserInfo() {
    @objc private func sizeInfo() {
        //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in
        ResultReactiveCompatible.videoOf { _, _, _ in
            //: self.reloadLocalData()
            self.reloadEqual()
            //: self.tableView.endRefresh()
            self.tableView.clickValueRestore()
            //: self.tableView.reloadData()
            self.tableView.reloadData()

            //: if TalkingLiveManager.shared().isLive {
            if ListThen.deleteItem().isLive {
                //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": 0.0])
                NotificationCenter.default.post(name: kLet_errorBottomValue, object: nil, userInfo: [String(bytes: str_tablePushData.map{errorTime(manager: $0)}, encoding: .utf8)!: 0.0])
            }
        }
    }

    /// banner
    //: func func__reqBanner() {
    func stopMake() {
        //: SocialRequestManager.init().req_adBanner(position: 2) { [weak self] succeed, result, errorModel in
        WithRequestManager().cleanAcross(position: 2) { [weak self] _, result, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: guard let result = result as? Dictionary<String, Any> else {
            guard let result = result as? [String: Any] else {
                //: return
                return
            }
            //: let array = JSON(result["bannerList"] ?? []).arrayValue
            let array = JSON(result[(String(str_iconTitle))] ?? []).arrayValue
            //: self.bannerListData.removeAll()
            self.bannerListData.removeAll()
            //: for dict in array {
            for dict in array {
                //: if let model = SocialAdBannerModel.deserialize(from: dict.dictionaryObject) {
                if let model = CurrentModelType.deserialize(from: dict.dictionaryObject) {
                    //: self.bannerListData.append(model)
                    self.bannerListData.append(model)
                }
            }
            //: self.tableView.reloadData()
            self.tableView.reloadData()
        }
    }

    /// 重载本地数据
    //: private func reloadLocalData() {
    private func reloadEqual() {
        //: if WatercourseThen.share.loginUserMode.sex == Gender.female.rawValue && WatercourseThen.share.appStatus != AppSkinStatus.special.rawValue {
        if WatercourseThen.share.loginUserMode.sex == PushDownStackScalarLiteral.female.rawValue, WatercourseThen.share.appStatus != PublishWidthTotal.special.rawValue { // 女性 && 非审核模式
            //: tupleData = [(.My_Chat_Settings, "icon_me_chatsettings"),
            tupleData = [(.My_Chat_Settings, (String(str_coverContent.suffix(5)) + "me_cha" + str_descriptionTitle.replacingOccurrences(of: "report", with: "g") + str_textData.lowercased())),
                         //: (.My_Automatic, "icon_me_automatic"),
                         (.My_Automatic, (String(str_playNameTitle) + String(str_userHeadTitle))),
                         //: (.My_Settings, "icon_me_settings")]
                         (.My_Settings, (String(str_scaleData) + String(str_laterVideoText) + str_atWillName.replacingOccurrences(of: "user", with: "n")))]

            //: } else {
        } else {
            //: tupleData = [(.My_Settings, "icon_me_settings")]
            tupleData = [(.My_Settings, (String(str_scaleData) + String(str_laterVideoText) + str_atWillName.replacingOccurrences(of: "user", with: "n")))]
        }
        //: if WatercourseThen.share.appUserConfigMode.showTaskCenter {
        if WatercourseThen.share.appUserConfigMode.showTaskCenter {
            //: tupleData.insert((.Task_Center, "icon_me_tc"), at: 0)
            tupleData.insert((.Task_Center, (String(str_nameBlockData.suffix(6)) + String(str_toTextData.suffix(4)))), at: 0)
        }
        //: if WatercourseThen.share.loginUserMode.sex == Gender.female.rawValue {
        if WatercourseThen.share.loginUserMode.sex == PushDownStackScalarLiteral.female.rawValue {
            //: tupleData.insert((.My_VideoSetting, "icon_me_videoSet"), at: tupleData.count-1)
            tupleData.insert((.My_VideoSetting, (String(str_modelName.prefix(5)) + "me_vid" + String(str_succeedValue.suffix(5)))), at: tupleData.count - 1)
            //: } else {
        } else {
            //: if SenseTime_Use && tupleData.count > 0 {
            if kLet_errorDeviceAppValue, tupleData.count > 0 {
                //: tupleData.insert((.My_Beautify, "icon_me_bs"), at: tupleData.count-1)
                tupleData.insert((.My_Beautify, (String(str_timeInfoTitle) + String(str_imageValue.prefix(5)))), at: tupleData.count - 1)
            }
        }
    }
}

//: extension TalkingMeViewController {
extension StrideRecognizerDelegate {
    //: @objc func pushEdit() {
    @objc func jamOn() {
        //: let editvc = TalkingEditProfilesVC()
        let editvc = AutomaticallyPhotoDelegate()
        //: self.navigationController?.pushViewController(editvc, animated: true)
        self.navigationController?.pushViewController(editvc, animated: true)
    }

    //: func judgeCameraAuthorization() {
    func businessRelation() {
        //: TalkingPermissionTool.func__openCaptureDeviceServiceWithBlock(false) { (isOpen: Bool) in
        ColorPermissionTool.tincture(false) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: guard TalkingSocketManager.shared.isTalking == false else {
                guard NameSocketManager.shared.isTalking == false else {
                    //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
                    self.detailKey(showMsg: kLet_networkViewTitle)
                    //: return
                    return
                }
                //: let vc = TalkingMyBeautyVC()
                let vc = WithBeautyVc()
                //: self.navigationController?.pushViewController(vc, animated: true)
                self.navigationController?.pushViewController(vc, animated: true)
                //: } else {
            } else {
                AlongThen.harvest(title: nil, message: "Enter \"Settings\" and open \"Camera\" permission to use this function normally".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Settings".localized) {
                    //: TalkingAlertShow.hideAlert()
                    AlongThen.teachingMethod()
                    //: } rightBlock: {
                } rightBlock: {
                    //: TalkingAlertShow.hideAlert()
                    AlongThen.teachingMethod()
                    //: let url = URL(string: UIApplication.openSettingsURLString)
                    let url = URL(string: UIApplication.openSettingsURLString)
                    //: if  UIApplication.shared.canOpenURL(url!) {
                    if UIApplication.shared.canOpenURL(url!) {
                        //: if #available(iOS 10, *) {
                        if #available(iOS 10, *) {
                            //: UIApplication.shared.open(url!, options: [:], completionHandler: {(success) in})
                            UIApplication.shared.open(url!, options: [:], completionHandler: { _ in })
                            //: } else {
                        } else {
                            //: UIApplication.shared.openURL(url!)
                            UIApplication.shared.openURL(url!)
                        }
                    }
                }
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingMeViewController: UITableViewDelegate, UITableViewDataSource {
extension StrideRecognizerDelegate: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 2
        return 2
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: if section == 0 {
        if section == 0 {
            //: return 4
            return 4
        }
        //: return tupleData.count
        return tupleData.count
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: guard indexPath.section == 0 else {
        guard indexPath.section == 0 else {
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingUserCenterCell.className(), for: indexPath) as! TalkingUserCenterCell
            let cell = tableView.dequeueReusableCell(withIdentifier: RemoveCenterCell.className(), for: indexPath) as! RemoveCenterCell
            //: let data = tupleData[indexPath.row]
            let data = tupleData[indexPath.row]
            //: let isLast = tupleData.count == (indexPath.row+1)
            let isLast = tupleData.count == (indexPath.row + 1)
            //: cell.setViewData(title: data.0.rawValue, icon: data.1, row: indexPath.row, isLast: isLast)
            cell.glyceroliseStart(title: data.0.rawValue, icon: data.1, row: indexPath.row, isLast: isLast)
            //: if data.0 ==  .Task_Center {
            if data.0 == .Task_Center {
                //: cell.setTaskCenterBtn()
                cell.subCock()
            }
            //: return cell
            return cell
        }

        //: switch(indexPath.row) {
        switch indexPath.row {
        //: case 0:
        case 0:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMeTopCell.className(), for: indexPath) as! TalkingMeTopCell
            let cell = tableView.dequeueReusableCell(withIdentifier: UnitedStatesThen.className(), for: indexPath) as! UnitedStatesThen
            //: cell.setViewData()
            cell.crucify()
            //: return cell
            return cell
        //: case 1:
        case 1:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMeBannerCell.className(), for: indexPath) as! TalkingMeBannerCell
            let cell = tableView.dequeueReusableCell(withIdentifier: CellBannerDelegate.className(), for: indexPath) as! CellBannerDelegate
            //: cell.setViewData(bannerData: self.bannerListData)
            cell.mix(bannerData: self.bannerListData)
            //: return cell
            return cell
        //: case 2:
        case 2:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMeTwoColumnsCell.className(), for: indexPath) as! TalkingMeTwoColumnsCell
            let cell = tableView.dequeueReusableCell(withIdentifier: CardinalView.className(), for: indexPath) as! CardinalView
            //: cell.setViewData()
            cell.marginOfSafetyData()
            //: return cell
            return cell
        //: case 3:
        case 3:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMeThreeColumnsCell.className(), for: indexPath) as! TalkingMeThreeColumnsCell
            let cell = tableView.dequeueReusableCell(withIdentifier: ReadViewDelegate.className(), for: indexPath) as! ReadViewDelegate
            //: cell.setViewData()
            cell.notEventChannel()
            //: return cell
            return cell

        //: default:
        default:
            //: break
            break
        }

        //: let cell = tableView.dequeueReusableCell(withIdentifier: UITableViewCell.className(), for: indexPath)
        let cell = tableView.dequeueReusableCell(withIdentifier: UITableViewCell.className(), for: indexPath)
        //: cell.backgroundColor = .clear
        cell.backgroundColor = .clear
        //: cell.selectionStyle = .none
        cell.selectionStyle = .none
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: if indexPath.section == 0 && indexPath.row == 1 && self.bannerListData.count <= 0 {
        if indexPath.section == 0 && indexPath.row == 1 && self.bannerListData.count <= 0 {
            //: return 0
            return 0
        }
        //: return UITableView.automaticDimension
        return UITableView.automaticDimension
    }

    //: func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, estimatedHeightForRowAt _: IndexPath) -> CGFloat {
        //: return 80
        return 80
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: guard indexPath.section == 1 else { return }
        guard indexPath.section == 1 else { return }
        //: let data = tupleData[indexPath.row]
        let data = tupleData[indexPath.row]
        //: switch data.0 {
        switch data.0 {
        //: case .My_Chat_Settings:
        case .My_Chat_Settings:
            //: let vc = TalkingFemalePriceSetVC()
            let vc = OpenViewDelegate()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: case .My_Automatic:
        case .My_Automatic:
            //: let vc = TalkingAutoGreetSettingVC()
            let vc = UnknownDataSource()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: case .My_Settings:
        case .My_Settings:
            //: let vc = TalkingSettingsVC()
            let vc = WriteDataSource()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: case .Task_Center:
        case .Task_Center:
            //: IndoorsPushManager.share.func__pushToWebVC(webViewType: .TaskCenter)
            IndoorsPushManager.share.pushType(webViewType: .TaskCenter)

        //: case .My_Beautify:
        case .My_Beautify:
            //: judgeCameraAuthorization()
            businessRelation()

        //: case .My_VideoSetting:
        case .My_VideoSetting:
            //: let vc = TalkingVideoSettingsVC.init()
            let vc = AdRecognizerDelegate()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: default: break
        default: break
        }
    }
}

// MARK: - Layout

//: extension TalkingMeViewController {
extension StrideRecognizerDelegate {
    /// 添加视图
    //: private func setupSubviews() {
    private func punctuateColor() {
        //: self.view.addSubview(tableView)
        self.view.addSubview(tableView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func fillHost() {
        //: tableView.snp.makeConstraints { make in
        tableView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
