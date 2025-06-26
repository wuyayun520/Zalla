
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_makeContent:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "There's no posts yet." :*/
fileprivate let str_infoValue:String = "There\'"
fileprivate let str_lackData:[Character] = ["s"," ","n","o"," ","p","o","s","t","s"," ","y","e","t","."]

/*: "uid" :*/
fileprivate let str_routeContent:String = "modeld"

/*: "page" :*/
fileprivate let str_leadingSourceValue:[Character] = ["p","a","g","e"]

/*: "list" :*/
fileprivate let str_followData:String = "lstylest"

/*: "nickname" :*/
fileprivate let str_conversationData:String = "nicon"

/*: "age" :*/
fileprivate let str_addText:String = "AGE"

/*: "sex" :*/
fileprivate let str_selectedName:String = "listex"

/*: "isTPAuth" :*/
fileprivate let str_frameName:[Character] = ["i","s","T","P","A","u","t","h"]

/*: "headPic" :*/
fileprivate let str_voiceStackTitle:[Character] = ["h","e","a","d","P","i","c"]

/*: "pinCount" :*/
fileprivate let str_topData:String = "pinCountbetween frame if"

/*: "model" :*/
fileprivate let str_fileName:String = "dataodel"

/*: "Unpin from profile" :*/
fileprivate let str_pointValue:[Character] = ["U","n","p","i","n"," ","f","r","o","m"," ","p","r","o","f","i","l","e"]

/*: "Delete Post" :*/
fileprivate let str_videoTableName:String = "day"
fileprivate let str_borderName:String = "equal succeed panelete "

/*: "Pin to profile" :*/
fileprivate let str_bindName:String = "Pin to appear all"
fileprivate let str_toText:String = "psystem"
fileprivate let str_leadingText:String = "ofilenvironment"

/*: "id" :*/
fileprivate let str_bottomText:String = "ishow"

/*: "momentId" :*/
fileprivate let str_arcValue:[Character] = ["m","o","m","e","n","t","I","d"]

/*: "status" :*/
fileprivate let str_centerData:String = "stimageus"

/*: "Your post has been pinned" :*/
fileprivate let str_leadingTableContent:String = "equal model title right domainYour"
fileprivate let str_emptyValue:String = "action to bind name selfhas b"
fileprivate let str_interestData:[Character] = ["e","e"]
fileprivate let str_cellName:[Character] = ["n"," ","p","i","n","n","e","d"]

/*: "Your post has been Unpinned" :*/
fileprivate let str_effectData:String = "Your pbackground let tab net"
fileprivate let str_modelName:String = "var number cell to margins be"
fileprivate let str_modeTitle:[Character] = ["n","n","e","d"]

/*: "LostView" :*/
fileprivate let str_rowAllName:[Character] = ["T","a","l","k","i","n","g","M","o"]
fileprivate let str_pictureData:[Character] = ["m","e","n","t","I","t","e","m","C","e","l","l"]

/*: "Posts" :*/
fileprivate let str_showName:String = "in layer self imagePosts"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ScaleDataSource.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/22.
//

//: import UIKit
import UIKit

// MARK: - 属性声明 & 生命周期方法

//: class TalkingUserMomentVC: TalkingBaseViewController {
class ScaleDataSource: MusicViewController {
    //: var uid = ""
    var uid = ""
    //: var pageIndex = 0
    var pageIndex = 0
    //: var disposeBag = DisposeBag()
    var disposeBag = DisposeBag()
    //: var dataSourceArr: [TalkingMomentModel] = []
    var dataSourceArr: [CellMomentModel] = []

    //: init(uid: String) {
    init(uid: String) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: self.uid = uid
        self.uid = uid
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_makeContent.reversed(), encoding: .utf8)!)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: setupSubviews()
        fileOff()
        //: setupSubViewsConstraint()
        bottom()
        //: bindInteraction()
        can()
        //: reqData()
        errorMake()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: lazy var mainTableView: UITableView = {
    lazy var mainTableView: UITableView = {
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
        //: table.showsVerticalScrollIndicator = true
        table.showsVerticalScrollIndicator = true
        //: table.estimatedRowHeight = 0
        table.estimatedRowHeight = 0
        //: table.estimatedSectionFooterHeight = 0
        table.estimatedSectionFooterHeight = 0
        //: table.estimatedSectionHeaderHeight = 0
        table.estimatedSectionHeaderHeight = 0
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        table.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        //: return table
        return table
        //: }()
    }()

    //: lazy var emptyView: EmptyView = {
    lazy var emptyView: EmptyView = {
        //: var style = EmptyStyle()
        var style = ImageEmptyStyle()
        //: style.TipsTitle = "There's no posts yet."
        style.TipsTitle = (str_infoValue + String(str_lackData))
        //: let view = EmptyView.init(frame: self.view.frame, style: style)
        let view = EmptyView(frame: self.view.frame, style: style)
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Request & 数据处理

//: extension TalkingUserMomentVC {
extension ScaleDataSource {
    //: func reqData() {
    func errorMake() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["uid"] = uid
        dict[(str_routeContent.replacingOccurrences(of: "model", with: "ui"))] = uid
        //: dict["page"] = pageIndex
        dict[(String(str_leadingSourceValue))] = pageIndex
        //: TalkingMomentRequestTool.req_UserMomentList(params: dict) { succeed, result, errorModel in
        StreamRequestTool.packetCompletion(params: dict) { succeed, result, errorModel in

            //: self.mainTableView.endRefresh()
            self.mainTableView.clickValueRestore()
            //: if succeed {
            if succeed {
                //: guard let dict = result as? Dictionary<String, Any> else {
                guard let dict = result as? [String: Any] else {
                    //: if self.pageIndex > 0 {
                    if self.pageIndex > 0 {
                        //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                        self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    }
                    //: return
                    return
                }

                //: guard let array = dict["list"] as? Array<Any> else {
                guard let array = dict[(str_followData.replacingOccurrences(of: "style", with: "i"))] as? [Any] else {
                    //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    //: return
                    return
                }
                //: var dataArr: [TalkingMomentModel] = []
                var dataArr: [CellMomentModel] = []
                //: for i in 0..<array.count {
                for i in 0 ..< array.count {
                    //: if var model = JSONDeserializer<TalkingMomentModel>.deserializeFrom(dict: array[i] as? Dictionary<String, Any>, designatedPath: nil) {
                    if var model = JSONDeserializer<CellMomentModel>.deserializeFrom(dict: array[i] as? [String: Any], designatedPath: nil) {
                        //: model.nickname = dict["nickname"] as? String
                        model.nickname = dict[(str_conversationData.replacingOccurrences(of: "on", with: "k") + "name")] as? String
                        //: model.age = dict["age"] as? Int
                        model.age = dict[(str_addText.lowercased())] as? Int
                        //: model.sex = dict["sex"] as? String
                        model.sex = dict[(str_selectedName.replacingOccurrences(of: "list", with: "s"))] as? String
                        //: model.uid = dict["uid"] as? String
                        model.uid = dict[(str_routeContent.replacingOccurrences(of: "model", with: "ui"))] as? String
                        //: model.isTPAuth = dict["isTPAuth"] as? Bool ?? false
                        model.isTPAuth = dict[(String(str_frameName))] as? Bool ?? false
                        //: model.headPic = dict["headPic"] as? String
                        model.headPic = dict[(String(str_voiceStackTitle))] as? String
                        //: model.pinCount = dict["pinCount"] as! Int
                        model.pinCount = dict[(String(str_topData.prefix(8)))] as! Int
                        //: model.caculateItemHeight()
                        model.beyondRequest()
                        //: if model.uid == WatercourseThen.share.loginUserMode.userID {
                        if model.uid == WatercourseThen.share.loginUserMode.userID {
                            //: model.isUserDetail = true
                            model.isUserDetail = true
                        }
                        //: dataArr.append(model)
                        dataArr.append(model)
                    }
                }

                //: if dataArr.count < 20 {
                if dataArr.count < 20 { // 不足一页，隐藏更多
                    //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                }

                //: if self.pageIndex == 0 {
                if self.pageIndex == 0 {
                    //: self.dataSourceArr = dataArr
                    self.dataSourceArr = dataArr
                    //: if dataArr.count>0 {
                    if dataArr.count > 0 {
                        //: self.emptyView.removeFromSuperview()
                        self.emptyView.removeFromSuperview()
                    }
                    //: } else {
                } else {
                    //: self.dataSourceArr.append(contentsOf: dataArr)
                    self.dataSourceArr.append(contentsOf: dataArr)
                }

                //: self.mainTableView.reloadData()
                self.mainTableView.reloadData()
                //: } else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg )
                self.detailKey(showMsg: errorModel!.errorMsg)
            }
        }
    }
}

// MARK: - 事件方法

//: extension TalkingUserMomentVC {
extension ScaleDataSource {
    //: func headerRefresh() {
    func edit() {
        //: pageIndex = 0
        pageIndex = 0
        //: mainTableView.mj_header?.beginRefreshing()
        mainTableView.mj_header?.beginRefreshing()
        //: reqData()
        errorMake()
    }

    //: func footerRefresh() {
    func footer() {
        //: pageIndex += 1
        pageIndex += 1
        //: reqData()
        errorMake()
    }

    //: @objc func updateLikeNumber(notification: NSNotification) -> Void {
    @objc func approveBlock(notification: NSNotification) {
        //: let userinfo = notification.userInfo as![String: AnyObject]
        let userinfo = notification.userInfo as! [String: AnyObject]
        //: var model: TalkingMomentModel = userinfo["model"] as! TalkingMomentModel
        var model: CellMomentModel = userinfo[(str_fileName.replacingOccurrences(of: "data", with: "m"))] as! CellMomentModel
        //: if model.uid == WatercourseThen.share.loginUserMode.userID {
        if model.uid == WatercourseThen.share.loginUserMode.userID {
            //: model.isUserDetail = true
            model.isUserDetail = true
        }
        //: for i in 0..<self.dataSourceArr.count {
        for i in 0 ..< self.dataSourceArr.count {
            //: let tmodel = self.dataSourceArr[i]
            let tmodel = self.dataSourceArr[i]
            //: if model.mid == tmodel.mid {
            if model.mid == tmodel.mid {
                //: self.dataSourceArr[i] = model
                self.dataSourceArr[i] = model
                //: self.mainTableView.reloadRows(at: [IndexPath.init(row: i, section: 0)], with: .none)
                self.mainTableView.reloadRows(at: [IndexPath(row: i, section: 0)], with: .none)
                //: return
                return
            }
        }
    }

    //: func deleteCell(model: TalkingMomentModel, index: Int) {
    func iconMedium(model: CellMomentModel, index: Int) {
        //: let vc = TalkingMunuPopView.init(frame: self.view.frame)
        let vc = ColorGiftDataSource(frame: self.view.frame)

        //: if model.pinCount<3 {
        if model.pinCount < 3 {
            //: if model.pinStatus {
            if model.pinStatus {
                //: vc.initwithList(cellTitleList: ["Unpin from profile".localized, "Delete Post".localized])
                vc.collectionList(cellTitleList: [(String(str_pointValue)).localized, (str_videoTableName.replacingOccurrences(of: "day", with: "D") + String(str_borderName.suffix(6)) + "Post").localized])
                //: } else {
            } else {
                //: vc.initwithList(cellTitleList: ["Pin to profile".localized, "Delete Post".localized])
                vc.collectionList(cellTitleList: [(String(str_bindName.prefix(7)) + str_toText.replacingOccurrences(of: "system", with: "r") + str_leadingText.replacingOccurrences(of: "environment", with: "e")).localized, (str_videoTableName.replacingOccurrences(of: "day", with: "D") + String(str_borderName.suffix(6)) + "Post").localized])
            }
            //: } else {
        } else {
            //: if model.pinStatus {
            if model.pinStatus {
                //: vc.initwithList(cellTitleList: ["Unpin from profile".localized, "Delete Post".localized])
                vc.collectionList(cellTitleList: [(String(str_pointValue)).localized, (str_videoTableName.replacingOccurrences(of: "day", with: "D") + String(str_borderName.suffix(6)) + "Post").localized])
                //: } else {
            } else {
                //: vc.initwithList(cellTitleList: ["Delete Post".localized])
                vc.collectionList(cellTitleList: [(str_videoTableName.replacingOccurrences(of: "day", with: "D") + String(str_borderName.suffix(6)) + "Post").localized])
            }
        }

        //: vc.munuBlock = { [weak self] index, str in
        vc.munuBlock = { [weak self] index, str in
            //: guard let self = self else {return}
            guard let self = self else { return }

            //: if str == "Unpin from profile".localized {
            if str == (String(str_pointValue)).localized {
                //: self.topMoment(isTop: 0, model: model)
                self.windowModel(isTop: 0, model: model)
                //: } else if str == "Pin to profile".localized {
            } else if str == (String(str_bindName.prefix(7)) + str_toText.replacingOccurrences(of: "system", with: "r") + str_leadingText.replacingOccurrences(of: "environment", with: "e")).localized {
                //: self.topMoment(isTop: 1, model: model)
                self.windowModel(isTop: 1, model: model)
                //: } else if str == "Delete Post".localized {
            } else if str == (str_videoTableName.replacingOccurrences(of: "day", with: "D") + String(str_borderName.suffix(6)) + "Post").localized {
                //: ProgressHUD.show()
                AtAdView.sizeUp()
                //: var dict = Dictionary<String, Any>()
                var dict = [String: Any]()
                //: dict["id"] = model.mid
                dict["id"] = model.mid
                //: TalkingMomentRequestTool.req_DeleteMoment(params: dict) { succeed, result, errorModel in
                StreamRequestTool.withText(params: dict) { succeed, _, errorModel in
                    //: ProgressHUD.dismiss()
                    AtAdView.toAction()
                    //: if succeed {
                    if succeed {
                        //: if index<self.dataSourceArr.count {
                        if index < self.dataSourceArr.count {
                            //: self.disposeBag = DisposeBag()
                            self.disposeBag = DisposeBag()
                            //: self.mainTableView.mj_header?.beginRefreshing()
                            self.mainTableView.mj_header?.beginRefreshing()
                            //: } else if self.dataSourceArr.count == 1 {
                        } else if self.dataSourceArr.count == 1 {
                            //: self.dataSourceArr.removeAll()
                            self.dataSourceArr.removeAll()
                            //: self.disposeBag = DisposeBag()
                            self.disposeBag = DisposeBag()
                            //: self.view.addSubview(self.emptyView)
                            self.view.addSubview(self.emptyView)
                        }
                        //: } else {
                    } else {
                        //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                        self.detailKey(showMsg: errorModel!.errorMsg)
                    }
                }
            }
        }
    }

    //: func topMoment(isTop: Int, model: TalkingMomentModel) {
    func windowModel(isTop: Int, model: CellMomentModel) {
        //: ProgressHUD.show()
        AtAdView.sizeUp()
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["momentId"] = model.mid
        dict[(String(str_arcValue))] = model.mid
        //: dict["status"] = isTop
        dict[(str_centerData.replacingOccurrences(of: "image", with: "at"))] = isTop
        //: TalkingMomentRequestTool.req_TopMoment(params: dict) { succeed, result, errorModel in
        StreamRequestTool.comeOut(params: dict) { succeed, _, errorModel in
            //: ProgressHUD.dismiss()
            AtAdView.toAction()
            //: if succeed {
            if succeed {
                let str = isTop==1 ? "Your post has been pinned".localized : "Your post has been Unpinned".localized
                //: self.func__showStatusBarSuccessMsg(showMsg: str)
                self.sizeExecuteMsg(showMsg: str)
                //: self.disposeBag = DisposeBag()
                self.disposeBag = DisposeBag()
                //: self.mainTableView.mj_header?.beginRefreshing()
                self.mainTableView.mj_header?.beginRefreshing()
                //: } else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                self.detailKey(showMsg: errorModel!.errorMsg)
            }
        }
    }
}

// MARK: - UITableViewDelegate,UITableViewdataSourceArr

//: extension TalkingUserMomentVC: UITableViewDelegate, UITableViewDataSource {
extension ScaleDataSource: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return self.dataSourceArr.count
        return self.dataSourceArr.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: let model = self.dataSourceArr[indexPath.row]
        let model = self.dataSourceArr[indexPath.row]
        //: return model.itemHeight ?? 56
        return model.itemHeight ?? 56
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let identifier = "TalkingMomentItemCell"
        let identifier = (String(str_rowAllName) + String(str_pictureData))
        //: var cell = TalkingMomentItemCell(style: .default, reuseIdentifier: identifier, isMyHost: true)
        var cell = LostView(style: .default, reuseIdentifier: identifier, isMyHost: true)
        //: let model: TalkingMomentModel = self.dataSourceArr[indexPath.row]
        let model: CellMomentModel = self.dataSourceArr[indexPath.row]
        //: cell.configCell(model: model)
        cell.configUserFramework(model: model)
        //: cell.userInfoView.deleteBtn.rx.tap.subscribe(onNext: { [weak self] in
        cell.userInfoView.deleteBtn.rx.tap.subscribe(onNext: { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.deleteCell(model: model, index: indexPath.row)
            self.iconMedium(model: model, index: indexPath.row)
            //: }).disposed(by: cell.cellDisposeBag )
        }).disposed(by: cell.cellDisposeBag)
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, willDisplay _: UITableViewCell, forRowAt _: IndexPath) {}

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let model = self.dataSourceArr[indexPath.row]
        let model = self.dataSourceArr[indexPath.row]
        //: let vc =  TalkingMomentDetailVC.init(model: model)
        let vc = CutViewDelegate(model: model)
        //: vc.delegete = { [weak self] in
        vc.delegete = { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if indexPath.row<self.dataSourceArr.count {
            if indexPath.row < self.dataSourceArr.count {
                //: self.dataSourceArr.remove(at: indexPath.row)
                self.dataSourceArr.remove(at: indexPath.row)
                //: self.mainTableView.reloadData()
                self.mainTableView.reloadData()
                //: self.disposeBag = DisposeBag()
                self.disposeBag = DisposeBag()
            }
        }
        //: self.navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: - Layout

//: extension TalkingUserMomentVC {
extension ScaleDataSource {
    // 添加视图
    //: private func setupSubviews() {
    private func fileOff() {
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.modelCard()
        //: self.title = "Posts".localized
        self.title = (String(str_showName.suffix(5))).localized
        //: self.view.addSubview(emptyView)
        self.view.addSubview(emptyView)

        //: self.view.addSubview(mainTableView)
        self.view.addSubview(mainTableView)
        //: mainTableView.register(TalkingMomentItemCell.self, forCellReuseIdentifier: "TalkingMomentItemCell")
        mainTableView.register(LostView.self, forCellReuseIdentifier: (String(str_rowAllName) + String(str_pictureData)))
        //: mainTableView.dataSource = self
        mainTableView.dataSource = self
        //: mainTableView.delegate = self
        mainTableView.delegate = self
        //: self.view.bringSubviewToFront(emptyView)
        self.view.bringSubviewToFront(emptyView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func bottom() {
        //: mainTableView.snp.makeConstraints { make in
        mainTableView.snp.makeConstraints { make in
            //: make.top.equalTo(self.view).offset(12)
            make.top.equalTo(self.view).offset(12)
            //: make.bottom.equalTo(self.view.snp.bottom).offset(-12)
            make.bottom.equalTo(self.view.snp.bottom).offset(-12)
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func can() {
        //: mainTableView.addHeaderRefresh { [weak self] in
        mainTableView.addToComplection { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.headerRefresh()
            self.edit()
        }
        //: mainTableView.addFooterRefresh { [weak self] in
        mainTableView.capability { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.footerRefresh()
            self.footer()
        }

        //: emptyView.emptyBlock = { [weak self] in
        emptyView.emptyBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.mainTableView.mj_header?.beginRefreshing()
            self.mainTableView.mj_header?.beginRefreshing()
        }
        //: NotificationCenter.default.addObserver(self, selector: #selector(updateLikeNumber(notification:)), name: UPDATE_LIKE_NUMBER_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(approveBlock(notification:)), name: kLet_successInputMeValue, object: nil)
    }
}
