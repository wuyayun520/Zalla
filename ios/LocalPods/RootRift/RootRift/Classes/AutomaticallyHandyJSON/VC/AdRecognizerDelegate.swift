
//: Declare String Begin

/*: "Beautify Settings" :*/
fileprivate let str_sizeValue:[Character] = ["B","e","a","u","t","i","f"]
fileprivate let str_intimateText:String = "raw myy Set"
fileprivate let str_styleReceiveValue:[Character] = ["t","i","n","g","s"]

/*: "icon_me_videoSet_beauty" :*/
fileprivate let str_textContent:[Character] = ["i","c","o","n","_","m","e","_"]
fileprivate let str_errorData:[Character] = ["v","i","d","e","o","S","e","t"]
fileprivate let str_addName:String = "upon component_beauty"

/*: "Video Settings" :*/
fileprivate let str_trackValue:String = "Video Setframe image"
fileprivate let str_shareData:[Character] = ["t","i","n","g","s"]

/*: "TalkingSettingReceiveVideoCellId" :*/
fileprivate let str_centerName:[UInt8] = [0x64,0x49,0x6c,0x6c,0x65,0x43,0x6f,0x65,0x64,0x69,0x56,0x65,0x76,0x69,0x65,0x63,0x65,0x52,0x67,0x6e,0x69,0x74,0x74,0x65,0x53,0x67,0x6e,0x69,0x6b,0x6c,0x61,0x54]

/*: "Enter " :*/
fileprivate let str_talkRowName:String = "text return forEnter "

/*: "Settings" :*/
fileprivate let str_scaleData:[Character] = ["S","e","t","t","i","n","g","s"]

/*: " and open " :*/
fileprivate let str_modeNameValue:[Character] = [" ","a","n","d"," "]
fileprivate let str_dataTitle:String = "last foropen "

/*: "Camera" :*/
fileprivate let str_dailyTitle:String = "Cameravar self model"

/*: " permission to use this function normally" :*/
fileprivate let str_adviceName:[UInt8] = [0x62,0x32,0x27,0x30,0x2f,0x2b,0x31,0x31,0x2b,0x2d,0x2c,0x62,0x36,0x2d,0x62,0x37,0x31,0x27,0x62,0x36,0x2a,0x2b,0x31,0x62,0x24,0x37,0x2c,0x21,0x36,0x2b,0x2d,0x2c,0x62,0x2c,0x2d,0x30,0x2f,0x23,0x2e,0x2e,0x3b]

private func labelMake(frame num: UInt8) -> UInt8 {
    return num ^ 66
}

/*: "Cancel" :*/
fileprivate let str_modelName:String = "Cancelextension view view cell"

/*: "Purple means turn on the call invitation, grey means turn off the call invitation." :*/
fileprivate let str_viewValue:[UInt8] = [0x2e,0x6e,0x6f,0x69,0x74,0x61,0x74,0x69,0x76,0x6e,0x69,0x20,0x6c,0x6c,0x61,0x63,0x20,0x65,0x68,0x74,0x20,0x66,0x66,0x6f,0x20,0x6e,0x72,0x75,0x74,0x20,0x73,0x6e,0x61,0x65,0x6d,0x20,0x79,0x65,0x72,0x67,0x20,0x2c,0x6e,0x6f,0x69,0x74,0x61,0x74,0x69,0x76,0x6e,0x69,0x20,0x6c,0x6c,0x61,0x63,0x20,0x65,0x68,0x74,0x20,0x6e,0x6f,0x20,0x6e,0x72,0x75,0x74,0x20,0x73,0x6e,0x61,0x65,0x6d,0x20,0x65,0x6c,0x70,0x72,0x75,0x50]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AdRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/10/25.
//

//: import UIKit
import UIKit

//: class TalkingVideoSettingsVC: TalkingBaseViewController {
class AdRecognizerDelegate: MusicViewController {
    // MARK: - life cycle

    //: private var headerData = [("Beautify Settings", "icon_me_videoSet_beauty"),
    private var headerData = [((String(str_sizeValue) + String(str_intimateText.suffix(5)) + String(str_styleReceiveValue)), (String(str_textContent) + String(str_errorData) + String(str_addName.suffix(7)))),
                              //: ("", ""),
                              ("", ""),
                              //: ("", "")]
                              ("", "")]

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.modelCard()
        //: self.title = "Video Settings".localized
        self.title = (String(str_trackValue.prefix(9)) + String(str_shareData)).localized
        //: self.setupSubviews()
        self.addConstraint()
        //: self.setupSubViewsConstraint()
        self.array()
    }

    // MARK: - Lazy load

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: .zero, style: .grouped)
        let table = UITableView(frame: .zero, style: .grouped)
        //: table.backgroundColor = UIColor.appBgColor()
        table.backgroundColor = UIColor.modelCard()
        //: table.register(TalkingSettingReceiveVideoCell.self, forCellReuseIdentifier: "TalkingSettingReceiveVideoCellId")
        table.register(GiftVideoCell.self, forCellReuseIdentifier: String(bytes: str_centerName.reversed(), encoding: .utf8)!)
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
        //: return table
        return table
        //: }()
    }()
}

// MARK: - private methods

//: extension TalkingVideoSettingsVC {
extension AdRecognizerDelegate {
    //: func judgeCameraAuthorization() {
    func authorization() {
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
                //: TalkingAlertShow.alert(title: nil, message: "Enter \"Settings\" and open \"Camera\" permission to use this function normally".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Settings".localized) {
                AlongThen.harvest(title: nil, message: (String(str_talkRowName.suffix(6))) + "\"" + (String(str_scaleData)) + "\"" + (String(str_modeNameValue) + String(str_dataTitle.suffix(5))) + "\"" + (String(str_dailyTitle.prefix(6))) + "\"" + String(bytes: str_adviceName.map{labelMake(frame: $0)}, encoding: .utf8)!.localized, leftBtnTitle: (String(str_modelName.prefix(6))).localized, rightBtnTitle: (String(str_scaleData)).localized) {
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
                        //: UIApplication.shared.open(url!, options: [:], completionHandler: {(success) in})
                        UIApplication.shared.open(url!, options: [:], completionHandler: { _ in })
                    }
                }
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingVideoSettingsVC: UITableViewDelegate, UITableViewDataSource {
extension AdRecognizerDelegate: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return headerData.count
        return headerData.count
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: if section == 0 {
        if section == 0 {
            //: return 0
            return 0
            //: } else if section == 1 {
        } else if section == 1 {
            //: return 2
            return 2
            //: } else if section == 2 {
        } else if section == 2 {
            //: return 1
            return 1
        }
        //: return 0
        return 0
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: if indexPath.section == 1 || indexPath.section == 2 {
        if indexPath.section == 1 || indexPath.section == 2 {
            //: return 65
            return 65
        }
        //: return 0
        return 0
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        //: if (section == 0 && SenseTime_Use) {
        if section == 0 && kLet_errorDeviceAppValue {
            //: return 75
            return 75
        }
        //: return 0.01
        return 0.01
    }

    //: func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        //: if section == 1 {
        if section == 1 {
            //: return actualWidth(w: 50.0)
            return actualWidth(w: 50.0)
        }
        //: return 0.01
        return 0.01
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: if indexPath.section == 1 || indexPath.section == 2 {
        if indexPath.section == 1 || indexPath.section == 2 {
            //: let cell: TalkingSettingReceiveVideoCell = tableView.dequeueReusableCell(withIdentifier: "TalkingSettingReceiveVideoCellId", for: indexPath) as! TalkingSettingReceiveVideoCell
            let cell: GiftVideoCell = tableView.dequeueReusableCell(withIdentifier: String(bytes: str_centerName.reversed(), encoding: .utf8)!, for: indexPath) as! GiftVideoCell
            //: if indexPath.section == 1 {
            if indexPath.section == 1 {
                //: if indexPath.row == 0 {
                if indexPath.row == 0 {
                    //: cell.refreshCell(type: .video)
                    cell.colorLive(type: .video)
                    //: } else if indexPath.row == 1 {
                } else if indexPath.row == 1 {
                    //: cell.refreshCell(type: .voice)
                    cell.colorLive(type: .voice)
                }
                //: } else if indexPath.section == 2 {
            } else if indexPath.section == 2 {
                //: cell.refreshCell(type: .randomVideo)
                cell.colorLive(type: .randomVideo)
            }
            //: return cell
            return cell
        }

        //: return UITableViewCell()
        return UITableViewCell()
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //: guard (section == 0 && SenseTime_Use) else { return nil }
        guard section == 0 && kLet_errorDeviceAppValue else { return nil }
        //: let headeView: TalkingVideoSettingHeaderCell = TalkingVideoSettingHeaderCell.init(style: .default, reuseIdentifier: nil)
        let headeView = ShowNameHeaderCell(style: .default, reuseIdentifier: nil)
        //: let data = self.headerData[section]
        let data = self.headerData[section]
        //: headeView.setViewData(title: data.0, icon: data.1)
        headeView.toLoad(title: data.0, icon: data.1)
        //: if section == 0 {
        if section == 0 {
            //: headeView.setTips(isHidden: true)
            headeView.makeHidden(isHidden: true)
        }
        //: headeView.touchBlock = { [weak self] in
        headeView.touchBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if section == 0 && SenseTime_Use {
            if section == 0 && kLet_errorDeviceAppValue {
                //: self.judgeCameraAuthorization()
                self.authorization()
            }
        }
        //: return headeView
        return headeView
    }

    //: func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForFooterInSection section: Int) -> UIView? {
        //: guard section == 1 else { return UIView() }
        guard section == 1 else { return UIView() }
        //: let view = UIView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: actualWidth(w: 50.0)))
        let view = UIView(frame: CGRect(x: 0, y: 0, width: kLet_scaleName, height: actualWidth(w: 50.0)))
        //: view.backgroundColor = UIColor.appBgColor()
        view.backgroundColor = UIColor.modelCard()
        //: let title = UILabel()
        let title = UILabel()
        //: title.backgroundColor = UIColor.clear
        title.backgroundColor = UIColor.clear
        //: title.font = UIFont.pingfangRugularFont(fontSize: 14)
        title.font = UIFont.rugular(fontSize: 14)
        //: title.textColor = UIColor.touchColor()
        title.textColor = UIColor.touchColor()
        //: title.text = "Purple means turn on the call invitation, grey means turn off the call invitation.".localized
        title.text = String(bytes: str_viewValue.reversed(), encoding: .utf8)!.localized
        //: title.numberOfLines = 0
        title.numberOfLines = 0
        //: title.textAlignment = .center
        title.textAlignment = .center
        //: view.addSubview(title)
        view.addSubview(title)
        //: title.snp.makeConstraints { make in
        title.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
        }
        //: return view
        return view
    }
}

// MARK: - Layout

//: extension TalkingVideoSettingsVC {
extension AdRecognizerDelegate {
    /// 添加视图
    //: private func setupSubviews() {
    private func addConstraint() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func array() {
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
