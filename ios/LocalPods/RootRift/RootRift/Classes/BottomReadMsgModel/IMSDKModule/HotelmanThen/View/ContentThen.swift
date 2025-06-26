
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_userTitle:[UInt8] = [0x7a,0x7f,0x7a,0x85,0x39,0x74,0x80,0x75,0x76,0x83,0x4b,0x3a,0x31,0x79,0x72,0x84,0x31,0x7f,0x80,0x85,0x31,0x73,0x76,0x76,0x7f,0x31,0x7a,0x7e,0x81,0x7d,0x76,0x7e,0x76,0x7f,0x85,0x76,0x75]

fileprivate func doingeVersion(view num: UInt8) -> UInt8 {
    let value = Int(num) - 17
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ContentThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/10.
//

//: import UIKit
import UIKit

// 刷新消息方式
//: enum VideoReloadLiveMsgRoomType: Int {
enum RemoveTableMeasurable: Int {
    //: case TimeGap = 0
    case TimeGap = 0 // 0.5秒刷新一次消息
    //: case DirectNow
    case DirectNow // 直接刷新
}

//: @objc protocol TalkingVideoDanmuMsgListTableViewDelegate: NSObjectProtocol {
@objc protocol RequestObjectProtocol: NSObjectProtocol {
    ///
    //: @objc optional func startScroll()
    @objc optional func afterBy()

    //: @objc optional func endScroll()
    @objc optional func outspoken()
}

//: class TalkingVideoDanmuMsgListTableView: UIView {
class ContentThen: UIView {
    //: let reloadTimeSpan = 1.0
    let reloadTimeSpan = 1.0 /// 最小刷新时间间隔
    //: let RoomMsgScroViewTag = 1002
    let RoomMsgScroViewTag = 1002

    //: var  inAnimation = false
    var inAnimation = false /// 正在滚动(滚动时禁止执行插入动画)
    //: var  AllHeight = 0.0
    var AllHeight = 0.0
    //: var  mutex: pthread_mutex_t = pthread_mutex_t()
    var mutex: pthread_mutex_t = .init() /// 互斥锁

    //: var  msgArray = Array<TalkingVideoCallDanmuModel>()
    var msgArray = [PublishTransformable]() /// 消息数组(数据源)
    //: var  tempMsgArray = Array<TalkingVideoCallDanmuModel>()
    var tempMsgArray = [PublishTransformable]() /// 用于存储消息还未刷新到tableView的时候接收到的消息
    //: var inPending = false
    var inPending = false /// 是否处于爬楼状态
    //: var refreshTimer: Timer?
    var refreshTimer: Timer? /// 刷新定时器
    //: var reloadType: VideoReloadLiveMsgRoomType?
    var reloadType: RemoveTableMeasurable?
    //: weak var delegate: TalkingVideoDanmuMsgListTableViewDelegate?
    weak var delegate: RequestObjectProtocol?

    //: var touchTableGesblock: (() -> Void)?
    var touchTableGesblock: (() -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)

        //: pthread_mutex_init(&mutex, nil)
        pthread_mutex_init(&mutex, nil)
        //: AllHeight = 15
        AllHeight = 15
        //: setupSubviews()
        go()
        //: startTimer()
        isImage()

        //: let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tapAction))
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dataRender))
        //: self.addGestureRecognizer(tapGesture)
        self.addGestureRecognizer(tapGesture)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_userTitle.map{doingeVersion(view: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
    }

    //: lazy var msgTableView: UITableView = {
    lazy var msgTableView: UITableView = {
        //: let tableView = UITableView.init(frame: .zero, style: .plain)
        let tableView = UITableView(frame: .zero, style: .plain)
        //: tableView.backgroundColor = UIColor.clear
        tableView.backgroundColor = UIColor.clear
        //: tableView.showsVerticalScrollIndicator = false
        tableView.showsVerticalScrollIndicator = false
        //: tableView.separatorStyle = .none
        tableView.separatorStyle = .none
        //: tableView.keyboardDismissMode = .interactive
        tableView.keyboardDismissMode = .interactive
        //: tableView.bounces = false
        tableView.bounces = false
        //: tableView.tableFooterView = UIView.init()
        tableView.tableFooterView = UIView()
        //: tableView.sectionFooterHeight = 0
        tableView.sectionFooterHeight = 0
        //: tableView.sectionHeaderHeight = 0
        tableView.sectionHeaderHeight = 0
        //: tableView.delegate = self
        tableView.delegate = self
        //: tableView.dataSource = self
        tableView.dataSource = self
        //: tableView.tag = RoomMsgScroViewTag
        tableView.tag = RoomMsgScroViewTag
        //: return tableView
        return tableView

        //: }()
    }()
}

/// - Timer
//: extension TalkingVideoDanmuMsgListTableView {
extension ContentThen {
    //: func startTimer() {
    func isImage() {
        //: stopTimer()
        asBind()
        //: refreshTimer = Timer.scheduledTimer(timeInterval: reloadTimeSpan, target: self, selector: #selector(timerEvent), userInfo: nil, repeats: true)
        refreshTimer = Timer.scheduledTimer(timeInterval: reloadTimeSpan, target: self, selector: #selector(playlist), userInfo: nil, repeats: true)
    }

    //: func stopTimer() {
    func asBind() {
        //: refreshTimer?.invalidate()
        refreshTimer?.invalidate()
        //: refreshTimer = nil
        refreshTimer = nil
    }

    //: @objc func timerEvent() {
    @objc func playlist() {
        //: tryToappendAndScrollToBottom()
        dataConverterBottom()
    }

    //: @objc func tapAction() {
    @objc func dataRender() {
        //: self.touchTableGesblock?()
        self.touchTableGesblock?()
    }
}

///  消息处理
//: extension TalkingVideoDanmuMsgListTableView {
extension ContentThen {
    //: func addNewMsg(msgModel: TalkingVideoCallDanmuModel?) {
    func upwardsSuccess(msgModel: PublishTransformable?) {
        //: if msgModel == nil { return }
        if msgModel == nil { return }

        //: pthread_mutex_lock(&mutex)
        pthread_mutex_lock(&mutex)
        // 消息不直接加入到数据源
        //: self.tempMsgArray.append(msgModel!)
        self.tempMsgArray.append(msgModel!)
        //: pthread_mutex_unlock(&mutex)
        pthread_mutex_unlock(&mutex)

        //: if reloadType == .DirectNow {
        if reloadType == .DirectNow {
            //: tryToappendAndScrollToBottom()
            dataConverterBottom()
        }
    }

    /** 添加数据并滚动到底部 */
    //: func tryToappendAndScrollToBottom() {
    func dataConverterBottom() {
        // 处于爬楼状态更新更多按钮
        //: if !self.inPending {
        if !self.inPending {
            // 如果不处在爬楼状态，追加数据源并滚动到底部
            //: appendAndScrollToBottom()
            append()
        }
    }

    /** 追加数据源 */
    //: func appendAndScrollToBottom() {
    func append() {
        //: if (self.tempMsgArray.count < 1) {
        if self.tempMsgArray.count < 1 {
            //: return
            return
        }
        //: pthread_mutex_lock(&mutex)
        pthread_mutex_lock(&mutex)
        // 执行插入
        //: var indexPaths = Array<IndexPath>()
        var indexPaths = [IndexPath]()
        //: for item in self.tempMsgArray {
        for item in self.tempMsgArray {
            //: AllHeight += item.msgHeight
            AllHeight += item.msgHeight

            //: self.msgArray.append(item)
            self.msgArray.append(item)
            //: indexPaths.append(IndexPath.init(row: self.msgArray.count - 1, section: 0))
            indexPaths.append(IndexPath(row: self.msgArray.count - 1, section: 0))
        }
        //: self.msgTableView.insertRows(at: indexPaths, with: .none)
        self.msgTableView.insertRows(at: indexPaths, with: .none)
        //: self.tempMsgArray.removeAll()
        self.tempMsgArray.removeAll()

        //: pthread_mutex_unlock(&mutex)
        pthread_mutex_unlock(&mutex)

        //: if AllHeight > VideoMsgTableViewHeight {
        if AllHeight > kLet_senseFailName {
            //: if self.msgTableView.height < VideoMsgTableViewHeight {
            if self.msgTableView.height < kLet_senseFailName {
                //: var frame = self.msgTableView.frame
                var frame = self.msgTableView.frame
                //: frame.origin.y = 0
                frame.origin.y = 0
                //: self.msgTableView.frame = frame
                self.msgTableView.frame = frame
                //: self.msgTableView.height = VideoMsgTableViewHeight
                self.msgTableView.height = kLet_senseFailName
            }
            //: } else {
        } else {
            //: var frame = self.msgTableView.frame
            var frame = self.msgTableView.frame
            //: frame.origin.y = VideoMsgTableViewHeight - AllHeight
            frame.origin.y = kLet_senseFailName - AllHeight
            //: frame.size.height = AllHeight
            frame.size.height = AllHeight
            //: self.msgTableView.frame = frame
            self.msgTableView.frame = frame
        }

        // 执行插入动画并滚动
        //: scrollToBottom(animated: false)
        frank(animated: false)
    }

    /** 执行插入动画并滚动 */
    //: func scrollToBottom(animated: Bool) {
    func frank(animated: Bool) {
        //: let s = self.msgTableView.numberOfSections
        let s = self.msgTableView.numberOfSections // 有多少组
        //: if s<1 { return }
        if s < 1 { return }
        //: let r = self.msgTableView.numberOfRows(inSection: s-1)
        let r = self.msgTableView.numberOfRows(inSection: s - 1) // 最后一组行
        //: if r<1 { return }
        if r < 1 { return }
        //: let ip = IndexPath.init(row: r-1, section: s-1)
        let ip = IndexPath(row: r - 1, section: s - 1) // 取最后一行数据
        //: self.msgTableView.scrollToRow(at: ip, at: .bottom, animated: animated)
        self.msgTableView.scrollToRow(at: ip, at: .bottom, animated: animated) // 滚动到最后一行
    }

    //: func setInPending(inPending: Bool) {
    func loadUser(inPending: Bool) {
        //: self.inPending = inPending
        self.inPending = inPending
        // 新消息按钮可见状态
    }

    // 清空消息重置
    //: func reset() {
    func showAdd() {
        //: pthread_mutex_lock(&mutex)
        pthread_mutex_lock(&mutex)

        //: AllHeight = 15
        AllHeight = 15
        //: stopTimer()
        asBind()
        //: self.msgArray.removeAll()
        self.msgArray.removeAll()
        //: self.tempMsgArray.removeAll()
        self.tempMsgArray.removeAll()
        //: self.msgTableView.reloadData()
        self.msgTableView.reloadData()

        //: pthread_mutex_unlock(&mutex)
        pthread_mutex_unlock(&mutex)
    }
}

// MARK: - UIScrollViewDelegate

//: extension TalkingVideoDanmuMsgListTableView: UITableViewDelegate, UITableViewDataSource {
extension ContentThen: UITableViewDelegate, UITableViewDataSource {
    //: func scrollViewDidScroll(_ scrollView: UIScrollView) {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        //: if scrollView.tag != RoomMsgScroViewTag { return }
        if scrollView.tag != RoomMsgScroViewTag { return }
        // 开始滚动（自动|手动）
        //: inAnimation = true
        inAnimation = true
    }

    //: func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView) {
    func scrollViewDidEndScrollingAnimation(_: UIScrollView) {
        // 静止（自动）
        //: inAnimation = false
        inAnimation = false
    }

    //: func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
    func scrollViewWillBeginDragging(_: UIScrollView) {
        // 手动拖拽开始
        //: self.inPending = true
        self.inPending = true
        //: self.delegate?.startScroll?()
        self.delegate?.afterBy?()
    }

    //: func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        // 手动拖拽结束（decelerate：0松手时静止；1松手时还在运动,会触发DidEndDecelerating方法）
        //: if (!decelerate) {
        if !decelerate {
            //: finishDraggingWith(scrollView)
            toEachOpeneTarget(scrollView)
        }
    }

    //: func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        // 静止后触发（手动）
        //: finishDraggingWith(scrollView)
        toEachOpeneTarget(scrollView)
    }

    /** 手动拖拽动作彻底完成(减速到零) */
    //: func finishDraggingWith(_ scrollView: UIScrollView) {
    func toEachOpeneTarget(_ scrollView: UIScrollView) {
        //: self.delegate?.endScroll?()
        self.delegate?.outspoken?()

        //: inAnimation = false
        inAnimation = false
        //: let contentSizeH = scrollView.contentSize.height
        let contentSizeH = scrollView.contentSize.height
        //: let contentOffsetY = scrollView.contentOffset.y
        let contentOffsetY = scrollView.contentOffset.y
        //: let sizeH = scrollView.frame.size.height
        let sizeH = scrollView.frame.size.height

        //: self.inPending = contentSizeH - contentOffsetY - sizeH > 20.0
        self.inPending = contentSizeH - contentOffsetY - sizeH > 20.0
        // 如果不处在爬楼状态，追加数据源并滚动到底部
        //: tryToappendAndScrollToBottom()
        dataConverterBottom()
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return self.msgArray.count
        return self.msgArray.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: let msgModel = self.msgArray[indexPath.row]
        let msgModel = self.msgArray[indexPath.row]
        //: return msgModel.msgHeight + Double(VideocellLineSpeing)
        return msgModel.msgHeight + Double(kLet_screenStatusName)
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let msgModel = self.msgArray[indexPath.row]
        let msgModel = self.msgArray[indexPath.row]

        //: let cell = TalkingVideoDanmuMsgBassCell.initTableView(tableView: tableView, msg: msgModel, indexPath: indexPath)
        let cell = AppearanceViewCell.viewDraw(tableView: tableView, msg: msgModel, indexPath: indexPath)

        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: tableView.deselectRow(at: indexPath, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

//: extension TalkingVideoDanmuMsgListTableView {
extension ContentThen {
    //: func setupSubviews() {
    func go() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.addSubview(msgTableView)
        self.addSubview(msgTableView)
        //: self.msgTableView.frame = CGRect(x: 0, y: 0, width: VideoMsgTableViewWidth, height: VideoMsgTableViewHeight)
        self.msgTableView.frame = CGRect(x: 0, y: 0, width: kLet_transformTitle, height: kLet_senseFailName)
    }
}
