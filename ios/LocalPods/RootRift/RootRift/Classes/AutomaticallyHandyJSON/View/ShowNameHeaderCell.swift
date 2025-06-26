
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_titleHaveOfData:[UInt8] = [0xee,0xe9,0xee,0xf3,0xaf,0xe4,0xe8,0xe3,0xe2,0xf5,0xbd,0xae,0xa7,0xef,0xe6,0xf4,0xa7,0xe9,0xe8,0xf3,0xa7,0xe5,0xe2,0xe2,0xe9,0xa7,0xee,0xea,0xf7,0xeb,0xe2,0xea,0xe2,0xe9,0xf3,0xe2,0xe3]

/*: "Add" :*/
fileprivate let str_windowValue:[Character] = ["A","d","d"]

/*: "btn_me_edit" :*/
fileprivate let str_sizeValue:String = "btn_menumber task"
fileprivate let str_userText:[Character] = ["_","e","d","i","t"]

/*: "Program" :*/
fileprivate let str_managerName:[Character] = ["P","r","o","g","r","a","m"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ShowNameHeaderCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/10/25.
//

//: import UIKit
import UIKit

//: typealias HeaderTouchBlock = () -> Void
typealias HeaderTouchBlock = () -> Void

//: class TalkingVideoSettingHeaderCell: UITableViewCell {
class ShowNameHeaderCell: UITableViewCell {
    //: var touchBlock: HeaderTouchBlock?
    var touchBlock: HeaderTouchBlock?

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .appBgColor()
        self.backgroundColor = .modelCard()
        //: selectionStyle = .none
        selectionStyle = .none
        //: setupSubviews()
        tabSubviews()
        //: setupSubViewsConstraint()
        numericalCountStatus()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_titleHaveOfData.map{$0^135}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: private lazy var backBtn: UIButton = {
    private lazy var backBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.backgroundColor = UIColor.white
        btn.backgroundColor = UIColor.white
        //: btn.layer.cornerRadius = 8
        btn.layer.cornerRadius = 8
        //: btn.addTarget(self, action: #selector(backBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(inheritance), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var iconImg: UIImageView = {
    private lazy var iconImg: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.isUserInteractionEnabled = false
        imag.isUserInteractionEnabled = false
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        lb.font = UIFont.conversationSize(type: .Medium, fontSize: 16)
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.ending()
        //: lb.isUserInteractionEnabled = false
        lb.isUserInteractionEnabled = false
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var tipsLab: UILabel = {
    private lazy var tipsLab: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        lb.font = UIFont.conversationSize(type: .Regular, fontSize: 14)
        //: lb.textColor = UIColor.touchColor()
        lb.textColor = UIColor.touchColor()
        //: lb.isUserInteractionEnabled = false
        lb.isUserInteractionEnabled = false
        //: lb.text = "Add".localized
        lb.text = (String(str_windowValue)).localized
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var editImg: UIImageView = {
    private lazy var editImg: UIImageView = {
        //: let imag = UIImageView.init(image: UIImage.withView(name: "btn_me_edit"))
        let imag = UIImageView(image: UIImage.withView(name: (String(str_sizeValue.prefix(6)) + String(str_userText))))
        //: imag.isUserInteractionEnabled = false
        imag.isUserInteractionEnabled = false
        //: return imag
        return imag
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVideoSettingHeaderCell {
extension ShowNameHeaderCell {
    //: func setViewData(title: String, icon: String) {
    func toLoad(title: String, icon: String) {
        //: iconImg.image = UIImage.withView(name: icon)
        iconImg.image = UIImage.withView(name: icon)
        //: titleLab.text = title.localized
        titleLab.text = title.localized
        //: if title == "Program" {
        if title == (String(str_managerName)) {
            //: backBtn.snp.remakeConstraints { make in
            backBtn.snp.remakeConstraints { make in
                //: make.leading.top.equalToSuperview().offset(15)
                make.leading.top.equalToSuperview().offset(15)
                //: make.trailing.equalToSuperview().offset(-15)
                make.trailing.equalToSuperview().offset(-15)
                //: make.bottom.equalToSuperview()
                make.bottom.equalToSuperview()
            }
        }
    }

    //: @objc func backBtnClick() {
    @objc func inheritance() {
        //: if touchBlock != nil {
        if touchBlock != nil {
            //: touchBlock!()
            touchBlock!()
        }
    }

    //: func setTips(isHidden: Bool) {
    func makeHidden(isHidden: Bool) {
        //: tipsLab.isHidden = isHidden
        tipsLab.isHidden = isHidden
    }

    //: func setArrow() {
    func individual() {
        //: backBtn.layer.cornerRadius = 0
        backBtn.layer.cornerRadius = 0
        //: backBtn.Corner(width: ScreenWidth-30, height: 50, corners: [.topLeft, .topRight], cornerRadii: .init(width: 8, height: 8))
        backBtn.light(width: kLet_scaleName - 30, height: 50, corners: [.topLeft, .topRight], cornerRadii: .init(width: 8, height: 8))
    }
}

// MARK: - Layout

//: extension TalkingVideoSettingHeaderCell {
extension ShowNameHeaderCell {
    /// 添加视图
    //: private func setupSubviews() {
    private func tabSubviews() {
        //: self.contentView.addSubview(backBtn)
        self.contentView.addSubview(backBtn)
        //: backBtn.addSubview(iconImg)
        backBtn.addSubview(iconImg)
        //: backBtn.addSubview(titleLab)
        backBtn.addSubview(titleLab)
        //: backBtn.addSubview(editImg)
        backBtn.addSubview(editImg)
        //: backBtn.addSubview(tipsLab)
        backBtn.addSubview(tipsLab)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func numericalCountStatus() {
        //: backBtn.snp.remakeConstraints { make in
        backBtn.snp.remakeConstraints { make in
            //: make.leading.top.equalToSuperview().offset(15)
            make.leading.top.equalToSuperview().offset(15)
            //: make.trailing.equalToSuperview().offset(-15)
            make.trailing.equalToSuperview().offset(-15)
            //: make.bottom.equalToSuperview().offset(-10)
            make.bottom.equalToSuperview().offset(-10)
        }

        //: iconImg.snp.remakeConstraints { make in
        iconImg.snp.remakeConstraints { make in
            //: make.leading.equalToSuperview().offset(12)
            make.leading.equalToSuperview().offset(12)
            //: make.centerY.equalTo(backBtn)
            make.centerY.equalTo(backBtn)
            //: make.width.height.equalTo(25)
            make.width.height.equalTo(25)
        }

        //: titleLab.snp.remakeConstraints { make in
        titleLab.snp.remakeConstraints { make in
            //: make.leading.equalTo(iconImg.snp.trailing).offset(7)
            make.leading.equalTo(iconImg.snp.trailing).offset(7)
            //: make.centerY.equalTo(backBtn)
            make.centerY.equalTo(backBtn)
            //: make.height.equalTo(19)
            make.height.equalTo(19)
        }

        //: editImg.snp.remakeConstraints { make in
        editImg.snp.remakeConstraints { make in
            //: make.centerY.equalTo(backBtn)
            make.centerY.equalTo(backBtn)
            //: make.trailing.equalToSuperview().offset(-12)
            make.trailing.equalToSuperview().offset(-12)
            //: make.width.equalTo(8)
            make.width.equalTo(8)
            //: make.height.equalTo(12)
            make.height.equalTo(12)
        }
        //: tipsLab.snp.remakeConstraints { make in
        tipsLab.snp.remakeConstraints { make in
            //: make.centerY.equalTo(editImg)
            make.centerY.equalTo(editImg)
            //: make.trailing.equalTo(editImg.snp.leading).offset(-7)
            make.trailing.equalTo(editImg.snp.leading).offset(-7)
        }
    }
}
