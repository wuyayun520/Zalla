
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_iconTitle:[UInt8] = [0x1e,0x23,0x1e,0x29,0xdd,0x18,0x24,0x19,0x1a,0x27,0xef,0xde,0xd5,0x1d,0x16,0x28,0xd5,0x23,0x24,0x29,0xd5,0x17,0x1a,0x1a,0x23,0xd5,0x1e,0x22,0x25,0x21,0x1a,0x22,0x1a,0x23,0x29,0x1a,0x19]

fileprivate func lineFill(view num: UInt8) -> UInt8 {
    let value = Int(num) + 75
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
//  PreviewCornerOrientationView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/12.
//

//: import UIKit
import UIKit

//: class TPreviewBottomToolView: UIView {
class PreviewCornerOrientationView: UIView {
    //: var uid:String = ""
    var uid: String = ""
    //: var mid: String = ""
    var mid: String = ""
    //: var mType: String = ""
    var mType: String = ""
    //: var isLike = false
    var isLike = false
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: var previewLikeBlock: (() -> Void)?
    var previewLikeBlock: (() -> Void)?
    //: var previewCommentBlock: (() -> Void)?
    var previewCommentBlock: (() -> Void)?
    //: var previewChatBlock: (() -> Void)?
    var previewChatBlock: (() -> Void)?
    //: var previewCrushBlock: (() -> Void)?
    var previewCrushBlock: (() -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.digitizer()
        //: self.setupSubViewsConstraint()
        self.framework()
        //: self.bindInteraction()
        self.birdSEyeView()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_iconTitle.map{lineFill(view: $0)}, encoding: .utf8)!)
    }
}

// MARK: - Bind && Event

//: extension TPreviewBottomToolView {
extension PreviewCornerOrientationView {
    //: private func bindInteraction() {
    private func birdSEyeView() {}

    //: @objc func registerLikeAction() {
    @objc func sharedAction() {
        //: self.likeRequest()
        self.chemistryLab()
    }

    //: @objc func registerChatAction() {
    @objc func small() {
        //: self.chatPush()
        self.onBlock()
    }

    //: @objc func registerCrushAction() {
    @objc func mTheoryAction() {
        //: self.crushRequest()
        self.postulation()
    }

    //: @objc func registerCommentAction() {
    @objc func putDownNetThing() {
        //: self.commentPush()
        self.observe()
    }
}

// MARK: - update

//: extension TPreviewBottomToolView {
extension PreviewCornerOrientationView {
    //: func updateBottomView(model: TPreviewInfoModel) {
    func cellModel(model: WithHandyJSON) {
        //: uid = model.uid
        uid = model.uid
        //: mid = model.mid
        mid = model.mid
        //: mType = model.mType
        mType = model.mType
    }

    //: private func chatPush() {
    private func onBlock() {}

    //: private func commentPush() {
    private func observe() {}

    //: private func crushRequest() {
    private func postulation() {
        //: TalkingUserRequestManager.func__sendCrushWithUserId(targetUid: uid) { succeed, result, errorModel in
        DirectorReactiveCompatible.meantime(targetUid: uid) { succeed, _, _ in
            //: if succeed == true {
            if succeed == true {
                // 播放动画
            }
        }
    }

    //: private func likeRequest() {
    private func chemistryLab() {
        //: TalkingUserRequestManager.func__likeMoment(mid: mid, type: mType) { succeed, result, errorModel in
        DirectorReactiveCompatible.rededicate(mid: mid, type: mType) { succeed, _, _ in
            //: if succeed == true {
            if succeed == true {
                //: self.isLike = !self.isLike
                self.isLike = !self.isLike
            }
        }
    }
}

// MARK: Layout

//: extension TPreviewBottomToolView {
extension PreviewCornerOrientationView {
    //: private func setupSubviews() {
    private func digitizer() {}

    //: private func setupSubViewsConstraint() {
    private func framework() {}
}
