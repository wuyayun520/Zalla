
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_giftValue:[UInt8] = [0xe4,0xe3,0xe4,0xf9,0xa5,0xee,0xe2,0xe9,0xe8,0xff,0xb7,0xa4,0xad,0xe5,0xec,0xfe,0xad,0xe3,0xe2,0xf9,0xad,0xef,0xe8,0xe8,0xe3,0xad,0xe4,0xe0,0xfd,0xe1,0xe8,0xe0,0xe8,0xe3,0xf9,0xe8,0xe9]

private func naturalEvent(m num: UInt8) -> UInt8 {
    return num ^ 141
}

/*: "btn_dongtai_dianzan_nor" :*/
fileprivate let str_ageName:String = "btn_dequal size root for in"
fileprivate let str_windowData:[Character] = ["a","i","_","d","i","a","n","z","a","n","_","n","o","r"]

/*: "btn_dongtai_dianzan_nor1" :*/
fileprivate let str_becomeValue:String = "btn_dvar view to play path"
fileprivate let str_cardVideoName:[Character] = ["_","d","i","a"]
fileprivate let str_progressText:String = "name data view colornzan_"

/*: "btn_dongtai_pinglun_nor" :*/
fileprivate let str_colorTargetText:[Character] = ["b","t","n","_","d","o","n","g","t","a","i","_","p","i"]
fileprivate let str_atFatalTitle:String = "selected"
fileprivate let str_backgroundModelName:[Character] = ["g","l","u","n","_","n","o","r"]

/*: "btn_dynamic_chat_nor" :*/
fileprivate let str_locationTitle:[Character] = ["b","t","n","_","d","y","n","a","m","i","c","_","c","h","a","t","_","n","o","r"]

/*: "icon_dynamic_heart_default" :*/
fileprivate let str_showControlValue:String = "icon_name time let"
fileprivate let str_aboutNameData:String = "mic_heof path other medium"
fileprivate let str_whiteText:String = "efautime"
fileprivate let str_viewAddData:String = "T"

/*: "Chat" :*/
fileprivate let str_messageText:[Character] = ["C","h","a","t"]

/*: "#752FE9" :*/
fileprivate let str_styleTitle:String = "#752FEhead else self light"
fileprivate let str_imageArrayData:String = "9"

/*: "99+" :*/
fileprivate let str_emptyPushData:[UInt8] = [0x2b,0x39,0x39]

/*: "%d" :*/
fileprivate let str_contentValue:[Character] = ["%","d"]

/*: "Comment" :*/
fileprivate let str_versionTitle:[Character] = ["C"]
fileprivate let str_pageButtonName:String = "ommflownt"

/*: "momentId" :*/
fileprivate let str_inputValue:[Character] = ["m","o","m","e","n"]
fileprivate let str_imageTitle:[Character] = ["t","I","d"]

/*: "type" :*/
fileprivate let str_recordData:String = "tcellpe"

/*: "like" :*/
fileprivate let str_firstData:String = "liviewe"

/*: "model" :*/
fileprivate let str_modelBackText:[UInt8] = [0x42,0x40,0x4b,0x4a,0x43]

private func nameWith(ending num: UInt8) -> UInt8 {
    return num ^ 47
}

/*: "get json error" :*/
fileprivate let str_errorData:[Character] = ["g","e","t"," ","j","s","o","n"," ","e","r","r","o","r"]

/*: "comment" :*/
fileprivate let str_hostData:String = "cofirstfirstent"

/*: "number" :*/
fileprivate let str_bubbleArrayValue:String = "nnativeber"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ArrayPlayerDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/20.
//

//: import UIKit
import UIKit

//: class TalkingMomentItemBottomView: UIView {
class ArrayPlayerDelegate: UIView {
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: var cunrrenModel = TalkingMomentModel()
    var cunrrenModel = CellMomentModel()

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        timeMessage()
        //: setupSubViewsConstraint()
        quantityerchange()
        //: bindInteraction()
        cohereButton()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_giftValue.map{naturalEvent(m: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: lazy var infoLB: UILabel = {
    lazy var infoLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 14)
        label.font = .conversationSize(type: .Regular, fontSize: 14)
        //: label.textColor = .touchColor()
        label.textColor = .touchColor()
        //: self.addSubview(label)
        self.addSubview(label)
        //: return label
        return label
        //: }()
    }()

    //: lazy var likePlayer: SVGAPlayer = {
    lazy var likePlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 1
        player.loops = 1
        //: player.clearsAfterStop = true
        player.clearsAfterStop = true
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: player.delegate = self
        player.delegate = self
        //: self.addSubview(player)
        self.addSubview(player)
        //: return player
        return player
        //: }()
    }()

    //: lazy var likeBtn: UIButton = {
    lazy var likeBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.withView(name: "btn_dongtai_dianzan_nor"), for: .normal)
        btn.setImage(UIImage.withView(name: (String(str_ageName.prefix(5)) + "ongt" + String(str_windowData))), for: .normal)
        //: btn.setImage(UIImage.withView(name: "btn_dongtai_dianzan_nor1"), for: .selected)
        btn.setImage(UIImage.withView(name: (String(str_becomeValue.prefix(5)) + "ongtai" + String(str_cardVideoName) + String(str_progressText.suffix(5)) + "nor1")), for: .selected)
        //: btn.adjustsImageWhenHighlighted = false
        btn.adjustsImageWhenHighlighted = false
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var likeNumberLB: UILabel = {
    lazy var likeNumberLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 16)
        label.font = .conversationSize(type: .Regular, fontSize: 16)
        //: label.textColor = .touchColor()
        label.textColor = .touchColor()
        //: self.addSubview(label)
        self.addSubview(label)
        //: return label
        return label
        //: }()
    }()

    //: lazy var commentBtn: UIButton = {
    lazy var commentBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.withView(name: "btn_dongtai_pinglun_nor"), for: .normal)
        btn.setImage(UIImage.withView(name: (String(str_colorTargetText) + str_atFatalTitle.replacingOccurrences(of: "selected", with: "n") + String(str_backgroundModelName))), for: .normal)
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var commentNumberLB: UILabel = {
    lazy var commentNumberLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 16)
        label.font = .conversationSize(type: .Regular, fontSize: 16)
        //: label.textColor = .touchColor()
        label.textColor = .touchColor()
        //: self.addSubview(label)
        self.addSubview(label)
        //: return label
        return label
        //: }()
    }()

    //: lazy var greetBtn: TalkingButton = {
    lazy var greetBtn: MediaControl = {
        //: let btn = TalkingButton.init()
        let btn = MediaControl()
        //: let bubbleInsets = UIEdgeInsets(top: 4, left: 11, bottom: 4, right: 11)
        let bubbleInsets = UIEdgeInsets(top: 4, left: 11, bottom: 4, right: 11)
        //: btn.setBackgroundImage(UIImage.withView(name: "btn_dynamic_chat_nor").resizableImage(withCapInsets: bubbleInsets, resizingMode: .stretch), for: .normal)
        btn.setBackgroundImage(UIImage.withView(name: (String(str_locationTitle))).resizableImage(withCapInsets: bubbleInsets, resizingMode: .stretch), for: .normal)
        //: btn.setImage(UIImage.withView(name: "icon_dynamic_heart_default"), for: .normal)
        btn.setImage(UIImage.withView(name: (String(str_showControlValue.prefix(5)) + "dyna" + String(str_aboutNameData.prefix(6)) + "art_d" + str_whiteText.replacingOccurrences(of: "time", with: "l") + str_viewAddData.lowercased())), for: .normal)
        //: btn.setTitle("Chat".localized, for: .normal)
        btn.setTitle((String(str_messageText)).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.showSize(fontSize: 14)
        btn.titleLabel?.font = UIFont.showSize(fontSize: 14)
        //: btn.spaceBetweenTitleAndImage = 4
        btn.spaceBetweenTitleAndImage = 4
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMomentItemBottomView {
extension ArrayPlayerDelegate {
    //: func configModel(model: TalkingMomentModel) {
    func insert(model: CellMomentModel) {
        //: cunrrenModel = model
        cunrrenModel = model
        //: likeBtn.isHidden = false
        likeBtn.isHidden = false
        //: likeNumberLB.isHidden = false
        likeNumberLB.isHidden = false
        //: commentBtn.isHidden = false
        commentBtn.isHidden = false
        //: commentNumberLB.isHidden = false
        commentNumberLB.isHidden = false
        //: greetBtn.isHidden = WatercourseThen.share.loginUserMode.sex == model.sex ||  WatercourseThen.share.loginUserMode.userID == model.uid
        greetBtn.isHidden = WatercourseThen.share.loginUserMode.sex == model.sex || WatercourseThen.share.loginUserMode.userID == model.uid

        //: infoLB.text = model.addTime
        infoLB.text = model.addTime
        //: likeBtn.isSelected = model.isLike!
        likeBtn.isSelected = model.isLike!
        //: likeNumberLB.textColor = model.isLike! ? UIColor.init(hex: "#752FE9") :.touchColor()
        likeNumberLB.textColor = model.isLike! ? UIColor(hex: (String(str_styleTitle.prefix(6)) + str_imageArrayData.capitalized)) : .touchColor()
        //: likeNumberLB.text = model.likeNum! > 99 ? "99+" : String(format: "%d", model.likeNum! )
        likeNumberLB.text = model.likeNum! > 99 ? "99+" : String(format: "%d", model.likeNum!)
        //: commentNumberLB.text = model.replyNum! > 99 ? "99+" :  model.replyNum! > 0 ? String(format: "%d", model.replyNum!) : "Comment".localized
        commentNumberLB.text = model.replyNum! > 99 ? "99+" : model.replyNum! > 0 ? String(format: "%d", model.replyNum!) : (String(str_versionTitle) + str_pageButtonName.replacingOccurrences(of: "flow", with: "e")).localized
    }

    //: func likeBtnClik() {
    func language() {
        //: if !likeBtn.isSelected {
        if !likeBtn.isSelected {
            //: self.req_MomentLike(type: 1)
            self.tillCulmination(type: 1)
            //: self.likeplayer()
            self.auditoryImage()
            //: }else {
        } else {
            //: req_MomentLike(type: 2)
            tillCulmination(type: 2)
        }
    }

    //: func req_MomentLike(type: Int) {
    func tillCulmination(type: Int) {
        //: likeBtn.isUserInteractionEnabled = false
        likeBtn.isUserInteractionEnabled = false
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["momentId"] = cunrrenModel.mid
        dict[(String(str_inputValue) + String(str_imageTitle))] = cunrrenModel.mid
        //: dict["type"] = type
        dict[(str_recordData.replacingOccurrences(of: "cell", with: "y"))] = type

        //: TalkingMomentRequestTool.req_MomentLike(params: dict) { succeed, result, errorModel in
        StreamRequestTool.remove(params: dict) { succeed, _, errorModel in
            //: self.likeBtn.isUserInteractionEnabled = true
            self.likeBtn.isUserInteractionEnabled = true
            //: if succeed {
            if succeed {
                //: let isLike  =  type==1 ? true:false
                let isLike = type == 1 ? true : false
                //: var number = isLike ?  self.cunrrenModel.likeNum!+1 : self.cunrrenModel.likeNum!-1
                var number = isLike ? self.cunrrenModel.likeNum! + 1 : self.cunrrenModel.likeNum! - 1
                //: if number < 0 {
                if number < 0 {
                    //: number = 0
                    number = 0
                }
                //: self.likeBtn.isSelected = isLike
                self.likeBtn.isSelected = isLike
                //: self.cunrrenModel.isLike = isLike
                self.cunrrenModel.isLike = isLike
                //: self.cunrrenModel.likeNum = number
                self.cunrrenModel.likeNum = number
                //: self.likeNumberLB.text = String(format: "%d", number)
                self.likeNumberLB.text = String(format: "%d", number)
                //: self.likeNumberLB.textColor = isLike ? UIColor.init(hex: "#752FE9") :.touchColor()
                self.likeNumberLB.textColor = isLike ? UIColor(hex: (String(str_styleTitle.prefix(6)) + str_imageArrayData.capitalized)) : .touchColor()
                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+0.5) {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                    //: NotificationCenter.default.post(name: UPDATE_LIKE_NUMBER_NOTIFICATION, object: self, userInfo: ["type": "like", "model": self.cunrrenModel])
                    NotificationCenter.default.post(name: kLet_successInputMeValue, object: self, userInfo: [(str_recordData.replacingOccurrences(of: "cell", with: "y")): (str_firstData.replacingOccurrences(of: "view", with: "k")), String(bytes: str_modelBackText.map{nameWith(ending: $0)}, encoding: .utf8)!: self.cunrrenModel])
                }
                //: }else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                self.detailKey(showMsg: errorModel!.errorMsg)
            }
        }
    }

    //: func greetBtnClick() {
    func timeOffStatus() {
        //: IndoorsPushManager.share.func__pushToPriveteChatVC(chatID: cunrrenModel.uid ?? "")
        IndoorsPushManager.share.executeMention(chatID: cunrrenModel.uid ?? "")
    }

    //: func likeplayer() {
    func auditoryImage() {
        //: var url = SVGAEffectTool.default.getZipEffectPath(type: .Moment_like)
        var url = StreamReactiveCompatible.default.picName(type: .Moment_like)
        //: if LanguageManager.shared.direction == .rightToLeft {
        if FactoryShowThen.shared.direction == .rightToLeft {
            //: url = SVGAEffectTool.default.getZipEffectPath(type: .Moment_likeRight)
            url = StreamReactiveCompatible.default.picName(type: .Moment_likeRight)
        }
        //: do {
        do {
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.likePlayer.videoItem = videoItem
                self.likePlayer.videoItem = videoItem
                //: self.likePlayer.startAnimation()
                self.likePlayer.startAnimation()
            }
            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(str_errorData)))
        }
    }

    //: @objc func updateCommentNumber(notification: NSNotification) -> Void {
    @objc func startClick(notification: NSNotification) {
        //: let userinfo = notification.userInfo as! [String: AnyObject]
        let userinfo = notification.userInfo as! [String: AnyObject]

        //: if userinfo["momentId"] as? Int != self.cunrrenModel.mid {
        if userinfo[(String(str_inputValue) + String(str_imageTitle))] as? Int != self.cunrrenModel.mid {
            //: return
            return
                //: } else if userinfo["type"] as! String == "comment".localized {
        } else if userinfo[(str_recordData.replacingOccurrences(of: "cell", with: "y"))] as! String == (str_hostData.replacingOccurrences(of: "first", with: "m")).localized {
            //: self.cunrrenModel.replyNum = userinfo["number"] as? Int
            self.cunrrenModel.replyNum = userinfo[(str_bubbleArrayValue.replacingOccurrences(of: "native", with: "um"))] as? Int
            //: commentNumberLB.text = String(format: "%d", self.cunrrenModel.replyNum!)
            commentNumberLB.text = String(format: "%d", self.cunrrenModel.replyNum!)
        }
    }
}

//: extension TalkingMomentItemBottomView: SVGAPlayerDelegate {
extension ArrayPlayerDelegate: SVGAPlayerDelegate {
    //: func svgaPlayerDidFinishedAnimation(_ player: SVGAPlayer!) {
    func svgaPlayerDidFinishedAnimation(_: SVGAPlayer!) {}
}

// MARK: - LayoutUI

//: extension TalkingMomentItemBottomView {
extension ArrayPlayerDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func timeMessage() {
        //: backgroundColor = .clear
        backgroundColor = .clear
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func quantityerchange() {
        //: infoLB.snp.makeConstraints { make in
        infoLB.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.top.equalTo(7)
            make.top.equalTo(7)
        }

        //: likeBtn.snp.makeConstraints { make in
        likeBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.top.equalTo(infoLB.snp.bottom).offset(16)
            make.top.equalTo(infoLB.snp.bottom).offset(16)
            //: make.size.equalTo(CGSize.init(width: 24, height: 24))
            make.size.equalTo(CGSize(width: 24, height: 24))
        }

        //: likePlayer.snp.makeConstraints { make in
        likePlayer.snp.makeConstraints { make in
            //: make.leading.equalTo(-5)
            make.leading.equalTo(-5)
            //: make.bottom.equalTo(likeBtn.snp.bottom).offset(2)
            make.bottom.equalTo(likeBtn.snp.bottom).offset(2)
            //: make.size.equalTo(CGSize.init(width: 40, height: 60))
            make.size.equalTo(CGSize(width: 40, height: 60))
        }

        //: likeNumberLB.snp.makeConstraints { make in
        likeNumberLB.snp.makeConstraints { make in
            //: make.centerY.equalTo(likeBtn)
            make.centerY.equalTo(likeBtn)
            //: make.leading.equalTo(likeBtn.snp.trailing).offset(10)
            make.leading.equalTo(likeBtn.snp.trailing).offset(10)
            //: make.size.equalTo(CGSize.init(width: 52, height: 22))
            make.size.equalTo(CGSize(width: 52, height: 22))
        }

        //: commentBtn.snp.makeConstraints { make in
        commentBtn.snp.makeConstraints { make in
            //: make.centerY.equalTo(likeBtn)
            make.centerY.equalTo(likeBtn)
            //: make.leading.equalTo(likeNumberLB.snp.trailing)
            make.leading.equalTo(likeNumberLB.snp.trailing)
            //: make.size.equalTo(CGSize.init(width: 24, height: 24))
            make.size.equalTo(CGSize(width: 24, height: 24))
        }

        //: commentNumberLB.snp.makeConstraints { make in
        commentNumberLB.snp.makeConstraints { make in
            //: make.centerY.equalTo(likeBtn)
            make.centerY.equalTo(likeBtn)
            //: make.leading.equalTo(commentBtn.snp.trailing).offset(10)
            make.leading.equalTo(commentBtn.snp.trailing).offset(10)
            //: make.height.equalTo(24)
            make.height.equalTo(24)
        }

        //: let str = greetBtn.titleLabel?.text ?? ""
        let str = greetBtn.titleLabel?.text ?? ""
        //: let size = (str as NSString).boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: 0.0), options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: UIFont.showSize(fontSize: 14)], context: nil)
        let size = (str as NSString).boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: 0.0), options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: UIFont.showSize(fontSize: 14)], context: nil)

        //: greetBtn.snp.makeConstraints { make in
        greetBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.bottom.equalTo(-15)
            make.bottom.equalTo(-15)
            //: make.height.equalTo(30)
            make.height.equalTo(30)
            //: make.width.equalTo(size.width+40)
            make.width.equalTo(size.width + 40)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func cohereButton() {
        //: NotificationCenter.default.addObserver(self, selector: #selector(updateCommentNumber(notification:)), name: UPDATE_COMMENTNUMBER_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(startClick(notification:)), name: kLet_depthValue, object: nil)
        //: likeBtn.rx.tap.subscribe(onNext: { [weak self] in
        likeBtn.rx.tap.subscribe(onNext: { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.likeBtnClik()
            self.language()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)

        //: commentBtn.rx.tap.subscribe(onNext: {
        commentBtn.rx.tap.subscribe(onNext: {
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)

        //: greetBtn.rx.tap.subscribe(onNext: { [weak self] in
        greetBtn.rx.tap.subscribe(onNext: { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.greetBtnClick()
            self.timeOffStatus()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)
    }
}
