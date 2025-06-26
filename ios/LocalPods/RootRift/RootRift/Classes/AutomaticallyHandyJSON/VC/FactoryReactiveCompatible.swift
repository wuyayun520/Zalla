
//: Declare String Begin

/*: "^([a-zA-Z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$" :*/
fileprivate let str_progressTitle:[UInt8] = [0x5f,0x29,0x5a,0x60,0x2c,0x7b,0x40,0x2c,0x5b,0x31,0x2c,0x38,0x5e,0x5d,0x2f,0x2c,0x5c,0x2a,0x28,0x41,0x29,0x5a,0x5d,0x65,0x60,0x2c,0x7b,0x5d,0x2f,0x2c,0x5c,0x2a,0x28,0x5d,0x2f,0x29,0x5a,0x60,0x2c,0x7b,0x5d,0x2f,0x5c,0x7a,0x33,0x2d,0x37,0x7c,0x28,0x25]

/*: "^((1[34578][0-9]{9})|((0\\d{2}-\\d{8})|(0\\d{3}-\\d{7,8})|(0\\d{10,11}))$" :*/
fileprivate let str_collectionContent:[UInt8] = [0x24,0x29,0x29,0x7d,0x31,0x31,0x2c,0x30,0x31,0x7b,0x64,0x5c,0x30,0x28,0x7c,0x29,0x7d,0x38,0x2c,0x37,0x7b,0x64,0x5c,0x2d,0x7d,0x33,0x7b,0x64,0x5c,0x30,0x28,0x7c,0x29,0x7d,0x38,0x7b,0x64,0x5c,0x2d,0x7d,0x32,0x7b,0x64,0x5c,0x30,0x28,0x28,0x7c,0x29,0x7d,0x39,0x7b,0x5d,0x39,0x2d,0x30,0x5b,0x5d,0x38,0x37,0x35,0x34,0x33,0x5b,0x31,0x28,0x28,0x5e]

/*: "^([\\u4E00-\\u9FA5A-Za-z0-9_]{2,10}$)" :*/
fileprivate let str_buttonData:[UInt8] = [0xca,0xbc,0xcf,0xc8,0xe1,0xa0,0xd1,0xa4,0xa4,0xb9,0xc8,0xe1,0xad,0xd2,0xd5,0xa1,0xd5,0xb9,0xce,0xf5,0xb9,0xee,0xa4,0xb9,0xad,0xcb,0xc9,0xef,0xa6,0xb8,0xa5,0xa4,0xe9,0xb0,0xbd]

private func propertyLine(center num: UInt8) -> UInt8 {
    return num ^ 148
}

/*: "^[0-8]\\d{5}(?!\\d)$" :*/
fileprivate let str_leadingName:[Character] = ["^","[","0","-","8","]","\\","d"]
fileprivate let str_succeedModelText:[Character] = ["{","5"]
fileprivate let str_opDataValue:[Character] = ["}","(","?","!","\\","d",")","$"]

/*: "^[a-zA-Z0-9]{6,20}+$" :*/
fileprivate let str_labelName:String = "^[a-zA-label share view"
fileprivate let str_centerValue:[Character] = ["Z","0"]
fileprivate let str_makeData:[Character] = ["-","9","]","{","6",",","2","0","}","+","$"]

/*: "^(https?:\\/\\/)?([\\da-z\\.-]+)\\.([a-z\\.]{2,6})([\\/\\w \\.-]*)*\\/?$" :*/
fileprivate let str_viewPushMpTitle:[UInt8] = [0x7,0x71,0x31,0x2d,0x2d,0x29,0x2a,0x66,0x63,0x5,0x76,0x5,0x76,0x70,0x66,0x71,0x2,0x5,0x3d,0x38,0x74,0x23,0x5,0x77,0x74,0x4,0x72,0x70,0x5,0x77,0x71,0x2,0x38,0x74,0x23,0x5,0x77,0x4,0x22,0x6b,0x75,0x6f,0x24,0x70,0x71,0x2,0x5,0x76,0x5,0x2e,0x79,0x5,0x77,0x74,0x4,0x73,0x70,0x73,0x5,0x76,0x66,0x7d]

private func dataReload(gift num: UInt8) -> UInt8 {
    return num ^ 89
}

/*: "^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.) {3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$" :*/
fileprivate let str_contentText:[UInt8] = [0xc4,0xb2,0xa5,0xa0,0xb2,0xa5,0xa0,0xa8,0xaf,0xc1,0xaa,0xb7,0xaf,0xc7,0xe6,0xa8,0xc1,0xaa,0xb7,0xae,0xc7,0xc1,0xaa,0xb7,0xa3,0xc7,0xe6,0xc1,0xaa,0xab,0xc7,0xa5,0xc1,0xaa,0xb7,0xa3,0xc7,0xc1,0xaa,0xb7,0xa3,0xc7,0xa5,0xb3,0xc6,0xb4,0xb3,0xba,0xe1,0xa9,0xe7,0xb2,0xa5,0xa0,0xa8,0xaf,0xc1,0xaa,0xb7,0xaf,0xc7,0xe6,0xa8,0xc1,0xaa,0xb7,0xae,0xc7,0xc1,0xaa,0xb7,0xa3,0xc7,0xe6,0xc1,0xaa,0xab,0xc7,0xa5,0xc1,0xaa,0xb7,0xa3,0xc7,0xc1,0xaa,0xb7,0xa3,0xc7,0xa5,0xb3,0xbe]

private func toRequest(image num: UInt8) -> UInt8 {
    return num ^ 154
}

/*: "(^[0-9]{15}$)|([0-9]{17}([0-9]|[xX])$)" :*/
fileprivate let str_collectionTitle:[UInt8] = [0x2,0x38,0x35,0xa,0x7,0x13,0x37,0x55,0xb,0xf,0x57,0xfe,0x3,0x56,0x2,0x35,0xa,0x7,0x13,0x37,0x55,0xb,0x11,0x57,0x2,0x35,0xa,0x7,0x13,0x37,0x56,0x35,0x52,0x32,0x37,0x3,0xfe,0x3]

fileprivate func depthStart(data num: UInt8) -> UInt8 {
    let value = Int(num) - 218
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "SELF MATCHES %@" :*/
fileprivate let str_normalData:String = "SELF MATself false let type video"
fileprivate let str_sizeTitle:String = "model"
fileprivate let str_indexContent:String = "HES %@reward leading view view"

/*: "Feedback" :*/
fileprivate let str_eventCellData:String = "Feedbacremove model self table"
fileprivate let str_colorTitle:String = "activity"

/*: "Enter your feedback…" :*/
fileprivate let str_modelTextValue:String = "view video letEnter "
fileprivate let str_addValue:String = "feedbtimec"
fileprivate let str_playerData:String = "k…space fill path"

/*: "#999999" :*/
fileprivate let str_layerData:[Character] = ["#","9","9","9","9","9","9"]

/*: "0/ :*/
fileprivate let str_rowName:[Character] = ["0","/"]

/*: "Your email (Required) " :*/
fileprivate let str_blockName:String = "stack answer manager infoYour "
fileprivate let str_userValue:String = "share name scale data(Req"

/*: "icon_me_feelback_star" :*/
fileprivate let str_bagText:[Character] = ["i","c","o","n","_","m","e","_","f","e","e","l","b","a","c","k","_","s","t","a","r"]

/*: "#CCCCCC" :*/
fileprivate let str_succeedName:[Character] = ["#","C","C","C","C"]
fileprivate let str_feeValue:[Character] = ["C","C"]

/*: "Send" :*/
fileprivate let str_flexibleListData:[Character] = ["S","e","n","d"]

/*: "#D0D0D0" :*/
fileprivate let str_pictureValue:String = "string data shared play#D0D0D"
fileprivate let str_labelData:String = "0"

/*: "Please fill in the content" :*/
fileprivate let str_frameName:String = "Please request true section icon manager"
fileprivate let str_targetTitle:String = "fill ireturn guard label for var"
fileprivate let str_priceContent:String = "value heighte co"

/*: "Please enter the correct email address" :*/
fileprivate let str_upHiddenValue:[UInt8] = [0xcf,0xf3,0xfa,0xfe,0xec,0xfa,0xbf,0xfa,0xf1,0xeb,0xfa,0xed,0xbf,0xeb,0xf7,0xfa,0xbf,0xfc,0xf0,0xed,0xed,0xfa,0xfc,0xeb,0xbf,0xfa,0xf2,0xfe,0xf6,0xf3,0xbf,0xfe,0xfb,0xfb,0xed,0xfa,0xec,0xec]

/*: "content" :*/
fileprivate let str_sharedName:String = "centerntent"

/*: "contactWay" :*/
fileprivate let str_titleValue:[Character] = ["c","o","n","t","a"]
fileprivate let str_reinData:String = "label model time varctWay"

/*: "platform" :*/
fileprivate let str_bottomData:String = "pobjectt"

/*: "iphone" :*/
fileprivate let str_messageTitle:[Character] = ["i","p","h","o","n","e"]

/*: "version" :*/
fileprivate let str_cellTitle:[Character] = ["v","e","r","s","i","o","n"]

/*: "type" :*/
fileprivate let str_streetData:String = "tequalpe"

/*: "Operation succeeded" :*/
fileprivate let str_statusValue:[Character] = ["O","p","e","r","a"]
fileprivate let str_bottomUpName:String = "return let text typetion suc"
fileprivate let str_equalTitle:String = "cdowndownddownd"

/*: / :*/
fileprivate let str_minName:[Character] = ["/"]

/*: "\n" :*/
fileprivate let str_imageVideoData:String = "\n"

/*: "Problem statements" :*/
fileprivate let str_containerName:[Character] = ["P","r","o","b","l","e","m"]
fileprivate let str_progressName:[Character] = [" ","s","t","a","t"]
fileprivate let str_modeItemContent:String = "EMENTS"

/*: "Feature advice" :*/
fileprivate let str_ofName:String = "Featmake price var"
fileprivate let str_woodTitleValue:String = "advfirstc"
fileprivate let str_sizeName:String = "add"

/*: "Operation questions" :*/
fileprivate let str_genderValue:String = "Operaframe view make string"
fileprivate let str_makeTitle:[Character] = ["t","i","o","n"," ","q","u","e","s","t","i","o","n","s"]

/*: "Others" :*/
fileprivate let str_parName:String = "Otherslabel from path"

/*: "#EFEDFF" :*/
fileprivate let str_fillTitle:String = "version self comment more data#EFEDFF"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FactoryReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/15.
//

//: import UIKit
import UIKit

//: enum Validate {
enum PerformanceValidate {
    //: case email(_: String)
    case email(_: String) //  邮箱
    //: case phoneNumber(_: String)
    case phoneNumber(_: String) //  手机号
    //: case userName(_: String)
    case userName(_: String) //  用户名
    //: case password(_: String)
    case password(_: String) //  密码
    //: case nickName(_: String)
    case nickName(_: String) //  昵称
    //: case postalCode(_: String)
    case postalCode(_: String) //  邮编
    //: case URL(_: String)
    case URL(_: String) //  URL
    //: case IP(_: String)
    case IP(_: String) //  IP
    //: case isChinese(_: String)
    case isChinese(_: String) //  是否全是中文字符
    //: case idNumber(_: String)
    case idNumber(_: String) //  身份证号

    //: var isRight: Bool {
    var isRight: Bool {
        //: var predicateStr: String!
        var predicateStr: String!
        //: var currentObject: String!
        var currentObject: String!
        //: switch self {
        switch self {
        //: case let .email(str):
        case let .email(str):
            //: predicateStr = "^([a-zA-Z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$"
            predicateStr = String(bytes: str_progressTitle.map{$0^1}, encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        //: case let .phoneNumber(str):
        case let .phoneNumber(str):
            //: predicateStr = "^((1[34578][0-9]{9})|((0\\d{2}-\\d{8})|(0\\d{3}-\\d{7,8})|(0\\d{10,11}))$"
            predicateStr = String(bytes: str_collectionContent.reversed(), encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        //: case let .userName(str):
        case let .userName(str):
            //: predicateStr = "^([\\u4E00-\\u9FA5A-Za-z0-9_]{2,10}$)"
            predicateStr = String(bytes: str_buttonData.map{propertyLine(center: $0)}, encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        //: case let .postalCode(str):
        case let .postalCode(str):
            //: predicateStr = "^[0-8]\\d{5}(?!\\d)$"
            predicateStr = (String(str_leadingName) + String(str_succeedModelText) + String(str_opDataValue))
            //: currentObject = str
            currentObject = str
        //: case let .password(str):
        case let .password(str):
            //: predicateStr = "^[a-zA-Z0-9]{6,20}+$"
            predicateStr = (String(str_labelName.prefix(7)) + String(str_centerValue) + String(str_makeData))
            //: currentObject = str
            currentObject = str
        //: case let .nickName(str):
        case let .nickName(str):
            //: predicateStr = "^([\\u4E00-\\u9FA5A-Za-z0-9_]{2,10}$)"
            predicateStr = String(bytes: str_buttonData.map{propertyLine(center: $0)}, encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        //: case let .URL(str):
        case let .URL(str):
            //: predicateStr = "^(https?:\\/\\/)?([\\da-z\\.-]+)\\.([a-z\\.]{2,6})([\\/\\w \\.-]*)*\\/?$"
            predicateStr = String(bytes: str_viewPushMpTitle.map{dataReload(gift: $0)}, encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        //: case let .IP(str):
        case let .IP(str):
            //: predicateStr = "^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.) {3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$"
            predicateStr = String(bytes: str_contentText.map{toRequest(image: $0)}, encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        //: case let . isChinese(str):
        case let .isChinese(str):
            //: predicateStr = "(^[\u{4e00}-\u{9fa5}]$)"
            predicateStr = "(^[\u{4e00}-\u{9fa5}]$)"
            //: currentObject = str
            currentObject = str
        //: case let . idNumber(str):
        case let .idNumber(str):
            //: predicateStr = "(^[0-9]{15}$)|([0-9]{17}([0-9]|[xX])$)"
            predicateStr = String(bytes: str_collectionTitle.map{depthStart(data: $0)}, encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        }
        //: let predicate =  NSPredicate(format: "SELF MATCHES %@", predicateStr)
        let predicate = NSPredicate(format: (String(str_normalData.prefix(8)) + str_sizeTitle.replacingOccurrences(of: "model", with: "C") + String(str_indexContent.prefix(6))), predicateStr)
        //: return predicate.evaluate(with: currentObject)
        return predicate.evaluate(with: currentObject)
    }
}

//: class TalkingFeedbackVC: TalkingBaseViewController {
class FactoryReactiveCompatible: MusicViewController {
    //: let limitCount = 300
    let limitCount = 300
    //: let EmialCount = 50
    let EmialCount = 50
    //: var seleteBtn: UIButton?
    var seleteBtn: UIButton?

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()

        //: self.title = "Feedback".localized
        self.title = (String(str_eventCellData.prefix(7)) + str_colorTitle.replacingOccurrences(of: "activity", with: "k")).localized
        //: self.view.backgroundColor = .white
        self.view.backgroundColor = .white
        //: designView()
        draw()
        //: addTapGestureRecognizer()
        recognizer()
        //: addKeyboardNotification()
        awake()
    }

    // MARK: - Lazy load

    //: lazy var backView: UIScrollView = {
    lazy var backView: UIScrollView = {
        //: let view = UIScrollView.init()
        let view = UIScrollView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.showsHorizontalScrollIndicator = false
        view.showsHorizontalScrollIndicator = false
        //: view.showsVerticalScrollIndicator = false
        view.showsVerticalScrollIndicator = false
        //: return view
        return view
        //: }()
    }()

    //: lazy var contView: UIView = {
    lazy var contView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: lazy var inputTView: UIView = {
    lazy var inputTView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.clipsToBounds = true
        view.clipsToBounds = true
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.backgroundColor = .appBgColor()
        view.backgroundColor = .modelCard()
        //: return view
        return view
        //: }()
    }()

    //: lazy var textView: TalkingTextView = {
    lazy var textView: ColorNameReactiveCompatible = {
        //: let textView = TalkingTextView.init()
        let textView = ColorNameReactiveCompatible()
        //: textView.placeholder = "Enter your feedback…".localized
        textView.placeholder = (String(str_modelTextValue.suffix(6)) + "your " + str_addValue.replacingOccurrences(of: "time", with: "a") + String(str_playerData.prefix(2))).localized
        //: textView.placeholderColor = UIColor.init(hex: "#999999")!
        textView.placeholderColor = UIColor(hex: (String(str_layerData)))!
        //: textView.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
        textView.font = UIFont.conversationSize(type: .Regular, fontSize: 15)
        //: textView.textColor = UIColor.appTitleColor()
        textView.textColor = UIColor.ending()
        //: textView.PlaceholderInsets = UIEdgeInsets(top: 16, left: 16, bottom: 10, right: 16)
        textView.PlaceholderInsets = UIEdgeInsets(top: 16, left: 16, bottom: 10, right: 16)

        //: textView.textContainer.maximumNumberOfLines = 0
        textView.textContainer.maximumNumberOfLines = 0
        //: textView.textContainer.lineBreakMode = .byTruncatingTail
        textView.textContainer.lineBreakMode = .byTruncatingTail
        //: textView.delegate = self
        textView.delegate = self
        //: textView.returnKeyType = UIReturnKeyType.done
        textView.returnKeyType = UIReturnKeyType.done
        //: textView.bounces = false
        textView.bounces = false
        //: textView.backgroundColor = .appBgColor()
        textView.backgroundColor = .modelCard()
        //: numberLB.text =  "0/\(limitCount)"
        numberLB.text = "0/\(limitCount)"
        //: return textView
        return textView
        //: }()
    }()

    //: lazy var numberLB: UILabel = {
    lazy var numberLB: UILabel = {
        //: let LB = UILabel.init()
        let LB = UILabel()
        //: LB.textColor = UIColor.init(hex: "#999999")
        LB.textColor = UIColor(hex: (String(str_layerData)))
        //: LB.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        LB.font = UIFont.conversationSize(type: .Regular, fontSize: 14)
        //: LB.text = "0/\(limitCount)"
        LB.text = "0/\(limitCount)"
        //: LB.textAlignment = .right
        LB.textAlignment = .right
        //: return LB
        return LB
        //: }()
    }()

    //: lazy var emailTF: UITextField = {
    lazy var emailTF: UITextField = {
        //: let tf = UITextField.init()
        let tf = UITextField()
        //: tf.backgroundColor = .appBgColor()
        tf.backgroundColor = .modelCard()
        //: tf.textColor = UIColor.appTitleColor()
        tf.textColor = UIColor.ending()
        //: tf.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        tf.font = UIFont.conversationSize(type: .Regular, fontSize: 16)
        //: tf.delegate = self
        tf.delegate = self
        //: tf.returnKeyType = UIReturnKeyType.done
        tf.returnKeyType = UIReturnKeyType.done
        //: tf.attributedPlaceholder = NSAttributedString.init(string: "Your email (Required) ".localized, attributes: [
        tf.attributedPlaceholder = NSAttributedString(string: (String(str_blockName.suffix(5)) + "email " + String(str_userValue.suffix(4)) + "uired) ").localized, attributes: [
            //: NSAttributedString.Key.foregroundColor: UIColor.init(hex: "#999999")!])
            NSAttributedString.Key.foregroundColor: UIColor(hex: (String(str_layerData)))!])
        //: tf.clipsToBounds = true
        tf.clipsToBounds = true
        //: tf.layer.cornerRadius = 8
        tf.layer.cornerRadius = 8
        //: if LanguageManager.shared.direction == .rightToLeft {
        if FactoryShowThen.shared.direction == .rightToLeft {
            //: tf.textAlignment = .right
            tf.textAlignment = .right
        }
        //: let leftView = UIView()
        let leftView = UIView()
        //: leftView.frame = CGRect(origin: .zero, size: CGSize(width: 30, height: 49))
        leftView.frame = CGRect(origin: .zero, size: CGSize(width: 30, height: 49))

        //: let leftImgView = UIImageView.init()
        let leftImgView = UIImageView()
        //: leftImgView.frame = CGRect(x: 16, y: 20, width: 9, height: 9)
        leftImgView.frame = CGRect(x: 16, y: 20, width: 9, height: 9)
        //: leftImgView.image = UIImage.withView(name: "icon_me_feelback_star")
        leftImgView.image = UIImage.withView(name: (String(str_bagText)))
        //: leftView.addSubview(leftImgView)
        leftView.addSubview(leftImgView)
        //: tf.leftView = leftView
        tf.leftView = leftView
        //: tf.leftViewMode = .always
        tf.leftViewMode = .always
        //: return tf
        return tf
        //: }()
    }()

    //: lazy var doneBtn: UIButton = {
    lazy var doneBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.setBackgroundColor(color: UIColor.init(hex: "#CCCCCC")!, forState: .disabled)
        btn.toPop(color: UIColor(hex: (String(str_succeedName) + String(str_feeValue)))!, forState: .disabled)
        //: btn.setBackgroundColor(color: UIColor.appThemeColor(), forState: .normal)
        btn.toPop(color: UIColor.smallFor(), forState: .normal)
        //: btn.setTitle("Send".localized, for: .normal)
        btn.setTitle((String(str_flexibleListData)).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.conversationSize(type: .Medium, fontSize: 17)
        //: btn.addTarget(self, action: #selector(doneBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(compartmentPathRushAlong), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingFeedbackVC {
extension FactoryReactiveCompatible {
    //: @objc func TagBtnClick(sender: UIButton) {
    @objc func name(sender: UIButton) {
        //: seleteBtn?.isSelected = false
        seleteBtn?.isSelected = false
        //: seleteBtn?.layer.borderColor = UIColor.init(hex: "#D0D0D0")?.cgColor
        seleteBtn?.layer.borderColor = UIColor(hex: (String(str_pictureValue.suffix(6)) + str_labelData.capitalized))?.cgColor
        //: sender.isSelected = !sender.isSelected
        sender.isSelected = !sender.isSelected
        //: seleteBtn = sender
        seleteBtn = sender
        //: seleteBtn!.layer.borderColor = UIColor.clear.cgColor
        seleteBtn!.layer.borderColor = UIColor.clear.cgColor
    }

    //: @objc func doneBtnClick() {
    @objc func compartmentPathRushAlong() {
        //: if seleteBtn == nil || textView.text.count<=0 || emailTF.text!.count<=0 {
        if seleteBtn == nil || textView.text.count <= 0 || emailTF.text!.count <= 0 {
            //: self.func__showStatusBarErrorMsg(showMsg: "Please fill in the content".localized)
            self.detailKey(showMsg: (String(str_frameName.prefix(7)) + String(str_targetTitle.prefix(6)) + "n th" + String(str_priceContent.suffix(4)) + "ntent").localized)
            //: return
            return
        }

        //: if LanguageManager.shared.direction == .leftToRight {
        if FactoryShowThen.shared.direction == .leftToRight {
            //: if !Validate.email(emailTF.text!).isRight {
            if !PerformanceValidate.email(emailTF.text!).isRight {
                //: self.func__showStatusBarErrorMsg(showMsg: "Please enter the correct email address".localized)
                self.detailKey(showMsg: String(bytes: str_upHiddenValue.map{$0^159}, encoding: .utf8)!.localized)
                //: return
                return
            }
        }

        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["content"] = textView.text
        dict[(str_sharedName.replacingOccurrences(of: "center", with: "co"))] = textView.text
        //: dict["contactWay"] = emailTF.text
        dict[(String(str_titleValue) + String(str_reinData.suffix(5)))] = emailTF.text
        //: dict["platform"] = "iphone"
        dict[(str_bottomData.replacingOccurrences(of: "object", with: "la") + "form")] = (String(str_messageTitle))
        //: dict["version"] = AppVersion
        dict[(String(str_cellTitle))] = kLet_lengthName
        //: dict["type"] = String((seleteBtn?.tag ?? 100)-100)
        dict[(str_streetData.replacingOccurrences(of: "equal", with: "y"))] = String((seleteBtn?.tag ?? 100) - 100)

        //: ProgressHUD.show()
        AtAdView.sizeUp()

        //: TalkingMeRequestTool.req_Feedback(params: dict) { succeed, result, errorModel in
        AnteriorNarisRequestTool.positiveFeedbackCheckExaggerate(params: dict) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            AtAdView.toAction()
            //: if succeed {
            if succeed {
                //: self.func__showStatusBarSuccessMsg(showMsg: "Operation succeeded".localized)
                self.sizeExecuteMsg(showMsg: (String(str_statusValue) + String(str_bottomUpName.suffix(8)) + str_equalTitle.replacingOccurrences(of: "down", with: "e")).localized)
                //: self.navigationController?.popViewController(animated: true)
                self.navigationController?.popViewController(animated: true)
            }
        }
    }

    //: func addKeyboardNotification() {
    func awake() {
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(keyboardWillShow(notification:)),
                                               selector: #selector(scriptNotification(notification:)),
                                               //: name: UIResponder.keyboardWillShowNotification,
                                               name: UIResponder.keyboardWillShowNotification,
                                               //: object: nil)
                                               object: nil)
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(keyboardWillHide(notification:)),
                                               selector: #selector(allTo(notification:)),
                                               //: name: UIResponder.keyboardWillHideNotification,
                                               name: UIResponder.keyboardWillHideNotification,
                                               //: object: nil)
                                               object: nil)
    }

    //: @objc func keyboardWillShow(notification: Notification) {
    @objc func scriptNotification(notification: Notification) {
        //: guard emailTF.isFirstResponder else { return }
        guard emailTF.isFirstResponder else { return }
        //: guard let info = notification.userInfo else { return }
        guard let info = notification.userInfo else { return }
        //: let value = info[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue
        let value = info[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue
        //: let frame = value?.cgRectValue ?? .zero
        let frame = value?.cgRectValue ?? .zero
        //: let duration = info[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double ?? 0.25
        let duration = info[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double ?? 0.25
        //: guard (emailTF.bottom + StatusBarNavigationBarHeight) > frame.minY else { return }
        guard (emailTF.bottom + kLet_barUserName) > frame.minY else { return }

        //: let y = (emailTF.bottom + StatusBarNavigationBarHeight) - frame.minY
        let y = (emailTF.bottom + kLet_barUserName) - frame.minY
        //: UIView.animate(withDuration: duration) {
        UIView.animate(withDuration: duration) {
            //: self.backView.transform = CGAffineTransform(translationX: 0, y: -y)
            self.backView.transform = CGAffineTransform(translationX: 0, y: -y)
        }
    }

    //: @objc func keyboardWillHide(notification: Notification) {
    @objc func allTo(notification: Notification) {
        //: guard let info = notification.userInfo else { return }
        guard let info = notification.userInfo else { return }
        //: let duration = info[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double ?? 0.25
        let duration = info[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double ?? 0.25

        //: UIView.animate(withDuration: duration) {
        UIView.animate(withDuration: duration) {
            //: self.backView.transform = .identity
            self.backView.transform = .identity
        }
    }
}

// MARK: - UITextViewDelegate, UITextFieldDelegate

//: extension TalkingFeedbackVC: UITextViewDelegate, UITextFieldDelegate {
extension FactoryReactiveCompatible: UITextViewDelegate, UITextFieldDelegate {
    //: public func textViewDidChange(_ textView: UITextView) {
    public func textViewDidChange(_ textView: UITextView) {
        //: if textView.text.count > limitCount {
        if textView.text.count > limitCount {
            // 获得已输出字数与正输入字母数
            //: let selectRange = textView.markedTextRange
            let selectRange = textView.markedTextRange

            // 获取高亮部分 － 如果有联想词则解包成功
            //: if let selectRange = selectRange {
            if let selectRange = selectRange {
                //: let position =  textView.position(from: (selectRange.start), offset: 0)
                let position = textView.position(from: selectRange.start, offset: 0)
                //: if (position != nil) {
                if position != nil {
                    //: return
                    return
                }
            }

            //: let textContent = textView.text ?? ""
            let textContent = textView.text ?? ""
            //: let textNum = textContent.count
            let textNum = textContent.count

            // 截取
            //: if textNum > limitCount && limitCount > 0 {
            if textNum > limitCount && limitCount > 0 {
                //: textView.text = string_prefix(index: limitCount, text: textContent)
                textView.text = searchedText(index: limitCount, text: textContent)
            }
        }
        //: numberLB.text =  "\(textView.text.count)/\(limitCount)"
        numberLB.text = "\(textView.text.count)/\(limitCount)"
    }

    //: public func textViewShouldBeginEditing(_ textView: UITextView) -> Bool {
    public func textViewShouldBeginEditing(_: UITextView) -> Bool {
        //: numberLB.isHidden = false
        numberLB.isHidden = false
        //: return true
        return true
    }

    //: public func textViewDidEndEditing(_ textView: UITextView) {
    public func textViewDidEndEditing(_ textView: UITextView) {
        //: if textView.text.isEmpty {
        if textView.text.isEmpty {
            //: numberLB.isHidden = false
            numberLB.isHidden = false
            //: } else {
        } else {
            //: numberLB.isHidden = true
            numberLB.isHidden = true
        }
    }

    //: public func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
    public func textView(_ textView: UITextView, shouldChangeTextIn _: NSRange, replacementText text: String) -> Bool {
        //: if textView.returnKeyType == .done {
        if textView.returnKeyType == .done {
            //: if text == "\n" {
            if text == "\n" {
                //: textView.resignFirstResponder()
                textView.resignFirstResponder()
            }
            //: return true
            return true
        }
        //: return true
        return true
    }

    // 字符串的截取 从头截取到指定index
    //: private func string_prefix(index: Int,text:String) -> String {
    private func searchedText(index: Int, text: String) -> String {
        //: if text.count <= index {
        if text.count <= index {
            //: return text
            return text
            //: } else {
        } else {
            //: let index = text.index(text.startIndex, offsetBy: index)
            let index = text.index(text.startIndex, offsetBy: index)
            //: let str = text.prefix(upTo: index)
            let str = text.prefix(upTo: index)
            //: return String(str)
            return String(str)
        }
    }

    //: func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //: textField.resignFirstResponder()
        textField.resignFirstResponder()

        //: return true
        return true
    }

    //: func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    func textField(_ textField: UITextField, shouldChangeCharactersIn _: NSRange, replacementString string: String) -> Bool {
        //: if textField.text!.count+string.count>EmialCount || textField.text!.count+string.count <= 0 {
        if textField.text!.count + string.count > EmialCount || textField.text!.count + string.count <= 0 {
            //: return false
            return false
        }
        //: return true
        return true
    }
}

// MARK: - UI

//: extension TalkingFeedbackVC {
extension FactoryReactiveCompatible {
    //: func designView() {
    func draw() {
        //: self.view.addSubview(backView)
        self.view.addSubview(backView)
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
        }
        //: backView.addSubview(contView)
        backView.addSubview(contView)
        //: contView.snp.makeConstraints { make in
        contView.snp.makeConstraints { make in
            //: make.leading.trailing.top.bottom.equalTo(backView)
            make.leading.trailing.top.bottom.equalTo(backView)
        }

        //: contView.addSubview(inputTView)
        contView.addSubview(inputTView)
        //: inputTView.snp.makeConstraints { make in
        inputTView.snp.makeConstraints { make in
            //: make.leading.equalTo(contView).offset(15)
            make.leading.equalTo(contView).offset(15)
            //: make.trailing.equalTo(contView.snp.trailing).offset(-15)
            make.trailing.equalTo(contView.snp.trailing).offset(-15)
            //: make.top.equalTo(contView).offset(128)
            make.top.equalTo(contView).offset(128)
            //: make.height.equalTo(210)
            make.height.equalTo(210)
        }

        //: inputTView.addSubview(textView)
        inputTView.addSubview(textView)
        //: inputTView.addSubview(numberLB)
        inputTView.addSubview(numberLB)
        //: textView.snp.makeConstraints { make in
        textView.snp.makeConstraints { make in
            //: make.leading.trailing.top.equalTo(inputTView)
            make.leading.trailing.top.equalTo(inputTView)
            //: make.bottom.equalTo(inputTView.snp.bottom).offset(-40)
            make.bottom.equalTo(inputTView.snp.bottom).offset(-40)
        }
        //: numberLB.snp.makeConstraints { make in
        numberLB.snp.makeConstraints { make in
            //: make.trailing.equalTo(inputTView.snp.trailing).offset(-16)
            make.trailing.equalTo(inputTView.snp.trailing).offset(-16)
            //: make.bottom.equalTo(inputTView.snp.bottom).offset(-12)
            make.bottom.equalTo(inputTView.snp.bottom).offset(-12)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: contView.addSubview(emailTF)
        contView.addSubview(emailTF)
        //: emailTF.snp.makeConstraints { make in
        emailTF.snp.makeConstraints { make in
            //: make.leading.equalTo(contView).offset(15)
            make.leading.equalTo(contView).offset(15)
            //: make.trailing.equalTo(contView.snp.trailing).offset(-15)
            make.trailing.equalTo(contView.snp.trailing).offset(-15)
            //: make.top.equalTo(inputTView.snp.bottom).offset(16)
            make.top.equalTo(inputTView.snp.bottom).offset(16)
            //: make.height.equalTo(49)
            make.height.equalTo(49)
        }

        //: contView.addSubview(doneBtn)
        contView.addSubview(doneBtn)
        //: doneBtn.snp.makeConstraints { make in
        doneBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(contView).offset(54)
            make.leading.equalTo(contView).offset(54)
            //: make.trailing.equalTo(contView.snp.trailing).offset(-54)
            make.trailing.equalTo(contView.snp.trailing).offset(-54)
            //: make.top.equalTo(emailTF.snp.bottom).offset(111)
            make.top.equalTo(emailTF.snp.bottom).offset(111)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }

        //: let arr = ["Problem statements".localized,
        let arr = [(String(str_containerName) + String(str_progressName) + str_modeItemContent.lowercased()).localized,
                   //: "Feature advice".localized,
                   (String(str_ofName.prefix(4)) + "ure " + str_woodTitleValue.replacingOccurrences(of: "first", with: "i") + str_sizeName.replacingOccurrences(of: "add", with: "e")).localized,
                   //: "Operation questions".localized,
                   (String(str_genderValue.prefix(5)) + String(str_makeTitle)).localized,
                   //: "Others".localized]
                   (String(str_parName.prefix(6))).localized]

        //: for i in 0..<arr.count {
        for i in 0 ..< arr.count {
            //: let xz = 15
            let xz = 15
            //: let yz = 16
            let yz = 16
            //: let Width = (Int(ScreenWidth)-xz*3)/2
            let Width = (Int(kLet_scaleName) - xz * 3) / 2
            //: let height = 38
            let height = 38
            //: let X = xz+(xz + Width)*(i%2)
            let X = xz + (xz + Width) * (i % 2)
            //: let Y = yz+(yz+height)*(i/2)
            let Y = yz + (yz + height) * (i / 2)

            //: let btn = UIButton.init()
            let btn = UIButton()
            //: btn.frame =  CGRect.init(x: X, y: Y , width: Width, height: height)
            btn.frame = CGRect(x: X, y: Y, width: Width, height: height)
            //: btn.setTitle(arr[i], for: .normal)
            btn.setTitle(arr[i], for: .normal)
            //: btn.setTitleColor(.black, for: .normal)
            btn.setTitleColor(.black, for: .normal)
            //: btn.setTitleColor(.appThemeColor(), for: .selected)
            btn.setTitleColor(.smallFor(), for: .selected)

            //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
            btn.titleLabel?.font = UIFont.conversationSize(type: .Regular, fontSize: 15)
            //: if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue || TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
            if GazetteThen.share.interfaceLang == AssemblyPlantMirrorPath.es.rawValue || GazetteThen.share.interfaceLang == AssemblyPlantMirrorPath.pt.rawValue {
                //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 13)
                btn.titleLabel?.font = UIFont.conversationSize(type: .Regular, fontSize: 13)
            }
            //: btn.layer.cornerRadius = 19
            btn.layer.cornerRadius = 19
            //: btn.layer.borderWidth = 1
            btn.layer.borderWidth = 1
            //: btn.layer.borderColor = UIColor.init(hex: "#D0D0D0")?.cgColor
            btn.layer.borderColor = UIColor(hex: (String(str_pictureValue.suffix(6)) + str_labelData.capitalized))?.cgColor
            //: btn.setBackgroundColor(color: UIColor.init(hex: "#EFEDFF")!, forState: .selected)
            btn.toPop(color: UIColor(hex: (String(str_fillTitle.suffix(7))))!, forState: .selected)
            //: btn.setBackgroundColor(color: .white, forState: .normal)
            btn.toPop(color: .white, forState: .normal)
            //: btn.tag = 100+i
            btn.tag = 100 + i
            //: btn.addTarget( self, action: #selector(TagBtnClick(sender:)), for: .touchUpInside)
            btn.addTarget(self, action: #selector(name(sender:)), for: .touchUpInside)
            //: contView.addSubview(btn)
            contView.addSubview(btn)
        }

        //: contView.snp.remakeConstraints { make in
        contView.snp.remakeConstraints { make in
            //: make.bottom.equalTo(doneBtn.snp.bottom).offset(50)
            make.bottom.equalTo(doneBtn.snp.bottom).offset(50)
            //: make.width.equalTo(backView)
            make.width.equalTo(backView)
        }
    }
}
