
//: Declare String Begin

/*: "Follow" :*/
fileprivate let str_controlKeyValue:[Character] = ["F","o","l","l","o","w"]

/*: "Tip: Can't earn points if you follow each other~" :*/
fileprivate let str_finishData:[UInt8] = [0xaf,0x92,0x8b,0xc1,0xdb,0xb8,0x9a,0x95,0xdc,0x8f,0xdb,0x9e,0x9a,0x89,0x95,0xdb,0x8b,0x94,0x92,0x95,0x8f,0x88,0xdb,0x92,0x9d,0xdb,0x82,0x94,0x8e,0xdb,0x9d,0x94,0x97,0x97,0x94,0x8c,0xdb,0x9e,0x9a,0x98,0x93,0xdb,0x94,0x8f,0x93,0x9e,0x89,0x85]

private func caseLet(shared num: UInt8) -> UInt8 {
    return num ^ 251
}

/*: "Tip:" :*/
fileprivate let str_messageValue:[Character] = ["T","i","p",":"]

/*: "Favorite each other" :*/
fileprivate let str_playerData:String = "Favoricon gesture"
fileprivate let str_layerName:[Character] = ["a","c","h"," ","o","t","h","e","r"]

/*: " chat will be free" :*/
fileprivate let str_viewHiddenContent:String = "list make view detail chat "
fileprivate let str_colorNoticeName:String = "page labbe f"
fileprivate let str_modelName:[Character] = ["r","e","e"]

/*: "targetUid" :*/
fileprivate let str_giftLayerValue:String = "targetUinormal true"
fileprivate let str_toData:[Character] = ["d"]

/*: "type" :*/
fileprivate let str_replyQueryData:[Character] = ["t","y","p","e"]

/*: "attentionType" :*/
fileprivate let str_addValue:String = "locationtenti"
fileprivate let str_conversationData:String = "onTypeelse view filter empty self"

/*: "limit" :*/
fileprivate let str_userValue:String = "llayerit"

/*: "20" :*/
fileprivate let str_domainTitle:[Character] = ["2","0"]

/*: "page" :*/
fileprivate let str_collectionPageData:String = "pagmake"

/*: "AttendingView" :*/
fileprivate let str_cookieText:String = "let app tableTalkin"
fileprivate let str_tapValue:String = "count"
fileprivate let str_mmText:[Character] = ["i","o","n","C","e","l","l"]

/*: "You've got no favourite yet." :*/
fileprivate let str_sharedName:String = "You\'ve go"
fileprivate let str_bottomContent:[Character] = ["t"," ","n","o"," ","f","a","v","o","u","r","i","t"]
fileprivate let str_redErrorName:String = "image none lete yet."

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  IndoorsObjectProtocol.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/13.
//

//: import JXPagingView
import JXPagingView
//: import UIKit
import UIKit

//: class TalkingAttentionVC: TalkingBaseViewController {
class IndoorsObjectProtocol: MusicViewController {
    //: var pageIndex = 0
    var pageIndex = 0
    //: var DataSource: [TalkingAttentionModel] = []
    var DataSource: [CornerTransformable] = []

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Follow".localized
        self.title = (String(str_controlKeyValue)).localized
        //: self.view.backgroundColor = UIColor.white
        self.view.backgroundColor = UIColor.white
        //: designView()
        panoramicViewApp()
        //: reqData()
        fullMoon()
    }

    // MARK: - Lazy load

    //: lazy var emptyView: EmptyView = {
    lazy var emptyView: EmptyView = {
        //: let view = EmptyView()
        let view = EmptyView()
        //: return view
        return view
        //: }()
    }()

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight), style: UITableView.Style.plain)
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: kLet_scaleName, height: kLet_environmentText), style: UITableView.Style.plain)
        //: table.backgroundColor = UIColor.clear
        table.backgroundColor = UIColor.clear
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: table.contentInsetAdjustmentBehavior = .never
            table.contentInsetAdjustmentBehavior = .never
            //: } else {
        } else {
            //: self.automaticallyAdjustsScrollViewInsets = false
            self.automaticallyAdjustsScrollViewInsets = false
        }
        //: table.addHeaderRefresh { [weak self] in
        table.addToComplection { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.headerRefresh()
            self.popGift()
        }
        //: table.addFooterRefresh { [weak self] in
        table.capability { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.footerRefresh()
            self.tipRequest()
        }
        //: return table
        return table
        //: }()
    }()

    //: lazy var bottomView: UIView = {
    lazy var bottomView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor(red: 138/255.0, green: 121/255.0, blue: 249/255.0, alpha: 0.2)
        view.backgroundColor = UIColor(red: 138 / 255.0, green: 121 / 255.0, blue: 249 / 255.0, alpha: 0.2)
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 15)
        label.font = .conversationSize(type: .Regular, fontSize: 15)
        //: label.textColor = UIColor.appThemeColor()
        label.textColor = UIColor.smallFor()
        //: if WatercourseThen.share.loginUserMode.sex == Gender.female.rawValue {
        if WatercourseThen.share.loginUserMode.sex == PushDownStackScalarLiteral.female.rawValue {
            //: label.text = "Tip: Can't earn points if you follow each other~".localized
            label.text = String(bytes: str_finishData.map{caseLet(shared: $0)}, encoding: .utf8)!.localized
            //: } else {
        } else {
            label.text = "Tip:\"Favorite each other\" chat will be free".localized
        }
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: view.addSubview(label)
        view.addSubview(label)
        //: label.snp.makeConstraints { make in
        label.snp.makeConstraints { make in
            //: make.top.equalTo(view).offset(4)
            make.top.equalTo(view).offset(4)
            //: make.bottom.equalTo(view.snp.bottom).offset(-4)
            make.bottom.equalTo(view.snp.bottom).offset(-4)
            //: make.leading.equalTo(view).offset(15)
            make.leading.equalTo(view).offset(15)
            //: make.trailing.equalTo(view.snp.trailing).offset(-15)
            make.trailing.equalTo(view.snp.trailing).offset(-15)
        }

        //: return view
        return view
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingAttentionVC {
extension IndoorsObjectProtocol {
    //: func reqData() {
    func fullMoon() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["targetUid"] = WatercourseThen.share.loginUserMode.userID
        dict[(String(str_giftLayerValue.prefix(8)) + String(str_toData))] = WatercourseThen.share.loginUserMode.userID
        //: dict["type"] = "1"
        dict[(String(str_replyQueryData))] = "1"
        //: dict["attentionType"] = "1"
        dict[(str_addValue.replacingOccurrences(of: "location", with: "at") + String(str_conversationData.prefix(6)))] = "1"
        //: dict["limit"] = "20"
        dict[(str_userValue.replacingOccurrences(of: "layer", with: "im"))] = "20"
        //: dict["page"] = String(pageIndex)
        dict[(str_collectionPageData.replacingOccurrences(of: "make", with: "e"))] = String(pageIndex)

        //: HumanHeadRequestTool.req_atationList(params: dict) { succeed, result, errorModel in
        HumanHeadRequestTool.pullCompletion(params: dict) { succeed, result, _ in
            //: self.MainTable.endRefresh()
            self.MainTable.clickValueRestore()
            //: if succeed {
            if succeed {
                //: let array: Array =  result as! Array<Any>
                let array: Array = result as! [Any]
                //: if array.count == 0 && self.pageIndex > 0 {
                if array.count == 0, self.pageIndex > 0 {
                    //: self.MainTable.mj_footer?.endRefreshingWithNoMoreData()
                    self.MainTable.mj_footer?.endRefreshingWithNoMoreData()
                }
                //: var dataArr: [TalkingAttentionModel] = []
                var dataArr: [CornerTransformable] = []
                //: if let datas = Array<TalkingAttentionModel>.deserialize(from: array as? Array) {
                if let datas = Array<CornerTransformable>.deserialize(from: array as? Array) {
                    //: dataArr.append(contentsOf: (datas as? [TalkingAttentionModel])!)
                    dataArr.append(contentsOf: (datas as? [CornerTransformable])!)
                }
                //: if self.pageIndex == 0 {
                if self.pageIndex == 0 {
                    //: self.DataSource = dataArr
                    self.DataSource = dataArr
                    //: if dataArr.count>0 {
                    if dataArr.count > 0 {
                        //: self.emptyView.removeFromSuperview()
                        self.emptyView.removeFromSuperview()
                    }
                    //: } else {
                } else {
                    //: self.DataSource.append(contentsOf: dataArr)
                    self.DataSource.append(contentsOf: dataArr)
                }

                //: self.MainTable.reloadData()
                self.MainTable.reloadData()
            }
        }
    }

    //: func headerRefresh() {
    func popGift() {
        //: MainTable.mj_header?.beginRefreshing()
        MainTable.mj_header?.beginRefreshing()
        //: pageIndex = 0
        pageIndex = 0
        //: reqData()
        fullMoon()
    }

    //: func footerRefresh() {
    func tipRequest() {
        //: pageIndex += 1
        pageIndex += 1
        //: reqData()
        fullMoon()
    }
}

// MARK: - JXPagingViewListViewDelegate

//: extension TalkingAttentionVC: JXPagingViewListViewDelegate {
extension IndoorsObjectProtocol: JXPagingViewListViewDelegate {
    //: func listView() -> UIView {
    func listView() -> UIView {
        //: return self.view
        return self.view
    }

    //: func listScrollView() -> UIScrollView {
    func listScrollView() -> UIScrollView {
        //: return self.MainTable
        return self.MainTable
    }

    //: func listViewDidScrollCallback(callback: @escaping (UIScrollView) -> Void) {
    func listViewDidScrollCallback(callback _: @escaping (UIScrollView) -> Void) {}
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingAttentionVC: UITableViewDelegate, UITableViewDataSource {
extension IndoorsObjectProtocol: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return self.DataSource.count
        return self.DataSource.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 76
        return 76
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let identifier = "TalkingAttentionCell"
        let identifier = (String(str_cookieText.suffix(6)) + "gAtten" + str_tapValue.replacingOccurrences(of: "count", with: "t") + String(str_mmText))
        //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingAttentionCell
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? AttendingView
        //: if cell == nil {
        if cell == nil {
            //: cell = TalkingAttentionCell(style: .default, reuseIdentifier: identifier)
            cell = AttendingView(style: .default, reuseIdentifier: identifier)
        }
        //: let model: TalkingAttentionModel = self.DataSource[indexPath.row]
        let model: CornerTransformable = self.DataSource[indexPath.row]
        //: cell?.setCell(model: model, index: indexPath, Atype: .attention)
        cell?.playMiniAtype(model: model, index: indexPath, Atype: .attention)
        //: cell?.delegate = self
        cell?.delegate = self

        //: return cell!
        return cell!
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt _: IndexPath) {}
}

// MARK: - ColorIndexAttentionDelegate

//: extension TalkingAttentionVC: AttentionDelegate {
extension IndoorsObjectProtocol: ColorIndexAttentionDelegate {
    //: func cancelAtationSeleteIndex(_ index: IndexPath) {
    func textSeleteComponent(_ index: IndexPath) {
        //: self.DataSource.remove(at: index.row)
        self.DataSource.remove(at: index.row)
        //: self.MainTable.reloadData()
        self.MainTable.reloadData()
    }

    //: func belikeAtationSeleteIndex(_ index: IndexPath) {
    func child(_: IndexPath) {}
}

// MARK: - UI

//: extension TalkingAttentionVC {
extension IndoorsObjectProtocol {
    //: private func designView() {
    private func panoramicViewApp() {
        //: var style = EmptyStyle()
        var style = ImageEmptyStyle()
        //: style.TipsTitle = "You've got no favourite yet.".localized
        style.TipsTitle = (str_sharedName + String(str_bottomContent) + String(str_redErrorName.suffix(6))).localized
        //: emptyView = EmptyView.init(frame: self.view.frame, style: style)
        emptyView = EmptyView(frame: self.view.frame, style: style)
        //: self.view.addSubview(emptyView)
        self.view.addSubview(emptyView)
        //: emptyView.emptyBlock = {
        emptyView.emptyBlock = {
            //: self.MainTable.mj_header?.beginRefreshing()
            self.MainTable.mj_header?.beginRefreshing()
        }
        //: self.view.addSubview(bottomView)
        self.view.addSubview(bottomView)
        //: bottomView.snp.makeConstraints { make in
        bottomView.snp.makeConstraints { make in
            //: make.bottom.equalTo(self.view.snp.bottom).offset(-(KDeviceIsIphoneX ? 34 + 49-44  : 49))
            make.bottom.equalTo(self.view.snp.bottom).offset(-(kLet_managerText ? 34 + 49 - 44 : 49))
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
            //: make.height.equalTo(54)
            make.height.equalTo(54)
        }
        //: bottomView.isHidden = WatercourseThen.share.appStatus != AppSkinStatus.normal.rawValue
        bottomView.isHidden = WatercourseThen.share.appStatus != PublishWidthTotal.normal.rawValue

        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
        //: MainTable.register(TalkingAttentionCell.self, forCellReuseIdentifier: "TalkingAttentionCell")
        MainTable.register(AttendingView.self, forCellReuseIdentifier: (String(str_cookieText.suffix(6)) + "gAtten" + str_tapValue.replacingOccurrences(of: "count", with: "t") + String(str_mmText)))
        //: MainTable.separatorStyle = .none
        MainTable.separatorStyle = .none
        //: MainTable.dataSource = self
        MainTable.dataSource = self
        //: MainTable.delegate = self
        MainTable.delegate = self
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.top.equalTo(self.view).offset(12)
            make.top.equalTo(self.view).offset(12)
            //: make.bottom.equalTo(bottomView.snp.top)
            make.bottom.equalTo(bottomView.snp.top)
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
        }

        //: self.view.bringSubviewToFront(emptyView)
        self.view.bringSubviewToFront(emptyView)
    }
}
