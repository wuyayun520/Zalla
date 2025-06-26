
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_buttonTitle:[UInt8] = [0xde,0xe3,0xde,0xe9,0x9d,0xd8,0xe4,0xd9,0xda,0xe7,0xaf,0x9e,0x95,0xdd,0xd6,0xe8,0x95,0xe3,0xe4,0xe9,0x95,0xd7,0xda,0xda,0xe3,0x95,0xde,0xe2,0xe5,0xe1,0xda,0xe2,0xda,0xe3,0xe9,0xda,0xd9]

fileprivate func fromUser(path num: UInt8) -> UInt8 {
    let value = Int(num) + 139
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "img_match_shadow" :*/
fileprivate let str_backWillText:String = "let caseimg_m"
fileprivate let str_shareName:String = "addado"
fileprivate let str_scaleData:String = "range"

/*: "icon_match_topshowdown" :*/
fileprivate let str_tipAppIfText:[Character] = ["i","c","o","n","_","m","a","t","c","h","_"]
fileprivate let str_applicationValue:String = "voicepsh"

/*: "Matching..." :*/
fileprivate let str_detailDismissSectionData:[Character] = ["M","a","t","c","h","i","n","g",".",".","."]

/*: "get json error" :*/
fileprivate let str_kindName:[Character] = ["g","e","t"," ","j"]
fileprivate let str_colorData:String = "son app exist height"

/*: "img_home_shadow" :*/
fileprivate let str_textData:String = "img_homcell double"
fileprivate let str_appValue:String = "e_shadowview true max var"

/*: "icon_home_girl" :*/
fileprivate let str_lightData:String = "icon_hequal left change"
fileprivate let str_addValue:[Character] = ["o","m","e","_","g","i","r","l"]

/*: "   " :*/
fileprivate let str_environmentTitle:String = "   "

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MetalworksView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/18.
//

//: import UIKit
import UIKit

//: typealias SeleteCardItemBlock = (Int) -> Void
typealias SeleteCardItemBlock = (Int) -> Void
//: typealias TouchCallBlock = (_ model: TalkingMatchResultModel) -> Void
typealias TouchCallBlock = (_ model: AchromaticColorMeasurable) -> Void

//: class TalkingClubCardItemCell: TalkingClubCardViewCell {
class MetalworksView: TalkingNetworkCompartmentView {
    //: var touchCallBlock: TouchCallBlock!
    var touchCallBlock: TouchCallBlock!
    //: var lastBtn: UIButton?
    var lastBtn: UIButton?
    //: required override init(reuseIdentifier: String) {
    override required init(reuseIdentifier: String) {
        //: super.init(reuseIdentifier: reuseIdentifier)
        super.init(reuseIdentifier: reuseIdentifier)
        //: self.reuseIdentifier = reuseIdentifier
        self.reuseIdentifier = reuseIdentifier
        //: setItemView()
        executeView()
        //: setItemViewFrame()
        inputLabel()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_buttonTitle.map{fromUser(path: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var containerView: UIView = {
    private lazy var containerView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.layer.cornerRadius =  12
        view.layer.cornerRadius = 12
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: return view
        return view
        //: }()
    }()

    //: private lazy var gradientShadowImageView: UIImageView = {
    private lazy var gradientShadowImageView: UIImageView = {
        //: let imageView = UIImageView.init()
        let imageView = UIImageView()
        //: imageView.image = UIImage.withView(name: "img_match_shadow")
        imageView.image = UIImage.withView(name: (String(str_backWillText.suffix(5)) + "atch_" + str_shareName.replacingOccurrences(of: "add", with: "sh") + str_scaleData.replacingOccurrences(of: "range", with: "w")))
        //: return imageView
        return imageView
        //: }()
    }()

    //: lazy var playView: UIView = {
    lazy var playView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .clear
        view.backgroundColor = .clear
        //: view.isHidden = true
        view.isHidden = true
        //: return view
        return view
        //: }()
    }()

    //: lazy var userImageView: UIImageView = {
    lazy var userImageView: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var userIconImg: UIImageView = {
    private lazy var userIconImg: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: imag.layer.cornerRadius = 15
        imag.layer.cornerRadius = 15
        //: imag.layer.masksToBounds = true
        imag.layer.masksToBounds = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var topShowdImageView: UIImageView = {
    private lazy var topShowdImageView: UIImageView = {
        //: let imageView = UIImageView.init()
        let imageView = UIImageView()
        //: imageView.image = UIImage.withView(name: "icon_match_topshowdown")
        imageView.image = UIImage.withView(name: (String(str_tipAppIfText) + str_applicationValue.replacingOccurrences(of: "voice", with: "to") + "owdown"))
        //: return imageView
        return imageView
        //: }()
    }()

    //: private lazy var nameLabel: UILabel = {
    private lazy var nameLabel: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 18)
        label.font = .conversationSize(type: .Medium, fontSize: 18)
        //: label.textColor = .white
        label.textColor = .white
        //: return label
        return label
        //: }()
    }()

    //: private lazy var sexBtn: UIButton = {
    private lazy var sexBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Medium, fontSize: 13)
        btn.titleLabel?.font = .conversationSize(type: .Medium, fontSize: 13)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var matchTipsLabel: UILabel = {
    private lazy var matchTipsLabel: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 18)
        label.font = .conversationSize(type: .Medium, fontSize: 18)
        //: label.textColor = .white
        label.textColor = .white
        //: label.text = "Matching...".localized
        label.text = (String(str_detailDismissSectionData)).localized
        //: label.isHidden = true
        label.isHidden = true
        //: return label
        return label
        //: }()
    }()

    //: private lazy var callBtn: UIButton = {
    private lazy var callBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(callBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(cognisant), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var callPlayer: SVGAPlayer = {
    lazy var callPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: callBtn.addSubview(player)
        callBtn.addSubview(player)
        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Match_userCall)
        let url = StreamReactiveCompatible.default.picName(type: .Match_userCall)
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
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                //: player.startAnimation()
                player.startAnimation()
            }
            //: } catch {
        } catch {
            //: printLog(message: "get json error")
            printLog(message: (String(str_kindName) + String(str_colorData.prefix(4)) + "error"))
        }
        //: return player
        return player
        //: }()
    }()
}

//: extension TalkingClubCardItemCell {
extension MetalworksView {
    //: func setCellData(model: TalkingMatchResultModel) {
    func collectionEqual(model: AchromaticColorMeasurable) {
        //: self.model = model
        self.model = model
        //: userImageView.isHidden = false
        userImageView.isHidden = false
        //: if model.cover.count > 0 {
        if model.cover.count > 0 {
            //: userImageView.setUrlImage(urlStr: model.cover, placeImg: UIImage.withView(name: "img_home_shadow"))
            userImageView.optionsFinish(urlStr: model.cover, placeImg: UIImage.withView(name: (String(str_textData.prefix(7)) + String(str_appValue.prefix(8)))))
            //: } else if model.headPic.count > 0 {
        } else if model.headPic.count > 0 {
            //: userImageView.setUrlImage(urlStr: model.headPic, placeImg: UIImage.withView(name: "img_home_shadow"))
            userImageView.optionsFinish(urlStr: model.headPic, placeImg: UIImage.withView(name: (String(str_textData.prefix(7)) + String(str_appValue.prefix(8)))))
            //: } else {
        } else {
            //: userImageView.image = UIImage.withView(name: "img_home_shadow")
            userImageView.image = UIImage.withView(name: (String(str_textData.prefix(7)) + String(str_appValue.prefix(8))))
        }
        //: userIconImg.setUrlImage(urlStr: model.headPic, placeImg: nil)
        userIconImg.ofData(urlStr: model.headPic, placeImg: nil)
        //: nameLabel.text = model.nickname
        nameLabel.text = model.nickname
        //: sexBtn.setBackgroundImage(UIImage.withView(name: "icon_home_girl"), for: .normal)
        sexBtn.setBackgroundImage(UIImage.withView(name: (String(str_lightData.prefix(6)) + String(str_addValue))), for: .normal)
        //: let str = model.age > 0 ? "\(model.age)" : ""
        let str = model.age > 0 ? "\(model.age)" : ""
        //: sexBtn.setTitle("   " + str, for: .normal)
        sexBtn.setTitle("   " + str, for: .normal)
        //: matchTipsLabel.isHidden = model.isScroll
        matchTipsLabel.isHidden = model.isScroll
        //: callBtn.isHidden = !model.isScroll
        callBtn.isHidden = !model.isScroll
        //: sexBtn.isHidden = !model.isScroll
        sexBtn.isHidden = !model.isScroll

        //: if self.model?.videoUrl.count ?? 0 > 0 {
        if self.model?.videoUrl.count ?? 0 > 0 {
            //: playView.isHidden = false
            playView.isHidden = false
        }
    }

    //: @objc private func callBtnClick() {
    @objc private func cognisant() {
        //: if self.touchCallBlock != nil && self.model != nil {
        if self.touchCallBlock != nil, self.model != nil {
            //: self.touchCallBlock(self.model!)
            self.touchCallBlock(self.model!)
        }
    }
}

//: extension TalkingClubCardItemCell {
extension MetalworksView {
    //: func setItemView() {
    func executeView() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.addSubview(containerView)
        self.addSubview(containerView)
        //: containerView.addSubview(playView)
        containerView.addSubview(playView)
        //: containerView.addSubview(userImageView)
        containerView.addSubview(userImageView)
        //: containerView.addSubview(gradientShadowImageView)
        containerView.addSubview(gradientShadowImageView)
        //: self.addSubview(topShowdImageView)
        self.addSubview(topShowdImageView)
        //: self.addSubview(userIconImg)
        self.addSubview(userIconImg)
        //: self.addSubview(nameLabel)
        self.addSubview(nameLabel)
        //: self.addSubview(sexBtn)
        self.addSubview(sexBtn)
        //: self.addSubview(callBtn)
        self.addSubview(callBtn)
        //: userImageView.addSubview(matchTipsLabel)
        userImageView.addSubview(matchTipsLabel)
    }

    //: func setItemViewFrame() {
    func inputLabel() {
        //: containerView.snp.makeConstraints { make in
        containerView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: gradientShadowImageView.snp.makeConstraints { make in
        gradientShadowImageView.snp.makeConstraints { make in
            //: make.leading.trailing.bottom.equalToSuperview()
            make.leading.trailing.bottom.equalToSuperview()
            //: make.height.equalTo(207)
            make.height.equalTo(207)
        }

        //: playView.snp.makeConstraints { make in
        playView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: userImageView.snp.makeConstraints { make in
        userImageView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: userIconImg.snp.makeConstraints { make in
        userIconImg.snp.makeConstraints { make in
            //: make.leading.top.equalTo(10)
            make.leading.top.equalTo(10)
            //: make.width.height.equalTo(30)
            make.width.height.equalTo(30)
        }
        //: nameLabel.snp.makeConstraints { make in
        nameLabel.snp.makeConstraints { make in
            //: make.centerY.equalTo(userIconImg)
            make.centerY.equalTo(userIconImg)
            //: make.leading.equalTo(userIconImg.snp.trailing).offset(6)
            make.leading.equalTo(userIconImg.snp.trailing).offset(6)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
        }
        //: sexBtn.snp.makeConstraints { make in
        sexBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLabel.snp.trailing).offset(4)
            make.leading.equalTo(nameLabel.snp.trailing).offset(4)
            //: make.centerY.equalTo(nameLabel)
            make.centerY.equalTo(nameLabel)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
            //: make.width.equalTo(40)
            make.width.equalTo(40)
            //: make.trailing.lessThanOrEqualTo(-10)
            make.trailing.lessThanOrEqualTo(-10)
        }
        //: topShowdImageView.snp.makeConstraints { make in
        topShowdImageView.snp.makeConstraints { make in
            //: make.leading.trailing.top.equalToSuperview()
            make.leading.trailing.top.equalToSuperview()
            //: make.height.equalTo(58)
            make.height.equalTo(58)
        }
        //: matchTipsLabel.snp.makeConstraints { make in
        matchTipsLabel.snp.makeConstraints { make in
            //: make.bottom.equalToSuperview().offset(-20)
            make.bottom.equalToSuperview().offset(-20)
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: callBtn.snp.makeConstraints { make in
        callBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-7)
            make.trailing.equalTo(-7)
            //: make.bottom.equalToSuperview().offset(-100)
            make.bottom.equalToSuperview().offset(-100)
            //: make.size.equalTo(70)
            make.size.equalTo(70)
        }
        //: callPlayer.snp.makeConstraints { make in
        callPlayer.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
