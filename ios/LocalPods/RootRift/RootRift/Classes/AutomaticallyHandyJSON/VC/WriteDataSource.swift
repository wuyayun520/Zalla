
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_appTitle:[UInt8] = [0xe2,0xe5,0xe2,0xff,0xa3,0xe8,0xe4,0xef,0xee,0xf9,0xb1,0xa2,0xab,0xe3,0xea,0xf8,0xab,0xe5,0xe4,0xff,0xab,0xe9,0xee,0xee,0xe5,0xab,0xe2,0xe6,0xfb,0xe7,0xee,0xe6,0xee,0xe5,0xff,0xee,0xef]

/*: "Settings" :*/
fileprivate let str_labelTitle:[Character] = ["S","e","t","t","i","n","g","s"]

/*: "Security" :*/
fileprivate let str_tableEffectName:[Character] = ["S","e","c","u","r","i"]
fileprivate let str_directionData:String = "tblock"

/*: "More" :*/
fileprivate let str_interactionText:String = "Morefor action view"

/*: "Logout succeeded!" :*/
fileprivate let str_atContent:[Character] = ["L","o","g","o","u","t"]
fileprivate let str_contentFileLetData:String = " sulet talk data let right"
fileprivate let str_selectedData:String = "return selfcceeded!"

/*: "AdViewCell" :*/
fileprivate let str_toData:String = "manager will downTalki"
fileprivate let str_equalValue:String = "tiicon"

/*: "Please communicate with online service first and then upload logs, logs are used to analyze problems you encountered in the use of the App!" :*/
fileprivate let str_modelTempValue:[UInt8] = [0xe1,0xdd,0xd4,0xd0,0xc2,0xd4,0x91,0xd2,0xde,0xdc,0xdc,0xc4,0xdf,0xd8,0xd2,0xd0,0xc5,0xd4,0x91,0xc6,0xd8,0xc5,0xd9,0x91,0xde,0xdf,0xdd,0xd8,0xdf,0xd4,0x91,0xc2,0xd4,0xc3,0xc7,0xd8,0xd2,0xd4,0x91,0xd7,0xd8,0xc3,0xc2,0xc5,0x91,0xd0,0xdf,0xd5,0x91,0xc5,0xd9,0xd4,0xdf,0x91,0xc4,0xc1,0xdd,0xde,0xd0,0xd5,0x91,0xdd,0xde,0xd6,0xc2,0x9d,0x91,0xdd,0xde,0xd6,0xc2,0x91,0xd0,0xc3,0xd4,0x91,0xc4,0xc2,0xd4,0xd5,0x91,0xc5,0xde,0x91,0xd0,0xdf,0xd0,0xdd,0xc8,0xcb,0xd4,0x91,0xc1,0xc3,0xde,0xd3,0xdd,0xd4,0xdc,0xc2,0x91,0xc8,0xde,0xc4,0x91,0xd4,0xdf,0xd2,0xde,0xc4,0xdf,0xc5,0xd4,0xc3,0xd4,0xd5,0x91,0xd8,0xdf,0x91,0xc5,0xd9,0xd4,0x91,0xc4,0xc2,0xd4,0x91,0xde,0xd7,0x91,0xc5,0xd9,0xd4,0x91,0xf0,0xc1,0xc1,0x90]

private func nameStatus(file num: UInt8) -> UInt8 {
    return num ^ 177
}

/*: "Cancel" :*/
fileprivate let str_arrayValue:[Character] = ["C","a","n","c","e","l"]

/*: "OK" :*/
fileprivate let str_serviceValue:[Character] = ["O","K"]

/*: "#999999" :*/
fileprivate let str_successValue:String = "#999999"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WriteDataSource.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/5.
//

//: import SwiftUI
import SwiftUI
//: import UIKit
import UIKit

//: enum SettingsType: String {
enum SettingsDefaultsSerializable: String {
    //: case Contact_information   = "Contact information"
    case Contact_information = "Contact information"
    //: case Turnon_Notif          = "Notifications"
    case Turnon_Notif = "Notifications"
    //: case Social_Preferences    = "Social Preferences"
    case Social_Preferences = "Social Preferences"
    //: case Announcement_Settings = "Announcement Settings"
    case Announcement_Settings = "Announcement Settings"
    //: case Terms                 = "Terms of Use"
    case Terms = "Terms of Use"
    //: case Privacy               = "Privacy Policy"
    case Privacy = "Privacy Policy"
    //: case Aboutus               = "About us"
    case Aboutus = "About us"
    //: case Upload_Log            = "Upload Log"
    case Upload_Log = "Upload Log"
    //: case Black_List            = "Blacklist"
    case Black_List = "Blacklist"
    //: case Feedback              = "Feedback"
    case Feedback
    //: case Logout                = "Logout"
    case Logout
}

//: class TalkingSettingsVC: TalkingBaseViewController {
class WriteDataSource: MusicViewController {
    //: fileprivate lazy var bag = DisposeBag()
    fileprivate lazy var bag = DisposeBag()

    //: override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    override init(nibName _: String?, bundle _: Bundle?) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_appTitle.map{$0^139}, encoding: .utf8)!)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewDidDisappear(_ animated: Bool) {
    override func viewDidDisappear(_ animated: Bool) {
        //: super.viewDidDisappear(animated)
        super.viewDidDisappear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Settings".localized
        self.title = (String(str_labelTitle)).localized
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.modelCard()
        //: designView()
        representation()
    }

    // MARK: - Lazy load

    //: private lazy var DataSource: [[SettingsType]] = {
    private lazy var DataSource: [[SettingsDefaultsSerializable]] = {
        //: var array = [[SettingsType]]()
        var array = [[SettingsDefaultsSerializable]]()
        //: var array1: [SettingsType] = [.Contact_information]
        var array1: [SettingsDefaultsSerializable] = [.Contact_information]
        //: var array2: [SettingsType] = [.Turnon_Notif]
        var array2: [SettingsDefaultsSerializable] = [.Turnon_Notif]
        //: var array3: [SettingsType] = [.Social_Preferences, .Announcement_Settings]
        var array3: [SettingsDefaultsSerializable] = [.Social_Preferences, .Announcement_Settings]

        //: var array4: [SettingsType] = [.Terms, .Privacy]
        var array4: [SettingsDefaultsSerializable] = [.Terms, .Privacy]
        //: var array5: [SettingsType] = [.Aboutus, .Upload_Log, .Black_List, .Feedback]
        var array5: [SettingsDefaultsSerializable] = [.Aboutus, .Upload_Log, .Black_List, .Feedback]
        //: var array6: [SettingsType] = [.Logout]
        var array6: [SettingsDefaultsSerializable] = [.Logout]

        //: array.append(array1)
        array.append(array1)
        //: array.append(array2)
        array.append(array2)
        //: array.append(array3)
        array.append(array3)
        //: array.append(array4)
        array.append(array4)
        //: array.append(array5)
        array.append(array5)
        //: array.append(array6)
        array.append(array6)
        //: return array
        return array
        //: }()
    }()

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight-TabBarViewHeight), style: UITableView.Style.plain)
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: kLet_scaleName, height: kLet_environmentText - kLet_descriptionValue), style: UITableView.Style.plain)
        //: table.backgroundColor = UIColor.clear
        table.backgroundColor = UIColor.clear
        //: return table
        return table
        //: }()
    }()

    //: private lazy var headerSource: [String] = {
    private lazy var headerSource: [String] = {
        //: var array = ["", "", "", "Security".localized, "More".localized, ""]
        var array = ["", "", "", (String(str_tableEffectName) + str_directionData.replacingOccurrences(of: "block", with: "y")).localized, (String(str_interactionText.prefix(4))).localized, ""]
        //: return array
        return array
        //: }()
    }()
}

// MARK: - Load data

//: extension TalkingSettingsVC {
extension WriteDataSource {
    /// logout
    //: func logoutTool() {
    func rounder() {
        //: guard TalkingPermissionTool.isLiveOrPartyActive() == false else { return }
        guard ColorPermissionTool.messageConversationContainer() == false else { return }
        //: guard TalkingSocketManager.shared.isTalking == false else {
        guard NameSocketManager.shared.isTalking == false else { // 音视频通话中
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.detailKey(showMsg: kLet_networkViewTitle)
            //: return
            return
        }

        //: ProgressHUD.show()
        AtAdView.sizeUp()
        //: TalkingLoginRequestTool.req_loginOut { t in
        WhiteIndexReactiveCompatible.showCompletion { t in
            //: ProgressHUD.dismiss()
            AtAdView.toAction()
            //: if t {
            if t {
                //: NotificationCenter.default.post(name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION, object: nil, userInfo: nil)
                NotificationCenter.default.post(name: kLet_screenPathName, object: nil, userInfo: nil)
            }
        }
    }

    //: func LockAccount() {
    func more() {
        //: ProgressHUD.show()
        AtAdView.sizeUp()
        //: TalkingMeRequestTool.req_LockAccount(params: [:]) { succeed, result, errorModel in
        AnteriorNarisRequestTool.sexText(params: [:]) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            AtAdView.toAction()
            //: if succeed {
            if succeed {
                //: self.logoutTool()
                self.rounder()
                //: self.func__showStatusBarSuccessMsg(showMsg: "Logout succeeded!".localized)
                self.sizeExecuteMsg(showMsg: (String(str_atContent) + String(str_contentFileLetData.prefix(3)) + String(str_selectedData.suffix(8))).localized)
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingSettingsVC: UITableViewDelegate, UITableViewDataSource {
extension WriteDataSource: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return headerSource.count
        return headerSource.count
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: let verr: [SettingsType] = DataSource[section]
        let verr: [SettingsDefaultsSerializable] = DataSource[section]
        //: return verr.count
        return verr.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return actualHeight(h: 50)
        return actualHeight(h: 50)
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        //: if section == 3 || section == 4 {
        if section == 3 || section == 4 {
            //: return 41
            return 41
        }
        //: return 12
        return 12
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let identifier = "TalkingSettingCell"
        let identifier = (String(str_toData.suffix(5)) + "ngSet" + str_equalValue.replacingOccurrences(of: "icon", with: "ng") + "Cell")
        //: let cell: TalkingSettingCell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! TalkingSettingCell
        let cell: AdViewCell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! AdViewCell

        //: let verr: [SettingsType] = DataSource[indexPath.section]
        let verr: [SettingsDefaultsSerializable] = DataSource[indexPath.section]

        //: if indexPath.section == DataSource.count - 1 {
        if indexPath.section == DataSource.count - 1 {
            //: cell.setLogout(detail: verr[indexPath.row].rawValue)
            cell.jumpEnable(detail: verr[indexPath.row].rawValue)

            //: cell.logutBtn.rx.tap.subscribe { [weak self] (event) in
            cell.logutBtn.rx.tap.subscribe { [weak self] _ in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.logoutTool()
                self.rounder()
                //: }.disposed(by: bag)
            }.disposed(by: bag)

            //: } else {
        } else {
            //: cell.setCellMessage(titile: verr[indexPath.row].rawValue, row: indexPath.row, isLast: indexPath.row == verr.count-1 )
            cell.majorityLast(titile: verr[indexPath.row].rawValue, row: indexPath.row, isLast: indexPath.row == verr.count - 1)
        }

        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let verr: [SettingsType] = DataSource[indexPath.section]
        let verr: [SettingsDefaultsSerializable] = DataSource[indexPath.section]
        //: if verr[indexPath.row] == .Feedback {
        if verr[indexPath.row] == .Feedback {
            //: let vc = TalkingFeedbackVC.init()
            let vc = FactoryReactiveCompatible()
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: } else if verr[indexPath.row] == .Black_List {
        } else if verr[indexPath.row] == .Black_List {
            //: let vc = TalkingBlacklistVC.init()
            let vc = StreamQualityViewController()
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: } else if verr[indexPath.row] == .Terms {
        } else if verr[indexPath.row] == .Terms {
            //: IndoorsPushManager.share.func__pushToWebVC(webViewType: .TermsofUse)
            IndoorsPushManager.share.pushType(webViewType: .TermsofUse)
            //: } else if verr[indexPath.row] == .Privacy {
        } else if verr[indexPath.row] == .Privacy {
            //: IndoorsPushManager.share.func__pushToWebVC(webViewType: .PrivacyPolicy)
            IndoorsPushManager.share.pushType(webViewType: .PrivacyPolicy)
            //: } else if verr[indexPath.row] == .Contact_information {
        } else if verr[indexPath.row] == .Contact_information {
            //: let vc = TalkingSettingsUniversalVC.init()
            let vc = PerformanceViewDelegate()
            //: vc.setUnicersalView(type: .Contact_information)
            vc.overDesign(type: .Contact_information)
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: } else if verr[indexPath.row] == .Turnon_Notif {
        } else if verr[indexPath.row] == .Turnon_Notif {
            //: let vc = TalkingSettingsUniversalVC.init()
            let vc = PerformanceViewDelegate()
            //: vc.setUnicersalView(type: .Notifications)
            vc.overDesign(type: .Notifications)
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: } else if verr[indexPath.row] == .Social_Preferences {
        } else if verr[indexPath.row] == .Social_Preferences {
            //: let vc = TalkingSettingsUniversalVC.init()
            let vc = PerformanceViewDelegate()
            //: vc.setUnicersalView(type: .Social_Preferences)
            vc.overDesign(type: .Social_Preferences)
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)

            //: } else if verr[indexPath.row] == .Announcement_Settings {
        } else if verr[indexPath.row] == .Announcement_Settings {
            //: IndoorsPushManager.share.func__pushToWebVC(webViewType: .GiftBroadcast)
            IndoorsPushManager.share.pushType(webViewType: .GiftBroadcast)

            //: } else if verr[indexPath.row] == .Aboutus {
        } else if verr[indexPath.row] == .Aboutus {
            //: let vc = TalkingAboutUsVC.init()
            let vc = CommandReactiveCompatible()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)
            //: } else if verr[indexPath.row] == .Upload_Log {
        } else if verr[indexPath.row] == .Upload_Log {
            //: let config = ShowAlertConfig()
            let config = ReloadAlertConfig()
            //: config.horizontalPadding = 30
            config.horizontalPadding = 30
            //: config.textFont = UIFont.pingfangRugularFont(fontSize: 16)
            config.textFont = UIFont.rugular(fontSize: 16)
            //: TalkingAlertShow.alert(title: nil, message: "Please communicate with online service first and then upload logs, logs are used to analyze problems you encountered in the use of the App!".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, rightBlock: {
            AlongThen.harvest(title: nil, message: String(bytes: str_modelTempValue.map{nameStatus(file: $0)}, encoding: .utf8)!.localized, leftBtnTitle: (String(str_arrayValue)).localized, rightBtnTitle: "OK".localized, rightBlock: {
                //: UploadLogTool.shared.uploadLog()
                EnableReactiveCompatible.shared.sharedWood()
                //: }, config: config)
            }, config: config)
        }
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //: let view = UIView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: 40))
        let view = UIView(frame: CGRect(x: 0, y: 0, width: kLet_scaleName, height: 40))
        //: view.backgroundColor = UIColor.appBgColor()
        view.backgroundColor = UIColor.modelCard()
        //: let title = UILabel.init()
        let title = UILabel()
        //: title.textColor = UIColor.init(hex: "#999999")
        title.textColor = UIColor(hex: (str_successValue.capitalized))
        //: title.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        title.font = UIFont.conversationSize(type: .Medium, fontSize: 16)
        //: title.text = headerSource[section]
        title.text = headerSource[section]
        //: view.addSubview(title)
        view.addSubview(title)
        //: title.snp.makeConstraints { make in
        title.snp.makeConstraints { make in
            //: make.leading.equalTo(view).offset(30)
            make.leading.equalTo(view).offset(30)
            //: make.centerY.equalTo(view)
            make.centerY.equalTo(view)
        }
        //: return view
        return view
    }
}

// MARK: - UI

//: extension TalkingSettingsVC {
extension WriteDataSource {
    //: private func designView() {
    private func representation() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
        //: MainTable.register(TalkingSettingCell.self, forCellReuseIdentifier: "TalkingSettingCell")
        MainTable.register(AdViewCell.self, forCellReuseIdentifier: (String(str_toData.suffix(5)) + "ngSet" + str_equalValue.replacingOccurrences(of: "icon", with: "ng") + "Cell"))
        //: MainTable.separatorStyle = .none
        MainTable.separatorStyle = .none
        //: MainTable.dataSource = self
        MainTable.dataSource = self
        //: MainTable.delegate = self
        MainTable.delegate = self
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
        }
        //: MainTable.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 36, right: 0)
        MainTable.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 36, right: 0)
    }
}
