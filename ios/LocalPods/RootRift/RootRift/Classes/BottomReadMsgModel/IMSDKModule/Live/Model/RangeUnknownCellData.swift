
//: Declare String Begin

/*: "MF:LiveChatWelMsg" :*/
fileprivate let str_statusData:[Character] = ["M","F",":","L","i","v","e","C","h","a","t","W","e","l","M","s","g"]

/*: "MF:PartyChatWelMsg" :*/
fileprivate let str_currentImageName:[Character] = ["M","F",":","P","a","r","t","y","C","h","a","t","W","e"]
fileprivate let str_detailData:String = "false self elselMsg"

/*: "MF:LiveChatPrizeMsg" :*/
fileprivate let str_labelTitle:String = "request view cell info arrayMF:"
fileprivate let str_fatalSizeValue:String = "LiveCenter ret return item photo"
fileprivate let str_makeData:String = "zeMsgany info add icon"

/*: "MF:PartyChatPrizeMsg" :*/
fileprivate let str_imageContent:String = "MF:Parblock log target icon let"
fileprivate let str_cellValue:String = "image share text else jumptPriz"

/*: "MF:LiveChatAttentionMsg" :*/
fileprivate let str_equalName:[Character] = ["M","F",":","L","i","v","e","C","h","a"]
fileprivate let str_lineAppValue:[Character] = ["t","A","t","t","e","n","t","i"]
fileprivate let str_cardValue:[Character] = ["o","n","M","s","g"]

/*: "MF:PartyChatAttentionMsg" :*/
fileprivate let str_whiteImageText:[Character] = ["M","F",":","P","a","r","t","y"]
fileprivate let str_textValue:String = "color color log guardCh"
fileprivate let str_todayData:[Character] = ["a","t","A","t","t","e","n","t","i","o","n","M","s","g"]

/*: ：" :*/
fileprivate let str_toValue:String = "cell"

/*: "#BAFBFF" :*/
fileprivate let str_normalValue:[Character] = ["#","B","A","F","B","F"]
fileprivate let str_managerValue:String = "center"

/*: "uid" :*/
fileprivate let str_bottomNameIconData:String = "uisize"

/*: "<at>@[\\S\\s]+?</at>" :*/
fileprivate let str_hiddenValue:[Character] = ["<","a","t",">"]
fileprivate let str_closeValue:String = "@[\\S\\s"

/*: "Sent " :*/
fileprivate let str_scaleTitleData:[Character] = ["S","e","n","t"," "]

/*:  " :*/
fileprivate let str_quoteTitle:[Character] = [" "]

/*: "#FFA4CF" :*/
fileprivate let str_contentData:[Character] = ["#","F","F","A","4","C","F"]

/*: "* :*/
fileprivate let str_removeValue:String = "*"

/*: "Here comes " :*/
fileprivate let str_sharedName:String = "Here cview open"
fileprivate let str_successData:[Character] = ["o","m","e","s"," "]

/*: "#FFE386" :*/
fileprivate let str_listenTitle:String = "model image#F"
fileprivate let str_titleData:[Character] = ["F","E","3","8","6"]

/*:   :*/
fileprivate let str_showPlayerTitle:[Character] = [" "]

/*: "followed the anchor" :*/
fileprivate let str_makeText:[Character] = ["f","o","l","l","o","w","e","d"," ","t","h","e"]
fileprivate let str_kindWrapValue:[Character] = [" ","a","n","c","h","o","r"]

/*: "party_seat_host" :*/
fileprivate let str_selectionData:String = "plabelrt"
fileprivate let str_arrayName:String = "at_hostheight button target"

/*: "level_ :*/
fileprivate let str_modelData:String = "level_of image text status make"

/*: "icon_lounge" :*/
fileprivate let str_rawExecuteValue:[Character] = ["i","c","o","n","_","l","o","u","n","g"]
fileprivate let str_currentMessageWindowName:String = "name"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RangeUnknownCellData.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/11.
//

//: import UIKit
import UIKit

//: typealias ActionUserBlock = (_ atUid: String?) -> Void
typealias ActionUserBlock = (_ atUid: String?) -> Void

//: class TalkingLiveRoomDammuCellData: NSObject {
class RangeUnknownCellData: NSObject {
    //: var actionUserBlock: ActionUserBlock?
    var actionUserBlock: ActionUserBlock?
    //: var longUserBlock: ActionUserBlock?
    var longUserBlock: ActionUserBlock?

    //: var model = TalkingLiveRoomDanmuModel.init()
    var model = PublishMeasurable()

    //: func caculateMsgHeight(model: TalkingLiveRoomDanmuModel) -> TalkingLiveRoomDanmuModel {
    func toRequest(model: PublishMeasurable) -> PublishMeasurable {
        //: self.model = model
        self.model = model
        /// 普通文本消息,礼物消息
        //: if self.model.msgInfo?.messageType == 1 || self.model.msgInfo?.messageType == 2 || self.model.msgInfo?.messageType == 3 {
        if self.model.msgInfo?.messageType == 1 || self.model.msgInfo?.messageType == 2 || self.model.msgInfo?.messageType == 3 {
            //: caculateComment()
            mortalLikeKibbitz()
            /// 欢迎消息
            //: } else if self.model.MsgExtension == "MF:LiveChatWelMsg" || self.model.MsgExtension == "MF:PartyChatWelMsg" {
        } else if self.model.MsgExtension == (String(str_statusData)) || self.model.MsgExtension == (String(str_currentImageName) + String(str_detailData.suffix(4))) {
            //: caculateWelMsg()
            targetToMsg()
            /// 中奖消息
            //: } else if self.model.MsgExtension == "MF:LiveChatPrizeMsg" || self.model.MsgExtension == "MF:PartyChatPrizeMsg" {
        } else if self.model.MsgExtension == (String(str_labelTitle.suffix(3)) + String(str_fatalSizeValue.prefix(5)) + "hatPri" + String(str_makeData.prefix(5))) || self.model.MsgExtension == (String(str_imageContent.prefix(6)) + "tyCha" + String(str_cellValue.suffix(5)) + "eMsg") {
            //: self.model.bgColor = UIColor.init(rgb: 0x8C7BFD, alpha: 0.4)
            self.model.bgColor = UIColor(rgb: 0x8C7BFD, alpha: 0.4)
            //: caculatewinningMsg()
            giftModel()
            /// 关注消息
            //: } else if self.model.MsgExtension == "MF:LiveChatAttentionMsg" || self.model.MsgExtension == "MF:PartyChatAttentionMsg"  {
        } else if self.model.MsgExtension == (String(str_equalName) + String(str_lineAppValue) + String(str_cardValue)) || self.model.MsgExtension == (String(str_whiteImageText) + String(str_textValue.suffix(2)) + String(str_todayData)) {
            //: caculAttionMsg()
            like()
        }
        //: return self.model
        return self.model
    }

    /// 弹幕消息
    //: func caculateComment() {
    func mortalLikeKibbitz() {
        //: let paraStyle = paragraphStyle()
        let paraStyle = tagCheckShould()
        //: paraStyle.lineSpacing = 3.0
        paraStyle.lineSpacing = 3.0 // 行间距
        //: let totalAttr = getImagesAttributedString()
        let totalAttr = velleity()
        // 名字
        //: let firstStr = "\(self.model.user?.nickname ?? "")："
        let firstStr = "\(self.model.user?.nickname ?? "")："
        //: let nameAttr = getAttributed(text: firstStr, font: UIFont.showSize(fontSize: 14), color: UIColor.init(hex: "#BAFBFF")!, isTap: true, atUid: String(self.model.user?.uid ?? 0))
        let nameAttr = visualisation(text: firstStr, font: UIFont.showSize(fontSize: 14), color: UIColor(hex: (String(str_normalValue) + str_managerValue.replacingOccurrences(of: "center", with: "F")))!, isTap: true, atUid: String(self.model.user?.uid ?? 0))

        //: if self.model.msgInfo?.messageType == 1 {
        if self.model.msgInfo?.messageType == 1 {
            // 内容
            //: let content = getAttributed(text: self.model.msgInfo?.content ?? "", font: UIFont.showSize(fontSize: 14), color: UIColor.white, isTap: false, atUid: nil)
            let content = visualisation(text: self.model.msgInfo?.content ?? "", font: UIFont.showSize(fontSize: 14), color: UIColor.white, isTap: false, atUid: nil)
            //: nameAttr.append(content)
            nameAttr.append(content)

            //: } else if self.model.msgInfo?.messageType == 2 {
        } else if self.model.msgInfo?.messageType == 2 {
            //: let jumps = self.model.msgInfo?.jumps.first
            let jumps = self.model.msgInfo?.jumps.first
            //: let atUid = jumps?["uid"] as? Int ?? 0
            let atUid = jumps?[(str_bottomNameIconData.replacingOccurrences(of: "size", with: "d"))] as? Int ?? 0
            //: let text = self.model.msgInfo?.content ?? ""
            let text = self.model.msgInfo?.content ?? ""
            //: let regex = try! NSRegularExpression(pattern: "<at>@[\\S\\s]+?</at>", options: [])
            let regex = try! NSRegularExpression(pattern: (String(str_hiddenValue) + str_closeValue + "]+?</at>"), options: [])
            //: let result = regex.matches(in: text, options: [], range: NSRange(location: 0, length: text.utf16.count))
            let result = regex.matches(in: text, options: [], range: NSRange(location: 0, length: text.utf16.count))
            //: let matchRange =  result.first?.range
            let matchRange = result.first?.range
            //: if  matchRange?.length ?? 0 > 9 {
            if matchRange?.length ?? 0 > 9 {
                //: let subStr = String.substringByUnicodeIndex(str: text, from: (matchRange?.location ?? 0) + 4, to: (matchRange?.length ?? 0) - 5)
                let subStr = String.roundLive(str: text, from: (matchRange?.location ?? 0) + 4, to: (matchRange?.length ?? 0) - 5)
                //: let contentStr = String.substringByUnicodeIndex(str: text, from: (matchRange?.length ?? 0), to: text.utf16.count )
                let contentStr = String.roundLive(str: text, from: (matchRange?.length ?? 0), to: text.utf16.count)
                //: let atName = getAttributed(text: subStr, font: UIFont.showSize(fontSize: 14), color: UIColor.init(hex: "#BAFBFF")!, isTap: true, atUid: "\(atUid)")
                let atName = visualisation(text: subStr, font: UIFont.showSize(fontSize: 14), color: UIColor(hex: (String(str_normalValue) + str_managerValue.replacingOccurrences(of: "center", with: "F")))!, isTap: true, atUid: "\(atUid)")
                //: let content = getAttributed(text: contentStr, font: UIFont.showSize(fontSize: 14), color: UIColor.white, isTap: false, atUid: nil)
                let content = visualisation(text: contentStr, font: UIFont.showSize(fontSize: 14), color: UIColor.white, isTap: false, atUid: nil)
                //: nameAttr.append(atName)
                nameAttr.append(atName)
                //: nameAttr.append(content)
                nameAttr.append(content)
            }

            //: } else if self.model.msgInfo?.messageType == 3 {
        } else if self.model.msgInfo?.messageType == 3 {
            //: guard self.model.gift != nil else { return }
            guard self.model.gift != nil else { return }
            //: let sentAttr = getAttributed(text:  "Sent ".localized, font: UIFont.showSize(fontSize: 14), color: UIColor.white, isTap: false, atUid: nil)
            let sentAttr = visualisation(text: (String(str_scaleTitleData)).localized, font: UIFont.showSize(fontSize: 14), color: UIColor.white, isTap: false, atUid: nil)
            //: nameAttr.append(sentAttr)
            nameAttr.append(sentAttr)
            //: if let toUser = self.model.toUser {
            if let toUser = self.model.toUser { // 送礼接收人
                //: let nickNameAttr = getAttributed(text: "\(toUser.nickname) ", font: UIFont.pingfangFont(type: .Medium, fontSize: 14), color: UIColor(hex: "#FFA4CF")!, isTap: true, atUid: String(toUser.uid))
                let nickNameAttr = visualisation(text: "\(toUser.nickname) ", font: UIFont.conversationSize(type: .Medium, fontSize: 14), color: UIColor(hex: (String(str_contentData)))!, isTap: true, atUid: String(toUser.uid))
                //: nameAttr.append(nickNameAttr)
                nameAttr.append(nickNameAttr)
            }
            //: let giftnameStr = changeGiftName(giftmodel: self.model.gift!)
            let giftnameStr = topVideo(giftmodel: self.model.gift!)
            //: let giftAttr = getAttributed(text: giftnameStr, font: UIFont.pingfangFont(type: .Medium, fontSize: 14), color: UIColor(hex: "#FFA4CF")!, isTap: false, atUid: nil)
            let giftAttr = visualisation(text: giftnameStr, font: UIFont.conversationSize(type: .Medium, fontSize: 14), color: UIColor(hex: (String(str_contentData)))!, isTap: false, atUid: nil)
            //: nameAttr.append(giftAttr)
            nameAttr.append(giftAttr)

            //: let size = CGSize(width: 24, height: 24)
            let size = CGSize(width: 24, height: 24)
            //: let imag = self.model.gift?.giftImg?.resize(with: size)
            let imag = self.model.gift?.giftImg?.afterRange(with: size)
            //: let giftIcon = NSMutableAttributedString.yy_attachmentString(withContent: imag, contentMode: .center, attachmentSize: size, alignTo: UIFont.showSize(fontSize: 14), alignment: .center)
            let giftIcon = NSMutableAttributedString.yy_attachmentString(withContent: imag, contentMode: .center, attachmentSize: size, alignTo: UIFont.showSize(fontSize: 14), alignment: .center)
            //: giftIcon.yy_paragraphStyle = paragraphStyle()
            giftIcon.yy_paragraphStyle = tagCheckShould()
            //: nameAttr.append(giftIcon)
            nameAttr.append(giftIcon)

            //: let numAttr = self.getAttributed(text: "*\(self.model.gift?.num ?? 0)", font: UIFont.showSize(fontSize: 14), color: UIColor.init(hex: "#FFA4CF")!, isTap: false, atUid: nil)
            let numAttr = self.visualisation(text: "*\(self.model.gift?.num ?? 0)", font: UIFont.showSize(fontSize: 14), color: UIColor(hex: (String(str_contentData)))!, isTap: false, atUid: nil)
            //: nameAttr.append(numAttr)
            nameAttr.append(numAttr)
        }

        //: totalAttr.append(nameAttr)
        totalAttr.append(nameAttr)
        //: nameAttr.yy_paragraphStyle = paraStyle
        nameAttr.yy_paragraphStyle = paraStyle
        //: self.model.msgAttribText = totalAttr
        self.model.msgAttribText = totalAttr
        //: YYTextLayoutSize(attribText: self.model.msgAttribText)
        pathBind(attribText: self.model.msgAttribText)
    }

    /// 公告富文本
    //: func showAnnouncementMsg(model: TalkingLiveRoomDanmuModel) -> TalkingLiveRoomDanmuModel {
    func noneStop(model: PublishMeasurable) -> PublishMeasurable {
        //: self.model = model
        self.model = model
        // 内容
        //: let paraStyle = paragraphStyle()
        let paraStyle = tagCheckShould()
        //: let attachText = NSMutableAttributedString.init()
        let attachText = NSMutableAttributedString()
        //: let content = getAttributed(text: self.model.msgInfo?.content ?? "", font: UIFont.showSize(fontSize: 14), color: UIColor.init(hex: "#BAFBFF")!, isTap: false, atUid: nil)
        let content = visualisation(text: self.model.msgInfo?.content ?? "", font: UIFont.showSize(fontSize: 14), color: UIColor(hex: (String(str_normalValue) + str_managerValue.replacingOccurrences(of: "center", with: "F")))!, isTap: false, atUid: nil)
        //: attachText.append(content)
        attachText.append(content)

        //: attachText.yy_paragraphStyle = paraStyle
        attachText.yy_paragraphStyle = paraStyle

        //: self.model.msgAttribText = attachText
        self.model.msgAttribText = attachText

        //: YYTextLayoutSize(attribText: self.model.msgAttribText)
        pathBind(attribText: self.model.msgAttribText)

        //: return self.model
        return self.model
    }

    /// 欢迎消息
    //: func caculateWelMsg() {
    func targetToMsg() {
        //: let paraStyle = paragraphStyle()
        let paraStyle = tagCheckShould()
        //: paraStyle.lineSpacing = 3.0
        paraStyle.lineSpacing = 3.0 // 行间距
        //: let textView = getImagesAttributedString()
        let textView = velleity()
        //: let strnor = "Here comes ".localized
        let strnor = (String(str_sharedName.prefix(6)) + String(str_successData)).localized
        //: let strc =  "\(self.model.user?.nickname ?? "")"
        let strc = "\(self.model.user?.nickname ?? "")"
        //: let content = getAttributed(text: strnor, font: UIFont.showSize(fontSize: 14), color: UIColor.init(hex: "#FFE386")!, isTap: false, atUid: nil)
        let content = visualisation(text: strnor, font: UIFont.showSize(fontSize: 14), color: UIColor(hex: (String(str_listenTitle.suffix(2)) + String(str_titleData)))!, isTap: false, atUid: nil)
        //: let attachText = getAttributed(text: strc, font: UIFont.showSize(fontSize: 14), color: UIColor.init(hex: "#BAFBFF")!, isTap: true, atUid: String(self.model.user?.uid ?? 0))
        let attachText = visualisation(text: strc, font: UIFont.showSize(fontSize: 14), color: UIColor(hex: (String(str_normalValue) + str_managerValue.replacingOccurrences(of: "center", with: "F")))!, isTap: true, atUid: String(self.model.user?.uid ?? 0))
        //: textView.append(content)
        textView.append(content)
        //: textView.append(attachText)
        textView.append(attachText)
        //: self.model.msgAttribText = textView
        self.model.msgAttribText = textView
        //: YYTextLayoutSize(attribText: self.model.msgAttribText)
        pathBind(attribText: self.model.msgAttribText)
    }

    /// 中奖消息
    //: func caculatewinningMsg() {
    func giftModel() {
        //: let paraStyle = paragraphStyle()
        let paraStyle = tagCheckShould()
        //: paraStyle.lineSpacing = 3.0
        paraStyle.lineSpacing = 3.0 // 行间距
        //: let textView = getImagesAttributedString()
        let textView = velleity()
        // 内容
        //: let firstStr = "\(self.model.user?.nickname ?? "") \(self.model.msgInfo?.content ?? "")"
        let firstStr = "\(self.model.user?.nickname ?? "") \(self.model.msgInfo?.content ?? "")"
        //: let content = getAttributed(text: firstStr, font: UIFont.showSize(fontSize: 14), color: UIColor.white, isTap: true, atUid: String(self.model.user?.uid ?? 0))
        let content = visualisation(text: firstStr, font: UIFont.showSize(fontSize: 14), color: UIColor.white, isTap: true, atUid: String(self.model.user?.uid ?? 0))
        //: textView.append(content)
        textView.append(content)
        //: self.model.msgAttribText = textView
        self.model.msgAttribText = textView
        //: YYTextLayoutSize(attribText: self.model.msgAttribText)
        pathBind(attribText: self.model.msgAttribText)
    }

    /// 关注消息
    //: func caculAttionMsg() {
    func like() {
        //: let paraStyle = paragraphStyle()
        let paraStyle = tagCheckShould()
        //: paraStyle.lineSpacing = 3.0
        paraStyle.lineSpacing = 3.0 // 行间距
        //: let attachText = NSMutableAttributedString()
        let attachText = NSMutableAttributedString()
        // 内容
        //: let strnor = "followed the anchor".localized
        let strnor = (String(str_makeText) + String(str_kindWrapValue)).localized
        //: let strc =  "\(self.model.user?.nickname ?? "") "
        let strc = "\(self.model.user?.nickname ?? "") "
        //: let content = getAttributed(text: strnor, font: UIFont.showSize(fontSize: 14), color: UIColor.white, isTap: false, atUid: nil)
        let content = visualisation(text: strnor, font: UIFont.showSize(fontSize: 14), color: UIColor.white, isTap: false, atUid: nil)
        //: let nameText = getAttributed(text: strc, font: UIFont.showSize(fontSize: 14), color: UIColor.init(hex: "#BAFBFF")!, isTap: true, atUid: String(self.model.user?.uid ?? 0))
        let nameText = visualisation(text: strc, font: UIFont.showSize(fontSize: 14), color: UIColor(hex: (String(str_normalValue) + str_managerValue.replacingOccurrences(of: "center", with: "F")))!, isTap: true, atUid: String(self.model.user?.uid ?? 0))
        //: attachText.append(nameText)
        attachText.append(nameText)
        //: attachText.append(content)
        attachText.append(content)
        //: self.model.msgAttribText = attachText
        self.model.msgAttribText = attachText
        //: YYTextLayoutSize(attribText: self.model.msgAttribText)
        pathBind(attribText: self.model.msgAttribText)
    }

    //: func paragraphStyle()-> NSMutableParagraphStyle {
    func tagCheckShould() -> NSMutableParagraphStyle {
        //: let paraStyle = NSMutableParagraphStyle.init()
        let paraStyle = NSMutableParagraphStyle()
        //: paraStyle.lineSpacing = 0.0
        paraStyle.lineSpacing = 0.0 // 行间距
        //: paraStyle.alignment = .left
        paraStyle.alignment = .left
        //: paraStyle.baseWritingDirection = .leftToRight
        paraStyle.baseWritingDirection = .leftToRight
        //: if LanguageManager.shared.direction == .rightToLeft {
        if FactoryShowThen.shared.direction == .rightToLeft {
            //: paraStyle.baseWritingDirection = .rightToLeft
            paraStyle.baseWritingDirection = .rightToLeft
            //: paraStyle.alignment = .right
            paraStyle.alignment = .right
        }

        //: return paraStyle
        return paraStyle
    }

    /**
     字符串生成富文本
     @param isTap 是否添加点击事件
     */
    //: func getAttributed(text: String, font: UIFont, color: UIColor, isTap: Bool, atUid: String?) -> NSMutableAttributedString {
    func visualisation(text: String, font: UIFont, color: UIColor, isTap: Bool, atUid: String?) -> NSMutableAttributedString {
        //: let attribute = NSMutableAttributedString.init(string: text)
        let attribute = NSMutableAttributedString(string: text)
        //: attribute.yy_font = font
        attribute.yy_font = font
        //: attribute.yy_color = color
        attribute.yy_color = color
        //: if LanguageManager.shared.direction == .rightToLeft {
        if FactoryShowThen.shared.direction == .rightToLeft {
//            attribute.yy_writingDirection = [3]
            //: } else {
        } else {
            //: attribute.yy_baseWritingDirection = .leftToRight
            attribute.yy_baseWritingDirection = .leftToRight
        }
        //: attribute.yy_paragraphStyle = paragraphStyle()
        attribute.yy_paragraphStyle = tagCheckShould()

        //: if isTap == true {
        if isTap == true {
            //: guard text.count > 0 else {
            guard text.count > 0 else {
                //: return NSMutableAttributedString.init()
                return NSMutableAttributedString()
            }
            //: let range = NSRange(location: 0, length: text.count)
            let range = NSRange(location: 0, length: text.count)
            //: attribute.yy_setTextHighlight(range, color: color, backgroundColor: .clear, userInfo: nil) {  containerView, text, range, rect in
            attribute.yy_setTextHighlight(range, color: color, backgroundColor: .clear, userInfo: nil) { _, _, _, _ in
                //: if self.actionUserBlock != nil {
                if self.actionUserBlock != nil {
                    //: self.actionUserBlock!(atUid)
                    self.actionUserBlock!(atUid)
                }
                //: } longPressAction: { containerView, text, range, rect in
            } longPressAction: { _, _, _, _ in
                /// 不能@自己
                //: if atUid != WatercourseThen.share.loginUserMode.userID {
                if atUid != WatercourseThen.share.loginUserMode.userID {
                    //: if self.longUserBlock != nil {
                    if self.longUserBlock != nil {
                        //: self.longUserBlock!(atUid)
                        self.longUserBlock!(atUid)
                    }
                }
            }
        }

        //: return attribute
        return attribute
    }

    /// 获取cell高度
    //: func YYTextLayoutSize(attribText: NSMutableAttributedString) {
    func pathBind(attribText: NSMutableAttributedString) {
        // 距离左边8  距离右边也为8
        //: let maxWidth = MsgTableViewWidth - 16
        let maxWidth = kLet_listContentValue - 16

        //: let layout = YYTextLayout.init(containerSize: CGSize(width: maxWidth, height: CGFloat(MAXFLOAT)), text: attribText)
        let layout = YYTextLayout(containerSize: CGSize(width: maxWidth, height: CGFloat(MAXFLOAT)), text: attribText)
        //: let layoutSize = layout?.textBoundingRect.size ?? .zero
        let layoutSize = layout?.textBoundingRect.size ?? .zero
        //: var size = CGSize(width: ceil(layoutSize.width), height: ceil(layoutSize.height))
        var size = CGSize(width: ceil(layoutSize.width), height: ceil(layoutSize.height))

        //: if  size.height < 28 {
        if size.height < 28 {
            //: size.height = 28
            size.height = 28
            //: } else {
        } else {
            // 再加上6=文字距离上下的间距
            //: size.height += 6
            size.height += 6
        }

        //: self.model.msgHeight = Double(size.height)
        self.model.msgHeight = Double(size.height)
        //: self.model.msgWidth = Double(size.width)
        self.model.msgWidth = Double(size.width)
    }

    //: private func changeGiftName(giftmodel: TalkingGiftMsgAnimatModel) -> String {
    private func topVideo(giftmodel: EnableLabelTransformable) -> String {
        //: var gameName = giftmodel.pname
        var gameName = giftmodel.pname
        //: if TalkingRequestAddrTool.share.interfaceLang == LangType.en.rawValue {
        if GazetteThen.share.interfaceLang == AssemblyPlantMirrorPath.en.rawValue {
            //: gameName = giftmodel.nameI18n.en
            gameName = giftmodel.nameI18n.en
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.ar.rawValue {
        } else if GazetteThen.share.interfaceLang == AssemblyPlantMirrorPath.ar.rawValue {
            //: gameName = giftmodel.nameI18n.ar
            gameName = giftmodel.nameI18n.ar
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue {
        } else if GazetteThen.share.interfaceLang == AssemblyPlantMirrorPath.es.rawValue {
            //: gameName = giftmodel.nameI18n.es
            gameName = giftmodel.nameI18n.es
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
        } else if GazetteThen.share.interfaceLang == AssemblyPlantMirrorPath.pt.rawValue {
            //: gameName = giftmodel.nameI18n.pt
            gameName = giftmodel.nameI18n.pt
        }
        //: return gameName
        return gameName
    }
}

// MARK: - 弹幕消息拼接图片

//: extension TalkingLiveRoomDammuCellData {
extension RangeUnknownCellData {
    /// 获取弹幕富文本图片
    //: func getImagesAttributedString() -> NSMutableAttributedString {
    func velleity() -> NSMutableAttributedString {
        //: let mAttrStr = NSMutableAttributedString(string: "")
        let mAttrStr = NSMutableAttributedString(string: "")
        // 语聊房房主
        //: if TalkingVoiceRoomManager.shared().isParty, model.user?.uid == TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid {
        if DateRangeThen.portion().isParty, model.user?.uid == DateRangeThen.portion().partyModel.streamerInfo.uid {
            //: let hostImgV = UIImageView()
            let hostImgV = UIImageView()
            //: hostImgV.size = CGSize(width: 16, height: 16)
            hostImgV.size = CGSize(width: 16, height: 16)
            //: hostImgV.image = UIImage.withView(name: "party_seat_host")
            hostImgV.image = UIImage.withView(name: (str_selectionData.replacingOccurrences(of: "label", with: "a") + "y_se" + String(str_arrayName.prefix(7))))
            //: let hostAttr = getAttachText(imageView: hostImgV)
            let hostAttr = straddleMemoryImageChapterAttachTake(imageView: hostImgV)
            //: mAttrStr.append(hostAttr)
            mAttrStr.append(hostAttr)
            //: mAttrStr.append(NSAttributedString.init(string: " "))
            mAttrStr.append(NSAttributedString(string: " "))
        }

        // 等级
        //: let levelImgV = UIImageView()
        let levelImgV = UIImageView()
        //: levelImgV.size = CGSize(width: 35, height: 16)
        levelImgV.size = CGSize(width: 35, height: 16)
        //: levelImgV.image = UIImage.withView(name: "level_\(self.model.user?.level ?? 1)")
        levelImgV.image = UIImage.withView(name: (String(str_modelData.prefix(6))) + "\(self.model.user?.level ?? 1)")
        //: let levelAttr = getAttachText(imageView: levelImgV)
        let levelAttr = straddleMemoryImageChapterAttachTake(imageView: levelImgV)
        //: mAttrStr.append(levelAttr)
        mAttrStr.append(levelAttr)
        //: mAttrStr.append(NSAttributedString.init(string: " "))
        mAttrStr.append(NSAttributedString(string: " "))

        // 会员
        //: if self.model.user?.loungePlus == true {
        if self.model.user?.loungePlus == true {
            //: let vipImgV = UIImageView()
            let vipImgV = UIImageView()
            //: vipImgV.size = CGSize(width: 16, height: 16)
            vipImgV.size = CGSize(width: 16, height: 16)
            //: vipImgV.image = UIImage.withView(name: "icon_lounge")
            vipImgV.image = UIImage.withView(name: (String(str_rawExecuteValue) + str_currentMessageWindowName.replacingOccurrences(of: "name", with: "e")))
            //: let vipAttr = getAttachText(imageView: vipImgV)
            let vipAttr = straddleMemoryImageChapterAttachTake(imageView: vipImgV)
            //: mAttrStr.append(vipAttr)
            mAttrStr.append(vipAttr)
            //: mAttrStr.append(NSAttributedString.init(string: " "))
            mAttrStr.append(NSAttributedString(string: " "))
        }
        //: return mAttrStr
        return mAttrStr
    }

    // 图片、view生成富文本
    //: func getAttachText(imageView: UIImageView) -> NSMutableAttributedString {
    func straddleMemoryImageChapterAttachTake(imageView: UIImageView) -> NSMutableAttributedString {
        //: let attachText = NSMutableAttributedString.yy_attachmentString(withContent: imageView.image, contentMode: .scaleToFill, attachmentSize: imageView.size, alignTo: UIFont.pingfangRugularFont(fontSize: 12), alignment: .center)
        let attachText = NSMutableAttributedString.yy_attachmentString(withContent: imageView.image, contentMode: .scaleToFill, attachmentSize: imageView.size, alignTo: UIFont.rugular(fontSize: 12), alignment: .center)
        //: attachText.yy_paragraphStyle = paragraphStyle()
        attachText.yy_paragraphStyle = tagCheckShould()
        //: return attachText
        return attachText
    }
}
