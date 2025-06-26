
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_makeData:[UInt8] = [0x71,0x76,0x71,0x7c,0x30,0x6b,0x77,0x6c,0x6d,0x7a,0x42,0x31,0x28,0x70,0x69,0x7b,0x28,0x76,0x77,0x7c,0x28,0x6a,0x6d,0x6d,0x76,0x28,0x71,0x75,0x78,0x74,0x6d,0x75,0x6d,0x76,0x7c,0x6d,0x6c]

fileprivate func topCurrent(color num: UInt8) -> UInt8 {
    let value = Int(num) + 248
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "icon_videoCall_translate_nor" :*/
fileprivate let str_tapTitle:String = "make tap voiceicon_v"
fileprivate let str_playerName:String = "show self endall_"
fileprivate let str_channelTitle:[Character] = ["t","r","a"]
fileprivate let str_cancelData:[Character] = ["n","s","l","a","t","e","_","n","o","r"]

/*: "icon_videoCall_translate_pre" :*/
fileprivate let str_mainToLabelContent:[Character] = ["i","c","o","n","_","v","i","d","e","o","C","a","l","l","_"]
fileprivate let str_searchData:[Character] = ["t","r","a","n","s","l","a"]
fileprivate let str_headValue:String = "te_prelet fill let blue"

/*: "targetText" :*/
fileprivate let str_instanceData:[Character] = ["t","a","r","g","e","t","T","e","x","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MisnomerReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/10.
//

//: import UIKit
import UIKit

//: class TalkingVideoDanmuMsgTextCell: TalkingVideoDanmuMsgBassCell {
class MisnomerReactiveCompatible: AppearanceViewCell {
    //: override var msgModel: TalkingVideoCallDanmuModel {
    override var msgModel: PublishTransformable {
        //: get { return super.msgModel }
        get { return super.msgModel }
        //: set {
        set {
            //: super.msgModel = newValue
            super.msgModel = newValue
            //: setCell()
            nameSet()
        }
    }

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
        // Initialization code
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.contentView.addSubview(transBtn)
        self.contentView.addSubview(transBtn)
        //: self.transBtn.snp.makeConstraints { make in
        self.transBtn.snp.makeConstraints { make in
            //: make.centerY.equalTo(bgLb)
            make.centerY.equalTo(bgLb)
            //: make.leading.equalTo(bgLb.snp.trailing).offset(5)
            make.leading.equalTo(bgLb.snp.trailing).offset(5)
            //: make.size.equalTo(20)
            make.size.equalTo(20)
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_makeData.map{topCurrent(color: $0)}, encoding: .utf8)!)
    }

    //: lazy var transBtn: UIButton = {
    lazy var transBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.withView(name: "icon_videoCall_translate_nor"), for: .normal)
        btn.setImage(UIImage.withView(name: (String(str_tapTitle.suffix(6)) + "ideoC" + String(str_playerName.suffix(4)) + String(str_channelTitle) + String(str_cancelData))), for: .normal)
        //: btn.setImage(UIImage.withView(name: "icon_videoCall_translate_pre"), for: .selected)
        btn.setImage(UIImage.withView(name: (String(str_mainToLabelContent) + String(str_searchData) + String(str_headValue.prefix(6)))), for: .selected)
        //: btn.addTarget(self, action: #selector(transBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(mediumOn), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingVideoDanmuMsgTextCell {
extension MisnomerReactiveCompatible {
    //: func setCell() {
    func nameSet() {
        //: self.msgLabel.attributedText = msgModel.msgAttribText
        self.msgLabel.attributedText = msgModel.msgAttribText
        //: self.msgLabel.snp.updateConstraints { make in
        self.msgLabel.snp.updateConstraints { make in
            //: make.width.equalTo(msgModel.msgWidth)
            make.width.equalTo(msgModel.msgWidth)
        }
        //: self.bgLb.image = nil
        self.bgLb.image = nil
        //: self.bgLb.backgroundColor = msgModel.bgColor
        self.bgLb.backgroundColor = msgModel.bgColor
        //: self.bgLb.layer.borderColor = UIColor.clear.cgColor
        self.bgLb.layer.borderColor = UIColor.clear.cgColor
        //: self.bgLb.layer.borderWidth = 0.0
        self.bgLb.layer.borderWidth = 0.0
        //: self.transBtn.isHidden = msgModel.isMySender
        self.transBtn.isHidden = msgModel.isMySender
    }

    //: @objc private func transBtnClick() {
    @objc private func mediumOn() {
        //: if !transBtn.isSelected {
        if !transBtn.isSelected {
            //: if self.msgModel.transContent.count > 0 {
            if self.msgModel.transContent.count > 0 {
                //: self.transBtn.isSelected = true
                self.transBtn.isSelected = true
                //: let celldata = TalkingVideoCallDammuCellData.init()
                let celldata = RequestInsideReactiveCompatible()
                //: self.msgModel = celldata.caculateTransMsgHeight(model: self.msgModel)
                self.msgModel = celldata.theLoftiness(model: self.msgModel)
                //: self.setCell()
                self.nameSet()
                //: } else {
            } else {
                //: transBtn.isHidden = true
                transBtn.isHidden = true
                //: HumanHeadRequestTool.req_translateMsg(msgId: msgModel.msgId, type: 3) { succeed, result, errorCode in
                HumanHeadRequestTool.high(msgId: msgModel.msgId, type: 3) { succeed, result, _ in
                    //: self.transBtn.isHidden = false
                    self.transBtn.isHidden = false
                    //: if succeed {
                    if succeed {
                        //: let json = JSON(result )
                        let json = JSON(result)
                        //: let content = json["targetText"].stringValue
                        let content = json[(String(str_instanceData))].stringValue
                        //: self.msgModel.transContent = content
                        self.msgModel.transContent = content
                        //: self.transBtn.isSelected = true
                        self.transBtn.isSelected = true
                        //: let celldata = TalkingVideoCallDammuCellData.init()
                        let celldata = RequestInsideReactiveCompatible()
                        //: self.msgModel = celldata.caculateTransMsgHeight(model: self.msgModel)
                        self.msgModel = celldata.theLoftiness(model: self.msgModel)
                        //: self.setCell()
                        self.nameSet()
                    }
                }
            }
            //: } else {
        } else {
            //: self.transBtn.isSelected = false
            self.transBtn.isSelected = false
            //: let celldata = TalkingVideoCallDammuCellData.init()
            let celldata = RequestInsideReactiveCompatible()
            //: self.msgModel = celldata.caculateMsgHeight(model: self.msgModel)
            self.msgModel = celldata.lownessColor(model: self.msgModel)
            //: self.setCell()
            self.nameSet()
        }
    }
}
