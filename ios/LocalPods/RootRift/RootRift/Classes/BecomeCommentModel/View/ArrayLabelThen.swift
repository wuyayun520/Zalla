
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_topColorText:[UInt8] = [0x52,0x57,0x52,0x5d,0x11,0x4c,0x58,0x4d,0x4e,0x5b,0x23,0x12,0x9,0x51,0x4a,0x5c,0x9,0x57,0x58,0x5d,0x9,0x4b,0x4e,0x4e,0x57,0x9,0x52,0x56,0x59,0x55,0x4e,0x56,0x4e,0x57,0x5d,0x4e,0x4d]

fileprivate func caseShared(index num: UInt8) -> UInt8 {
    let value = Int(num) + 23
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "#F0F0F0" :*/
fileprivate let str_labTitle:String = "make type#F0F0F0"

/*: "icon_fbmoments_notice" :*/
fileprivate let str_shareVideoData:[Character] = ["i","c"]
fileprivate let str_headName:String = "return size self weakon_fb"
fileprivate let str_bottomTitle:String = "ts_noticeingredient quote female succeed"

/*: "Don’t post content that induces others to send gifts or other money-related cintent." :*/
fileprivate let str_teachingData:[UInt8] = [0xb7,0x9c,0x9d,0x11,0x73,0x6a,0x87,0xd3,0x83,0x9c,0x80,0x87,0xd3,0x90,0x9c,0x9d,0x87,0x96,0x9d,0x87,0xd3,0x87,0x9b,0x92,0x87,0xd3,0x9a,0x9d,0x97,0x86,0x90,0x96,0x80,0xd3,0x9c,0x87,0x9b,0x96,0x81,0x80,0xd3,0x87,0x9c,0xd3,0x80,0x96,0x9d,0x97,0xd3,0x94,0x9a,0x95,0x87,0x80,0xd3,0x9c,0x81,0xd3,0x9c,0x87,0x9b,0x96,0x81,0xd3,0x9e,0x9c,0x9d,0x96,0x8a,0xde,0x81,0x96,0x9f,0x92,0x87,0x96,0x97,0xd3,0x90,0x9a,0x9d,0x87,0x96,0x9d,0x87,0xdd]

private func touchName(lab num: UInt8) -> UInt8 {
    return num ^ 243
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ArrayLabelThen.swift
//  AbroadTalking
//
//  Created by young on 2022/9/21.
//

//: import UIKit
import UIKit

//: class FreeCollectionFooterView: UICollectionReusableView {
class ArrayLabelThen: UICollectionReusableView {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_topColorText.map{caseShared(index: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        errorOf()
        //: setupSubViewsConstraint()
        nameUp()
    }

    // MARK: - Lazy load

    //: private lazy var noticeView: UIView = {
    private lazy var noticeView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#F0F0F0")
        v.backgroundColor = UIColor(hex: (String(str_labTitle.suffix(7))))
        //: v.layer.cornerRadius = 6
        v.layer.cornerRadius = 6
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var iconImgView: UIImageView = {
    private lazy var iconImgView: UIImageView = {
        //: let imgV = UIImageView(image: UIImage.withView(name: "icon_fbmoments_notice"))
        let imgV = UIImageView(image: UIImage.withView(name: (String(str_shareVideoData) + String(str_headName.suffix(5)) + "momen" + String(str_bottomTitle.prefix(9)))))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var tipLabel: UILabel = {
    private lazy var tipLabel: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.text = "Don’t post content that induces others to send gifts or other money-related cintent.".localized
        lab.text = String(bytes: str_teachingData.map{touchName(lab: $0)}, encoding: .utf8)!.localized
        //: lab.font = UIFont.pingfangFont(type: .Regular, fontSize: 13)
        lab.font = UIFont.conversationSize(type: .Regular, fontSize: 13)
        //: lab.textColor = UIColor.appValueColor()
        lab.textColor = UIColor.obtrudeUpon()
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - LayoutUI

//: extension FreeCollectionFooterView {
extension ArrayLabelThen {
    // 添加视图
    //: private func setupSubviews() {
    private func errorOf() {
        //: self.addSubview(noticeView)
        self.addSubview(noticeView)
        //: noticeView.addSubview(iconImgView)
        noticeView.addSubview(iconImgView)
        //: noticeView.addSubview(tipLabel)
        noticeView.addSubview(tipLabel)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func nameUp() {
        //: noticeView.snp.makeConstraints { make in
        noticeView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.top.equalTo(10)
            make.top.equalTo(10)
            //: if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue ||
            if GazetteThen.share.interfaceLang == AssemblyPlantMirrorPath.es.rawValue ||
                //: TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
                GazetteThen.share.interfaceLang == AssemblyPlantMirrorPath.pt.rawValue
            {
                //: make.size.equalTo(CGSize(width: ScreenWidth-30, height: 56))
                make.size.equalTo(CGSize(width: kLet_scaleName - 30, height: 56))
                //: } else {
            } else {
                //: make.size.equalTo(CGSize(width: ScreenWidth-30, height: 46))
                make.size.equalTo(CGSize(width: kLet_scaleName - 30, height: 46))
            }
        }
        //: iconImgView.snp.makeConstraints { make in
        iconImgView.snp.makeConstraints { make in
            //: make.leading.equalTo(9)
            make.leading.equalTo(9)
            //: make.top.equalTo(7)
            make.top.equalTo(7)
            //: make.size.equalTo(CGSize(width: 15, height: 15))
            make.size.equalTo(CGSize(width: 15, height: 15))
        }
        //: tipLabel.snp.makeConstraints { make in
        tipLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(iconImgView.snp.trailing).offset(4)
            make.leading.equalTo(iconImgView.snp.trailing).offset(4)
            //: make.trailing.equalTo(-9)
            make.trailing.equalTo(-9)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }
}
