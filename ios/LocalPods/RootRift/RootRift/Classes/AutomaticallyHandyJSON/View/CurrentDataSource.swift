
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_liteValue:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "Cancel" :*/
fileprivate let str_sendValue:String = "Cancelheight to self equal"

/*: "Submit" :*/
fileprivate let str_recordTakeData:[Character] = ["S","u","b","m","i","t"]

/*: "Please tell us your problems                   " :*/
fileprivate let str_succeedData:[UInt8] = [0x90,0xac,0xa5,0xa1,0xb3,0xa5,0x60,0xb4,0xa5,0xac,0xac,0x60,0xb5,0xb3,0x60,0xb9,0xaf,0xb5,0xb2,0x60,0xb0,0xb2,0xaf,0xa2,0xac,0xa5,0xad,0xb3,0x60,0x60,0x60,0x60,0x60,0x60,0x60,0x60,0x60,0x60,0x60,0x60,0x60,0x60,0x60,0x60,0x60,0x60,0x60]

fileprivate func giftRequest(style num: UInt8) -> UInt8 {
    let value = Int(num) - 64
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "You need to choose at least one." :*/
fileprivate let str_tableData:[UInt8] = [0x2e,0x65,0x6e,0x6f,0x20,0x74,0x73,0x61,0x65,0x6c,0x20,0x74,0x61,0x20,0x65,0x73,0x6f,0x6f,0x68,0x63,0x20,0x6f,0x74,0x20,0x64,0x65,0x65,0x6e,0x20,0x75,0x6f,0x59]

/*: "Please tell us your problems." :*/
fileprivate let str_controlText:String = "list model equal data normalPlea"
fileprivate let str_priceTitle:String = " us or make pop"
fileprivate let str_nextData:String = "PROB"

/*: "app/userReport" :*/
fileprivate let str_userValue:String = "app/card image indicator"
fileprivate let str_backValue:[Character] = ["R","e","p","o","r","t"]

/*: "id" :*/
fileprivate let str_playData:[UInt8] = [0x64,0x69]

/*: "reason" :*/
fileprivate let str_sizeValue:[Character] = ["r","e","a","s","o","n"]

/*: "desc" :*/
fileprivate let str_tableLastData:[UInt8] = [0x63,0x73,0x65,0x64]

/*: "mf/moment/report" :*/
fileprivate let str_colorInviteName:String = "scale center hidden crushmf/m"
fileprivate let str_environmentValue:String = "repviewt"

/*: "momentId" :*/
fileprivate let str_detailContent:[UInt8] = [0x3,0x5,0x3,0xfb,0x4,0xa,0xdf,0xfa]

fileprivate func usageData(add num: UInt8) -> UInt8 {
    let value = Int(num) + 106
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "mf/momentReply/report" :*/
fileprivate let str_collectionText:String = "any model viewmf/m"
fileprivate let str_modeData:String = "Replbackground error manager"
fileprivate let str_modelMakeVarName:String = "PORT"

/*: "app/videoReport" :*/
fileprivate let str_clearName:[Character] = ["a","p","p","/","v","i","d","e","o","R","e","p","o","r","t"]

/*: "logId" :*/
fileprivate let str_headTitle:[UInt8] = [0xca,0xc9,0xc1,0xef,0xc2]

private func birdContentCloud(mode num: UInt8) -> UInt8 {
    return num ^ 166
}

/*: "Submitted successfully" :*/
fileprivate let str_limitTimeValue:String = "title in shadowSubmi"
fileprivate let str_userText:[Character] = ["t","t","e"]
fileprivate let str_pointValue:[Character] = ["d"," ","s","u","c","c","e","s","s","f","u","l","l","y"]

/*: "Nudity" :*/
fileprivate let str_frameName:String = "Nuditybottom image time"

/*: "Violence" :*/
fileprivate let str_networkName:String = "var self data view shareViol"

/*: "Harassment" :*/
fileprivate let str_equalName:[Character] = ["H","a","r","a","s","s","m","e","n"]
fileprivate let str_topFloorName:String = "progress"

/*: "Suicide or Self-injury" :*/
fileprivate let str_shootText:String = "Suicito zone add self in"
fileprivate let str_centerTitle:String = "r Self-isystem self"
fileprivate let str_ofMethodPlayerContent:String = "njunexty"

/*: "False Information" :*/
fileprivate let str_deadlineModelTitle:String = "Fagender indicator"
fileprivate let str_centerValue:String = "hidden label let addlse I"
fileprivate let str_loadValue:String = "atiowith"

/*: "Spam" :*/
fileprivate let str_colorGiftValue:[Character] = ["S","p","a","m"]

/*: "Hate Speech" :*/
fileprivate let str_shareName:[Character] = ["H","a","t","e"," ","S","p","e","e","c"]
fileprivate let str_streamTitle:String = "text"

/*: "Terrorism" :*/
fileprivate let str_countLessText:String = "text past acrossTerr"
fileprivate let str_emptyData:String = "temp"

/*: "Sale of Illegal or Regulated Goods" :*/
fileprivate let str_makeData:[UInt8] = [0x73,0x64,0x6f,0x6f,0x47,0x20,0x64,0x65,0x74,0x61,0x6c,0x75,0x67,0x65,0x52,0x20,0x72,0x6f,0x20,0x6c,0x61,0x67,0x65,0x6c,0x6c,0x49,0x20,0x66,0x6f,0x20,0x65,0x6c,0x61,0x53]

/*: "Sending disgusting messages" :*/
fileprivate let str_addName:[Character] = ["S","e","n","d","i","n","g"," ","d","i","s","g","u","s","t","i","n","g"," ","m","e","s","s","a"]
fileprivate let str_toData:[Character] = ["g","e","s"]

/*: "Using photos of nudity or drugs" :*/
fileprivate let str_makeSmallDeleteContent:[UInt8] = [0x5c,0x7a,0x70,0x75,0x6e,0x27,0x77,0x6f,0x76,0x7b,0x76,0x7a,0x27,0x76,0x6d,0x27,0x75,0x7c,0x6b,0x70,0x7b,0x80,0x27,0x76,0x79,0x27,0x6b,0x79,0x7c,0x6e,0x7a]

fileprivate func labelRow(center num: UInt8) -> UInt8 {
    let value = Int(num) + 249
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Harassing or sending ads" :*/
fileprivate let str_pairData:[Character] = ["H","a","r","a","s","s","i","n","g"," ","o","r"," ","s","e","n"]
fileprivate let str_whiteData:String = "ding adsmatch base"

/*: "Defraud or using fake info" :*/
fileprivate let str_plusText:String = "event player action topDefrau"
fileprivate let str_makeText:String = "layer direct namesing "
fileprivate let str_tapContent:String = "string cell height info"

/*: "Others" :*/
fileprivate let str_eventStyleShowName:String = "Othersdata the self hidden path"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CurrentDataSource.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/14.
//

//: import Then
import Then
//: import UIKit
import UIKit

//: enum TalkingReportAlertType: CaseIterable {
enum ColorAlertType: CaseIterable {
    //: case reportCommentType
    case reportCommentType // 举报动态
    //: case reportDynamicType
    case reportDynamicType
    //: case reportUserType
    case reportUserType // 举报用户
    //: case reportVideo
    case reportVideo // 举报视频通话
}

// 是否举报成功block
//: typealias ReportViewHideBlock = (_ isReportSucc: Bool) -> Void
typealias ReportViewHideBlock = (_ isReportSucc: Bool) -> Void

//: class TalkingReportAlertView: UIView {
class CurrentDataSource: UIView {
    //: var reportType: TalkingReportAlertType?
    var reportType: ColorAlertType?
    //: var dataArray: Array<TalkingReportModel> = []
    var dataArray: [CurrentReportModel] = []
    //: var selectedModel = TalkingReportModel()
    var selectedModel = CurrentReportModel()
    //: var tempId: String = ""
    var tempId: String = ""
    //: var reportHideBlock: ReportViewHideBlock?
    var reportHideBlock: ReportViewHideBlock?
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()

    //: public init(frame: CGRect, type: TalkingReportAlertType?, rId: String) {
    public init(frame: CGRect, type: ColorAlertType?, rId: String) {
        //: tempId = rId
        tempId = rId
        //: reportType = type
        reportType = type
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        chromosomalMutation()
        //: setupSubViewsConstraint()
        ransacked()
        //: setupReasons()
        naturalEventReasons()
        //: bindInteraction()
        viewImage()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_liteValue.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var cancelButton = UIButton().then {
    lazy var cancelButton = UIButton().then {
        //: $0.setTitle("Cancel".localized, for: .normal)
        $0.setTitle((String(str_sendValue.prefix(6))).localized, for: .normal)
        //: $0.setTitleColor(UIColor.appThemeColor(), for: .normal)
        $0.setTitleColor(UIColor.smallFor(), for: .normal)
        //: $0.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        $0.titleLabel?.font = UIFont.conversationSize(type: .Medium, fontSize: 17)
        //: $0.backgroundColor = UIColor.white
        $0.backgroundColor = UIColor.white
        //: $0.layer.borderWidth = 1
        $0.layer.borderWidth = 1
        //: $0.layer.borderColor = UIColor.appThemeColor().cgColor
        $0.layer.borderColor = UIColor.smallFor().cgColor
        //: $0.layer.cornerRadius = 25
        $0.layer.cornerRadius = 25
        //: $0.clipsToBounds = true
        $0.clipsToBounds = true
        //: $0.addTarget(self, action: #selector(registerCancelAction), for: .touchUpInside)
        $0.addTarget(self, action: #selector(bindAcross), for: .touchUpInside)
    }

    //: lazy var submitButton = UIButton().then {
    lazy var submitButton = UIButton().then {
        //: $0.setTitle("Submit".localized, for: .normal)
        $0.setTitle((String(str_recordTakeData)).localized, for: .normal)
        //: $0.setTitleColor(UIColor.white, for: .normal)
        $0.setTitleColor(UIColor.white, for: .normal)
        //: $0.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        $0.titleLabel?.font = UIFont.conversationSize(type: .Medium, fontSize: 17)
        //: $0.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 126, height: 50)), for: .normal)
        $0.setBackgroundImage(UIImage.distancePlay(colors: UIColor.memoryImageAwake(), size: CGSize(width: 126, height: 50)), for: .normal)
        //: $0.layer.cornerRadius = 25
        $0.layer.cornerRadius = 25
        //: $0.clipsToBounds = true
        $0.clipsToBounds = true
        //: $0.addTarget(self, action: #selector(registerSubmitAction), for: .touchUpInside)
        $0.addTarget(self, action: #selector(enroll), for: .touchUpInside)
    }

    //: lazy var tableFooterView = UIView().then {
    lazy var tableFooterView = UIView().then {
        //: $0.frame = CGRect(x: 0, y: 0, width: ScreenWidth-actualWidth(w: 108), height: actualHeight(h: 74))
        $0.frame = CGRect(x: 0, y: 0, width: kLet_scaleName - actualWidth(w: 108), height: actualHeight(h: 74))
        //: $0.backgroundColor = UIColor.RGBA(245, 245, 248, 1)
        $0.backgroundColor = UIColor.nearComponentRgba(245, 245, 248, 1)
        //: $0.layer.masksToBounds = true
        $0.layer.masksToBounds = true
        //: $0.layer.cornerRadius = 5
        $0.layer.cornerRadius = 5
    }

    //: lazy var otherTextView = PlaceholderTextView(placeholder: "Please tell us your problems                   ".localized, placeholderColor: UIColor.touchColor(), frame: CGRect(x: 10, y: 10, width: ScreenWidth-actualWidth(w: 128), height: actualHeight(h: 54))).then {
    lazy var otherTextView = CommandView(placeholder: String(bytes: str_succeedData.map{giftRequest(style: $0)}, encoding: .utf8)!.localized, placeholderColor: UIColor.touchColor(), frame: CGRect(x: 10, y: 10, width: kLet_scaleName - actualWidth(w: 128), height: actualHeight(h: 54))).then {
        //: $0.backgroundColor = .clear
        $0.backgroundColor = .clear
        //: $0.placeholdertextView.backgroundColor = .clear
        $0.placeholdertextView.backgroundColor = .clear
        //: $0.limitWords = 200
        $0.limitWords = 200
        //: $0.isShowCountLabel = false
        $0.isShowCountLabel = false
        //: $0.isReturnHidden = true
        $0.isReturnHidden = true
        //: $0.plaleLabel.font = .pingfangFont(type: .Regular, fontSize: 16)
        $0.plaleLabel.font = .conversationSize(type: .Regular, fontSize: 16)
        //: $0.placeholdertextView.textColor = UIColor.appTitleColor()
        $0.placeholdertextView.textColor = UIColor.ending()
        //: $0.placeholdertextView.font = .pingfangFont(type: .Regular, fontSize: 16)
        $0.placeholdertextView.font = .conversationSize(type: .Regular, fontSize: 16)
    }

    //: lazy var bgView = UIView().then {
    lazy var bgView = UIView().then {
        //: $0.backgroundColor = UIColor.RGBA(0, 0, 0, 0.6)
        $0.backgroundColor = UIColor.nearComponentRgba(0, 0, 0, 0.6)
    }

    //: lazy var containerView = UIView().then {
    lazy var containerView = UIView().then {
        //: $0.backgroundColor = .white
        $0.backgroundColor = .white
        //: $0.layer.masksToBounds = true
        $0.layer.masksToBounds = true
        //: $0.layer.cornerRadius = 15
        $0.layer.cornerRadius = 15
    }

    //: lazy var tableView = UITableView.init(frame: .zero, style: .plain).then {
    lazy var tableView = UITableView(frame: .zero, style: .plain).then {
        //: $0.backgroundColor = .white
        $0.backgroundColor = .white
        //: $0.separatorStyle = .none
        $0.separatorStyle = .none
        //: $0.showsVerticalScrollIndicator = false
        $0.showsVerticalScrollIndicator = false
        //: $0.delegate = self
        $0.delegate = self
        //: $0.dataSource = self
        $0.dataSource = self
        //: if reportType != .reportCommentType, reportType != .reportVideo {
        if reportType != .reportCommentType, reportType != .reportVideo {
            //: $0.tableFooterView = self.tableFooterView
            $0.tableFooterView = self.tableFooterView
        }
        //: $0.register(TalkingReportViewCell.self, forCellReuseIdentifier: TalkingReportViewCell.className())
        $0.register(WhiteViewCell.self, forCellReuseIdentifier: WhiteViewCell.className())
    }
}

// MARK: - Bind && Event

//: extension TalkingReportAlertView {
extension CurrentDataSource {
    //: @objc func func__TapGestureRecognizer() {
    @objc func range() {
        //: self.endEditing(true)
        self.endEditing(true)
    }

    //: public func showReportViewIn(view: UIView?) {
    public func tip(view: UIView?) {
        //: if view == nil {
        if view == nil {
            //: let window = ListMacroDefine.getWindow()
            let window = ListMacroDefine.startLoad()
            //: window.addSubview(self)
            window.addSubview(self)
            //: return
            return
        }
        //: view?.addSubview(self)
        view?.addSubview(self)
    }

    /// 移除视图
    /// - Parameter succeed: 是否举报成功
    //: private func dismissReportView(succeed: Bool) {
    private func anList(succeed: Bool) {
        //: reportHideBlock?(succeed)
        reportHideBlock?(succeed)
        //: self.removeFromSuperview()
        self.removeFromSuperview()
    }

    /// 取消
    //: @objc func registerCancelAction() {
    @objc func bindAcross() {
        //: self.dismissReportView(succeed: false)
        self.anList(succeed: false)
    }

    /// 提交举报内容
    //: @objc func registerSubmitAction() {
    @objc func enroll() {
        //: if selectedModel.selected == false {
        if selectedModel.selected == false {
            //: self.func__showStatusBarErrorMsg(showMsg: "You need to choose at least one.".localized)
            self.detailKey(showMsg: String(bytes: str_tableData.reversed(), encoding: .utf8)!.localized)
            //: return
            return
        }
        //: if reportType == .reportUserType, otherTextView.placeholdertextView.text.isEmptyString {
        if reportType == .reportUserType, otherTextView.placeholdertextView.text.isEmptyString {
            //: self.func__showStatusBarErrorMsg(showMsg: "Please tell us your problems.".localized)
            self.detailKey(showMsg: (String(str_controlText.suffix(4)) + "se tell" + String(str_priceTitle.prefix(4)) + "your " + str_nextData.lowercased() + "lems.").localized)
            //: return
            return
        }

        //: var param: [String: String] = [:]
        var param: [String: String] = [:]
        //: var path: String = ""
        var path = ""

        //: switch self.reportType {
        switch self.reportType {
        //: case .reportUserType:
        case .reportUserType:
            //: path = "app/userReport"
            path = (String(str_userValue.prefix(4)) + "user" + String(str_backValue))
            //: param = ["id": tempId, "reason": selectedModel.type, "desc": otherTextView.placeholdertextView.text]
            param = ["id": tempId, (String(str_sizeValue)): selectedModel.type, String(bytes: str_tableLastData.reversed(), encoding: .utf8)!: otherTextView.placeholdertextView.text]

        //: case .reportDynamicType:
        case .reportDynamicType:
            //: path = "mf/moment/report"
            path = (String(str_colorInviteName.suffix(4)) + "oment/" + str_environmentValue.replacingOccurrences(of: "view", with: "or"))
            //: param = ["momentId": tempId, "reason": selectedModel.type]
            param = [String(bytes: str_detailContent.map{usageData(add: $0)}, encoding: .utf8)!: tempId, (String(str_sizeValue)): selectedModel.type]

        //: case .reportCommentType:
        case .reportCommentType:
            //: path = "mf/momentReply/report"
            path = (String(str_collectionText.suffix(4)) + "oment" + String(str_modeData.prefix(4)) + "y/re" + str_modelMakeVarName.lowercased())
            //: param = ["id": tempId, "reason": selectedModel.type]
            param = ["id": tempId, (String(str_sizeValue)): selectedModel.type]

        //: case .reportVideo:
        case .reportVideo:
            //: path = "app/videoReport"
            path = (String(str_clearName))
            //: param = ["logId": tempId, "reason": selectedModel.type]
            param = [String(bytes: str_headTitle.map{birdContentCloud(mode: $0)}, encoding: .utf8)!: tempId, (String(str_sizeValue)): selectedModel.type]

        //: default:
        default:
            //: break
            break
        }

        //: self.submitButton.isEnabled = false
        self.submitButton.isEnabled = false
        //: TalkingUserRequestManager.func__reportRequest(reqPath: path, reqParams: param) { succeed, result, errorModel in
        DirectorReactiveCompatible.hr(reqPath: path, reqParams: param) { succeed, _, _ in
            //: self.submitButton.isEnabled = true
            self.submitButton.isEnabled = true
            //: if succeed == true {
            if succeed == true {
                //: self.func__showStatusBarSuccessMsg(showMsg: "Submitted successfully".localized)
                self.sizeExecuteMsg(showMsg: (String(str_limitTimeValue.suffix(5)) + String(str_userText) + String(str_pointValue)).localized)
                //: self.dismissReportView(succeed: true)
                self.anList(succeed: true)
            }
        }
    }
}

// MARK: - Delegate

//: extension TalkingReportAlertView: UITableViewDelegate, UITableViewDataSource {
extension CurrentDataSource: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return dataArray.count
        return dataArray.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return actualHeight(h: 40)
        return actualHeight(h: 40)
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingReportViewCell.className()) as! TalkingReportViewCell
        let cell = tableView.dequeueReusableCell(withIdentifier: WhiteViewCell.className()) as! WhiteViewCell
        //: let model = dataArray[indexPath.item]
        let model = dataArray[indexPath.item]
        //: cell.updateReportCell(model: model)
        cell.rangeColor(model: model)
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: for model in dataArray {
        for model in dataArray {
            //: model.selected = false
            model.selected = false
        }

        //: let itemModel = dataArray[indexPath.item]
        let itemModel = dataArray[indexPath.item]
        //: itemModel.selected = true
        itemModel.selected = true
        //: self.selectedModel = itemModel
        self.selectedModel = itemModel

        //: tableView.reloadData()
        tableView.reloadData()
    }
}

// MARK: - Layout

//: extension TalkingReportAlertView {
extension CurrentDataSource {
    /// 添加视图
    //: private func setupSubviews() {
    private func chromosomalMutation() {
        //: addSubview(bgView)
        addSubview(bgView)
        //: addSubview(containerView)
        addSubview(containerView)
        //: containerView.addSubview(tableView)
        containerView.addSubview(tableView)
        //: containerView.addSubview(cancelButton)
        containerView.addSubview(cancelButton)
        //: containerView.addSubview(submitButton)
        containerView.addSubview(submitButton)
        //: tableFooterView.addSubview(otherTextView)
        tableFooterView.addSubview(otherTextView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func ransacked() {
        //: var height = actualHeight(h: 325)
        var height = actualHeight(h: 325)
        //: if reportType == .reportUserType {
        if reportType == .reportUserType {
            //: height = actualHeight(h: 375)
            height = actualHeight(h: 375)
            //: } else if reportType == .reportVideo {
        } else if reportType == .reportVideo {
            //: height = actualHeight(h: 338)
            height = actualHeight(h: 338)
        }
        //: let topY = (self.frame.height - height) / 2.0
        let topY = (self.frame.height - height) / 2.0

        //: bgView.snp.makeConstraints { make in
        bgView.snp.makeConstraints { make in
            //: make.leading.top.trailing.bottom.equalTo(0)
            make.leading.top.trailing.bottom.equalTo(0)
        }
        //: containerView.snp.makeConstraints { make in
        containerView.snp.makeConstraints { make in
            //: make.top.equalTo(topY)
            make.top.equalTo(topY)
            //: make.leading.equalTo(actualWidth(w: 40))
            make.leading.equalTo(actualWidth(w: 40))
            //: make.trailing.equalTo(actualWidth(w: -40))
            make.trailing.equalTo(actualWidth(w: -40))
            //: make.height.equalTo(height)
            make.height.equalTo(height)
        }
        //: tableView.snp.makeConstraints { make in
        tableView.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 14))
            make.leading.equalTo(actualWidth(w: 14))
            //: make.trailing.equalTo(actualWidth(w: -14))
            make.trailing.equalTo(actualWidth(w: -14))
            //: make.top.equalTo(actualHeight(h: 36))
            make.top.equalTo(actualHeight(h: 36))
            //: if reportType == .reportVideo {
            if reportType == .reportVideo {
                //: make.bottom.equalTo(actualHeight(h: -62))
                make.bottom.equalTo(actualHeight(h: -62))
                //: } else {
            } else {
                //: make.bottom.equalTo(actualHeight(h: -82))
                make.bottom.equalTo(actualHeight(h: -82))
            }
        }
        //: cancelButton.snp.makeConstraints { make in
        cancelButton.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 14))
            make.leading.equalTo(actualWidth(w: 14))
            //: make.bottom.equalTo(actualHeight(h: -16))
            make.bottom.equalTo(actualHeight(h: -16))
            //: make.size.equalTo(CGSize(width: 126, height: 50))
            make.size.equalTo(CGSize(width: 126, height: 50))
        }
        //: submitButton.snp.makeConstraints { make in
        submitButton.snp.makeConstraints { make in
            //: make.trailing.equalTo(actualWidth(w: -14))
            make.trailing.equalTo(actualWidth(w: -14))
            //: make.bottom.equalTo(actualHeight(h: -16))
            make.bottom.equalTo(actualHeight(h: -16))
            //: make.size.equalTo(CGSize(width: 126, height: 50))
            make.size.equalTo(CGSize(width: 126, height: 50))
        }
    }

    /// 添加数据
    //: private func setupReasons() {
    private func naturalEventReasons() {
        //: var reasonArray: [String] = []
        var reasonArray: [String] = []
        //: var type = 0
        var type = 0

        //: switch self.reportType {
        switch self.reportType {
        //: case .reportDynamicType, .reportCommentType:
        case .reportDynamicType, .reportCommentType:
            //: type = 6
            type = 6
            //: reasonArray = ["Nudity".localized,
            reasonArray = [(String(str_frameName.prefix(6))).localized,
                           //: "Violence".localized,
                           (String(str_networkName.suffix(4)) + "ence").localized,
                           //: "Harassment".localized,
                           (String(str_equalName) + str_topFloorName.replacingOccurrences(of: "progress", with: "t")).localized,
                           //: "Suicide or Self-injury".localized,
                           (String(str_shootText.prefix(5)) + "de o" + String(str_centerTitle.prefix(8)) + str_ofMethodPlayerContent.replacingOccurrences(of: "next", with: "r")).localized,
                           //: "False Information".localized,
                           (String(str_deadlineModelTitle.prefix(2)) + String(str_centerValue.suffix(5)) + "nform" + str_loadValue.replacingOccurrences(of: "with", with: "n")).localized,
                           //: "Spam".localized,
                           (String(str_colorGiftValue)).localized,
                           //: "Hate Speech".localized,
                           (String(str_shareName) + str_streamTitle.replacingOccurrences(of: "text", with: "h")).localized,
                           //: "Terrorism".localized,
                           (String(str_countLessText.suffix(4)) + "oris" + str_emptyData.replacingOccurrences(of: "temp", with: "m")).localized,
                           //: "Sale of Illegal or Regulated Goods".localized]
                           String(bytes: str_makeData.reversed(), encoding: .utf8)!.localized]

        //: case .reportUserType:
        case .reportUserType:
            //: type = 1
            type = 1
            //: reasonArray = ["Sending disgusting messages".localized,
            reasonArray = [(String(str_addName) + String(str_toData)).localized,
                           //: "Using photos of nudity or drugs".localized,
                           String(bytes: str_makeSmallDeleteContent.map{labelRow(center: $0)}, encoding: .utf8)!.localized,
                           //: "Harassing or sending ads".localized,
                           (String(str_pairData) + String(str_whiteData.prefix(8))).localized,
                           //: "Defraud or using fake info".localized,
                           (String(str_plusText.suffix(6)) + "d or u" + String(str_makeText.suffix(5)) + "fake" + String(str_tapContent.suffix(5))).localized,
                           //: "Others".localized]
                           (String(str_eventStyleShowName.prefix(6))).localized]

        //: case .reportVideo:
        case .reportVideo:
            //: if let reason = WatercourseThen.share.appConfigMode.videoReport["reason"] {
            if let reason = WatercourseThen.share.appConfigMode.videoReport[(String(str_sizeValue))] {
                //: reasonArray = reason as! [String]
                reasonArray = reason as! [String]
            }

        //: default:
        default:
            //: type = 0
            type = 0
            //: reasonArray = []
            reasonArray = []
        }

        //: for i in 0..<reasonArray.count {
        for i in 0 ..< reasonArray.count {
            //: let model = TalkingReportModel()
            let model = CurrentReportModel()
            //: model.reason = reasonArray[i]
            model.reason = reasonArray[i]
            //: if self.reportType == .reportVideo {
            if self.reportType == .reportVideo {
                //: model.type = "\(i)"
                model.type = "\(i)"
                //: } else {
            } else {
                //: model.type = "\(i+type)"
                model.type = "\(i + type)"
            }
            //: dataArray.append(model)
            dataArray.append(model)
        }

        //: tableView.reloadData()
        tableView.reloadData()
    }

    /// 添加事件
    //: private func bindInteraction() {
    private func viewImage() {
        //: let tapGesture = UITapGestureRecognizer()
        let tapGesture = UITapGestureRecognizer()
        //: bgView.addGestureRecognizer(tapGesture)
        bgView.addGestureRecognizer(tapGesture)
        //: tapGesture.rx.event.bind { [weak self] recognizer in
        tapGesture.rx.event.bind { [weak self] _ in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.endEditing(true)
            self.endEditing(true)
        }
        //: .disposed(by: disposeBag)
        .disposed(by: disposeBag)
    }
}
