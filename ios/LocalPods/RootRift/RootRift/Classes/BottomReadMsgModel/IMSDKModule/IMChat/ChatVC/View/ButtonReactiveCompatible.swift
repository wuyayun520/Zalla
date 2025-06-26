
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_pushContent:[UInt8] = [0xb6,0xb1,0xb6,0xab,0xf7,0xbc,0xb0,0xbb,0xba,0xad,0xe5,0xf6,0xff,0xb7,0xbe,0xac,0xff,0xb1,0xb0,0xab,0xff,0xbd,0xba,0xba,0xb1,0xff,0xb6,0xb2,0xaf,0xb3,0xba,0xb2,0xba,0xb1,0xab,0xba,0xbb]

private func backgroundDate(make num: UInt8) -> UInt8 {
    return num ^ 223
}

/*: "0/ :*/
fileprivate let str_ofRequestName:[Character] = ["0","/"]

/*: "#AAAAAA" :*/
fileprivate let str_withName:String = "#AAAAAArequest self size"

/*: "btn_chatsettings_unchoice" :*/
fileprivate let str_toTitle:[Character] = ["b","t","n","_","c","h","a","t","s","e","t","t","i"]
fileprivate let str_scaleName:[Character] = ["n","g","s","_","u","n","c","h","o","i","c","e"]

/*: "btn_chatsettings_choiced" :*/
fileprivate let str_intimateTitle:String = "btn_chpath tab if"
fileprivate let str_makeIconName:String = "ongs"

/*: "Top" :*/
fileprivate let str_formatValue:String = "Topselect let let right"

/*: "Save" :*/
fileprivate let str_giftData:String = "self failSave"

/*: "Cancel" :*/
fileprivate let str_equalVideoValue:[Character] = ["C","a","n","c","e","l"]

/*: / :*/
fileprivate let str_actualValue:[Character] = ["/"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ButtonReactiveCompatible.swift
//  RootRift
//
//  Created by DouXiu on 2024/11/21.
//

//: import UIKit
import UIKit

//: class PrivateChatNotesView: UIView {
class ButtonReactiveCompatible: UIView {
    //: var dismissBlock: ((_ content: String, _ isTop: Int) -> Void)?
    var dismissBlock: ((_ content: String, _ isTop: Int) -> Void)?
    //: private var popView: TalkingPopView?
    private var popView: MessageScalePopView?
    /// 限制文本长度
    //: private var limitCount = 500
    private var limitCount = 500
    //: private var targetId = ""
    private var targetId = ""

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        fromUpNext()
        //: setupSubViewsConstraint()
        middleClassConstraint()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_pushContent.map{backgroundDate(make: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let height = actualWidth(w: 475) + kDeviceSafeBottomHeight
        let height = actualWidth(w: 475) + kLet_partyKeyTitle
        //: let v = UIView(frame: CGRect(x: 0, y: ScreenHeight-height, width: ScreenWidth, height: height))
        let v = UIView(frame: CGRect(x: 0, y: kLet_environmentText - height, width: kLet_scaleName, height: height))
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: v.Corner(width: v.width, height: v.height, corners: [.topLeft, .topRight], cornerRadii: .init(width: 15, height: 15))
        v.light(width: v.width, height: v.height, corners: [.topLeft, .topRight], cornerRadii: .init(width: 15, height: 15))
        //: return v
        return v
        //: }()
    }()

    //: private lazy var textBgView: UIView = {
    private lazy var textBgView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor.appBgColor()
        v.backgroundColor = UIColor.modelCard()
        //: v.layer.cornerRadius = 8
        v.layer.cornerRadius = 8
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var textView: YYTextView = {
    private lazy var textView: YYTextView = {
        //: let tv = YYTextView()
        let tv = YYTextView()
        //: tv.textColor = UIColor.appTitleColor()
        tv.textColor = UIColor.ending()
        //: tv.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        tv.font = UIFont.conversationSize(type: .Regular, fontSize: 16)
        //: if LanguageManager.shared.direction == .rightToLeft {
        if FactoryShowThen.shared.direction == .rightToLeft {
            //: tv.textAlignment = .right
            tv.textAlignment = .right
        }
        //: tv.delegate = self
        tv.delegate = self
        //: return tv
        return tv
        //: }()
    }()

    //: private lazy var limitLab: UILabel = {
    private lazy var limitLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "0/\(limitCount)"
        lab.text = "0/\(limitCount)"
        //: lab.textColor = UIColor(hex: "#AAAAAA")
        lab.textColor = UIColor(hex: (String(str_withName.prefix(7))))
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var topBtn: TalkingButton = {
    private lazy var topBtn: MediaControl = {
        //: let btn = TalkingButton()
        let btn = MediaControl()
        //: btn.setImage(UIImage.withView(name: "btn_chatsettings_unchoice"), for: .normal)
        btn.setImage(UIImage.withView(name: (String(str_toTitle) + String(str_scaleName))), for: .normal)
        //: btn.setImage(UIImage.withView(name: "btn_chatsettings_choiced"), for: .selected)
        btn.setImage(UIImage.withView(name: (String(str_intimateTitle.prefix(6)) + "atsett" + str_makeIconName.replacingOccurrences(of: "on", with: "in") + "_choiced")), for: .selected)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        btn.titleLabel?.font = UIFont.conversationSize(type: .Regular, fontSize: 16)
        //: btn.setTitleColor(.appValueColor(), for: .normal)
        btn.setTitleColor(.obtrudeUpon(), for: .normal)
        //: btn.setTitle("Top".localized, for: .normal)
        btn.setTitle((String(str_formatValue.prefix(3))).localized, for: .normal)
        //: btn.spaceBetweenTitleAndImage = 6
        btn.spaceBetweenTitleAndImage = 6
        //: btn.addTarget(self, action: #selector(topButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(imageClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var saveBtn: UIButton = {
    private lazy var saveBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.conversationSize(type: .Medium, fontSize: 16)
        //: btn.setTitle("Save".localized, for: .normal)
        btn.setTitle((String(str_giftData.suffix(4))).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.distancePlay(colors: UIColor.memoryImageAwake(), size: CGSize(width: kLet_scaleName - 60, height: 50)), for: .normal)
        //: btn.addTarget(self, action: #selector(saveButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(produce), for: .touchUpInside)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var cancelBtn: UIButton = {
    private lazy var cancelBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitleColor(UIColor.appThemeColor(), for: .normal)
        btn.setTitleColor(UIColor.smallFor(), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.conversationSize(type: .Medium, fontSize: 16)
        //: btn.setTitle("Cancel".localized, for: .normal)
        btn.setTitle((String(str_equalVideoValue)).localized, for: .normal)
        //: btn.layer.borderColor = UIColor.appThemeColor().cgColor
        btn.layer.borderColor = UIColor.smallFor().cgColor
        //: btn.layer.borderWidth = 1
        btn.layer.borderWidth = 1
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(cancelButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(loadClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - YYTextViewDelegate

//: extension PrivateChatNotesView: YYTextViewDelegate {
extension ButtonReactiveCompatible: YYTextViewDelegate {
    //: func textViewDidChange(_ textView: YYTextView) {
    func textViewDidChange(_ textView: YYTextView) {
        //: guard let text = textView.text else {
        guard let text = textView.text else {
            //: limitLab.text = "0/\(limitCount)"
            limitLab.text = "0/\(limitCount)"
            //: return
            return
        }

        // 如果正在输入拼音，不做处理
        //: if textView.markedTextRange != nil {
        if textView.markedTextRange != nil {
            //: return
            return
        }

        //: if text.count > limitCount {
        if text.count > limitCount {
            //: textView.text = String(text.prefix(limitCount))
            textView.text = String(text.prefix(limitCount))
        }
        //: limitLab.text = "\(textView.text?.count ?? 0)/\(limitCount)"
        limitLab.text = "\(textView.text?.count ?? 0)/\(limitCount)"
    }
}

// MARK: - Event

//: extension PrivateChatNotesView {
extension ButtonReactiveCompatible {
    /// 保存按钮点击事件
    //: @objc private func saveButtonClick() {
    @objc private func produce() {
        //: saveBtn.isEnabled = false
        saveBtn.isEnabled = false
        //: let isTop = topBtn.isSelected ? 1 : 2
        let isTop = topBtn.isSelected ? 1 : 2
        //: HumanHeadRequestTool.req_remark(content: textView.text, isTop: isTop, toUid: targetId) {
        HumanHeadRequestTool.createCompletion(content: textView.text, isTop: isTop, toUid: targetId) {
            //: succeed, _, _ in
            succeed, _, _ in
            //: self.saveBtn.isEnabled = true
            self.saveBtn.isEnabled = true
            //: guard succeed else { return }
            guard succeed else { return }
            //: self.dismissBlock?(self.textView.text, (self.topBtn.isSelected ? 1 : 2))
            self.dismissBlock?(self.textView.text, self.topBtn.isSelected ? 1 : 2)
            //: self.dismiss()
            self.tillRoot()
        }
    }

    /// 置顶 / 取消置顶按钮点击事件
    //: @objc private func topButtonClick() {
    @objc private func imageClick() {
        //: topBtn.isSelected = !topBtn.isSelected
        topBtn.isSelected = !topBtn.isSelected
    }

    /// 取消按钮点击事件
    //: @objc private func cancelButtonClick() {
    @objc private func loadClick() {
        //: dismiss()
        tillRoot()
    }

    /// 展示视图
    //: func show(_ content: String, isTop: Int, toUid: String) {
    func valueUid(_ content: String, isTop: Int, toUid: String) {
        //: targetId = toUid
        targetId = toUid
        //: textView.text = content
        textView.text = content
        //: limitLab.text = "\(content.count)/\(limitCount)"
        limitLab.text = "\(content.count)/\(limitCount)"
        //: topBtn.isSelected = (isTop == 1)
        topBtn.isSelected = (isTop == 1)

        //: popView = TalkingPopView(frame: UIScreen.main.bounds)
        popView = MessageScalePopView(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.sharedLive(view: self)
        //: popView?.showInView(view: ListMacroDefine.getWindow())
        popView?.targetView(view: ListMacroDefine.startLoad())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func tillRoot() {
        //: endEditing(true)
        endEditing(true)
        //: popView?.dismissView()
        popView?.reject()
        //: popView = nil
        popView = nil
    }

    //: override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    override func touchesBegan(_ touches: Set<UITouch>, with _: UIEvent?) {
        //: if let touch = touches.first {
        if let touch = touches.first {
            //: let location = touch.location(in: self)
            let location = touch.location(in: self)
            //: if !contentView.frame.contains(location) {
            if !contentView.frame.contains(location) {
                //: if textView.isFirstResponder {
                if textView.isFirstResponder {
                    //: endEditing(true)
                    endEditing(true)
                    //: } else {
                } else {
                    //: dismiss()
                    tillRoot()
                }
                //: } else if !textView.frame.contains(location) {
            } else if !textView.frame.contains(location) {
                //: endEditing(true)
                endEditing(true)
            }
        }
    }
}

// MARK: - Layout

//: extension PrivateChatNotesView {
extension ButtonReactiveCompatible {
    /// 添加视图
    //: private func setupSubviews() {
    private func fromUpNext() {
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(textBgView)
        contentView.addSubview(textBgView)
        //: textBgView.addSubview(textView)
        textBgView.addSubview(textView)
        //: textBgView.addSubview(limitLab)
        textBgView.addSubview(limitLab)
        //: contentView.addSubview(topBtn)
        contentView.addSubview(topBtn)
        //: contentView.addSubview(saveBtn)
        contentView.addSubview(saveBtn)
        //: contentView.addSubview(cancelBtn)
        contentView.addSubview(cancelBtn)
    }

    /// 设置约束
    //: private func setupSubViewsConstraint() {
    private func middleClassConstraint() {
        //: frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        frame = CGRect(x: 0, y: 0, width: kLet_scaleName, height: kLet_environmentText)

        //: textBgView.snp.makeConstraints { make in
        textBgView.snp.makeConstraints { make in
            //: make.top.leading.equalTo(20)
            make.top.leading.equalTo(20)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
            //: make.height.equalTo(actualWidth(w: 180))
            make.height.equalTo(actualWidth(w: 180))
        }

        //: textView.snp.makeConstraints { make in
        textView.snp.makeConstraints { make in
            //: make.top.leading.equalTo(15)
            make.top.leading.equalTo(15)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.bottom.equalTo(-50)
            make.bottom.equalTo(-50)
        }

        //: limitLab.snp.makeConstraints { make in
        limitLab.snp.makeConstraints { make in
            //: make.trailing.bottom.equalTo(-15)
            make.trailing.bottom.equalTo(-15)
        }

        //: topBtn.snp.makeConstraints { make in
        topBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(textBgView)
            make.leading.equalTo(textBgView)
            //: make.top.equalTo(textBgView.snp.bottom).offset(12)
            make.top.equalTo(textBgView.snp.bottom).offset(12)
        }

        //: saveBtn.snp.makeConstraints { make in
        saveBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(textBgView.snp.bottom).offset(125)
            make.top.equalTo(textBgView.snp.bottom).offset(125)
        }

        //: cancelBtn.snp.makeConstraints { make in
        cancelBtn.snp.makeConstraints { make in
            //: make.leading.trailing.height.equalTo(saveBtn)
            make.leading.trailing.height.equalTo(saveBtn)
            //: make.top.equalTo(saveBtn.snp.bottom).offset(18)
            make.top.equalTo(saveBtn.snp.bottom).offset(18)
        }
    }
}
