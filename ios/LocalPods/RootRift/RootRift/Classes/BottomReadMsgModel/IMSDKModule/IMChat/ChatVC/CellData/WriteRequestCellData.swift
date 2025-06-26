
//: Declare String Begin

/*: "bg_talk_other" :*/
fileprivate let str_indexMakeName:[Character] = ["b","g","_","t","a","l","k","_","o","t","h"]
fileprivate let str_infoData:[Character] = ["e","r"]

/*: "bg_talk_me" :*/
fileprivate let str_originData:[Character] = ["b","g"]
fileprivate let str_addValue:[Character] = ["_","t","a","l","k","_","m","e"]

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_valueData:[UInt8] = [0xb,0xc,0xb,0x16,0x4a,0x1,0xd,0x6,0x7,0x10,0x58,0x4b,0x42,0xa,0x3,0x11,0x42,0xc,0xd,0x16,0x42,0x0,0x7,0x7,0xc,0x42,0xb,0xf,0x12,0xe,0x7,0xf,0x7,0xc,0x16,0x7,0x6]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WriteRequestCellData.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/3/1.
//

//: import UIKit
import UIKit

//: @objcMembers public class TalkingChatMsgBaseCellData: TUIMessageCellData {
@objcMembers public class WriteRequestCellData: TUIMessageCellData {
    //: var bubbleTop: CGFloat = 10
    var bubbleTop: CGFloat = 10
    //: var bubbleImg: UIImage?
    var bubbleImg: UIImage?

    //: override public init(direction: TMsgDirection) {
    override public init(direction: TMsgDirection) {
        //: super.init(direction: direction)
        super.init(direction: direction)
        //: if direction == .MsgDirectionIncoming {
        if direction == .MsgDirectionIncoming {
            //: self.bubbleImg = UIImage.resizedInImageWithName(name: "bg_talk_other")
            self.bubbleImg = UIImage.cellSecond(name: (String(str_indexMakeName) + String(str_infoData)))
            //: self.cellLayout = MessageCellLayout.incommingTextMessageLayout()
            self.cellLayout = MessageCellLayout.incommingTextMessageLayout()
            //: } else {
        } else {
            //: self.bubbleImg = UIImage.resizedInImageWithName(name: "bg_talk_me")
            self.bubbleImg = UIImage.cellSecond(name: (String(str_originData) + String(str_addValue)))
            //: self.cellLayout = MessageCellLayout.outgoingTextMessageLayout()
            self.cellLayout = MessageCellLayout.outgoingTextMessageLayout()
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_valueData.map{$0^98}, encoding: .utf8)!)
    }
}
