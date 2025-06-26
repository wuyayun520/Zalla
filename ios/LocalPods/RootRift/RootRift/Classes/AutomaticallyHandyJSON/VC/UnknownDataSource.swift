
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_topTitle:[UInt8] = [0xeb,0xf0,0xeb,0xf6,0xaa,0xe5,0xf1,0xe6,0xe7,0xf4,0xbc,0xab,0xa2,0xea,0xe3,0xf5,0xa2,0xf0,0xf1,0xf6,0xa2,0xe4,0xe7,0xe7,0xf0,0xa2,0xeb,0xef,0xf2,0xee,0xe7,0xef,0xe7,0xf0,0xf6,0xe7,0xe6]

fileprivate func textTab(border num: UInt8) -> UInt8 {
    let value = Int(num) - 130
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Greeting Message Settings" :*/
fileprivate let str_viewFrameTitle:[Character] = ["G","r","e","e","t","i","n","g"," ","M","e","s","s","a","g"]
fileprivate let str_messageData:[Character] = ["e"," ","S","e","t","t","i","n","g","s"]

/*: "InsideTableCell" :*/
fileprivate let str_cellData:String = "Talkihidden image case"
fileprivate let str_nameTitle:String = "cookie self toetingS"
fileprivate let str_valueEditText:String = "extension leftbleC"
fileprivate let str_imageSizeTitle:String = "addll"

/*: "Voice greeting" :*/
fileprivate let str_backData:[Character] = ["V","o","i"]
fileprivate let str_frameData:String = "ce gtitle category cell up index"

/*: "icon_me_greet_vioce" :*/
fileprivate let str_atHeadData:[Character] = ["i","c","o","n","_","m","e","_","g","r","e","e","t","_"]
fileprivate let str_searchTitle:[Character] = ["v","i","o","c","e"]

/*: "Text greeting" :*/
fileprivate let str_rawName:[Character] = ["T","e","x","t"," ","g","r","e","e","t"]
fileprivate let str_modelText:String = "icount"

/*: "icon_me_greet_text" :*/
fileprivate let str_taskName:String = "icon_self tool a kind"
fileprivate let str_outputName:String = "reecenter"

/*: "Photo greeting" :*/
fileprivate let str_makeText:String = "tap again raw selfPhot"
fileprivate let str_showTitle:[Character] = ["o"," ","g","r","e","e","t","i","n","g"]

/*: "icon_me_greet_photo" :*/
fileprivate let str_indexData:String = "let type pic clear toicon_m"
fileprivate let str_conversationValue:String = "et_photoadd edit"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  UnknownDataSource.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/2/9.
//

//: import UIKit
import UIKit

//: class TalkingAutoGreetSettingVC: TalkingBaseViewController {
class UnknownDataSource: MusicViewController {
    //: var settingModel = TalkingSettingModel()
    var settingModel = AutomaticallyHandyJSON()

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_topTitle.map{textTab(border: $0)}, encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: getSettingData()
        handle()
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Greeting Message Settings".localized
        self.title = (String(str_viewFrameTitle) + String(str_messageData)).localized
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.modelCard()
        //: setupSubviews()
        shouldSubviews()
        //: setupSubViewsConstraint()
        forbiddance()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy load

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight-TabBarViewHeight), style: UITableView.Style.plain)
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: kLet_scaleName, height: kLet_environmentText - kLet_descriptionValue), style: UITableView.Style.plain)
        //: table.backgroundColor = UIColor.clear
        table.backgroundColor = UIColor.clear
        //: table.register(TalkingGreetingSetTableCell.self, forCellReuseIdentifier: "TalkingGreetingSetTableCell")
        table.register(InsideTableCell.self, forCellReuseIdentifier: (String(str_cellData.prefix(5)) + "ngGre" + String(str_nameTitle.suffix(6)) + "etTa" + String(str_valueEditText.suffix(4)) + str_imageSizeTitle.replacingOccurrences(of: "add", with: "e")))
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

// MARK: - Request & 数据处理

//: extension TalkingAutoGreetSettingVC {
extension UnknownDataSource {
    //: func getSettingData() {
    func handle() {
        //: let dict = Dictionary<String, Any>()
        let dict = [String: Any]()
        //: TalkingMeRequestTool.req_GetGreetSetting(params: dict) { succeed, result, errorModel in
        AnteriorNarisRequestTool.colorGreetTitleGetSetting(params: dict) { succeed, result, _ in
            //: if succeed {
            if succeed {
                //: self.settingModel = JSONDeserializer<TalkingSettingModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil)!
                self.settingModel = JSONDeserializer<AutomaticallyHandyJSON>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil)!
                //: self.MainTable.reloadData()
                self.MainTable.reloadData()
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingAutoGreetSettingVC: UITableViewDelegate, UITableViewDataSource {
extension UnknownDataSource: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 3
        return 3
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return actualHeight(h: 50)
        return actualHeight(h: 50)
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection _: Int) -> CGFloat {
        //: return 15
        return 15
    }

    //: func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForFooterInSection _: Int) -> CGFloat {
        //: return 0.1
        return 0.1
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let identifier = "TalkingGreetingSetTableCell"
        let identifier = (String(str_cellData.prefix(5)) + "ngGre" + String(str_nameTitle.suffix(6)) + "etTa" + String(str_valueEditText.suffix(4)) + str_imageSizeTitle.replacingOccurrences(of: "add", with: "e"))
        //: let cell: TalkingGreetingSetTableCell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! TalkingGreetingSetTableCell
        let cell: InsideTableCell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! InsideTableCell

        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: cell.setCellMessage(titile: "Voice greeting".localized, iconStr: "icon_me_greet_vioce", isShowDet: self.settingModel.audioIsSet != 0)
            cell.whiteInfo(titile: (String(str_backData) + String(str_frameData.prefix(4)) + "reeting").localized, iconStr: (String(str_atHeadData) + String(str_searchTitle)), isShowDet: self.settingModel.audioIsSet != 0)

            //: } else if indexPath.section == 1 {
        } else if indexPath.section == 1 {
            //: cell.setCellMessage(titile: "Text greeting".localized, iconStr: "icon_me_greet_text", isShowDet: self.settingModel.textIsSet != 0)
            cell.whiteInfo(titile: (String(str_rawName) + str_modelText.replacingOccurrences(of: "count", with: "ng")).localized, iconStr: (String(str_taskName.prefix(5)) + "me_g" + str_outputName.replacingOccurrences(of: "center", with: "t") + "_text"), isShowDet: self.settingModel.textIsSet != 0)
            //: } else if indexPath.section == 2 {
        } else if indexPath.section == 2 {
            //: cell.setCellMessage(titile: "Photo greeting".localized, iconStr: "icon_me_greet_photo", isShowDet: self.settingModel.intimatePhotoIsSet != 0)
            cell.whiteInfo(titile: (String(str_makeText.suffix(4)) + String(str_showTitle)).localized, iconStr: (String(str_indexData.suffix(6)) + "e_gre" + String(str_conversationValue.prefix(8))), isShowDet: self.settingModel.intimatePhotoIsSet != 0)
        }
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: let vc = TalkingGreetAudioVC.init()
            let vc = AudioToolDelegate()
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: } else if indexPath.section == 1 {
        } else if indexPath.section == 1 {
            //: let vc = TalkingGreetTextVC.init()
            let vc = UpThen()
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: } else if indexPath.section == 2 {
        } else if indexPath.section == 2 {
            //: let vc = TalkingGreetPhotoVC.init()
            let vc = IndoorsRecognizerDelegate()
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection _: Int) -> UIView? {
        //: let view = UIView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: 15))
        let view = UIView(frame: CGRect(x: 0, y: 0, width: kLet_scaleName, height: 15))
        //: view.backgroundColor = UIColor.clear
        view.backgroundColor = UIColor.clear
        //: return view
        return view
    }

    //: func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForFooterInSection _: Int) -> UIView? {
        //: return UIView.init()
        return UIView()
    }
}

// MARK: - Layout

//: extension TalkingAutoGreetSettingVC {
extension UnknownDataSource {
    //: private func setupSubviews() {
    private func shouldSubviews() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
    }

    //: private func setupSubViewsConstraint() {
    private func forbiddance() {
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
        }
        //: MainTable.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 36, right: 0)
        MainTable.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 36, right: 0)
    }
}
