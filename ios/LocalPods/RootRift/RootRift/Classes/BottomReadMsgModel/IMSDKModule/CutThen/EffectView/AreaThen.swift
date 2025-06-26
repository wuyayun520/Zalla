
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_itemData:[UInt8] = [0xa5,0xa2,0xa5,0xb8,0xe4,0xaf,0xa3,0xa8,0xa9,0xbe,0xf6,0xe5,0xec,0xa4,0xad,0xbf,0xec,0xa2,0xa3,0xb8,0xec,0xae,0xa9,0xa9,0xa2,0xec,0xa5,0xa1,0xbc,0xa0,0xa9,0xa1,0xa9,0xa2,0xb8,0xa9,0xa8]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AreaThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/7.
//

//: import UIKit
import UIKit

//: protocol GiftAnimatItemViewDelegate: NSObject {
protocol WriteViewDelegate: NSObject {
    // 资源下载成功，开始播放动效
    //: func giftEffectItemView(effectItemView: TalkingGiftAnimatItemView, success: Bool)
    func giftAdd(effectItemView: AreaThen, success: Bool)

    // 资源下载失败 或 播放完成
    //: func didFinishAnimationOfGift(effectItemView: TalkingGiftAnimatItemView)
    func componentPartOf(effectItemView: AreaThen)
}

/// 礼物动画效果的加载类，基类，定义了基础的开始，停止，清除的方法；具体动效根据effectMsgModel信息加载对应子类
//: class TalkingGiftAnimatItemView: UIView {
class AreaThen: UIView {
    //: var effectMsgModel: TalkingAnimatMsgModel?
    var effectMsgModel: BottomReadMsgModel?
    //: var giftEffectModel: TalkingGiftAnimatModel?
    var giftEffectModel: UpHandyJSON?
    //: open weak var delegate: GiftAnimatItemViewDelegate?
    open weak var delegate: WriteViewDelegate?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_itemData.map{$0^204}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    //: func startAnimating() {
    func shareLikeAnimating() {}

    //: func stopAnimating() {
    func loadstar() {}

    //: func cleanAnimating() {
    func levelCan() {}

    //: func pauseAnimation() {
    func constituentAnimation() {}

    //: func resumeAnimation() ->Bool {
    func commentActionLive() -> Bool {
        //: return false
        return false
    }

    //: func func__filePathOfName(fileName: String) ->String {
    func noPath(fileName: String) -> String {
        //: return TalkingGiftAnimatTool.shared.filePathOfNameWithAnimatMsgModel(fileName: fileName, model: self.effectMsgModel!)
        return CutThen.shared.pushModel(fileName: fileName, model: self.effectMsgModel!)
    }
}
