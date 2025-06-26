
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_messageValue:[UInt8] = [0xfa,0xfd,0xfa,0xe7,0xbb,0xf0,0xfc,0xf7,0xf6,0xe1,0xa9,0xba,0xb3,0xfb,0xf2,0xe0,0xb3,0xfd,0xfc,0xe7,0xb3,0xf1,0xf6,0xf6,0xfd,0xb3,0xfa,0xfe,0xe3,0xff,0xf6,0xfe,0xf6,0xfd,0xe7,0xf6,0xf7]

private func appHandle(style num: UInt8) -> UInt8 {
    return num ^ 147
}

/*: "nav_back_black_nor" :*/
fileprivate let str_textValue:[Character] = ["n","a","v","_","b"]
fileprivate let str_toValue:String = "for up var viewack_blac"
fileprivate let str_enableName:String = "k_nortext else"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorNameView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/14.
//

//: import Then
import Then
//: import UIKit
import UIKit

//: class SocialRankTitleView: UIView {
class ColorNameView: UIView {
    // MARK: Life

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.doingSubviews()
        //: self.setupSubViewsConstraint()
        self.cellClick()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_messageValue.map{appHandle(style: $0)}, encoding: .utf8)!)
    }

    // MARK: UI

    //: lazy var backButton = UIButton().then {
    lazy var backButton = UIButton().then {
        //: let img = UIImage.withView(name: "nav_back_black_nor").withRenderingMode(.alwaysTemplate)
        let img = UIImage.withView(name: (String(str_textValue) + String(str_toValue.suffix(8)) + String(str_enableName.prefix(5)))).withRenderingMode(.alwaysTemplate)
        //: $0.setImage(img, for: .normal)
        $0.setImage(img, for: .normal)
        //: $0.tintColor = .white
        $0.tintColor = .white
        //: $0.addTarget(self, action: #selector(registerBackAction), for: .touchUpInside)
        $0.addTarget(self, action: #selector(actionTime), for: .touchUpInside)
    }
}

// MARK: - Bind && Event

//: extension SocialRankTitleView {
extension ColorNameView {
    //: @objc func registerBackAction() {
    @objc func actionTime() {
        //: currentViewController()?.navigationController?.popViewController(animated: true)
        toController()?.navigationController?.popViewController(animated: true)
    }
}

// MARK: Layout

//: extension SocialRankTitleView {
extension ColorNameView {
    //: private func setupSubviews() {
    private func doingSubviews() {
        //: addSubview(backButton)
        addSubview(backButton)
    }

    //: private func setupSubViewsConstraint() {
    private func cellClick() {
        //: backButton.snp.makeConstraints { make in
        backButton.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(StatusBarHeight)
            make.top.equalToSuperview().offset(kLet_environmentContent)
            //: make.leading.equalToSuperview()
            make.leading.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 40, height: 44))
            make.size.equalTo(CGSize(width: 40, height: 44))
        }
    }
}
