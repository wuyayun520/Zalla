
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_tableValue:[UInt8] = [0x3f,0x44,0x3f,0x4a,0xfe,0x39,0x45,0x3a,0x3b,0x48,0x10,0xff,0xf6,0x3e,0x37,0x49,0xf6,0x44,0x45,0x4a,0xf6,0x38,0x3b,0x3b,0x44,0xf6,0x3f,0x43,0x46,0x42,0x3b,0x43,0x3b,0x44,0x4a,0x3b,0x3a]

fileprivate func existLab(image num: UInt8) -> UInt8 {
    let value = Int(num) + 42
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Pending review" :*/
fileprivate let str_giftTitle:[Character] = ["P","e","n","d","i","n","g"," ","r","e","v","i","e","w"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ButylateView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/2/15.
//

//: import UIKit
import UIKit

//: class TalkingGreetTextCell: UITableViewCell {
class ButylateView: UITableViewCell {
    //: private var index: Int = 0
    private var index: Int = 0
    //: private var islast: Bool = false
    private var islast: Bool = false

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
        self.upWith()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_tableValue.map{existLab(image: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: return view
        return view
        //: }()
    }()

    // 懒加载初始化
    //: lazy var titleLb: UILabel = {
    lazy var titleLb: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        lb.font = UIFont.conversationSize(type: .Medium, fontSize: 16)
        //: lb.textColor = .appTitleColor()
        lb.textColor = .ending()
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var statusLb: UILabel = {
    lazy var statusLb: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        lb.font = UIFont.conversationSize(type: .Regular, fontSize: 16)
        //: lb.textAlignment = .right
        lb.textAlignment = .right
        //: lb.textColor = UIColor.msgTipsColor()
        lb.textColor = UIColor.colorationPick()
        //: return lb
        return lb
        //: }()
    }()
}

//: extension TalkingGreetTextCell {
extension ButylateView {
    //: func setGreetTextCell(model: TalkingGreetModel, row: Int, isLast: Bool) {
    func hide(model: ImageMeasurable, row: Int, isLast: Bool) {
        //: index = row
        index = row
        //: islast = isLast
        islast = isLast
        //: titleLb.text = model.content
        titleLb.text = model.content
        //: if model.status == 0 {
        if model.status == 0 {
            //: statusLb.text = "Pending review".localized
            statusLb.text = (String(str_giftTitle)).localized
            //: statusLb.isHidden = false
            statusLb.isHidden = false
            //: }else {
        } else {
            //: statusLb.isHidden = true
            statusLb.isHidden = true
        }
    }
}

//: extension TalkingGreetTextCell {
extension ButylateView {
    // 添加视图
    //: private func setupSubviews() {
    private func upWith() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.contentView.backgroundColor = .clear
        self.contentView.backgroundColor = .clear
        //: self.addSubview(backView)
        self.addSubview(backView)
        //: backView.addSubview(titleLb)
        backView.addSubview(titleLb)
        //: backView.addSubview(statusLb)
        backView.addSubview(statusLb)
    }

    // 添加约束
    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()

        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(self).offset(16)
            make.leading.equalTo(self).offset(16)
            //: make.trailing.equalTo(self.snp.trailing).offset(-14)
            make.trailing.equalTo(self.snp.trailing).offset(-14)
            //: make.top.equalTo(self)
            make.top.equalTo(self)
            //: make.bottom.equalTo(self.snp.bottom).offset(1)
            make.bottom.equalTo(self.snp.bottom).offset(1)
        }

        //: titleLb.snp.makeConstraints { make in
        titleLb.snp.makeConstraints { make in
            //: make.top.equalTo(18)
            make.top.equalTo(18)
            //: make.leading.equalTo(14)
            make.leading.equalTo(14)
            //: make.trailing.equalTo(-16)
            make.trailing.equalTo(-16)
        }
        //: statusLb.snp.makeConstraints { make in
        statusLb.snp.makeConstraints { make in
            //: make.top.equalTo(titleLb.snp.bottom).offset(12)
            make.top.equalTo(titleLb.snp.bottom).offset(12)
            //: make.trailing.equalTo(-14)
            make.trailing.equalTo(-14)
        }

        //: self.layoutIfNeeded()
        self.layoutIfNeeded()

        //: if index == 0 && islast {
        if index == 0, islast {
            //: backView.Corner(width: backView.frame.size.width, height: backView.frame.size.height, corners: .allCorners, cornerRadii: .init(width: 8, height: 8))
            backView.light(width: backView.frame.size.width, height: backView.frame.size.height, corners: .allCorners, cornerRadii: .init(width: 8, height: 8))
            //: } else if index == 0 {
        } else if index == 0 {
            //: backView.Corner(width: backView.frame.size.width, height: backView.frame.size.height, corners: [.topLeft, .topRight], cornerRadii: .init(width: 8, height: 8))
            backView.light(width: backView.frame.size.width, height: backView.frame.size.height, corners: [.topLeft, .topRight], cornerRadii: .init(width: 8, height: 8))
            //: } else if islast {
        } else if islast {
            //: backView.Corner(width: backView.frame.size.width, height: backView.frame.size.height, corners: [.bottomLeft, .bottomRight], cornerRadii: .init(width: 8, height: 8))
            backView.light(width: backView.frame.size.width, height: backView.frame.size.height, corners: [.bottomLeft, .bottomRight], cornerRadii: .init(width: 8, height: 8))
            //: } else {
        } else {
            //: backView.Corner(width: backView.frame.size.width, height: backView.frame.size.height, corners: .allCorners, cornerRadii: .init(width: 0, height: 0))
            backView.light(width: backView.frame.size.width, height: backView.frame.size.height, corners: .allCorners, cornerRadii: .init(width: 0, height: 0))
        }
    }
}
