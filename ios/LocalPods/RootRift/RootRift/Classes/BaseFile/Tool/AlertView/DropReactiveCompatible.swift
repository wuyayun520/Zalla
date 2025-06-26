
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_iconValue:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "Licensing" :*/
fileprivate let str_playerData:[Character] = ["L","i","c","e"]
fileprivate let str_shareData:[Character] = ["n","s","i","n","g"]

/*: "Granting licences to receive better video calls and earn more money" :*/
fileprivate let str_managerButtonValue:[UInt8] = [0x79,0x65,0x6e,0x6f,0x6d,0x20,0x65,0x72,0x6f,0x6d,0x20,0x6e,0x72,0x61,0x65,0x20,0x64,0x6e,0x61,0x20,0x73,0x6c,0x6c,0x61,0x63,0x20,0x6f,0x65,0x64,0x69,0x76,0x20,0x72,0x65,0x74,0x74,0x65,0x62,0x20,0x65,0x76,0x69,0x65,0x63,0x65,0x72,0x20,0x6f,0x74,0x20,0x73,0x65,0x63,0x6e,0x65,0x63,0x69,0x6c,0x20,0x67,0x6e,0x69,0x74,0x6e,0x61,0x72,0x47]

/*: "Turn on Camera and recording permissions in settings to use the feature properly" :*/
fileprivate let str_viewContent:[UInt8] = [0x89,0xa8,0xaf,0xb3,0xfd,0xb2,0xb3,0xfd,0x9e,0xbc,0xb0,0xb8,0xaf,0xbc,0xfd,0xbc,0xb3,0xb9,0xfd,0xaf,0xb8,0xbe,0xb2,0xaf,0xb9,0xb4,0xb3,0xba,0xfd,0xad,0xb8,0xaf,0xb0,0xb4,0xae,0xae,0xb4,0xb2,0xb3,0xae,0xfd,0xb4,0xb3,0xfd,0xae,0xb8,0xa9,0xa9,0xb4,0xb3,0xba,0xae,0xfd,0xa9,0xb2,0xfd,0xa8,0xae,0xb8,0xfd,0xa9,0xb5,0xb8,0xfd,0xbb,0xb8,0xbc,0xa9,0xa8,0xaf,0xb8,0xfd,0xad,0xaf,0xb2,0xad,0xb8,0xaf,0xb1,0xa4]

private func labEqual(file num: UInt8) -> UInt8 {
    return num ^ 221
}

/*: "Cancel" :*/
fileprivate let str_bottomData:String = "session"
fileprivate let str_namePathValue:String = "anceimage"

/*: "Open" :*/
fileprivate let str_withTitle:String = "Opento self number make"

/*: "icon_peimisionlic_camera" :*/
fileprivate let str_insideBackgroundValue:String = "icomanager"
fileprivate let str_zoneData:String = "namesnameon"
fileprivate let str_beData:String = "camuserr"
fileprivate let str_targetSizeData:String = "at"

/*: "icon_peimissionlic_mic" :*/
fileprivate let str_streamTitle:String = "icon_model string"
fileprivate let str_stopData:String = "ssisession"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DropReactiveCompatible.swift
//  RootRift
//
//  Created by Charlotte on 2024/3/22.
//

//: import UIKit
import UIKit

//: class TalkingPermissionView: UIView {
class DropReactiveCompatible: UIView {
    //: var popView: TalkingPopView?
    var popView: MessageScalePopView?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.wainscot()
        //: self.setupSubViewsConstraint()
        self.afterConstraint()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_iconValue.reversed(), encoding: .utf8)!)
    }

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.layer.cornerRadius = 15
        view.layer.cornerRadius = 15
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: lazy var titleLB: UILabel = {
    lazy var titleLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.ending()
        //: lb.font = UIFont.showSize(fontSize: 20)
        lb.font = UIFont.showSize(fontSize: 20)
        //: lb.text = "Licensing".localized
        lb.text = (String(str_playerData) + String(str_shareData)).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var messageLB: UILabel = {
    lazy var messageLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.ending()
        //: lb.font = UIFont.pingfangRugularFont(fontSize: 16)
        lb.font = UIFont.rugular(fontSize: 16)
        //: if WatercourseThen.share.loginUserMode.sex == Gender.female.rawValue && WatercourseThen.share.appStatus != AppSkinStatus.special.rawValue {
        if WatercourseThen.share.loginUserMode.sex == PushDownStackScalarLiteral.female.rawValue && WatercourseThen.share.appStatus != PublishWidthTotal.special.rawValue {
            //: lb.text = "Granting licences to receive better video calls and earn more money".localized
            lb.text = String(bytes: str_managerButtonValue.reversed(), encoding: .utf8)!.localized
            //: } else {
        } else {
            //: lb.text = "Turn on Camera and recording permissions in settings to use the feature properly".localized
            lb.text = String(bytes: str_viewContent.map{labEqual(file: $0)}, encoding: .utf8)!.localized
        }
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var cancleBtn: UIButton = {
    lazy var cancleBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Cancel".localized, for: .normal)
        btn.setTitle((str_bottomData.replacingOccurrences(of: "session", with: "C") + str_namePathValue.replacingOccurrences(of: "image", with: "l")).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.conversationSize(type: .Medium, fontSize: 16)
        //: btn.setTitleColor(.touchColor(), for: .normal)
        btn.setTitleColor(.touchColor(), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.layer.borderColor = UIColor.appThemeColor().cgColor
        btn.layer.borderColor = UIColor.smallFor().cgColor
        //: btn.layer.borderWidth = 1
        btn.layer.borderWidth = 1
        //: btn.addTarget(self, action: #selector(cancleBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(doingMain), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var openBtn: UIButton = {
    lazy var openBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Open".localized, for: .normal)
        btn.setTitle((String(str_withTitle.prefix(4))).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.conversationSize(type: .Medium, fontSize: 16)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 130, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.distancePlay(colors: UIColor.memoryImageAwake(), size: CGSize(width: 130, height: 50)), for: .normal)
        //: btn.addTarget(self, action: #selector(openBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(addTitle), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingPermissionView {
extension DropReactiveCompatible {
    //: func show() {
    func step() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = MessageScalePopView(frame: UIScreen.main.bounds)
        //: self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        self.frame = CGRect(x: 0, y: 0, width: kLet_scaleName, height: kLet_environmentText)
        //: popView?.initWithView(view: self)
        popView?.sharedLive(view: self)
        //: popView?.showInView(view: ListMacroDefine.getWindow())
        popView?.targetView(view: ListMacroDefine.startLoad())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func cancleBtnClick() {
    @objc func doingMain() {
        //: popView?.dismissView()
        popView?.reject()
        //: popView = nil
        popView = nil
    }

    //: @objc func openBtnClick() {
    @objc func addTitle() {
        //: let url = URL(string: UIApplication.openSettingsURLString)
        let url = URL(string: UIApplication.openSettingsURLString)
        //: if  UIApplication.shared.canOpenURL(url!) {
        if UIApplication.shared.canOpenURL(url!) {
            //: if #available(iOS 10, *) {
            if #available(iOS 10, *) {
                //: UIApplication.shared.open(url!, options: [:], completionHandler: {(success) in})
                UIApplication.shared.open(url!, options: [:], completionHandler: { _ in })
                //: } else {
            } else {
                //: UIApplication.shared.openURL(url!)
                UIApplication.shared.openURL(url!)
            }
        }
        //: cancleBtnClick()
        doingMain()
    }

    //: func setPermissionIconView(type: TalkingPermissionsType) {
    func blockName(type: BequestPermissionsType) {
        //: let count = type == .cameraAndMicrophone ? 2: 1
        let count = type == .cameraAndMicrophone ? 2 : 1
        //: for index in 0..<count {
        for index in 0 ..< count {
            //: let icon = UIImageView()
            let icon = UIImageView()
            //: icon.contentMode = .scaleAspectFill
            icon.contentMode = .scaleAspectFill
            //: backView.addSubview(icon)
            backView.addSubview(icon)
            //: if count == 1 {
            if count == 1 {
                //: icon.snp.makeConstraints { make in
                icon.snp.makeConstraints { make in
                    //: make.centerX.equalToSuperview()
                    make.centerX.equalToSuperview()
                    //: make.size.equalTo(62)
                    make.size.equalTo(62)
                    //: make.top.equalTo(messageLB.snp.bottom).offset(20)
                    make.top.equalTo(messageLB.snp.bottom).offset(20)
                }
                //: } else {
            } else {
                //: if index == 0 {
                if index == 0 {
                    //: icon.snp.makeConstraints { make in
                    icon.snp.makeConstraints { make in
                        //: make.leading.equalTo(61)
                        make.leading.equalTo(61)
                        //: make.size.equalTo(62)
                        make.size.equalTo(62)
                        //: make.top.equalTo(messageLB.snp.bottom).offset(20)
                        make.top.equalTo(messageLB.snp.bottom).offset(20)
                    }
                    //: } else {
                } else {
                    //: icon.snp.makeConstraints { make in
                    icon.snp.makeConstraints { make in
                        //: make.trailing.equalTo(-61)
                        make.trailing.equalTo(-61)
                        //: make.size.equalTo(62)
                        make.size.equalTo(62)
                        //: make.top.equalTo(messageLB.snp.bottom).offset(20)
                        make.top.equalTo(messageLB.snp.bottom).offset(20)
                    }
                }
            }
            //: switch type {
            switch type {
            //: case .camera:
            case .camera:
                //: icon.image = UIImage.withView(name: "icon_peimisionlic_camera")
                icon.image = UIImage.withView(name: (str_insideBackgroundValue.replacingOccurrences(of: "manager", with: "n") + "_peim" + str_zoneData.replacingOccurrences(of: "name", with: "i") + "lic_" + str_beData.replacingOccurrences(of: "user", with: "e") + str_targetSizeData.replacingOccurrences(of: "at", with: "a")))
            //: case .microphone:
            case .microphone:
                //: icon.image = UIImage.withView(name: "icon_peimissionlic_mic")
                icon.image = UIImage.withView(name: (String(str_streamTitle.prefix(5)) + "peimi" + str_stopData.replacingOccurrences(of: "session", with: "o") + "nlic_mic"))
            //: case .cameraAndMicrophone:
            case .cameraAndMicrophone:
                //: if index == 0 {
                if index == 0 {
                    //: icon.image = UIImage.withView(name: "icon_peimisionlic_camera")
                    icon.image = UIImage.withView(name: (str_insideBackgroundValue.replacingOccurrences(of: "manager", with: "n") + "_peim" + str_zoneData.replacingOccurrences(of: "name", with: "i") + "lic_" + str_beData.replacingOccurrences(of: "user", with: "e") + str_targetSizeData.replacingOccurrences(of: "at", with: "a")))
                    //: } else {
                } else {
                    //: icon.image = UIImage.withView(name: "icon_peimissionlic_mic")
                    icon.image = UIImage.withView(name: (String(str_streamTitle.prefix(5)) + "peimi" + str_stopData.replacingOccurrences(of: "session", with: "o") + "nlic_mic"))
                }
            //: default:
            default:
                //: break
                break
            }
        }
    }
}

//: extension TalkingPermissionView {
extension DropReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func wainscot() {
        //: self.addSubview(backView)
        self.addSubview(backView)
        //: backView.addSubview(titleLB)
        backView.addSubview(titleLB)
        //: backView.addSubview(messageLB)
        backView.addSubview(messageLB)
        //: backView.addSubview(cancleBtn)
        backView.addSubview(cancleBtn)
        //: backView.addSubview(openBtn)
        backView.addSubview(openBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func afterConstraint() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.equalTo(295)
            make.width.equalTo(295)
            //: make.height.equalTo(321)
            make.height.equalTo(321)
        }
        //: titleLB.snp.makeConstraints { make in
        titleLB.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(32)
            make.top.equalTo(32)
            //: make.height.equalTo(22)
            make.height.equalTo(22)
        }
        //: messageLB.snp.makeConstraints { make in
        messageLB.snp.makeConstraints { make in
            //: make.top.equalTo(titleLB.snp.bottom).offset(21)
            make.top.equalTo(titleLB.snp.bottom).offset(21)
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
        //: cancleBtn.snp.makeConstraints { make in
        cancleBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(12)
            make.leading.equalTo(12)
            //: make.bottom.equalTo(-16)
            make.bottom.equalTo(-16)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.width.equalTo(130)
            make.width.equalTo(130)
        }
        //: openBtn.snp.makeConstraints { make in
        openBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.bottom.size.equalTo(cancleBtn)
            make.bottom.size.equalTo(cancleBtn)
        }
    }
}
