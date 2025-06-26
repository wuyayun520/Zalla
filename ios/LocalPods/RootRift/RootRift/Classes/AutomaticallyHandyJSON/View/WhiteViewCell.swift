
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_exceptValue:[UInt8] = [0xd2,0xd7,0xd2,0xdd,0x91,0xcc,0xd8,0xcd,0xce,0xdb,0xa3,0x92,0x89,0xd1,0xca,0xdc,0x89,0xd7,0xd8,0xdd,0x89,0xcb,0xce,0xce,0xd7,0x89,0xd2,0xd6,0xd9,0xd5,0xce,0xd6,0xce,0xd7,0xdd,0xce,0xcd]

fileprivate func statusStyle(plain num: UInt8) -> UInt8 {
    let value = Int(num) - 105
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "btn_report_selected_nor" :*/
fileprivate let str_replyModelTitle:String = "btn_user text"
fileprivate let str_nextName:[Character] = ["e","l","e"]
fileprivate let str_noValue:[Character] = ["c","t","e","d","_","n","o","r"]

/*: "· %@" :*/
fileprivate let str_clearMakeTitle:[Character] = ["·"," ","%","@"]

/*: "btn_report_selected_pre" :*/
fileprivate let str_norData:[Character] = ["b","t","n","_","r","e"]
fileprivate let str_sectionValue:String = "pimaget"
fileprivate let str_editOpenName:String = "ctexted"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WhiteViewCell.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/14.
//

//: import Then
import Then
//: import UIKit
import UIKit

//: class TalkingReportViewCell: UITableViewCell {
class WhiteViewCell: UITableViewCell {
    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.selectionStyle = .none
        self.selectionStyle = .none
        //: self.setupSubviews()
        self.offCount()
        //: self.setupSubViewsConstraint()
        self.toConvert()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_exceptValue.map{statusStyle(plain: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var reasonLabel = UILabel().then {
    lazy var reasonLabel = UILabel().then {
        //: $0.textColor = UIColor.appTitleColor()
        $0.textColor = UIColor.ending()
        //: $0.font = .pingfangFont(type: .Medium, fontSize: 16)
        $0.font = .conversationSize(type: .Medium, fontSize: 16)
    }

    //: lazy var selectedImgView = UIImageView().then {
    lazy var selectedImgView = UIImageView().then {
        //: $0.image = UIImage.withView(name: "btn_report_selected_nor")
        $0.image = UIImage.withView(name: (String(str_replyModelTitle.prefix(4)) + "report_s" + String(str_nextName) + String(str_noValue)))
    }
}

// MARK: - update || fitHeight

//: extension TalkingReportViewCell {
extension WhiteViewCell {
    //: func updateReportCell(model: TalkingReportModel) {
    func rangeColor(model: CurrentReportModel) {
        //: reasonLabel.text = String(format: "· %@", model.reason)
        reasonLabel.text = String(format: "· %@", model.reason)
        //: var image = UIImage.withView(name: "btn_report_selected_nor")
        var image = UIImage.withView(name: (String(str_replyModelTitle.prefix(4)) + "report_s" + String(str_nextName) + String(str_noValue)))
        //: if model.selected == true {
        if model.selected == true {
            //: image = UIImage.withView(name: "btn_report_selected_pre").withTintColor(UIColor.appThemeColor())
            image = UIImage.withView(name: (String(str_norData) + str_sectionValue.replacingOccurrences(of: "image", with: "or") + "_sele" + str_editOpenName.replacingOccurrences(of: "text", with: "t") + "_pre")).withTintColor(UIColor.smallFor())
        }
        //: selectedImgView.image = image
        selectedImgView.image = image
    }
}

// MARK: - Layout

//: extension TalkingReportViewCell {
extension WhiteViewCell {
    //: private func setupSubviews() {
    private func offCount() {
        //: contentView.addSubview(reasonLabel)
        contentView.addSubview(reasonLabel)
        //: contentView.addSubview(selectedImgView)
        contentView.addSubview(selectedImgView)
    }

    //: private func setupSubViewsConstraint() {
    private func toConvert() {
        //: reasonLabel.snp.makeConstraints { make in
        reasonLabel.snp.makeConstraints { make in
            //: make.leading.top.equalTo(0)
            make.leading.top.equalTo(0)
            //: make.trailing.equalTo(selectedImgView.snp.leading).offset(-10)
            make.trailing.equalTo(selectedImgView.snp.leading).offset(-10)
        }
        //: selectedImgView.snp.makeConstraints { make in
        selectedImgView.snp.makeConstraints { make in
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.centerY.equalTo(reasonLabel.snp.centerY)
            make.centerY.equalTo(reasonLabel.snp.centerY)
            //: make.size.equalTo(CGSize(width: 18, height: 18))
            make.size.equalTo(CGSize(width: 18, height: 18))
        }
    }
}
