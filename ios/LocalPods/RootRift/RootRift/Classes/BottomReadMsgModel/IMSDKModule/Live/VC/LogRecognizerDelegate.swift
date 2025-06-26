
//: Declare String Begin

/*: "nav_back_black_nor" :*/
fileprivate let str_normalValue:String = "icon size view from filternav_"
fileprivate let str_cellObjectValue:String = "_blacreturn voice environment search"
fileprivate let str_equalValue:[Character] = ["k","_","n","o","r"]

/*: "live_explain" :*/
fileprivate let str_clothesName:String = "LIVE"
fileprivate let str_modelRejectName:String = "m data_exp"

/*: "Live" :*/
fileprivate let str_statusName:String = "label gift mode head makeLive"

/*: "#FAF6FF" :*/
fileprivate let str_changeName:String = "#FAF6FFi else above"

/*: "icon_live_certification" :*/
fileprivate let str_toVideoName:String = "contentcon"
fileprivate let str_fromValue:[Character] = ["e","r","t","i","f","i","c","a","t","i","o","n"]

/*: "Turn on live certification" :*/
fileprivate let str_arrayName:[Character] = ["T","u","r","n"," ","o","n"," ","l","i","v","e"," ","c"]
fileprivate let str_modelTitle:String = "removertif"

/*: "will increase the chances of receiving calls to earn more points." :*/
fileprivate let str_environmentData:[UInt8] = [0xfc,0xe2,0xe7,0xe7,0xab,0xe2,0xe5,0xe8,0xf9,0xee,0xea,0xf8,0xee,0xab,0xff,0xe3,0xee,0xab,0xe8,0xe3,0xea,0xe5,0xe8,0xee,0xf8,0xab,0xe4,0xed,0xab,0xf9,0xee,0xe8,0xee,0xe2,0xfd,0xe2,0xe5,0xec,0xab,0xe8,0xea,0xe7,0xe7,0xf8,0xab,0xff,0xe4,0xab,0xee,0xea,0xf9,0xe5,0xab,0xe6,0xe4,0xf9,0xee,0xab,0xfb,0xe4,0xe2,0xe5,0xff,0xf8,0xa5]

private func dataTouchLet(bottom num: UInt8) -> UInt8 {
    return num ^ 139
}

/*: "icon_live_publicly" :*/
fileprivate let str_nameValue:[Character] = ["i","c","o","n","_","l","i","v","e","_","p","u","b","l"]
fileprivate let str_coverValue:String = "iframey"

/*: "Your live will be publicly displayed to others" :*/
fileprivate let str_modelValue:[UInt8] = [0xae,0x98,0x82,0x85,0xd7,0x9b,0x9e,0x81,0x92,0xd7,0x80,0x9e,0x9b,0x9b,0xd7,0x95,0x92,0xd7,0x87,0x82,0x95,0x9b,0x9e,0x94,0x9b,0x8e,0xd7,0x93,0x9e,0x84,0x87,0x9b,0x96,0x8e,0x92,0x93,0xd7,0x83,0x98,0xd7,0x98,0x83,0x9f,0x92,0x85,0x84]

private func levelItem(live num: UInt8) -> UInt8 {
    return num ^ 247
}

/*: "its content must comply with current laws and regulations and platform requirements." :*/
fileprivate let str_centerName:[UInt8] = [0xd2,0xdd,0xdc,0x89,0xcc,0xd8,0xd7,0xdd,0xce,0xd7,0xdd,0x89,0xd6,0xde,0xdc,0xdd,0x89,0xcc,0xd8,0xd6,0xd9,0xd5,0xe2,0x89,0xe0,0xd2,0xdd,0xd1,0x89,0xcc,0xde,0xdb,0xdb,0xce,0xd7,0xdd,0x89,0xd5,0xca,0xe0,0xdc,0x89,0xca,0xd7,0xcd,0x89,0xdb,0xce,0xd0,0xde,0xd5,0xca,0xdd,0xd2,0xd8,0xd7,0xdc,0x89,0xca,0xd7,0xcd,0x89,0xd9,0xd5,0xca,0xdd,0xcf,0xd8,0xdb,0xd6,0x89,0xdb,0xce,0xda,0xde,0xd2,0xdb,0xce,0xd6,0xce,0xd7,0xdd,0xdc,0x97]

fileprivate func financialAid(position num: UInt8) -> UInt8 {
    let value = Int(num) + 151
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "icon_live_face" :*/
fileprivate let str_listName:[Character] = ["i","c","o","n","_","l","i","v","e","_","f","a","c","e"]

/*: "Please make sure" :*/
fileprivate let str_takeLevelValue:[Character] = ["P","l","e","a","s","e"," ","m","a","k","e"]
fileprivate let str_mainData:[Character] = [" ","s","u","r","e"]

/*: "your face is always in the video frame." :*/
fileprivate let str_textName:[UInt8] = [0x2e,0x65,0x6d,0x61,0x72,0x66,0x20,0x6f,0x65,0x64,0x69,0x76,0x20,0x65,0x68,0x74,0x20,0x6e,0x69,0x20,0x73,0x79,0x61,0x77,0x6c,0x61,0x20,0x73,0x69,0x20,0x65,0x63,0x61,0x66,0x20,0x72,0x75,0x6f,0x79]

/*: "Turn on" :*/
fileprivate let str_viewChangeName:[Character] = ["T","u","r","n"," ","o","n"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LogRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by young on 2023/6/15.
//

//: import UIKit
import UIKit

//: class TalkingLiveExplainViewController: TalkingBaseViewController {
class LogRecognizerDelegate: MusicViewController {
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: hideNavi = true
        hideNavi = true

        //: setupSubviews()
        subviewsApp()
        //: setupSubViewsConstraint()
        isData()
    }

    // MARK: - Lazy Load

    //: private lazy var backButton: UIButton = {
    private lazy var backButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let img = UIImage.withView(name: "nav_back_black_nor").withRenderingMode(.alwaysTemplate)
        let img = UIImage.withView(name: (String(str_normalValue.suffix(4)) + "back" + String(str_cellObjectValue.prefix(5)) + String(str_equalValue))).withRenderingMode(.alwaysTemplate)
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.tintColor = .black
        btn.tintColor = .black
        //: btn.addTarget(self, action: #selector(clickBackButtonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(saddle), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var liveImgView: UIImageView = {
    private lazy var liveImgView: UIImageView = {
        //: let v = UIImageView(image: UIImage.withView(name: "live_explain"))
        let v = UIImageView(image: UIImage.withView(name: (str_clothesName.lowercased() + String(str_modelRejectName.suffix(4)) + "lain")))
        //: v.contentMode = .scaleAspectFill
        v.contentMode = .scaleAspectFill
        //: return v
        return v
        //: }()
    }()

    //: private lazy var liveLab: UILabel = {
    private lazy var liveLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Live".localized
        lab.text = (String(str_statusName.suffix(4))).localized
        //: lab.textColor = .appThemeColor()
        lab.textColor = .smallFor()
        //: lab.font = UIFont.pingfangFont(type: .Semibold, fontSize: 18)
        lab.font = UIFont.conversationSize(type: .Semibold, fontSize: 18)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#FAF6FF")
        v.backgroundColor = UIColor(hex: (String(str_changeName.prefix(7))))
        //: v.layer.cornerRadius = 8
        v.layer.cornerRadius = 8
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var imgView1: UIImageView = {
    private lazy var imgView1: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage.withView(name: "icon_live_certification")
        v.image = UIImage.withView(name: (str_toVideoName.replacingOccurrences(of: "content", with: "i") + "_live_c" + String(str_fromValue)))
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLab1: UILabel = {
    private lazy var titleLab1: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Turn on live certification".localized
        lab.text = (String(str_arrayName) + str_modelTitle.replacingOccurrences(of: "remove", with: "e") + "ication").localized
        //: lab.textColor = .appTitleColor()
        lab.textColor = .ending()
        //: lab.font = UIFont.showSize(fontSize: 16)
        lab.font = UIFont.showSize(fontSize: 16)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var desLab1: UILabel = {
    private lazy var desLab1: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "will increase the chances of receiving calls to earn more points.".localized
        lab.text = String(bytes: str_environmentData.map{dataTouchLet(bottom: $0)}, encoding: .utf8)!.localized
        //: lab.textColor = .appValueColor()
        lab.textColor = .obtrudeUpon()
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 14)
        lab.font = UIFont.rugular(fontSize: 14)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var imgView2: UIImageView = {
    private lazy var imgView2: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage.withView(name: "icon_live_publicly")
        v.image = UIImage.withView(name: (String(str_nameValue) + str_coverValue.replacingOccurrences(of: "frame", with: "cl")))
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLab2: UILabel = {
    private lazy var titleLab2: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Your live will be publicly displayed to others".localized
        lab.text = String(bytes: str_modelValue.map{levelItem(live: $0)}, encoding: .utf8)!.localized
        //: lab.textColor = .appTitleColor()
        lab.textColor = .ending()
        //: lab.font = UIFont.showSize(fontSize: 16)
        lab.font = UIFont.showSize(fontSize: 16)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var desLab2: UILabel = {
    private lazy var desLab2: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "its content must comply with current laws and regulations and platform requirements.".localized
        lab.text = String(bytes: str_centerName.map{financialAid(position: $0)}, encoding: .utf8)!.localized
        //: lab.textColor = .appValueColor()
        lab.textColor = .obtrudeUpon()
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 14)
        lab.font = UIFont.rugular(fontSize: 14)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var imgView3: UIImageView = {
    private lazy var imgView3: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage.withView(name: "icon_live_face")
        v.image = UIImage.withView(name: (String(str_listName)))
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLab3: UILabel = {
    private lazy var titleLab3: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Please make sure".localized
        lab.text = (String(str_takeLevelValue) + String(str_mainData)).localized
        //: lab.textColor = .appTitleColor()
        lab.textColor = .ending()
        //: lab.font = UIFont.showSize(fontSize: 16)
        lab.font = UIFont.showSize(fontSize: 16)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var desLab3: UILabel = {
    private lazy var desLab3: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "your face is always in the video frame.".localized
        lab.text = String(bytes: str_textName.reversed(), encoding: .utf8)!.localized
        //: lab.textColor = .appValueColor()
        lab.textColor = .obtrudeUpon()
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 14)
        lab.font = UIFont.rugular(fontSize: 14)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var turnOnBtn: UIButton = {
    private lazy var turnOnBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.titleLabel?.font = UIFont.showSize(fontSize: 17)
        btn.titleLabel?.font = UIFont.showSize(fontSize: 17)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("Turn on".localized, for: .normal)
        btn.setTitle((String(str_viewChangeName)).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 240, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.distancePlay(colors: UIColor.memoryImageAwake(), size: CGSize(width: 240, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(turnOnButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(moveNeed), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingLiveExplainViewController {
extension LogRecognizerDelegate {
    /// 返回按钮点击事件
    //: @objc private func clickBackButtonAction() {
    @objc private func saddle() {
        //: self.dismiss(animated: true)
        self.dismiss(animated: true)
    }

    /// turn on 按钮点击事件
    //: @objc private func turnOnButtonClick() {
    @objc private func moveNeed() {
        //: self.dismiss(animated: true) {
        self.dismiss(animated: true) {
            //: TalkingLiveManager.shared().checkLiveAuthAndTurnOn()
            ListThen.deleteItem().needEnable()
        }
    }
}

// MARK: - Layout

//: extension TalkingLiveExplainViewController {
extension LogRecognizerDelegate {
    /// 添加视图
    //: private func setupSubviews() {
    private func subviewsApp() {
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.addSubview(backButton)
        view.addSubview(backButton)
        //: view.addSubview(liveImgView)
        view.addSubview(liveImgView)
        //: view.addSubview(liveLab)
        view.addSubview(liveLab)
        //: view.addSubview(contentView)
        view.addSubview(contentView)
        //: contentView.addSubview(imgView1)
        contentView.addSubview(imgView1)
        //: contentView.addSubview(titleLab1)
        contentView.addSubview(titleLab1)
        //: contentView.addSubview(desLab1)
        contentView.addSubview(desLab1)
        //: contentView.addSubview(imgView2)
        contentView.addSubview(imgView2)
        //: contentView.addSubview(titleLab2)
        contentView.addSubview(titleLab2)
        //: contentView.addSubview(desLab2)
        contentView.addSubview(desLab2)
        //: contentView.addSubview(imgView3)
        contentView.addSubview(imgView3)
        //: contentView.addSubview(titleLab3)
        contentView.addSubview(titleLab3)
        //: contentView.addSubview(desLab3)
        contentView.addSubview(desLab3)
        //: view.addSubview(turnOnBtn)
        view.addSubview(turnOnBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func isData() {
        //: backButton.snp.makeConstraints { make in
        backButton.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.width.equalTo(40)
            make.width.equalTo(40)
            //: make.height.equalTo(NavigationBarHeight)
            make.height.equalTo(kLet_infoButtonValue)
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(kLet_environmentContent)
        }

        //: liveImgView.snp.makeConstraints { make in
        liveImgView.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight+actualWidth(w: 80))
            make.top.equalTo(kLet_environmentContent + actualWidth(w: 80))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(100)
            make.width.height.equalTo(100)
        }
        //: liveLab.snp.makeConstraints { make in
        liveLab.snp.makeConstraints { make in
            //: make.top.equalTo(liveImgView.snp.bottom)
            make.top.equalTo(liveImgView.snp.bottom)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.equalTo(liveLab.snp.bottom).offset(20)
            make.top.equalTo(liveLab.snp.bottom).offset(20)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
        }
        //: imgView1.snp.makeConstraints { make in
        imgView1.snp.makeConstraints { make in
            //: make.top.leading.equalTo(20)
            make.top.leading.equalTo(20)
            //: make.width.height.equalTo(30)
            make.width.height.equalTo(30)
        }
        //: titleLab1.snp.makeConstraints { make in
        titleLab1.snp.makeConstraints { make in
            //: make.top.equalTo(imgView1).offset(3)
            make.top.equalTo(imgView1).offset(3)
            //: make.leading.equalTo(imgView1.snp.trailing).offset(10)
            make.leading.equalTo(imgView1.snp.trailing).offset(10)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
        //: desLab1.snp.makeConstraints { make in
        desLab1.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab1.snp.bottom).offset(4)
            make.top.equalTo(titleLab1.snp.bottom).offset(4)
            //: make.leading.trailing.equalTo(titleLab1)
            make.leading.trailing.equalTo(titleLab1)
        }
        //: imgView2.snp.makeConstraints { make in
        imgView2.snp.makeConstraints { make in
            //: make.top.equalTo(desLab1.snp.bottom).offset(24)
            make.top.equalTo(desLab1.snp.bottom).offset(24)
            //: make.leading.equalTo(imgView1)
            make.leading.equalTo(imgView1)
            //: make.width.height.equalTo(30)
            make.width.height.equalTo(30)
        }
        //: titleLab2.snp.makeConstraints { make in
        titleLab2.snp.makeConstraints { make in
            //: make.top.equalTo(imgView2).offset(3)
            make.top.equalTo(imgView2).offset(3)
            //: make.leading.equalTo(imgView2.snp.trailing).offset(10)
            make.leading.equalTo(imgView2.snp.trailing).offset(10)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
        //: desLab2.snp.makeConstraints { make in
        desLab2.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab2.snp.bottom).offset(4)
            make.top.equalTo(titleLab2.snp.bottom).offset(4)
            //: make.leading.trailing.equalTo(titleLab2)
            make.leading.trailing.equalTo(titleLab2)
        }
        //: imgView3.snp.makeConstraints { make in
        imgView3.snp.makeConstraints { make in
            //: make.top.equalTo(desLab2.snp.bottom).offset(24)
            make.top.equalTo(desLab2.snp.bottom).offset(24)
            //: make.leading.equalTo(imgView1)
            make.leading.equalTo(imgView1)
            //: make.width.height.equalTo(30)
            make.width.height.equalTo(30)
        }
        //: titleLab3.snp.makeConstraints { make in
        titleLab3.snp.makeConstraints { make in
            //: make.top.equalTo(imgView3).offset(3)
            make.top.equalTo(imgView3).offset(3)
            //: make.leading.equalTo(imgView3.snp.trailing).offset(10)
            make.leading.equalTo(imgView3.snp.trailing).offset(10)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
        //: desLab3.snp.makeConstraints { make in
        desLab3.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab3.snp.bottom).offset(4)
            make.top.equalTo(titleLab3.snp.bottom).offset(4)
            //: make.leading.trailing.equalTo(titleLab3)
            make.leading.trailing.equalTo(titleLab3)
            //: make.bottom.equalToSuperview().offset(-20)
            make.bottom.equalToSuperview().offset(-20)
        }

        //: turnOnBtn.snp.makeConstraints { make in
        turnOnBtn.snp.makeConstraints { make in
            //: make.top.equalTo(contentView.snp.bottom).offset(43)
            make.top.equalTo(contentView.snp.bottom).offset(43)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 240, height: 50))
            make.size.equalTo(CGSize(width: 240, height: 50))
            //: make.bottom.lessThanOrEqualTo(view).offset(0)
            make.bottom.lessThanOrEqualTo(view).offset(0)
        }
    }
}
