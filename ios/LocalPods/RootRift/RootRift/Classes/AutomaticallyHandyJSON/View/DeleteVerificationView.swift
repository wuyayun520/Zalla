
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_seekData:[UInt8] = [0xc4,0xc3,0xc4,0xd9,0x85,0xce,0xc2,0xc9,0xc8,0xdf,0x97,0x84,0x8d,0xc5,0xcc,0xde,0x8d,0xc3,0xc2,0xd9,0x8d,0xcf,0xc8,0xc8,0xc3,0x8d,0xc4,0xc0,0xdd,0xc1,0xc8,0xc0,0xc8,0xc3,0xd9,0xc8,0xc9]

private func groundAdd(mode num: UInt8) -> UInt8 {
    return num ^ 173
}

/*: "icon_faceverification_guide_ok" :*/
fileprivate let str_viewValue:[Character] = ["i","c","o","n","_","f","a","c","e","v","e","r","i","f","i","c"]
fileprivate let str_iconValue:[Character] = ["a","t","i","o","n","_"]
fileprivate let str_nameContent:String = "guprogress"

/*: "Submitted successfully, please wait \n patiently for review." :*/
fileprivate let str_toText:[UInt8] = [0xbd,0xdf,0xcc,0xd7,0xd3,0xde,0xde,0xcf,0xce,0x8a,0xdd,0xdf,0xcd,0xcd,0xcf,0xdd,0xdd,0xd0,0xdf,0xd6,0xd6,0xe3,0x96,0x8a,0xda,0xd6,0xcf,0xcb,0xdd,0xcf,0x8a,0xe1,0xcb,0xd3,0xde,0x8a,0x74,0x8a,0xda,0xcb,0xde,0xd3,0xcf,0xd8,0xde,0xd6,0xe3,0x8a,0xd0,0xd9,0xdc,0x8a,0xdc,0xcf,0xe0,0xd3,0xcf,0xe1,0x98]

fileprivate func polishEnable(content num: UInt8) -> UInt8 {
    let value = Int(num) + 150
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DeleteVerificationView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingFinalVerificationView: UIView {
class DeleteVerificationView: UIView {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: createSubViews()
        receiveSub()
        //: layoutSubViewsConstraints()
        giftConstraints()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_seekData.map{groundAdd(mode: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var successIconView: UIImageView = {
    lazy var successIconView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.image = UIImage.withView(name: "icon_faceverification_guide_ok")
        imgView.image = UIImage.withView(name: (String(str_viewValue) + String(str_iconValue) + str_nameContent.replacingOccurrences(of: "progress", with: "id") + "e_ok"))
        //: return imgView
        return imgView
        //: }()
    }()

    //: lazy var tipLab: UILabel = {
    lazy var tipLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Submitted successfully, please wait \n patiently for review.".localized
        lb.text = String(bytes: str_toText.map{polishEnable(content: $0)}, encoding: .utf8)!.localized
        //: lb.textColor = .appTitleColor()
        lb.textColor = .ending()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 18)
        lb.font = .conversationSize(type: .Regular, fontSize: 18)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()
}

// MARK: - UI

//: extension TalkingFinalVerificationView {
extension DeleteVerificationView {
    //: func createSubViews() {
    func receiveSub() {
        //: addSubview(successIconView)
        addSubview(successIconView)
        //: addSubview(tipLab)
        addSubview(tipLab)
    }

    //: func layoutSubViewsConstraints() {
    func giftConstraints() {
        //: successIconView.snp.makeConstraints { make in
        successIconView.snp.makeConstraints { make in
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.top.equalTo(actualHeight(h: 102))
            make.top.equalTo(actualHeight(h: 102))
            //: make.width.height.equalTo(actualWidth(w: 71))
            make.width.height.equalTo(actualWidth(w: 71))
        }
        //: tipLab.snp.makeConstraints { make in
        tipLab.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.trailing.equalTo(actualWidth(w: -15))
            make.trailing.equalTo(actualWidth(w: -15))
            //: make.top.equalTo(successIconView.snp.bottom).offset(actualHeight(h: 27))
            make.top.equalTo(successIconView.snp.bottom).offset(actualHeight(h: 27))
        }
    }
}
