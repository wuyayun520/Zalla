
//: Declare String Begin

/*: "JDStatusBarStyleDefault" :*/
fileprivate let str_contentName:String = "block equalJDSt"
fileprivate let str_beginData:String = "BarStyobject normal vertical"
fileprivate let str_modelTitle:[Character] = ["l","t"]

/*: "JDStatusBarStyleError" :*/
fileprivate let str_equalContentName:String = "root caseJDStat"
fileprivate let str_selectedData:String = "top"
fileprivate let str_backgroundValue:String = "sBarSttrue kit message state"
fileprivate let str_statusAText:String = "originoriginoorigin"

/*: "JDStatusBarStyleSuccess" :*/
fileprivate let str_atText:[Character] = ["J","D","S","t","a","t","u","s","B","a","r","S","t","y","l","e","S","u","c","c","e"]
fileprivate let str_failConversationData:String = "maximummaximum"

/*: "2AB572" :*/
fileprivate let str_mName:String = "top self table to on2AB572"

/*: "F05E5E" :*/
fileprivate let str_popData:String = "F0game5"
fileprivate let str_cellButtonText:[Character] = ["E"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TalkingTipExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/1.
//

//: import JDStatusBarNotification
import JDStatusBarNotification
//: import UIKit
import UIKit

//: extension NSObject {
extension NSObject {
    //: @objc public func func__showStatusBarNormrlMsg(showMsg: String) {
    @objc public func barroomM(showMsg: String) {
        //: self.func__showStatusBarMsg(showMsg: showMsg, dismissTime: 1.5, styleName: "JDStatusBarStyleDefault")
        self.weightName(showMsg: showMsg, dismissTime: 1.5, styleName: (String(str_contentName.suffix(4)) + "atus" + String(str_beginData.prefix(6)) + "leDefau" + String(str_modelTitle)))
    }

    //: @objc public func func__showStatusBarErrorMsg(showMsg: String) {
    @objc public func detailKey(showMsg: String) {
        //: self.func__showStatusBarMsg(showMsg: showMsg, dismissTime: 1.5, styleName: "JDStatusBarStyleError")
        self.weightName(showMsg: showMsg, dismissTime: 1.5, styleName: (String(str_equalContentName.suffix(6)) + str_selectedData.replacingOccurrences(of: "top", with: "u") + String(str_backgroundValue.prefix(6)) + "yleE" + str_statusAText.replacingOccurrences(of: "origin", with: "r")))
    }

    //: func func__showStatusBarSuccessMsg(showMsg: String) {
    func sizeExecuteMsg(showMsg: String) {
        //: self.func__showStatusBarMsg(showMsg: showMsg, dismissTime: 1.5, styleName: "JDStatusBarStyleSuccess")
        self.weightName(showMsg: showMsg, dismissTime: 1.5, styleName: (String(str_atText) + str_failConversationData.replacingOccurrences(of: "maximum", with: "s")))
    }

    //: func func__showStatusBarMsg(showMsg: String, dismissTime: TimeInterval, styleName: String) {
    func weightName(showMsg: String, dismissTime: TimeInterval, styleName: String) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: DispatchQueue.once(token: DispatchQueueToken_StatusBarInit, block: {
            DispatchQueue.viewBlock(token: kLet_showSenseValue, block: {
                //: NotificationPresenter.shared().updateDefaultStyle { style in
                NotificationPresenter.shared().updateDefaultStyle { style in
                    //: style.backgroundStyle.backgroundColor = UIColor(hex: "2AB572")!
                    style.backgroundStyle.backgroundColor = UIColor(hex: (String(str_mName.suffix(6))))!
                    //: style.textStyle.textColor = .white
                    style.textStyle.textColor = .white
                    //: style.textStyle.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
                    style.textStyle.font = UIFont.conversationSize(type: .Regular, fontSize: 14)
                    //: return style
                    return style
                }
                //: NotificationPresenter.shared().addStyle(styleName: styleName) { stype in
                NotificationPresenter.shared().addStyle(styleName: styleName) { stype in
                    //: if styleName == "JDStatusBarStyleError" {
                    if styleName == (String(str_equalContentName.suffix(6)) + str_selectedData.replacingOccurrences(of: "top", with: "u") + String(str_backgroundValue.prefix(6)) + "yleE" + str_statusAText.replacingOccurrences(of: "origin", with: "r")) {
                        //: stype.backgroundStyle.backgroundColor = UIColor(hex: "F05E5E")!
                        stype.backgroundStyle.backgroundColor = UIColor(hex: (str_popData.replacingOccurrences(of: "game", with: "5E") + String(str_cellButtonText)))!
                        //: }else {
                    } else {
                        //: stype.backgroundStyle.backgroundColor = UIColor(hex: "2AB572")!
                        stype.backgroundStyle.backgroundColor = UIColor(hex: (String(str_mName.suffix(6))))!
                    }
                    //: return stype
                    return stype
                }
                //: })
            })

            //: if NotificationPresenter.shared().isVisible() {
            if NotificationPresenter.shared().isVisible() {
                //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    //: NotificationPresenter.shared().present(text: showMsg, dismissAfterDelay: dismissTime, customStyle: styleName)
                    NotificationPresenter.shared().present(text: showMsg, dismissAfterDelay: dismissTime, customStyle: styleName)
                }
                //: }else {
            } else {
                //: NotificationPresenter.shared().present(text: showMsg, dismissAfterDelay: dismissTime, customStyle: styleName)
                NotificationPresenter.shared().present(text: showMsg, dismissAfterDelay: dismissTime, customStyle: styleName)
            }
        }
    }
}
