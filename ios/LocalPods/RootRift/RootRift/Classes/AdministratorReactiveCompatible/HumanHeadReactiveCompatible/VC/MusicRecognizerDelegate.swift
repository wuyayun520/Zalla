
//: Declare String Begin

/*: "#33005B" :*/
fileprivate let str_equalTitle:String = "#33005Bscreen array"

/*: "get json error" :*/
fileprivate let str_withName:String = "get color model make"
fileprivate let str_slideTitle:[Character] = [" ","e","r","r","o","r"]

/*: "btn_live_mini_nor" :*/
fileprivate let str_mainName:String = "if tablebtn_"
fileprivate let str_modelData:String = "make model to_mini_"
fileprivate let str_modeEmptyData:String = "nopic"

/*: "icon_views_number" :*/
fileprivate let str_pageValue:String = "end title whiteicon_v"
fileprivate let str_indexName:String = "border path sectioniews_n"

/*: "Random Video" :*/
fileprivate let str_randomData:[Character] = ["R","a","n","d","o","m"," "]
fileprivate let str_defineValue:[Character] = ["V","i","d","e","o"]

/*: "Accept Video Match Call" :*/
fileprivate let str_giftMemorySucceedTitle:[Character] = ["A","c","c","e","p","t"," ","V","i","d","e","o"," ","M","a","t","c","h"," ","C","a","l","l"]

/*: "%@ chatting" :*/
fileprivate let str_showEaseValue:[Character] = ["%","@"," ","c","h","a","t","t","i","n","g"]

/*: "chattingNum" :*/
fileprivate let str_equalName:String = "cspeakertti"
fileprivate let str_managerName:[Character] = ["n","g","N","u","m"]

/*: "type" :*/
fileprivate let str_titleName:[UInt8] = [0x4c,0x41,0x48,0x5d]

private func nameTag(image num: UInt8) -> UInt8 {
    return num ^ 56
}

/*: "randomVideo" :*/
fileprivate let str_logData:String = "moreand"

/*: "-1" :*/
fileprivate let str_giftValue:[Character] = ["-","1"]

/*: "value" :*/
fileprivate let str_infoContent:String = "stylelue"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MusicRecognizerDelegate.swift
//  RootRift
//
//  Created by DouXiu on 2024/8/16.
//

//: import UIKit
import UIKit

//: class TalkingFemaleStaticRandomVideoVC: TalkingBaseViewController {
class MusicRecognizerDelegate: MusicViewController {
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: hideNavi = true
        hideNavi = true
        //: setupSubviews()
        subSound()
        //: setupSubViewsConstraint()
        overlay()
        //: req_videoMatchCheck()
        length()
    }

    // MARK: - Lazy Load

    //: private lazy var renderView: UIView = {
    private lazy var renderView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#33005B")
        v.backgroundColor = UIColor(hex: (String(str_equalTitle.prefix(7))))
        //: return v
        return v
        //: }()
    }()

    //: private lazy var svgaPlayer: SVGAPlayer = {
    private lazy var svgaPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Female_Randomvideo_Bg)
        let url = StreamReactiveCompatible.default.picName(type: .Female_Randomvideo_Bg)
        //: do {
        do {
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                // 刷新放在此处目的：是为了进入页面时，保证加载完svga资源再刷新
                //: self.refreshUI()
                self.thumb()
            }
            //: } catch {
        } catch {
            //: printLog(message: "get json error")
            printLog(message: (String(str_withName.prefix(4)) + "json" + String(str_slideTitle)))
        }
        //: return player
        return player
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.withView(name: "btn_live_mini_nor"), for: .normal)
        btn.setImage(UIImage.withView(name: (String(str_mainName.suffix(4)) + "live" + String(str_modelData.suffix(6)) + str_modeEmptyData.replacingOccurrences(of: "pic", with: "r"))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(titleClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var chattingNumBtn: TalkingButton = {
    private lazy var chattingNumBtn: MediaControl = {
        //: let btn = TalkingButton()
        let btn = MediaControl()
        //: btn.setImage(UIImage.withView(name: "icon_views_number"), for: .normal)
        btn.setImage(UIImage.withView(name: (String(str_pageValue.suffix(6)) + String(str_indexName.suffix(6)) + "umber")), for: .normal)
        //: btn.setImage(UIImage.withView(name: "icon_views_number"), for: .disabled)
        btn.setImage(UIImage.withView(name: (String(str_pageValue.suffix(6)) + String(str_indexName.suffix(6)) + "umber")), for: .disabled)
        //: btn.spaceBetweenTitleAndImage = 5
        btn.spaceBetweenTitleAndImage = 5
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
        btn.titleLabel?.font = UIFont.conversationSize(type: .Regular, fontSize: 15)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var bottomView: UIView = {
    private lazy var bottomView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .white.withAlphaComponent(0.15)
        v.backgroundColor = .white.withAlphaComponent(0.15)
        //: v.layer.cornerRadius = 8
        v.layer.cornerRadius = 8
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: let lab1 = UILabel()
        let lab1 = UILabel()
        //: lab1.text = "Random Video".localized
        lab1.text = (String(str_randomData) + String(str_defineValue)).localized
        //: lab1.textColor = .white
        lab1.textColor = .white
        //: lab1.font = UIFont.showSize(fontSize: 20)
        lab1.font = UIFont.showSize(fontSize: 20)
        //: v.addSubview(lab1)
        v.addSubview(lab1)
        //: lab1.snp.makeConstraints { make in
        lab1.snp.makeConstraints { make in
            //: make.top.equalTo(17)
            make.top.equalTo(17)
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
        }
        //: let lab2 = UILabel()
        let lab2 = UILabel()
        //: lab2.text = "Accept Video Match Call".localized
        lab2.text = (String(str_giftMemorySucceedTitle)).localized
        //: lab2.textColor = .white
        lab2.textColor = .white
        //: lab2.numberOfLines = 0
        lab2.numberOfLines = 0
        //: lab2.font = UIFont.pingfangRugularFont(fontSize: 15)
        lab2.font = UIFont.rugular(fontSize: 15)
        //: v.addSubview(lab2)
        v.addSubview(lab2)
        //: lab2.snp.makeConstraints { make in
        lab2.snp.makeConstraints { make in
            //: make.top.equalTo(lab1.snp.bottom).offset(12)
            make.top.equalTo(lab1.snp.bottom).offset(12)
            //: make.leading.equalTo(lab1)
            make.leading.equalTo(lab1)
            //: make.trailing.equalTo(-90)
            make.trailing.equalTo(-90)
            //: make.bottom.equalTo(-17)
            make.bottom.equalTo(-17)
        }
        //: return v
        return v
        //: }()
    }()

    //: private lazy var switchBtn: UISwitch = {
    private lazy var switchBtn: UISwitch = {
        //: let swit = UISwitch()
        let swit = UISwitch()
        //: swit.isOn = false
        swit.isOn = false
        //: swit.onTintColor = UIColor.appThemeColor()
        swit.onTintColor = UIColor.smallFor()
        //: swit.thumbTintColor = .white
        swit.thumbTintColor = .white
        //: swit.addTarget(self, action: #selector(switchDidChange), for: .valueChanged)
        swit.addTarget(self, action: #selector(deformationChange), for: .valueChanged)
        //: return swit
        return swit
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingFemaleStaticRandomVideoVC {
extension MusicRecognizerDelegate {
    /// 获取匹配人数
    //: private func req_videoMatchCheck() {
    private func length() {
        //: TalkingQuickVideoManager.req_videoMatchCheck { succeed, result, _ in
        HumanHeadReactiveCompatible.builder { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            //: let json = JSON(result ?? [String: Any]())
            let json = JSON(result ?? [String: Any]())
            //: self.chattingNumBtn.setTitle("%@ chatting".localizedArguments(json["chattingNum"].intValue), for: .normal)
            self.chattingNumBtn.setTitle((String(str_showEaseValue)).alongNext(json[(str_equalName.replacingOccurrences(of: "speaker", with: "ha") + String(str_managerName))].intValue), for: .normal)
        }
    }

    /// 随机视频开关请求
    //: private func req_SettingChange() {
    private func addFinish() {
        //: var params = ["type": "randomVideo"]
        var params = [String(bytes: str_titleName.map{nameTag(image: $0)}, encoding: .utf8)!: (str_logData.replacingOccurrences(of: "more", with: "r") + "omVideo")]
        //: let value = switchBtn.isOn ? "1" : "-1"
        let value = switchBtn.isOn ? "1" : "-1"
        //: params["value"] = value
        params[(str_infoContent.replacingOccurrences(of: "style", with: "va"))] = value
        //: ProgressHUD.show()
        AtAdView.sizeUp()
        //: TalkingMeRequestTool.req_SettingChange(params: params) { succeed, _, _ in
        AnteriorNarisRequestTool.appMoreLive(params: params) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            AtAdView.toAction()
            //: self.switchBtn.isEnabled = true
            self.switchBtn.isEnabled = true
            //: guard succeed else {
            guard succeed else {
                //: self.switchBtn.isOn = !self.switchBtn.isOn
                self.switchBtn.isOn = !self.switchBtn.isOn
                //: return
                return
            }
            //: WatercourseThen.share.appUserConfigMode.randomVideo = value
            WatercourseThen.share.appUserConfigMode.randomVideo = value
            //: self.refreshUI()
            self.thumb()
        }
    }
}

// MARK: - Event

//: extension TalkingFemaleStaticRandomVideoVC {
extension MusicRecognizerDelegate {
    /// 关闭页面按钮事件
    //: @objc private func closeButtonClick() {
    @objc private func titleClick() {
        //: getNavigationController()?.popViewController(animated: false)
        trimDown()?.popViewController(animated: false)
    }

    /// 随机视频开关事件
    //: @objc private func switchDidChange() {
    @objc private func deformationChange() {
        //: switchBtn.isEnabled = false
        switchBtn.isEnabled = false
        //: req_SettingChange()
        addFinish()
    }
}

// MARK: - Layout

//: extension TalkingFemaleStaticRandomVideoVC {
extension MusicRecognizerDelegate {
    /// 添加视图
    //: private func setupSubviews() {
    private func subSound() {
        //: view.addSubview(renderView)
        view.addSubview(renderView)
        //: view.addSubview(svgaPlayer)
        view.addSubview(svgaPlayer)
        //: view.addSubview(closeBtn)
        view.addSubview(closeBtn)
        //: view.addSubview(chattingNumBtn)
        view.addSubview(chattingNumBtn)
        //: view.addSubview(bottomView)
        view.addSubview(bottomView)
        //: bottomView.addSubview(switchBtn)
        bottomView.addSubview(switchBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func overlay() {
        //: renderView.snp.makeConstraints { make in
        renderView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: svgaPlayer.snp.makeConstraints { make in
        svgaPlayer.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.height.equalTo(actualWidth(w: 435))
            make.width.height.equalTo(actualWidth(w: 435))
        }
        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight + 6)
            make.top.equalTo(kLet_environmentContent + 6)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.width.height.equalTo(actualWidth(w: 32))
            make.width.height.equalTo(actualWidth(w: 32))
        }
        //: chattingNumBtn.snp.makeConstraints { make in
        chattingNumBtn.snp.makeConstraints { make in
            //: make.top.equalTo(svgaPlayer.snp.bottom).offset(-35)
            make.top.equalTo(svgaPlayer.snp.bottom).offset(-35)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        //: bottomView.snp.makeConstraints { make in
        bottomView.snp.makeConstraints { make in
            //: make.top.equalTo(chattingNumBtn.snp.bottom).offset(37)
            make.top.equalTo(chattingNumBtn.snp.bottom).offset(37)
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
        }
        //: switchBtn.snp.makeConstraints { make in
        switchBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.width.equalTo(51)
            make.width.equalTo(51)
            //: make.height.equalTo(28)
            make.height.equalTo(28)
        }
    }

    /// 刷新UI
    //: private func refreshUI() {
    private func thumb() {
        //: if WatercourseThen.share.appUserConfigMode.randomVideo == "1" {
        if WatercourseThen.share.appUserConfigMode.randomVideo == "1" {
            //: svgaPlayer.startAnimation()
            svgaPlayer.startAnimation()
            //: } else {
        } else {
            //: svgaPlayer.pauseAnimation()
            svgaPlayer.pauseAnimation()
        }
        //: switchBtn.isOn = (WatercourseThen.share.appUserConfigMode.randomVideo == "1")
        switchBtn.isOn = (WatercourseThen.share.appUserConfigMode.randomVideo == "1")
    }
}
