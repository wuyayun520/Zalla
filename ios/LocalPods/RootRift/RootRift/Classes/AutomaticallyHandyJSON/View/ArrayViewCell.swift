
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_frameText:[UInt8] = [0xf2,0xf5,0xf2,0xef,0xb3,0xf8,0xf4,0xff,0xfe,0xe9,0xa1,0xb2,0xbb,0xf3,0xfa,0xe8,0xbb,0xf5,0xf4,0xef,0xbb,0xf9,0xfe,0xfe,0xf5,0xbb,0xf2,0xf6,0xeb,0xf7,0xfe,0xf6,0xfe,0xf5,0xef,0xfe,0xff]

private func denyCenter(layer num: UInt8) -> UInt8 {
    return num ^ 155
}

/*: "btn_me_edit" :*/
fileprivate let str_blockNameTitle:[Character] = ["b","t","n","_","m","e","_","e"]
fileprivate let str_resultTitle:String = "keyt"

/*: "%@ Gold coins / Message" :*/
fileprivate let str_makeSharedData:String = "mode with video let window%@ G"
fileprivate let str_readingMatchActualText:String = "oins video path icon"
fileprivate let str_succeedName:String = "true model string deadline make/ Mes"

/*: "To show sincere interest, The other party needs to pay to chat with you, and you will get redeemable points." :*/
fileprivate let str_addName:[UInt8] = [0x6e,0x89,0x3a,0x8d,0x82,0x89,0x91,0x3a,0x8d,0x83,0x88,0x7d,0x7f,0x8c,0x7f,0x3a,0x83,0x88,0x8e,0x7f,0x8c,0x7f,0x8d,0x8e,0x46,0x3a,0x6e,0x82,0x7f,0x3a,0x89,0x8e,0x82,0x7f,0x8c,0x3a,0x8a,0x7b,0x8c,0x8e,0x93,0x3a,0x88,0x7f,0x7f,0x7e,0x8d,0x3a,0x8e,0x89,0x3a,0x8a,0x7b,0x93,0x3a,0x8e,0x89,0x3a,0x7d,0x82,0x7b,0x8e,0x3a,0x91,0x83,0x8e,0x82,0x3a,0x93,0x89,0x8f,0x46,0x3a,0x7b,0x88,0x7e,0x3a,0x93,0x89,0x8f,0x3a,0x91,0x83,0x86,0x86,0x3a,0x81,0x7f,0x8e,0x3a,0x8c,0x7f,0x7e,0x7f,0x7f,0x87,0x7b,0x7c,0x86,0x7f,0x3a,0x8a,0x89,0x83,0x88,0x8e,0x8d,0x48]

fileprivate func modeBeauty(direction num: UInt8) -> UInt8 {
    let value = Int(num) + 230
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "%@ Gold coins / Min" :*/
fileprivate let str_destroyName:[Character] = ["%","@"," ","G","o","l","d"," ","c","o"]
fileprivate let str_blockTitle:[Character] = ["i","n","s"," ","/"," ","M","i","n"]

/*: "The price setting for video calls does not work for the Random Video feature.If you hang up within 20 seconds of answering the phone, you will not get Points." :*/
fileprivate let str_makeData:[UInt8] = [0x41,0x55,0x52,0xd,0x5d,0x5f,0x56,0x50,0x52,0xd,0x60,0x52,0x61,0x61,0x56,0x5b,0x54,0xd,0x53,0x5c,0x5f,0xd,0x63,0x56,0x51,0x52,0x5c,0xd,0x50,0x4e,0x59,0x59,0x60,0xd,0x51,0x5c,0x52,0x60,0xd,0x5b,0x5c,0x61,0xd,0x64,0x5c,0x5f,0x58,0xd,0x53,0x5c,0x5f,0xd,0x61,0x55,0x52,0xd,0x3f,0x4e,0x5b,0x51,0x5c,0x5a,0xd,0x43,0x56,0x51,0x52,0x5c,0xd,0x53,0x52,0x4e,0x61,0x62,0x5f,0x52,0x1b,0x36,0x53,0xd,0x66,0x5c,0x62,0xd,0x55,0x4e,0x5b,0x54,0xd,0x62,0x5d,0xd,0x64,0x56,0x61,0x55,0x56,0x5b,0xd,0x1f,0x1d,0xd,0x60,0x52,0x50,0x5c,0x5b,0x51,0x60,0xd,0x5c,0x53,0xd,0x4e,0x5b,0x60,0x64,0x52,0x5f,0x56,0x5b,0x54,0xd,0x61,0x55,0x52,0xd,0x5d,0x55,0x5c,0x5b,0x52,0x19,0xd,0x66,0x5c,0x62,0xd,0x64,0x56,0x59,0x59,0xd,0x5b,0x5c,0x61,0xd,0x54,0x52,0x61,0xd,0x3d,0x5c,0x56,0x5b,0x61,0x60,0x1b]

fileprivate func ofMention(app num: UInt8) -> UInt8 {
    let value = Int(num) - 237
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "You need to pay extra attention that if you hang up within 20 seconds of answering the phone, you will not get Points." :*/
fileprivate let str_methodName:[UInt8] = [0x2e,0x73,0x74,0x6e,0x69,0x6f,0x50,0x20,0x74,0x65,0x67,0x20,0x74,0x6f,0x6e,0x20,0x6c,0x6c,0x69,0x77,0x20,0x75,0x6f,0x79,0x20,0x2c,0x65,0x6e,0x6f,0x68,0x70,0x20,0x65,0x68,0x74,0x20,0x67,0x6e,0x69,0x72,0x65,0x77,0x73,0x6e,0x61,0x20,0x66,0x6f,0x20,0x73,0x64,0x6e,0x6f,0x63,0x65,0x73,0x20,0x30,0x32,0x20,0x6e,0x69,0x68,0x74,0x69,0x77,0x20,0x70,0x75,0x20,0x67,0x6e,0x61,0x68,0x20,0x75,0x6f,0x79,0x20,0x66,0x69,0x20,0x74,0x61,0x68,0x74,0x20,0x6e,0x6f,0x69,0x74,0x6e,0x65,0x74,0x74,0x61,0x20,0x61,0x72,0x74,0x78,0x65,0x20,0x79,0x61,0x70,0x20,0x6f,0x74,0x20,0x64,0x65,0x65,0x6e,0x20,0x75,0x6f,0x59]

/*: "LV.%d" :*/
fileprivate let str_layerValue:[Character] = ["L","V",".","%","d"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ArrayViewCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/12/15.
//

//: import UIKit
import UIKit

//: class TalkingFemalePriceSetCell: UITableViewCell {
class ArrayViewCell: UITableViewCell {
    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
        // Initialization code
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: selectionStyle = UITableViewCell.SelectionStyle.none
        selectionStyle = UITableViewCell.SelectionStyle.none
        //: self.setupSubviews()
        self.quantityerval()
        //: self.setupSubViewsConstraint()
        self.videoColorSwaddlingClothes()
        //: self.bindInteraction()
        self.cyclorama()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_frameText.map{denyCenter(layer: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化
    //: lazy var priceTitleLB: UILabel = {
    lazy var priceTitleLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        lb.font = UIFont.conversationSize(type: .Medium, fontSize: 18)
        //: lb.textColor = .appTitleColor()
        lb.textColor = .ending()
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var levelView: UIView = {
    lazy var levelView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.appThemeColor()
        view.backgroundColor = UIColor.smallFor()
        //: view.layer.cornerRadius = 10
        view.layer.cornerRadius = 10
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: return view
        return view
        //: }()
    }()

    //: lazy var levelLab: UILabel = {
    lazy var levelLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.textColor = UIColor.white
        lb.textColor = UIColor.white
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 12)
        lb.font = .conversationSize(type: .Regular, fontSize: 12)
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var arrowsImageView: UIImageView = {
    lazy var arrowsImageView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.image = UIImage.withView(name: "btn_me_edit")
        imgView.image = UIImage.withView(name: (String(str_blockNameTitle) + str_resultTitle.replacingOccurrences(of: "key", with: "di")))
        //: imgView.contentMode = .scaleAspectFit
        imgView.contentMode = .scaleAspectFit
        //: return imgView
        return imgView
        //: }()
    }()

    //: lazy var messageLab: UILabel = {
    lazy var messageLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.textColor = .appValueColor()
        lb.textColor = .obtrudeUpon()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 15)
        lb.font = .conversationSize(type: .Regular, fontSize: 15)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()
}

//: extension TalkingFemalePriceSetCell {
extension ArrayViewCell {
    //: func setCellData(index: Int, price: Int, leve: Int) {
    func cellLeveDataPriceMiddleIndex(index: Int, price: Int, leve: Int) {
        //: switch index {
        switch index {
        //: case 0:
        case 0:
            //: priceTitleLB.text = "%@ Gold coins / Message".localizedArguments(price)
            priceTitleLB.text = (String(str_makeSharedData.suffix(4)) + "old c" + String(str_readingMatchActualText.prefix(5)) + String(str_succeedName.suffix(5)) + "sage").alongNext(price)
            //: messageLab.text =  "To show sincere interest, The other party needs to pay to chat with you, and you will get redeemable points.".localized
            messageLab.text = String(bytes: str_addName.map{modeBeauty(direction: $0)}, encoding: .utf8)!.localized
        //: break
        //: case 1:
        case 1:
            //: priceTitleLB.text = "%@ Gold coins / Min".localizedArguments(price)
            priceTitleLB.text = (String(str_destroyName) + String(str_blockTitle)).alongNext(price)
            //: messageLab.text =  "The price setting for video calls does not work for the Random Video feature.If you hang up within 20 seconds of answering the phone, you will not get Points.".localized
            messageLab.text = String(bytes: str_makeData.map{ofMention(app: $0)}, encoding: .utf8)!.localized
        //: break
        //: case 2:
        case 2:
            //: priceTitleLB.text = "%@ Gold coins / Min".localizedArguments(price)
            priceTitleLB.text = (String(str_destroyName) + String(str_blockTitle)).alongNext(price)
            //: messageLab.text =  "You need to pay extra attention that if you hang up within 20 seconds of answering the phone, you will not get Points.".localized
            messageLab.text = String(bytes: str_methodName.reversed(), encoding: .utf8)!.localized
        //: break
        //: default:
        default:
            //: break
            break
        }
        //: levelLab.text = String(format: "LV.%d", leve)
        levelLab.text = String(format: "LV.%d", leve)
        //: levelView.isHidden = leve == 0
        levelView.isHidden = leve == 0
        //: levelLab.isHidden = leve == 0
        levelLab.isHidden = leve == 0
    }
}

//: extension TalkingFemalePriceSetCell {
extension ArrayViewCell {
    // 添加视图
    //: private func setupSubviews() {
    private func quantityerval() {
        //: self.addSubview(priceTitleLB)
        self.addSubview(priceTitleLB)
        //: self.addSubview(levelView)
        self.addSubview(levelView)
        //: self.addSubview(levelLab)
        self.addSubview(levelLab)
        //: self.addSubview(arrowsImageView)
        self.addSubview(arrowsImageView)
        //: self.addSubview(messageLab)
        self.addSubview(messageLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func videoColorSwaddlingClothes() {
        //: priceTitleLB.snp.makeConstraints { make in
        priceTitleLB.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.top.equalTo(20)
            make.top.equalTo(20)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: levelView.snp.makeConstraints { make in
        levelView.snp.makeConstraints { make in
            //: make.leading.equalTo(priceTitleLB.snp.trailing).offset(4)
            make.leading.equalTo(priceTitleLB.snp.trailing).offset(4)
            //: make.trailing.equalTo(levelLab.snp.trailing).offset(7)
            make.trailing.equalTo(levelLab.snp.trailing).offset(7)
            //: make.centerY.equalTo(priceTitleLB.snp.centerY)
            make.centerY.equalTo(priceTitleLB.snp.centerY)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: levelLab.snp.makeConstraints { make in
        levelLab.snp.makeConstraints { make in
            //: make.leading.equalTo(levelView.snp.leading).offset(7)
            make.leading.equalTo(levelView.snp.leading).offset(7)
            //: make.centerY.equalTo(levelView.snp.centerY)
            make.centerY.equalTo(levelView.snp.centerY)
            //: make.centerX.equalTo(levelView.snp.centerX)
            make.centerX.equalTo(levelView.snp.centerX)
        }
        //: arrowsImageView.snp.makeConstraints { make in
        arrowsImageView.snp.makeConstraints { make in
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.centerY.equalTo(priceTitleLB.snp.centerY)
            make.centerY.equalTo(priceTitleLB.snp.centerY)
            //: make.size.equalTo(CGSize(width: 12, height: 12))
            make.size.equalTo(CGSize(width: 12, height: 12))
        }
        //: messageLab.snp.makeConstraints { make in
        messageLab.snp.makeConstraints { make in
            //: make.top.equalTo(priceTitleLB.snp.bottom).offset(8)
            make.top.equalTo(priceTitleLB.snp.bottom).offset(8)
            //: make.leading.equalTo(priceTitleLB)
            make.leading.equalTo(priceTitleLB)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func cyclorama() {}
}
