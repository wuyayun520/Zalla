
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_privacyValue:[UInt8] = [0x72,0x75,0x72,0x6f,0x33,0x78,0x74,0x7f,0x7e,0x69,0x21,0x32,0x3b,0x73,0x7a,0x68,0x3b,0x75,0x74,0x6f,0x3b,0x79,0x7e,0x7e,0x75,0x3b,0x72,0x76,0x6b,0x77,0x7e,0x76,0x7e,0x75,0x6f,0x7e,0x7f]

private func bottomFrame(pop num: UInt8) -> UInt8 {
    return num ^ 27
}

/*: "icon_lounge" :*/
fileprivate let str_pathName:[Character] = ["i","c","o","n","_","l","o","u"]
fileprivate let str_videoLabData:String = "namege"

/*: "#777777" :*/
fileprivate let str_modelData:String = "#777777"

/*: "UID: :*/
fileprivate let str_hiddenColorName:String = "UID:self add var calculation"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorAllView.swift
//  AbroadTalking
//
//  Created by young on 2023/1/11.
//

//: import UIKit
import UIKit

//: class TalkingSearchItemCell: UITableViewCell {
class ColorAllView: UITableViewCell {
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.contentView.backgroundColor = .clear
        self.contentView.backgroundColor = .clear

        //: setupSubviews()
        option()
        //: setupSubViewsConstraint()
        addWith()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_privacyValue.map{bottomFrame(pop: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Laod

    //: private lazy var headPicImgV: UIImageView = {
    private lazy var headPicImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: img.layer.cornerRadius = 60/2
        img.layer.cornerRadius = 60 / 2
        //: img.layer.masksToBounds = true
        img.layer.masksToBounds = true
        //: return img
        return img
        //: }()
    }()

    //: private lazy var nicknameLab: UILabel = {
    private lazy var nicknameLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        lab.font = UIFont.conversationSize(type: .Medium, fontSize: 18)
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.ending()
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var loungeImgV: UIImageView = {
    private lazy var loungeImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.withView(name: "icon_lounge")
        img.image = UIImage.withView(name: (String(str_pathName) + str_videoLabData.replacingOccurrences(of: "name", with: "n")))
        //: return img
        return img
        //: }()
    }()

    //: private lazy var uidLab: UILabel = {
    private lazy var uidLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        lab.font = UIFont.conversationSize(type: .Regular, fontSize: 14)
        //: lab.textColor = UIColor.touchColor()
        lab.textColor = UIColor.touchColor()
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var desLab: UILabel = {
    private lazy var desLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
        lab.font = UIFont.conversationSize(type: .Regular, fontSize: 15)
        //: lab.textColor = UIColor(hex: "#777777")
        lab.textColor = UIColor(hex: (str_modelData.capitalized))
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingSearchItemCell {
extension ColorAllView {
    /// 刷新
    //: func refreshCell(model: TalkingRecommendUserModel) {
    func tableObject(model: OnCurrentTransformable) {
        //: headPicImgV.setUrlImage(urlStr: model.headPic)
        headPicImgV.ofData(urlStr: model.headPic)
        //: nicknameLab.textColor = model.loungePlus ? .userVipColor():.appTitleColor()
        nicknameLab.textColor = model.loungePlus ? .toUser() : .ending()
        //: nicknameLab.text = model.nickname
        nicknameLab.text = model.nickname
        //: uidLab.text = "UID:\(model.uid)"
        uidLab.text = (String(str_hiddenColorName.prefix(4))) + "\(model.uid)"
        //: desLab.text = model.signature
        desLab.text = model.signature
        // 是否订阅
        //: loungeImgV.isHidden = !model.loungePlus
        loungeImgV.isHidden = !model.loungePlus
        //: loungeImgV.snp.updateConstraints { make in
        loungeImgV.snp.updateConstraints { make in
            //: make.width.equalTo((loungeImgV.isHidden == false ? 20:0))
            make.width.equalTo(loungeImgV.isHidden == false ? 20 : 0)
        }
    }
}

// MARK: - Layout

//: extension TalkingSearchItemCell {
extension ColorAllView {
    /// 添加视图
    //: private func setupSubviews() {
    private func option() {
        //: contentView.addSubview(headPicImgV)
        contentView.addSubview(headPicImgV)
        //: contentView.addSubview(nicknameLab)
        contentView.addSubview(nicknameLab)
        //: contentView.addSubview(loungeImgV)
        contentView.addSubview(loungeImgV)
        //: contentView.addSubview(uidLab)
        contentView.addSubview(uidLab)
        //: contentView.addSubview(desLab)
        contentView.addSubview(desLab)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func addWith() {
        //: headPicImgV.snp.makeConstraints { make in
        headPicImgV.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 60, height: 60))
            make.size.equalTo(CGSize(width: 60, height: 60))
        }

        //: uidLab.snp.makeConstraints { make in
        uidLab.snp.makeConstraints { make in
            //: make.top.equalTo(16)
            make.top.equalTo(16)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
        }

        //: nicknameLab.snp.makeConstraints { make in
        nicknameLab.snp.makeConstraints { make in
            //: make.leading.equalTo(headPicImgV.snp.trailing).offset(10)
            make.leading.equalTo(headPicImgV.snp.trailing).offset(10)
            //: make.centerY.equalTo(uidLab)
            make.centerY.equalTo(uidLab)
        }

        //: loungeImgV.snp.makeConstraints { make in
        loungeImgV.snp.makeConstraints { make in
            //: make.centerY.equalTo(nicknameLab)
            make.centerY.equalTo(nicknameLab)
            //: make.leading.equalTo(nicknameLab.snp.trailing).offset(3)
            make.leading.equalTo(nicknameLab.snp.trailing).offset(3)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
            //: make.width.equalTo(20)
            make.width.equalTo(20)
            //: make.trailing.lessThanOrEqualToSuperview().offset(-100)
            make.trailing.lessThanOrEqualToSuperview().offset(-100)
        }

        //: desLab.snp.makeConstraints { make in
        desLab.snp.makeConstraints { make in
            //: make.leading.equalTo(nicknameLab)
            make.leading.equalTo(nicknameLab)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.bottom.equalToSuperview().offset(-12)
            make.bottom.equalToSuperview().offset(-12)
        }
    }
}
