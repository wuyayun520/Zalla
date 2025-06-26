
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_arcViewManagerText:[UInt8] = [0xa3,0xa4,0xa3,0xbe,0xe2,0xa9,0xa5,0xae,0xaf,0xb8,0xf0,0xe3,0xea,0xa2,0xab,0xb9,0xea,0xa4,0xa5,0xbe,0xea,0xa8,0xaf,0xaf,0xa4,0xea,0xa3,0xa7,0xba,0xa6,0xaf,0xa7,0xaf,0xa4,0xbe,0xaf,0xae]

private func makeTalk(title num: UInt8) -> UInt8 {
    return num ^ 202
}

/*: "#DCDCD" :*/
fileprivate let str_conversationTitle:String = "#DCDCvar location"
fileprivate let str_iconValue:String = "use"

/*: "Reply" :*/
fileprivate let str_giftValue:[Character] = ["R","e","p","l","y"]

/*: "btn_delete" :*/
fileprivate let str_securityTitle:String = "att"
fileprivate let str_portValue:String = "make manager var colorn_delete"

/*: "text" :*/
fileprivate let str_upTitle:String = "tecolort"

/*: "gift" :*/
fileprivate let str_cancelWithText:String = "centerft"

/*: "Sent " :*/
fileprivate let str_textTitle:String = "Sent view view let"

/*: " x :*/
fileprivate let str_labelTitle:String = "true extension up self voice x"

/*: "audio" :*/
fileprivate let str_videoArrayName:String = "modeludio"

/*: "[Audio]" :*/
fileprivate let str_cellCleanName:String = "model kit item birthday[Audio"
fileprivate let str_giftData:[Character] = ["]"]

/*: "img" :*/
fileprivate let str_timeHeadVarValue:[Character] = ["i","m","g"]

/*: "[Image]" :*/
fileprivate let str_clearName:String = "[Iobject manager bottom"
fileprivate let str_searchValue:String = "size amage]"

/*: "video" :*/
fileprivate let str_modelTitleValue:String = "fitdeo"

/*: ": [" :*/
fileprivate let str_emptyData:[Character] = [":"," ","["]

/*: "Video" :*/
fileprivate let str_resignData:[Character] = ["V","i","d","e","o"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RangeView.swift
//  RootRift
//
//  Created by Hemming on 2024/7/29.
//

//: import UIKit
import UIKit

//: class InputQuoteView: UIButton {
class RangeView: UIButton {
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: var closeBtnBlock: (() -> Void)?
    var closeBtnBlock: (() -> Void)?

    //: private override init(frame: CGRect) {
    override private init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        areaModel()
        //: setupSubViewsConstraint()
        event()
        //: bindInteraction()
        pick()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_arcViewManagerText.map{makeTalk(title: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    //: lazy var lineView: UIView = {
    lazy var lineView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor(hex: "#DCDCD")
        view.backgroundColor = UIColor(hex: (String(str_conversationTitle.prefix(5)) + str_iconValue.replacingOccurrences(of: "use", with: "D")))
        //: return view
        return view
        //: }()
    }()

    //: lazy var titleLab: UILabel = {
    lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 14)
        lab.font = UIFont.rugular(fontSize: 14)
        //: lab.textColor = .appValueColor()
        lab.textColor = .obtrudeUpon()
        //: lab.text = "Reply".localized
        lab.text = (String(str_giftValue)).localized
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var contentLab: UILabel = {
    lazy var contentLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 14)
        lab.font = UIFont.rugular(fontSize: 14)
        //: lab.textColor = .touchColor()
        lab.textColor = .touchColor()
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var closeBtn: UIButton = {
    lazy var closeBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.withView(name: "btn_delete"), for: .normal)
        btn.setImage(UIImage.withView(name: (str_securityTitle.replacingOccurrences(of: "at", with: "b") + String(str_portValue.suffix(8)))), for: .normal)
        //: return btn
        return btn
        //: }()
    }()

    //: var quoteModel: AbTalkingChatMsgQuoteModel? {
    var quoteModel: ToModel? {
        //: didSet {
        didSet {
            //: guard let quoteModel = quoteModel else { return }
            guard let quoteModel = quoteModel else { return }
            //: if quoteModel.renderType == "text" {
            if quoteModel.renderType == (str_upTitle.replacingOccurrences(of: "color", with: "x")) {
                //: self.contentLab.text = quoteModel.sendName + ":" + quoteModel.renderData.content
                self.contentLab.text = quoteModel.sendName + ":" + quoteModel.renderData.content
                //: } else if quoteModel.renderType == "gift" {
            } else if quoteModel.renderType == (str_cancelWithText.replacingOccurrences(of: "center", with: "gi")) {
                //: self.contentLab.text = quoteModel.sendName + ":" + "Sent ".localized + quoteModel.renderData.giftNameLocal() + " x\(quoteModel.renderData.giftNum)"
                self.contentLab.text = quoteModel.sendName + ":" + (String(str_textTitle.prefix(5))).localized + quoteModel.renderData.sumimate() + " x\(quoteModel.renderData.giftNum)"
                //: } else if quoteModel.renderType == "audio" {
            } else if quoteModel.renderType == (str_videoArrayName.replacingOccurrences(of: "model", with: "a")) {
                //: self.contentLab.text = quoteModel.sendName + ":" + "[Audio]".localized
                self.contentLab.text = quoteModel.sendName + ":" + (String(str_cellCleanName.suffix(6)) + String(str_giftData)).localized
                //: } else if quoteModel.renderType == "img" {
            } else if quoteModel.renderType == (String(str_timeHeadVarValue)) {
                //: self.contentLab.text = quoteModel.sendName + ":" + "[Image]".localized
                self.contentLab.text = quoteModel.sendName + ":" + (String(str_clearName.prefix(2)) + String(str_searchValue.suffix(5))).localized
                //: } else if quoteModel.renderType == "video" {
            } else if quoteModel.renderType == (str_modelTitleValue.replacingOccurrences(of: "fit", with: "vi")) {
                //: self.contentLab.text = quoteModel.sendName + ": [" + "Video".localized + "]"
                self.contentLab.text = quoteModel.sendName + ": [" + (String(str_resignData)).localized + "]"
            }
        }
    }
}

// MARK: - Layout

//: extension InputQuoteView {
extension RangeView {
    /// 添加视图
    //: private func setupSubviews() {
    private func areaModel() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.addSubview(titleLab)
        self.addSubview(titleLab)
        //: self.addSubview(contentLab)
        self.addSubview(contentLab)
        //: self.addSubview(lineView)
        self.addSubview(lineView)
        //: self.addSubview(closeBtn)
        self.addSubview(closeBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func event() {
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.leading.equalTo(9)
            make.leading.equalTo(9)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        //: contentLab.snp.makeConstraints { make in
        contentLab.snp.makeConstraints { make in
            //: make.leading.equalTo(titleLab.snp.trailing).offset(6)
            make.leading.equalTo(titleLab.snp.trailing).offset(6)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.lessThanOrEqualTo(-42)
            make.trailing.lessThanOrEqualTo(-42)
        }
        //: lineView.snp.makeConstraints { make in
        lineView.snp.makeConstraints { make in
            //: make.trailing.equalToSuperview().offset(-32)
            make.trailing.equalToSuperview().offset(-32)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
            //: make.width.equalTo(1)
            make.width.equalTo(1)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }
        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(lineView.snp.trailing)
            make.leading.equalTo(lineView.snp.trailing)
            //: make.trailing.equalToSuperview()
            make.trailing.equalToSuperview()
            //: make.height.equalTo(28)
            make.height.equalTo(28)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func pick() {
        //: closeBtn.rx.controlEvent(.touchUpInside)
        closeBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.closeBtnBlock?()
                self.closeBtnBlock?()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }
}
