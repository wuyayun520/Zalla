
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_numberTitle:[UInt8] = [0xa2,0xa5,0xa2,0xbf,0xe3,0xa8,0xa4,0xaf,0xae,0xb9,0xf1,0xe2,0xeb,0xa3,0xaa,0xb8,0xeb,0xa5,0xa4,0xbf,0xeb,0xa9,0xae,0xae,0xa5,0xeb,0xa2,0xa6,0xbb,0xa7,0xae,0xa6,0xae,0xa5,0xbf,0xae,0xaf]

private func listSize(collection num: UInt8) -> UInt8 {
    return num ^ 203
}

/*: "icon_cover_toast" :*/
fileprivate let str_statusData:[Character] = ["i","c","o","n","_","c","o","v","e","r","_","t","o","a","s","t"]

/*: "Free video time is over, you can continue to call her if you are interested" :*/
fileprivate let str_makeTitle:[UInt8] = [0xbe,0x8a,0x9d,0x9d,0xd8,0x8e,0x91,0x9c,0x9d,0x97,0xd8,0x8c,0x91,0x95,0x9d,0xd8,0x91,0x8b,0xd8,0x97,0x8e,0x9d,0x8a,0xd4,0xd8,0x81,0x97,0x8d,0xd8,0x9b,0x99,0x96,0xd8,0x9b,0x97,0x96,0x8c,0x91,0x96,0x8d,0x9d,0xd8,0x8c,0x97,0xd8,0x9b,0x99,0x94,0x94,0xd8,0x90,0x9d,0x8a,0xd8,0x91,0x9e,0xd8,0x81,0x97,0x8d,0xd8,0x99,0x8a,0x9d,0xd8,0x91,0x96,0x8c,0x9d,0x8a,0x9d,0x8b,0x8c,0x9d,0x9c]

private func topUser(use num: UInt8) -> UInt8 {
    return num ^ 248
}

/*: "#34C759" :*/
fileprivate let str_modelName:String = "#34C759any count image self error"

/*: "icon_match_stopcall_pop" :*/
fileprivate let str_coverExtraTitle:String = "icon_mnumber top"
fileprivate let str_dataFailGiftTitle:String = "view gift return_sto"
fileprivate let str_modelValue:String = "pcastate"

/*: "icon_lounge_big" :*/
fileprivate let str_contentRecordData:String = "make make var title wrapicon_"
fileprivate let str_limitData:String = "_biglabel leading make render frame"

/*: "#AB57F6" :*/
fileprivate let str_bigName:String = "let model equal#AB57F6"

/*: "#FC57B7" :*/
fileprivate let str_viewValue:[Character] = ["#","F","C","5","7","B","7"]

/*: "#FE9074" :*/
fileprivate let str_shareName:String = "#"
fileprivate let str_progressSaveContent:[Character] = ["F","E","9","0","7","4"]

/*: "Maybe next time" :*/
fileprivate let str_startData:[Character] = ["M","a","y","b","e"," ","n","e","x","t"," "]
fileprivate let str_addName:String = "ticountrye"

/*: "type" :*/
fileprivate let str_kitName:[UInt8] = [0x91,0x9c,0x95,0x80]

private func titleImage(status num: UInt8) -> UInt8 {
    return num ^ 229
}

/*: "toUid" :*/
fileprivate let str_leadingData:[Character] = ["t","o","U","i","d"]

/*: "uid" :*/
fileprivate let str_dismissData:[UInt8] = [0xb9,0xa5,0xa8]

/*: "fromFreeCall" :*/
fileprivate let str_targetName:String = "clearom"

/*: "cmd" :*/
fileprivate let str_titleListText:[UInt8] = [0x64,0x6d,0x63]

/*: "requestCall" :*/
fileprivate let str_atBuildValue:String = "rblockqublockst"
fileprivate let str_makeData:String = "view name gameCall"

/*: "data" :*/
fileprivate let str_sizeData:[UInt8] = [0x83,0x80,0x93,0x80]

fileprivate func nameFile(domain num: UInt8) -> UInt8 {
    let value = Int(num) + 225
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "originalFee" :*/
fileprivate let str_endInsertText:String = "ORIG"

/*: "VIPFee" :*/
fileprivate let str_beginValue:String = "VIPFeeself view app false text"

/*: "freeCallTimes" :*/
fileprivate let str_imageValue:[Character] = ["f","r","e","e","C","a","l","l","T","i","m","e","s"]

/*: "onRequestCall" :*/
fileprivate let str_hiddenValue:[Character] = ["o","n","R"]
fileprivate let str_beanData:String = "textqutext"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleUpView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/6/15.
//

//: import UIKit
import UIKit

//: class TalkingFreeStopCallPopUpView: UIView {
class TitleUpView: UIView {
    //: var popView: TalkingPopView?
    var popView: MessageScalePopView?
    //: var data = [String: Any]()
    var data = [String: Any]()

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        acceptContent()
        //: setupSubViewsConstraint()
        listStatus()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_numberTitle.map{listSize(collection: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: TalkingSocketManager.shared.errorDelegate = nil
        NameSocketManager.shared.errorDelegate = nil
    }

    // 懒加载初始化

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.cornerRadius = 16
        view.layer.cornerRadius = 16
        //: return view
        return view
        //: }()
    }()

    //: lazy var topIcon: UIImageView = {
    lazy var topIcon: UIImageView = {
        //: let iamg = UIImageView()
        let iamg = UIImageView()
        //: iamg.image = UIImage.withView(name: "icon_cover_toast")
        iamg.image = UIImage.withView(name: (String(str_statusData)))
        //: iamg.contentMode = .scaleAspectFill
        iamg.contentMode = .scaleAspectFill
        //: return iamg
        return iamg
        //: }()
    }()

    //: lazy var inputTView: UITextView = {
    lazy var inputTView: UITextView = {
        //: let textView = UITextView()
        let textView = UITextView()
        //: textView.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        textView.font = UIFont.conversationSize(type: .Regular, fontSize: 16)
        //: textView.textColor = UIColor.appTitleColor()
        textView.textColor = UIColor.ending()
        //: textView.textContainer.maximumNumberOfLines = 0
        textView.textContainer.maximumNumberOfLines = 0
        //: textView.textAlignment = .center
        textView.textAlignment = .center
        //: textView.backgroundColor = .clear
        textView.backgroundColor = .clear
        //: textView.isEditable = false
        textView.isEditable = false
        //: textView.text = "Free video time is over, you can continue to call her if you are interested".localized
        textView.text = String(bytes: str_makeTitle.map{topUser(use: $0)}, encoding: .utf8)!.localized
        //: return textView
        return textView
        //: }()
    }()

    // 原价按钮
    //: private lazy var originalFeeBtn: TalkingButton = {
    private lazy var originalFeeBtn: MediaControl = {
        //: let btn = TalkingButton()
        let btn = MediaControl()
        //: btn.setBackgroundColor(color: UIColor(hex: "#34C759")!, forState: .normal)
        btn.toPop(color: UIColor(hex: (String(str_modelName.prefix(7))))!, forState: .normal)
        //: btn.setImage(UIImage.withView(name: "icon_match_stopcall_pop"), for: .normal)
        btn.setImage(UIImage.withView(name: (String(str_coverExtraTitle.prefix(6)) + "atch" + String(str_dataFailGiftTitle.suffix(4)) + str_modelValue.replacingOccurrences(of: "state", with: "l") + "l_pop")), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 18)
        btn.titleLabel?.font = UIFont.conversationSize(type: .Regular, fontSize: 18)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.spaceBetweenTitleAndImage = 6
        btn.spaceBetweenTitleAndImage = 6
        //: btn.layer.cornerRadius = 27
        btn.layer.cornerRadius = 27
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(originalFeeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(craunchKey), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    // VIP价格
    //: private lazy var vipFeeBtn: TalkingButton = {
    private lazy var vipFeeBtn: MediaControl = {
        //: let btn = TalkingButton()
        let btn = MediaControl()
        //: btn.setImage(UIImage.withView(name: "icon_lounge_big"), for: .normal)
        btn.setImage(UIImage.withView(name: (String(str_contentRecordData.suffix(5)) + "lounge" + String(str_limitData.prefix(4)))), for: .normal)
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.verticalAlignImageAndTitleWith(interval: 5, imageSize: CGSize(width: 28, height: 28), topOffset: 13)
        btn.thoughtImageSend(interval: 5, imageSize: CGSize(width: 28, height: 28), topOffset: 13)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        btn.titleLabel?.font = UIFont.conversationSize(type: .Medium, fontSize: 18)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.spaceBetweenTitleAndImage = 6
        btn.spaceBetweenTitleAndImage = 6
        //: let colors = [UIColor(hex: "#AB57F6")!.cgColor, UIColor(hex: "#FC57B7")!.cgColor, UIColor(hex: "#FE9074")!.cgColor]
        let colors = [UIColor(hex: (String(str_bigName.suffix(7))))!.cgColor, UIColor(hex: (String(str_viewValue)))!.cgColor, UIColor(hex: (str_shareName.capitalized + String(str_progressSaveContent)))!.cgColor]
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: colors, size: CGSize(width: actualWidth(w: 257), height: actualWidth(w: 54))), for: .normal)
        btn.setBackgroundImage(UIImage.distancePlay(colors: colors, size: CGSize(width: actualWidth(w: 257), height: actualWidth(w: 54))), for: .normal)
        //: btn.layer.cornerRadius = 27
        btn.layer.cornerRadius = 27
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(maleVipPriceButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(messageClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let attributes = [.foregroundColor: UIColor.touchColor(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 13), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        let attributes = [.foregroundColor: UIColor.touchColor(), .font: UIFont.conversationSize(type: .Regular, fontSize: 13), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        //: let attributeString = NSAttributedString(string: "Maybe next time".localized, attributes: attributes)
        let attributeString = NSAttributedString(string: (String(str_startData) + str_addName.replacingOccurrences(of: "country", with: "m")).localized, attributes: attributes)
        //: btn.setAttributedTitle(attributeString, for: .normal)
        btn.setAttributedTitle(attributeString, for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(untilClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingFreeStopCallPopUpView {
extension TitleUpView {
    /// 原价按钮拨打事件
    //: @objc func originalFeeButtonClick() {
    @objc func craunchKey() {
        //: let type = self.data["type"] as? Int ?? -1
        let type = self.data[String(bytes: str_kitName.map{titleImage(status: $0)}, encoding: .utf8)!] as? Int ?? -1
        //: let toUid = self.data["toUid"] as? String ?? ""
        let toUid = self.data[(String(str_leadingData))] as? String ?? ""

        //: var data: [String: Any] = ["type": type,
        var data: [String: Any] = [String(bytes: str_kitName.map{titleImage(status: $0)}, encoding: .utf8)!: type,
                                   //: "uid": toUid]
                                   String(bytes: str_dismissData.map{$0^204}, encoding: .utf8)!: toUid]
        //: if WatercourseThen.share.loginUserMode.freeCallTimes > 0, WatercourseThen.share.loginUserMode.sex == Gender.male.rawValue {
        if WatercourseThen.share.loginUserMode.freeCallTimes > 0, WatercourseThen.share.loginUserMode.sex == PushDownStackScalarLiteral.male.rawValue {
            //: data.updateValue(1, forKey: "fromFreeCall")
            data.updateValue(1, forKey: (str_targetName.replacingOccurrences(of: "clear", with: "fr") + "FreeCall"))
            //: TalkingSocketManager.shared.isFreeCall = true
            NameSocketManager.shared.isFreeCall = true
        }
        //: let info: [String: Any] = ["cmd": "requestCall", "data": data]
        let info: [String: Any] = [String(bytes: str_titleListText.reversed(), encoding: .utf8)!: (str_atBuildValue.replacingOccurrences(of: "block", with: "e") + String(str_makeData.suffix(4))), String(bytes: str_sizeData.map{nameFile(domain: $0)}, encoding: .utf8)!: data]
        //: TalkingSocketManager.shared.sendMessage(info: info)
        NameSocketManager.shared.migration(info: info)
        //: TalkingSocketManager.shared.errorDelegate = self
        NameSocketManager.shared.errorDelegate = self
        //: dismiss()
        toDestroy()
    }

    /// 关闭按钮点击事件
    //: @objc func closeBtnClick() {
    @objc func untilClick() {
        //: dismiss()
        toDestroy()
    }

    /// 展示
    //: func show() {
    func titleByShow() {
        //: popView = TalkingPopView(frame: UIScreen.main.bounds)
        popView = MessageScalePopView(frame: UIScreen.main.bounds)
        //: frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        frame = CGRect(x: 0, y: 0, width: kLet_scaleName, height: kLet_environmentText)
        //: popView?.initWithView(view: self)
        popView?.sharedLive(view: self)
        //: popView?.showInView(view: ListMacroDefine.getWindow())
        popView?.targetView(view: ListMacroDefine.startLoad())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func toDestroy() {
        //: popView?.dismissView()
        popView?.reject()
        //: popView = nil
        popView = nil
    }

    /// 更新数据
    //: func setShowData(data: [String: Any]) {
    func bringHomeData(data: [String: Any]) {
        //: self.data = data
        self.data = data
        //: let originalFee = data["originalFee"] as? Int ?? 0
        let originalFee = data[(str_endInsertText.lowercased() + "inalFee")] as? Int ?? 0
        //: let vipFee = data["VIPFee"] as? Int ?? 0
        let vipFee = data[(String(str_beginValue.prefix(6)))] as? Int ?? 0
        //: let freeCallTimes = data["freeCallTimes"] as? Int
        let freeCallTimes = data[(String(str_imageValue))] as? Int
        //: WatercourseThen.share.loginUserMode.freeCallTimes = freeCallTimes ?? 0
        WatercourseThen.share.loginUserMode.freeCallTimes = freeCallTimes ?? 0
        //: originalFeeBtn.setTitle(String.setFreeStopPriceStr(originalFee: originalFee), for: .normal)
        originalFeeBtn.setTitle(String.giftFee(originalFee: originalFee), for: .normal)
        //: vipFeeBtn.setTitle(String.setFreeStopPriceStr(originalFee: originalFee, vipFee: vipFee), for: .normal)
        vipFeeBtn.setTitle(String.giftFee(originalFee: originalFee, vipFee: vipFee), for: .normal)
        //: updateSubViewsConstraint()
        objectOf()
    }

    /// 男性侧vip价格按钮点击事件
    //: @objc private func maleVipPriceButtonClick() {
    @objc private func messageClick() {
        //: guard WatercourseThen.share.loginUserMode.loungePlus else {
        guard WatercourseThen.share.loginUserMode.loungePlus else {
            // 非会员 && 默认模式
            //: if WatercourseThen.share.appStatus == AppSkinStatus.normal.rawValue {
            if WatercourseThen.share.appStatus == PublishWidthTotal.normal.rawValue {
                //: IndoorsPushManager.share.func__pushToSubscribeAlert()
                IndoorsPushManager.share.digitizerParams()
            }
            //: dismiss()
            toDestroy()
            //: return
            return
        }

        //: originalFeeButtonClick()
        craunchKey()
    }
}

// MARK: - LabelObjectProtocol

//: extension TalkingFreeStopCallPopUpView: TalkingSocketManagerErrorDelegate {
extension TitleUpView: LabelObjectProtocol {
    //: func socket_didRecieveError(errorNo: Int, cmd: String, msg: String, data: [String: Any]) {
    func loadDown(errorNo: Int, cmd: String, msg: String, data _: [String: Any]) {
        //: if cmd == "onRequestCall" {
        if cmd == (String(str_hiddenValue) + str_beanData.replacingOccurrences(of: "text", with: "e") + "stCall") {
            //: func__showStatusBarErrorMsg(showMsg: msg)
            detailKey(showMsg: msg)
            //: if errorNo == VideoChatErrorCode.MoneyLack.rawValue {
            if errorNo == FactorySumLiteral.MoneyLack.rawValue {
                //: guard WatercourseThen.share.appStatus == AppSkinStatus.normal.rawValue else { return }
                guard WatercourseThen.share.appStatus == PublishWidthTotal.normal.rawValue else { return }
                //: IndoorsPushManager.share.func__jumpToWebRecharge(clickEvent: clickFreepopupButton, sufficient: false)
                IndoorsPushManager.share.rechargeVideo(clickEvent: kLet_statusScreenData, sufficient: false)
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingFreeStopCallPopUpView {
extension TitleUpView {
    /// 更新约束
    //: private func updateSubViewsConstraint() {
    private func objectOf() {
        //: if WatercourseThen.share.loginUserMode.loungePlus {
        if WatercourseThen.share.loginUserMode.loungePlus {
            //: originalFeeBtn.isHidden = true
            originalFeeBtn.isHidden = true
            //: contentView.snp.updateConstraints { make in
            contentView.snp.updateConstraints { make in
                //: make.height.equalTo(actualWidth(w: 255))
                make.height.equalTo(actualWidth(w: 255))
            }
        }
    }

    /// 添加视图
    //: private func setupSubviews() {
    private func acceptContent() {
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.addSubview(closeBtn)
        contentView.addSubview(closeBtn)
        //: contentView.addSubview(inputTView)
        contentView.addSubview(inputTView)
        //: contentView.addSubview(originalFeeBtn)
        contentView.addSubview(originalFeeBtn)
        //: contentView.addSubview(vipFeeBtn)
        contentView.addSubview(vipFeeBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func listStatus() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.equalTo(actualWidth(w: 297))
            make.width.equalTo(actualWidth(w: 297))
            //: make.height.equalTo(actualWidth(w: 329))
            make.height.equalTo(actualWidth(w: 329))
        }

        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(actualWidth(w: -43))
            make.top.equalTo(actualWidth(w: -43))
            //: make.width.height.equalTo(actualWidth(w: 101))
            make.width.height.equalTo(actualWidth(w: 101))
        }

        //: inputTView.snp.makeConstraints { make in
        inputTView.snp.makeConstraints { make in
            //: make.top.equalTo(topIcon.snp.bottom)
            make.top.equalTo(topIcon.snp.bottom)
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
            //: make.height.equalTo(actualWidth(w: 103))
            make.height.equalTo(actualWidth(w: 103))
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(actualWidth(w: -20))
            make.bottom.equalTo(actualWidth(w: -20))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(14)
            make.height.equalTo(14)
        }

        //: vipFeeBtn.snp.makeConstraints { make in
        vipFeeBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(closeBtn.snp.top).offset(actualWidth(w: -15))
            make.bottom.equalTo(closeBtn.snp.top).offset(actualWidth(w: -15))
            //: make.width.equalTo(actualWidth(w: 257))
            make.width.equalTo(actualWidth(w: 257))
            //: make.height.equalTo(actualWidth(w: 54))
            make.height.equalTo(actualWidth(w: 54))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: originalFeeBtn.snp.makeConstraints { make in
        originalFeeBtn.snp.makeConstraints { make in
            //: make.centerX.width.height.equalTo(vipFeeBtn)
            make.centerX.width.height.equalTo(vipFeeBtn)
            //: make.bottom.equalTo(vipFeeBtn.snp.top).offset(actualWidth(w: -20))
            make.bottom.equalTo(vipFeeBtn.snp.top).offset(actualWidth(w: -20))
        }
    }
}
