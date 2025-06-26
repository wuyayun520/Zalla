
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_sizeValue:[UInt8] = [0x60,0x65,0x60,0x6b,0x1f,0x5a,0x66,0x5b,0x5c,0x69,0x31,0x20,0x17,0x5f,0x58,0x6a,0x17,0x65,0x66,0x6b,0x17,0x59,0x5c,0x5c,0x65,0x17,0x60,0x64,0x67,0x63,0x5c,0x64,0x5c,0x65,0x6b,0x5c,0x5b]

fileprivate func fundamentalSum(block num: UInt8) -> UInt8 {
    let value = Int(num) + 9
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  InsideReactiveCompatible.swift
//  RootRift
//
//  Created by DouXiu on 2024/9/23.
//

//: import UIKit
import UIKit

//: class TalkingVoiceRoomMikePositionView: UIView {
class InsideReactiveCompatible: UIView {
    //: public var showUserCardBlock: ((_ uid: Int) -> Void)?
    public var showUserCardBlock: ((_ uid: Int) -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        viewTitle()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_sizeValue.map{fundamentalSum(block: $0)}, encoding: .utf8)!)
    }
}

// MARK: - Event

//: extension TalkingVoiceRoomMikePositionView {
extension InsideReactiveCompatible {
    /// 刷新全部麦位视图
    //: func refreshAllMikeView() {
    func manager() {
        //: let dict = TalkingVoiceRoomManager.shared().getAllMikePositions()
        let dict = DateRangeThen.portion().possibility()
        //: dict.forEach { (key: Int, model: TalkingMikeListItemModel) in
        dict.forEach { (key: Int, model: ScaleMeasurable) in
            //: let itemView = self.viewWithTag(100 + key) as? TalkingMikePositionItemView
            let itemView = self.viewWithTag(100 + key) as? SubThen
            //: itemView?.refreshMikeItemView(key, model: model)
            itemView?.molarityPreformation(key, model: model)
        }
    }

    /// 刷新单个麦位视图
    /// - Parameter position: 麦位
    //: func refreshSingleMikeView(position: Int) {
    func withTo(position: Int) {
        //: guard let model = TalkingVoiceRoomManager.shared().getMikePosition(key: position) else { return }
        guard let model = DateRangeThen.portion().endHave(key: position) else { return }
        //: let itemView = self.viewWithTag(100 + position) as? TalkingMikePositionItemView
        let itemView = self.viewWithTag(100 + position) as? SubThen
        //: itemView?.refreshMikeItemView(position, model: model)
        itemView?.molarityPreformation(position, model: model)
    }

    /// 刷新声浪等级动效
    /// - Parameters:
    ///   - position: 麦位
    ///   - level: 声浪值
    //: func refreshSoundLevelAnimation(position: Int, level: NSNumber) {
    func addService(position: Int, level: NSNumber) {
        //: guard let model = TalkingVoiceRoomManager.shared().getMikePosition(key: position) else { return }
        guard let model = DateRangeThen.portion().endHave(key: position) else { return }
        //: guard model.mikeStatus == 2 else { return }
        guard model.mikeStatus == 2 else { return }
        //: let itemView = self.viewWithTag(100 + position) as? TalkingMikePositionItemView
        let itemView = self.viewWithTag(100 + position) as? SubThen
        //: itemView?.animateCircle(withAmplitude: CGFloat(truncating: level))
        itemView?.animateEqualAmplitude(withAmplitude: CGFloat(truncating: level))
    }
}

// MARK: - Layout

//: extension TalkingVoiceRoomMikePositionView {
extension InsideReactiveCompatible {
    /// 添加视图
    //: private func setupSubviews() {
    private func viewTitle() {
        //: for index in 0 ..< MIKE_SEAT_COUNT {
        for index in 0 ..< kLet_rejectTableData {
            //: let row = index / 4
            let row = index / 4
            //: let column = index % 4
            let column = index % 4
            //: var startX = 17.5 + CGFloat(column) * MikePositionItemView_Size.width
            var startX = 17.5 + CGFloat(column) * kLet_turnName.width
            //: if LanguageManager.shared.direction == .rightToLeft {
            if FactoryShowThen.shared.direction == .rightToLeft {
                //: startX = ScreenWidth - startX - MikePositionItemView_Size.width
                startX = kLet_scaleName - startX - kLet_turnName.width
            }
            //: let item = TalkingMikePositionItemView()
            let item = SubThen()
            //: item.origin = CGPoint(
            item.origin = CGPoint(
                //: x: startX,
                x: startX,
                //: y: CGFloat(row) * MikePositionItemView_Size.height
                y: CGFloat(row) * kLet_turnName.height
            )
            //: item.size = MikePositionItemView_Size
            item.size = kLet_turnName
            //: item.tag = index + 100
            item.tag = index + 100
            //: item.showUserCardBlock = { [weak self] uid in
            item.showUserCardBlock = { [weak self] uid in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.showUserCardBlock?(uid)
                self.showUserCardBlock?(uid)
            }
            //: self.addSubview(item)
            self.addSubview(item)
        }
    }
}
