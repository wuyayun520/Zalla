
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_textName:[UInt8] = [0xce,0xd3,0xce,0xd9,0x8d,0xc8,0xd4,0xc9,0xca,0xd7,0x9f,0x8e,0x85,0xcd,0xc6,0xd8,0x85,0xd3,0xd4,0xd9,0x85,0xc7,0xca,0xca,0xd3,0x85,0xce,0xd2,0xd5,0xd1,0xca,0xd2,0xca,0xd3,0xd9,0xca,0xc9]

fileprivate func resultMode(document num: UInt8) -> UInt8 {
    let value = Int(num) + 155
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "You can receive a gold coins bonus once a day while the " :*/
fileprivate let str_onTitle:[UInt8] = [0xd1,0xe7,0xfd,0xa8,0xeb,0xe9,0xe6,0xa8,0xfa,0xed,0xeb,0xed,0xe1,0xfe,0xed,0xa8,0xe9,0xa8,0xef,0xe7,0xe4,0xec,0xa8,0xeb,0xe7,0xe1,0xe6,0xfb,0xa8,0xea,0xe7,0xe6,0xfd,0xfb,0xa8,0xe7,0xe6,0xeb,0xed,0xa8,0xe9,0xa8,0xec,0xe9,0xf1,0xa8,0xff,0xe0,0xe1,0xe4,0xed,0xa8,0xfc,0xe0,0xed,0xa8]

private func makeShare(of num: UInt8) -> UInt8 {
    return num ^ 136
}

/*: "Lounge plus" :*/
fileprivate let str_contentData:String = "Losource situation let left icon"
fileprivate let str_titleName:String = "unge var layer name"

/*: " subscription service is active.The time of the daily gold coins will be based on the US Eastern Time Zone." :*/
fileprivate let str_nameContent:[UInt8] = [0xb1,0x4,0x6,0xf3,0x4,0xf4,0x3,0xfa,0x1,0x5,0xfa,0x0,0xff,0xb1,0x4,0xf6,0x3,0x7,0xfa,0xf4,0xf6,0xb1,0xfa,0x4,0xb1,0xf2,0xf4,0x5,0xfa,0x7,0xf6,0xbf,0xe5,0xf9,0xf6,0xb1,0x5,0xfa,0xfe,0xf6,0xb1,0x0,0xf7,0xb1,0x5,0xf9,0xf6,0xb1,0xf5,0xf2,0xfa,0xfd,0xa,0xb1,0xf8,0x0,0xfd,0xf5,0xb1,0xf4,0x0,0xfa,0xff,0x4,0xb1,0x8,0xfa,0xfd,0xfd,0xb1,0xf3,0xf6,0xb1,0xf3,0xf2,0x4,0xf6,0xf5,0xb1,0x0,0xff,0xb1,0x5,0xf9,0xf6,0xb1,0xe6,0xe4,0xb1,0xd6,0xf2,0x4,0x5,0xf6,0x3,0xff,0xb1,0xe5,0xfa,0xfe,0xf6,0xb1,0xeb,0x0,0xff,0xf6,0xbf]

fileprivate func pageRaw(video num: UInt8) -> UInt8 {
    let value = Int(num) + 111
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
//  RawReusableView.swift
//  AbroadTalking
//
//  Created by young on 2022/12/5.
//

//: import UIKit
import UIKit

//: class TalkingDailyFooterView: UICollectionReusableView {
class RawReusableView: UICollectionReusableView {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_textName.map{resultMode(document: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.setupSubviews()
        self.noneInfoTable()
        //: self.setupSubViewsConstraint()
        self.restriction()
    }

    // MARK: - Lazy Load

    //: private lazy var cornersView: UIView = {
    private lazy var cornersView: UIView = {
        //: let view = UIView(frame: CGRect(x: 0, y: 0, width: ScreenWidth-30, height: 20))
        let view = UIView(frame: CGRect(x: 0, y: 0, width: kLet_scaleName - 30, height: 20))
        //: view.Corner(width: view.frame.size.width, height: view.frame.size.height, corners: [.bottomLeft, .bottomRight], cornerRadii: .init(width: 12, height: 12))
        view.light(width: view.frame.size.width, height: view.frame.size.height, corners: [.bottomLeft, .bottomRight], cornerRadii: .init(width: 12, height: 12))
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: private lazy var desLab: UILabel = {
    private lazy var desLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "You can receive a gold coins bonus once a day while the \"Lounge plus\" subscription service is active.The time of the daily gold coins will be based on the US Eastern Time Zone.".localized
        lab.text = String(bytes: str_onTitle.map{makeShare(of: $0)}, encoding: .utf8)! + "\"" + (String(str_contentData.prefix(2)) + String(str_titleName.prefix(5)) + "plus") + "\"" + String(bytes: str_nameContent.map{pageRaw(video: $0)}, encoding: .utf8)!.localized
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 14)
        lab.font = UIFont.rugular(fontSize: 14)
        //: lab.textColor = UIColor.touchColor()
        lab.textColor = UIColor.touchColor()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingDailyFooterView {
extension RawReusableView {
    /// 获取当前视图高度
    //: static func getFooterViewHeight() -> CGFloat {
    static func bottomHeight() -> CGFloat {
        //: if WatercourseThen.share.loginUserMode.isSignIn {
        if WatercourseThen.share.loginUserMode.isSignIn {
            //: return actualWidth(w: 124)
            return actualWidth(w: 124)
            //: } else {
        } else {
            //: return actualWidth(w: 200)
            return actualWidth(w: 200)
        }
    }
}

// MARK: - Layout

//: extension TalkingDailyFooterView {
extension RawReusableView {
    // 添加视图
    //: private func setupSubviews() {
    private func noneInfoTable() {
        //: self.addSubview(cornersView)
        self.addSubview(cornersView)
        //: self.addSubview(desLab)
        self.addSubview(desLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func restriction() {
        //: desLab.snp.makeConstraints { make in
        desLab.snp.makeConstraints { make in
            //: make.top.equalTo(cornersView.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(cornersView.snp.bottom).offset(actualWidth(w: 12))
            //: make.leading.width.centerX.equalToSuperview()
            make.leading.width.centerX.equalToSuperview()
        }
    }
}
