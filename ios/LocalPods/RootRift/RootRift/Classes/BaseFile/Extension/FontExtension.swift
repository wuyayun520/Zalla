
//: Declare String Begin

/*: "PingFangSC-Regular" :*/
fileprivate let str_defineSpaceEqualData:[Character] = ["P","i","n","g","F","a"]
fileprivate let str_backTitle:String = "ngSClocation else self"
fileprivate let str_coverData:String = "type video to-Reg"

/*: "PingFangSC-Medium" :*/
fileprivate let str_labValue:[Character] = ["P","i","n","g","F","a","n","g","S","C","-","M","e","d"]
fileprivate let str_normalName:String = "ivaluem"

/*: "PingFangSC-Semibold" :*/
fileprivate let str_sectionValue:String = "PingFerror class"
fileprivate let str_giftText:String = "C-Semake path nor model"
fileprivate let str_countTitle:[Character] = ["l","d"]

/*: "PingFangSC-Thin" :*/
fileprivate let str_equalName:[Character] = ["P","i","n","g","F","a","n","g","S","C","-","T","h","i","n"]

/*: "PingFangSC-Light" :*/
fileprivate let str_aspectText:String = "female with false top availablePingFangS"
fileprivate let str_commentData:String = "content count viewC-Light"

/*: "PingFangSC-Ultralight" :*/
fileprivate let str_bubbleTitle:[Character] = ["P","i","n","g","F","a","n","g","S","C","-","U","l","t","r"]
fileprivate let str_intimateText:[Character] = ["a","l","i","g","h","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FontExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/25.
//

//: import Foundation
import Foundation
//: import UIKit
import UIKit

//: extension UIFont {
public extension UIFont {
    //: static func pingfangFont(type: PingFangFontType, fontSize: CGFloat) -> UIFont {
    internal static func conversationSize(type: ColorFontType, fontSize: CGFloat) -> UIFont {
        //: var font: UIFont?
        var font: UIFont?
        //: switch type {
        switch type {
        //: case .Regular:
        case .Regular:
            //: font = UIFont(name: "PingFangSC-Regular", size: fontSize)
            font = UIFont(name: (String(str_defineSpaceEqualData) + String(str_backTitle.prefix(4)) + String(str_coverData.suffix(4)) + "ular"), size: fontSize)
        //: break
        //: case .Medium:
        case .Medium:
            //: font = UIFont(name: "PingFangSC-Medium", size: fontSize)
            font = UIFont(name: (String(str_labValue) + str_normalName.replacingOccurrences(of: "value", with: "u")), size: fontSize)
        //: break
        //: case .Semibold:
        case .Semibold:
            //: font = UIFont(name: "PingFangSC-Semibold", size: fontSize)
            font = UIFont(name: (String(str_sectionValue.prefix(5)) + "angS" + String(str_giftText.prefix(4)) + "mibo" + String(str_countTitle)), size: fontSize)
        //: break
        //: case .Thin:
        case .Thin:
            //: font = UIFont(name: "PingFangSC-Thin", size: fontSize)
            font = UIFont(name: (String(str_equalName)), size: fontSize)
        //: break
        //: case .Light:
        case .Light:
            //: font = UIFont(name: "PingFangSC-Light", size: fontSize)
            font = UIFont(name: (String(str_aspectText.suffix(9)) + String(str_commentData.suffix(7))), size: fontSize)
        //: break
        //: case .Ultralight:
        case .Ultralight:
            //: font = UIFont(name: "PingFangSC-Ultralight", size: fontSize)
            font = UIFont(name: (String(str_bubbleTitle) + String(str_intimateText)), size: fontSize)
            //: break
        }
        //: return font ?? UIFont.systemFont(ofSize: fontSize)
        return font ?? UIFont.systemFont(ofSize: fontSize)
    }

    //: @objc static public func pingfangRugularFont(fontSize: CGFloat) -> UIFont {
    @objc static func rugular(fontSize: CGFloat) -> UIFont {
        //: return UIFont.pingfangFont(type: .Regular, fontSize: fontSize)
        return UIFont.conversationSize(type: .Regular, fontSize: fontSize)
    }

    //: @objc static public func pingfangMediumFont(fontSize: CGFloat) -> UIFont {
    @objc static func showSize(fontSize: CGFloat) -> UIFont {
        //: return UIFont.pingfangFont(type: .Medium, fontSize: fontSize)
        return UIFont.conversationSize(type: .Medium, fontSize: fontSize)
    }
}
