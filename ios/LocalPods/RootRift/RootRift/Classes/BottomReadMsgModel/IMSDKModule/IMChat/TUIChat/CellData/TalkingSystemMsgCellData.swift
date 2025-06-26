//
//  TalkingSystemMsgCellData.swift
//  RootRift
//
//  Created by Hemming on 2024/8/14.
//

import UIKit

@objcMembers public class TalkingSystemMsgCellData: TUIMessageCellData {
    
    var contentFont = UIFont.rugular(fontSize: 13)
    var contentColor = UIColor.touchColor()
    @objc public var contentStr = ""

    override public init(direction: TMsgDirection) {
        super.init(direction: direction)
        self.cellLayout = MessageCellLayout.systemMessageLayout()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    public override func contentSize() -> CGSize {
        let textSize = CGSize(width: kLet_scaleName/2, height: kLet_environmentText)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineBreakMode = .byWordWrapping
        paragraphStyle.alignment = .left
       
        let attributes = [NSAttributedString.Key.font: contentFont,
                          NSAttributedString.Key.paragraphStyle: paragraphStyle]
        
        let contentSize = contentStr.boundingRect(with: textSize, options: .usesLineFragmentOrigin, attributes: attributes, context: nil).size
        

        return CGSize(width: contentSize.width + 16, height: contentSize.height + 10)
    }
    public override func height(ofWidth width: CGFloat) -> CGFloat {
        return self.contentSize().height + 10
    }
 
}



