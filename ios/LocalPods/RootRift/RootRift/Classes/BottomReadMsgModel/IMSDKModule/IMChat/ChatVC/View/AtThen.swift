
//: Declare String Begin

/*: "AtThen deinit" :*/
fileprivate let str_textWrapLetData:String = "Quotepush equal source error manager"
fileprivate let str_packageFatalName:String = "PopVimage case window"
fileprivate let str_acceptValue:[Character] = ["i","e","w"]
fileprivate let str_sendValue:[Character] = [" ","d","e","i","n","i","t"]

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_byValue:[UInt8] = [0xb8,0xbf,0xb8,0xa5,0xf9,0xb2,0xbe,0xb5,0xb4,0xa3,0xeb,0xf8,0xf1,0xb9,0xb0,0xa2,0xf1,0xbf,0xbe,0xa5,0xf1,0xb3,0xb4,0xb4,0xbf,0xf1,0xb8,0xbc,0xa1,0xbd,0xb4,0xbc,0xb4,0xbf,0xa5,0xb4,0xb5]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AtThen.swift
//
//

//: import UIKit
import UIKit

//: class QuoteDetailPopView: UIView {
class AtThen: UIView {
    //: var popView: TalkingPopView?
    var popView: MessageScalePopView?

    //: deinit {
    deinit {
        //: printLog(message: "QuoteDetailPopView deinit")
        printLog(message: (String(str_textWrapLetData.prefix(5)) + "Detail" + String(str_packageFatalName.prefix(4)) + String(str_acceptValue) + String(str_sendValue)))
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.lengthTo()
        //: self.setupSubViewsConstraint()
        self.menuShould()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_byValue.map{$0^209}, encoding: .utf8)!)
    }

    //: var msgDetailText: String? {
    var msgDetailText: String? { // 提示文字
        //: didSet {
        didSet {
            //: messageView.text = msgDetailText
            messageView.text = msgDetailText
        }
    }

    //: lazy var messageView: UILabel = {
    lazy var messageView: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        lb.font = UIFont.conversationSize(type: .Regular, fontSize: 16)
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.ending()
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.backgroundColor = .clear
        lb.backgroundColor = .clear
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()
}

//: extension QuoteDetailPopView {
extension AtThen {
    //: func show() {
    func tight() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = MessageScalePopView(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.sharedLive(view: self)
        //: popView?.showInView(view: ListMacroDefine.getWindow())
        popView?.targetView(view: ListMacroDefine.startLoad())
    }

    //: @objc func dismiss() {
    @objc func exceptColor() {
        //: popView?.dismissView()
        popView?.reject()
        //: popView = nil
        popView = nil
    }
}

//: extension QuoteDetailPopView {
extension AtThen {
    // 添加视图
    //: private func setupSubviews() {
    private func lengthTo() {
        //: self.backgroundColor = UIColor.appBgColor()
        self.backgroundColor = UIColor.modelCard()
        //: self.addSubview(messageView)
        self.addSubview(messageView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func menuShould() {
        //: messageView.snp.makeConstraints { make in
        messageView.snp.makeConstraints { make in
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
    }
}
