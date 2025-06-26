
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_cameraContent:[UInt8] = [0xc9,0xce,0xc9,0xd4,0x88,0xc3,0xcf,0xc4,0xc5,0xd2,0x9a,0x89,0x80,0xc8,0xc1,0xd3,0x80,0xce,0xcf,0xd4,0x80,0xc2,0xc5,0xc5,0xce,0x80,0xc9,0xcd,0xd0,0xcc,0xc5,0xcd,0xc5,0xce,0xd4,0xc5,0xc4]

/*: "icon_kong_kong_default" :*/
fileprivate let str_matchName:String = "icoanother"
fileprivate let str_labValue:String = "sex party color range labelg_ko"
fileprivate let str_toTitle:String = "ng_deself with stack data type"
fileprivate let str_groupTitle:String = "fayearlt"

/*: "You've got no list yet." :*/
fileprivate let str_partyValue:String = "You\'ve "
fileprivate let str_bottomData:[Character] = ["g","o","t"," ","n","o"," ","l","i","s","t"," ","y","e","t","."]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CornerEmptyView.swift
//  AbroadTalking
//
//  Created by young on 2022/9/12.
//

//: import UIKit
import UIKit

//: class SocialEmptyView: UIView {
class CornerEmptyView: UIView {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_cameraContent.map{$0^160}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.setupSubviews()
        self.viewDismiss()
        //: self.setupSubViewsConstraint()
        self.sizeConstraint()
    }

    // MARK: - Lazy load

    //: lazy var imgV: UIImageView = {
    lazy var imgV: UIImageView = {
        //: let v = UIImageView(image: UIImage.withView(name: "icon_kong_kong_default"))
        let v = UIImageView(image: UIImage.withView(name: (str_matchName.replacingOccurrences(of: "another", with: "n") + "_kon" + String(str_labValue.suffix(4)) + String(str_toTitle.prefix(5)) + str_groupTitle.replacingOccurrences(of: "year", with: "u"))))
        //: return v
        return v
        //: }()
    }()

    //: lazy var desLab: UILabel = {
    lazy var desLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.touchColor()
        lab.textColor = UIColor.touchColor()
        //: lab.font = .pingfangFont(type: .Regular, fontSize: 16)
        lab.font = .conversationSize(type: .Regular, fontSize: 16)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "You've got no list yet.".localized
        lab.text = (str_partyValue + String(str_bottomData)).localized
        //: return lab
        return lab
        //: }()
    }()
}

//: extension SocialEmptyView {
extension CornerEmptyView {
    // 添加视图
    //: private func setupSubviews() {
    private func viewDismiss() {
        //: self.addSubview(imgV)
        self.addSubview(imgV)
        //: self.addSubview(desLab)
        self.addSubview(desLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func sizeConstraint() {
        //: imgV.snp.makeConstraints { make in
        imgV.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalToSuperview().offset(NavigationBarHeight)
            make.top.equalToSuperview().offset(kLet_infoButtonValue)
        }
        //: desLab.snp.makeConstraints { make in
        desLab.snp.makeConstraints { make in
            //: make.top.equalTo(imgV.snp.bottom).offset(20)
            make.top.equalTo(imgV.snp.bottom).offset(20)
            //: make.leading.equalToSuperview().offset(30)
            make.leading.equalToSuperview().offset(30)
            //: make.trailing.equalToSuperview().offset(-30)
            make.trailing.equalToSuperview().offset(-30)
        }
    }
}
