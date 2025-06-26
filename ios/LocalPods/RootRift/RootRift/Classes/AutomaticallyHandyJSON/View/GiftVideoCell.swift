
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_viewToValue:[UInt8] = [0xe6,0xeb,0xe6,0xf1,0xa5,0xe0,0xec,0xe1,0xe2,0xef,0xb7,0xa6,0x9d,0xe5,0xde,0xf0,0x9d,0xeb,0xec,0xf1,0x9d,0xdf,0xe2,0xe2,0xeb,0x9d,0xe6,0xea,0xed,0xe9,0xe2,0xea,0xe2,0xeb,0xf1,0xe2,0xe1]

fileprivate func modelUser(of num: UInt8) -> UInt8 {
    let value = Int(num) + 131
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "icon_me_video" :*/
fileprivate let str_eventGiftData:String = "icon_mdetail lab manager center"
fileprivate let str_pathData:String = "image for fulle_"
fileprivate let str_equalData:[Character] = ["v","i","d","e","o"]

/*: "Receive video calls" :*/
fileprivate let str_randomData:[Character] = ["R","e","c","e","i","v","e"," ","v","i","d","e","o"," "]
fileprivate let str_pageTitle:[Character] = ["c","a","l","l","s"]

/*: "icon_me_voice" :*/
fileprivate let str_soundData:[Character] = ["i","c","o","n","_"]
fileprivate let str_infoGiftTitle:[Character] = ["m"]
fileprivate let str_rangeContent:[Character] = ["e","_","v","o","i","c","e"]

/*: "Receive voice calls" :*/
fileprivate let str_leadingValue:[Character] = ["R","e","c","e","i","v","e"," ","v","o"]
fileprivate let str_noData:String = "add"
fileprivate let str_messageTaskTitle:[Character] = ["c","e"," ","c","a","l","l","s"]

/*: "icon_me_randomvideo" :*/
fileprivate let str_withName:String = "range texticon_"
fileprivate let str_colorValue:String = "dodatav"

/*: "Random Video" :*/
fileprivate let str_leadingTabTitle:String = "Randovideo event sex if size"
fileprivate let str_withWhiteName:String = "burn"

/*: "-1" :*/
fileprivate let str_haveData:String = "-view"

/*: "value" :*/
fileprivate let str_toText:String = "vuseue"

/*: "type" :*/
fileprivate let str_iconValue:[Character] = ["t","y","p","e"]

/*: "videoAuth" :*/
fileprivate let str_modelEqualData:String = "videoi"
fileprivate let str_recordValue:[Character] = ["d","e","o","A","u","t","h"]

/*: "voiceAuth" :*/
fileprivate let str_plainValue:[Character] = ["v","o"]
fileprivate let str_sizeData:String = "iceAuthuser self name return"

/*: "randomVideo" :*/
fileprivate let str_dataValue:String = "var heightrandomV"
fileprivate let str_gameText:String = "ivoiceeo"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  GiftVideoCell.swift
//  AbroadTalking
//
//  Created by DouXiu on 2024/5/24.
//

//: import UIKit
import UIKit

//: enum SettingReceiveVideoType {
enum TelevisionVideoType {
    //: case video
    case video
    //: case voice
    case voice
    //: case randomVideo
    case randomVideo
}

//: class TalkingSettingReceiveVideoCell: UITableViewCell {
class GiftVideoCell: UITableViewCell {
    //: private var currType: SettingReceiveVideoType = .video
    private var currType: TelevisionVideoType = .video
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: selectionStyle = UITableViewCell.SelectionStyle.none
        selectionStyle = UITableViewCell.SelectionStyle.none
        //: self.backgroundColor = UIColor.clear
        self.backgroundColor = UIColor.clear
        //: self.contentView.backgroundColor = UIColor.clear
        self.contentView.backgroundColor = UIColor.clear
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_viewToValue.map{modelUser(of: $0)}, encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.leading.equalTo(12)
            make.leading.equalTo(12)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        //: titleBLB.snp.makeConstraints { make in
        titleBLB.snp.makeConstraints { make in
            //: make.leading.equalTo(icon.snp.trailing).offset(7)
            make.leading.equalTo(icon.snp.trailing).offset(7)
            //: make.centerY.equalTo(icon)
            make.centerY.equalTo(icon)
        }

        //: switchView.snp.makeConstraints { make in
        switchView.snp.makeConstraints { make in
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

    // MARK: - Lazy load

    //: private lazy var backView: UIView = {
    private lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: contentView.addSubview(view)
        contentView.addSubview(view)
        //: return view
        return view
        //: }()
    }()

    //: private lazy var icon: UIImageView = {
    private lazy var icon: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: backView.addSubview(img)
        backView.addSubview(img)
        //: return img
        return img
        //: }()
    }()

    //: private lazy var titleBLB: UILabel = {
    private lazy var titleBLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        lb.font = UIFont.conversationSize(type: .Medium, fontSize: 16)
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.ending()
        //: backView.addSubview(lb)
        backView.addSubview(lb)
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var switchView: UISwitch = {
    private lazy var switchView: UISwitch = {
        //: let swit = UISwitch.init()
        let swit = UISwitch()
        //: swit.isOn = false
        swit.isOn = false
        //: swit.onTintColor = UIColor.appThemeColor()
        swit.onTintColor = UIColor.smallFor()
        //: swit.thumbTintColor = .white
        swit.thumbTintColor = .white
        //: swit.addTarget(self, action: #selector(switchDidChange), for: .valueChanged)
        swit.addTarget(self, action: #selector(voiceEnableOver), for: .valueChanged)
        //: backView.addSubview(swit)
        backView.addSubview(swit)
        //: return swit
        return swit
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingSettingReceiveVideoCell {
extension GiftVideoCell {
    /// 刷新cell
    //: func refreshCell(type: SettingReceiveVideoType) {
    func colorLive(type: TelevisionVideoType) {
        //: self.currType = type
        self.currType = type
        //: switch type {
        switch type {
        //: case .video:
        case .video:
            //: icon.image = UIImage.withView(name: "icon_me_video")
            icon.image = UIImage.withView(name: (String(str_eventGiftData.prefix(6)) + String(str_pathData.suffix(2)) + String(str_equalData)))
            //: titleBLB.text = "Receive video calls".localized
            titleBLB.text = (String(str_randomData) + String(str_pageTitle)).localized
            //: switchView.isOn = (WatercourseThen.share.loginUserMode.videoAuth == "1")
            switchView.isOn = (WatercourseThen.share.loginUserMode.videoAuth == "1")

        //: case .voice:
        case .voice:
            //: icon.image = UIImage.withView(name: "icon_me_voice")
            icon.image = UIImage.withView(name: (String(str_soundData) + String(str_infoGiftTitle) + String(str_rangeContent)))
            //: titleBLB.text = "Receive voice calls".localized
            titleBLB.text = (String(str_leadingValue) + str_noData.replacingOccurrences(of: "add", with: "i") + String(str_messageTaskTitle)).localized
            //: switchView.isOn = (WatercourseThen.share.loginUserMode.voiceAuth == "1")
            switchView.isOn = (WatercourseThen.share.loginUserMode.voiceAuth == "1")

        //: case .randomVideo:
        case .randomVideo:
            //: icon.image = UIImage.withView(name: "icon_me_randomvideo")
            icon.image = UIImage.withView(name: (String(str_withName.suffix(5)) + "me_ran" + str_colorValue.replacingOccurrences(of: "data", with: "m") + "ideo"))
            //: titleBLB.text = "Random Video".localized
            titleBLB.text = (String(str_leadingTabTitle.prefix(5)) + "m Vid" + str_withWhiteName.replacingOccurrences(of: "burn", with: "eo")).localized
            //: switchView.isOn = (WatercourseThen.share.appUserConfigMode.randomVideo == "1")
            switchView.isOn = (WatercourseThen.share.appUserConfigMode.randomVideo == "1")
        }
    }

    /// 按钮开关
    //: @objc func switchDidChange() {
    @objc func voiceEnableOver() {
        //: self.switchView.isEnabled = false
        self.switchView.isEnabled = false
        //: var params = [String: Any]()
        var params = [String: Any]()
        //: let value = self.switchView.isOn ? "1":"-1"
        let value = self.switchView.isOn ? "1" : "-1"
        //: params["value"] = value
        params[(str_toText.replacingOccurrences(of: "use", with: "al"))] = value
        //: switch currType {
        switch currType {
        //: case .video:
        case .video:
            //: params["type"] = "videoAuth"
            params[(String(str_iconValue))] = (str_modelEqualData.replacingOccurrences(of: "video", with: "v") + String(str_recordValue))
        //: case .voice:
        case .voice:
            //: params["type"] = "voiceAuth"
            params[(String(str_iconValue))] = (String(str_plainValue) + String(str_sizeData.prefix(7)))
        //: case .randomVideo:
        case .randomVideo:
            //: params["type"] = "randomVideo"
            params[(String(str_iconValue))] = (String(str_dataValue.suffix(7)) + str_gameText.replacingOccurrences(of: "voice", with: "d"))
        }
        //: ProgressHUD.show()
        AtAdView.sizeUp()
        //: TalkingMeRequestTool.req_SettingChange(params: params) { succeed, result, errorModel in
        AnteriorNarisRequestTool.appMoreLive(params: params) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            AtAdView.toAction()
            //: self.switchView.isEnabled = true
            self.switchView.isEnabled = true
            //: guard succeed else {
            guard succeed else {
                //: self.switchView.isOn = !self.switchView.isOn
                self.switchView.isOn = !self.switchView.isOn
                //: return
                return
            }
            //: switch self.currType {
            switch self.currType {
            //: case .video:
            case .video:
                //: WatercourseThen.share.loginUserMode.videoAuth = value
                WatercourseThen.share.loginUserMode.videoAuth = value
            //: case .voice:
            case .voice:
                //: WatercourseThen.share.loginUserMode.voiceAuth = value
                WatercourseThen.share.loginUserMode.voiceAuth = value
            //: case .randomVideo:
            case .randomVideo:
                //: WatercourseThen.share.appUserConfigMode.randomVideo = value
                WatercourseThen.share.appUserConfigMode.randomVideo = value
            }
            // 上报女性用户busy状态
            //: (TalkingApplication.shared as! TalkingApplication).femaleBusyStatusReport()
            (CurrentApplication.shared as! CurrentApplication).upTo()
        }
    }
}
