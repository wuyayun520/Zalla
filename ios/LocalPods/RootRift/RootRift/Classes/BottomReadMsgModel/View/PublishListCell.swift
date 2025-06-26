
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_shareName:[UInt8] = [0x54,0x59,0x54,0x5f,0x13,0x4e,0x5a,0x4f,0x50,0x5d,0x25,0x14,0xb,0x53,0x4c,0x5e,0xb,0x59,0x5a,0x5f,0xb,0x4d,0x50,0x50,0x59,0xb,0x54,0x58,0x5b,0x57,0x50,0x58,0x50,0x59,0x5f,0x50,0x4f]

fileprivate func selfList(gift num: UInt8) -> UInt8 {
    let value = Int(num) + 21
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Full" :*/
fileprivate let str_offerTitle:String = "cover name color saltFull"

/*: "%@ Online" :*/
fileprivate let str_productName:[Character] = ["%","@"," "]
fileprivate let str_iconSumeractionTitle:[Character] = ["O","n","l","i","n","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PublishListCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/4/6.
//

//: import UIKit
import UIKit

//: class TalkingChatRoomListCell: UITableViewCell {
class PublishListCell: UITableViewCell {
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
        //: selectionStyle = UITableViewCell.SelectionStyle.none
        selectionStyle = UITableViewCell.SelectionStyle.none
        //: self.backgroundColor = .white
        self.backgroundColor = .white
        //: self.contentView.backgroundColor = .white
        self.contentView.backgroundColor = .white
        //: createCellUI()
        splitUi()
        //: layoutSubViewsConstraints()
        upStatus()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_shareName.map{selfList(gift: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var IconBtn: UIButton = {
    lazy var IconBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.layer.cornerRadius = 60/2
        btn.layer.cornerRadius = 60 / 2
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var titleLB: UILabel = {
    lazy var titleLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 18)
        label.font = .conversationSize(type: .Medium, fontSize: 18)
        //: label.textColor = .appTitleColor()
        label.textColor = .ending()
        //: return label
        return label
        //: }()
    }()

    //: lazy var messageLB: UILabel = {
    lazy var messageLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 15)
        label.font = .conversationSize(type: .Regular, fontSize: 15)
        //: label.textColor = .touchColor()
        label.textColor = .touchColor()
        //: return label
        return label
        //: }()
    }()

    //: lazy var numberLB: UILabel = {
    lazy var numberLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 15)
        label.font = .conversationSize(type: .Regular, fontSize: 15)
        //: label.textColor = .touchColor()
        label.textColor = .touchColor()
        //: return label
        return label
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingChatRoomListCell {
extension PublishListCell {
    //: func setChatRoomListCell(model: TalkingChatRoomListModel) {
    func attribute(model: ProgressReactiveCompatible) {
        //: IconBtn.setUrlImage(urlStr: model.icon)
        IconBtn.setToAccomplishUpwards(urlStr: model.icon)
        //: titleLB.text = model.name
        titleLB.text = model.name
        //: messageLB.text = model.msg
        messageLB.text = model.msg
        //: if model.isFull {
        if model.isFull {
            //: numberLB.text = "Full".localized
            numberLB.text = (String(str_offerTitle.suffix(4))).localized
            //: numberLB.textColor = UIColor.msgTipsColor()
            numberLB.textColor = UIColor.colorationPick()
            //: }else {
        } else {
            //: numberLB.text = "%@ Online".localizedArguments(model.num)
            numberLB.text = (String(str_productName) + String(str_iconSumeractionTitle)).alongNext(model.num)
            //: numberLB.textColor = .touchColor()
            numberLB.textColor = .touchColor()
        }
    }
}

// MARK: - UI

//: extension TalkingChatRoomListCell {
extension PublishListCell {
    //: func createCellUI() {
    func splitUi() {
        //: self.contentView.addSubview(IconBtn)
        self.contentView.addSubview(IconBtn)
        //: self.contentView.addSubview(titleLB)
        self.contentView.addSubview(titleLB)
        //: self.contentView.addSubview(messageLB)
        self.contentView.addSubview(messageLB)
        //: self.contentView.addSubview(numberLB)
        self.contentView.addSubview(numberLB)
    }

    //: func layoutSubViewsConstraints() {
    func upStatus() {
        //: IconBtn.snp.makeConstraints { make in
        IconBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(self).offset(15)
            make.leading.equalTo(self).offset(15)
            //: make.top.equalTo(self).offset(8)
            make.top.equalTo(self).offset(8)
            //: make.width.height.equalTo(60)
            make.width.height.equalTo(60)
        }

        //: numberLB.snp.makeConstraints { make in
        numberLB.snp.makeConstraints { make in
            //: make.trailing.equalTo(self.right).offset(-15)
            make.trailing.equalTo(self.right).offset(-15)
            //: make.top.equalTo(self).offset(16)
            make.top.equalTo(self).offset(16)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
        }

        //: titleLB.snp.makeConstraints { make in
        titleLB.snp.makeConstraints { make in
            //: make.leading.equalTo(IconBtn.snp.trailing).offset(10)
            make.leading.equalTo(IconBtn.snp.trailing).offset(10)
            //: make.trailing.lessThanOrEqualTo(numberLB.snp.leading).offset(-5)
            make.trailing.lessThanOrEqualTo(numberLB.snp.leading).offset(-5)
            //: make.top.equalTo(self).offset(13)
            make.top.equalTo(self).offset(13)
        }
        //: messageLB.snp.makeConstraints { make in
        messageLB.snp.makeConstraints { make in
            //: make.leading.trailing.equalTo(titleLB)
            make.leading.trailing.equalTo(titleLB)
            //: make.top.equalTo(titleLB.snp.bottom).offset(8)
            make.top.equalTo(titleLB.snp.bottom).offset(8)
        }
    }
}
