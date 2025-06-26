
//: Declare String Begin

/*: "Increase：" :*/
fileprivate let str_presentationText:[Character] = ["I","n"]
fileprivate let str_modeName:[Character] = ["c","r","e","a","s","e","："]

/*: "Decrease：" :*/
fileprivate let str_layerData:String = "head self fileDecrease："

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_makeSocialText:[UInt8] = [0x1e,0x19,0x1e,0x3,0x5f,0x14,0x18,0x13,0x12,0x5,0x4d,0x5e,0x57,0x1f,0x16,0x4,0x57,0x19,0x18,0x3,0x57,0x15,0x12,0x12,0x19,0x57,0x1e,0x1a,0x7,0x1b,0x12,0x1a,0x12,0x19,0x3,0x12,0x13]

private func lastTerms(equal num: UInt8) -> UInt8 {
    return num ^ 119
}

/*: "bg_talk_closed_tc" :*/
fileprivate let str_dataName:String = "cell guard after for namebg_t"
fileprivate let str_conversationData:String = "guard view floatsed_tc"

/*: "bg_talk_closed_tc_intimate" :*/
fileprivate let str_toData:[Character] = ["b","g","_","t","a","l","k"]
fileprivate let str_voiceName:String = "_closeerror ting open let"
fileprivate let str_sizeName:String = "_intimateconversation view view icon"

/*: "btn_intimate_close" :*/
fileprivate let str_equalTitle:String = "address case tagbtn_i"
fileprivate let str_startData:String = "ate_closeequal request key"

/*: "Giving gifts 、making calls and sending paid messages can increase intimacy~" :*/
fileprivate let str_shareValue:[UInt8] = [0x5d,0x73,0x6c,0x73,0x74,0x7d,0x3a,0x7d,0x73,0x7c,0x6e,0x69,0x3a,0xf9,0x9a,0x9b,0x77,0x7b,0x71,0x73,0x74,0x7d,0x3a,0x79,0x7b,0x76,0x76,0x69,0x3a,0x7b,0x74,0x7e,0x3a,0x69,0x7f,0x74,0x7e,0x73,0x74,0x7d,0x3a,0x6a,0x7b,0x73,0x7e,0x3a,0x77,0x7f,0x69,0x69,0x7b,0x7d,0x7f,0x69,0x3a,0x79,0x7b,0x74,0x3a,0x73,0x74,0x79,0x68,0x7f,0x7b,0x69,0x7f,0x3a,0x73,0x74,0x6e,0x73,0x77,0x7b,0x79,0x63,0x64]

private func modeLabel(view num: UInt8) -> UInt8 {
    return num ^ 26
}

/*: "1 coin = 1 intimacy" :*/
fileprivate let str_giftData:[Character] = ["1"," ","c","o","i","n"," ","="]
fileprivate let str_beanData:String = " 1 ifirst corner"

/*: "If coins are not consumed within a certain period of time, the intimacy level will be reduced." :*/
fileprivate let str_upValue:[UInt8] = [0xe9,0xc6,0x80,0xc3,0xcf,0xc9,0xce,0xd3,0x80,0xc1,0xd2,0xc5,0x80,0xce,0xcf,0xd4,0x80,0xc3,0xcf,0xce,0xd3,0xd5,0xcd,0xc5,0xc4,0x80,0xd7,0xc9,0xd4,0xc8,0xc9,0xce,0x80,0xc1,0x80,0xc3,0xc5,0xd2,0xd4,0xc1,0xc9,0xce,0x80,0xd0,0xc5,0xd2,0xc9,0xcf,0xc4,0x80,0xcf,0xc6,0x80,0xd4,0xc9,0xcd,0xc5,0x8c,0x80,0xd4,0xc8,0xc5,0x80,0xc9,0xce,0xd4,0xc9,0xcd,0xc1,0xc3,0xd9,0x80,0xcc,0xc5,0xd6,0xc5,0xcc,0x80,0xd7,0xc9,0xcc,0xcc,0x80,0xc2,0xc5,0x80,0xd2,0xc5,0xc4,0xd5,0xc3,0xc5,0xc4,0x8e]

private func everyLast(background num: UInt8) -> UInt8 {
    return num ^ 160
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MusicResultDataSource.swift
//  RootRift
//
//  Created by Charlotte on 2024/7/26.
//

//: import UIKit
import UIKit

/// 亲密度说明弹窗
//: class TalkingIntimateInstructionsPopUpView: UIView {
class MusicResultDataSource: UIView {
    //: var popView: TalkingPopView?
    var popView: MessageScalePopView?
    //: var pushType = ""
    var pushType = ""
    //: var headerData = ["Increase：".localized,"Decrease：".localized]
    var headerData = [(String(str_presentationText) + String(str_modeName)).localized, (String(str_layerData.suffix(9))).localized]

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.vertical()
        //: self.setupSubViewsConstraint()
        self.areaVoice()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_makeSocialText.map{lastTerms(equal: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy

    //: private lazy var contentView: UIImageView = {
    private lazy var contentView: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.image = UIImage.withView(name: "bg_talk_closed_tc")
        imag.image = UIImage.withView(name: (String(str_dataName.suffix(4)) + "alk_clo" + String(str_conversationData.suffix(6))))
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var topView: UIImageView = {
    private lazy var topView: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.image = UIImage.withView(name: "bg_talk_closed_tc_intimate")
        imag.image = UIImage.withView(name: (String(str_toData) + String(str_voiceName.prefix(6)) + "d_tc" + String(str_sizeName.prefix(9))))
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var msgTableView: UITableView = {
    private lazy var msgTableView: UITableView = {
        //: let table = UITableView(frame: .zero, style: .plain)
        let table = UITableView(frame: .zero, style: .plain)
        //: table.backgroundColor = UIColor.init(red: 242/255.0, green: 110/255.0, blue: 184/255.0, alpha: 0.72)
        table.backgroundColor = UIColor(red: 242 / 255.0, green: 110 / 255.0, blue: 184 / 255.0, alpha: 0.72)
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.tableHeaderView = UIView()
        table.tableHeaderView = UIView()
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
        //: table.layer.cornerRadius = 6
        table.layer.cornerRadius = 6
        //: table.register(TalkingIntimateInstructionsPopUpCell.self, forCellReuseIdentifier: TalkingIntimateInstructionsPopUpCell.className())
        table.register(PromotionalMaterialReactiveCompatible.self, forCellReuseIdentifier: PromotionalMaterialReactiveCompatible.className())

        //: return table
        return table
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.withView(name: "btn_intimate_close"), for: .normal)
        btn.setImage(UIImage.withView(name: (String(str_equalTitle.suffix(5)) + "ntim" + String(str_startData.prefix(9)))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(onLabSnap), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingIntimateInstructionsPopUpView {
extension MusicResultDataSource {
    //: @objc private func closeBtnClick() {
    @objc private func onLabSnap() {
        //: dismiss()
        imaginationImage()
    }

    //: func show() {
    func gestureApp() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = MessageScalePopView(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.sharedLive(view: self)
        //: popView?.showInView(view: ListMacroDefine.getWindow())
        popView?.targetView(view: ListMacroDefine.startLoad())
    }

    //: @objc func dismiss() {
    @objc func imaginationImage() {
        //: popView?.dismissView()
        popView?.reject()
        //: popView = nil
        popView = nil
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingIntimateInstructionsPopUpView: UITableViewDelegate, UITableViewDataSource {
extension MusicResultDataSource: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 2
        return 2
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: if section == 0 {
        if section == 0 {
            //: return 2
            return 2
            //: }else {
        } else {
            //: return 1
            return 1
        }
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingIntimateInstructionsPopUpCell.className(), for: indexPath) as! TalkingIntimateInstructionsPopUpCell
        let cell = tableView.dequeueReusableCell(withIdentifier: PromotionalMaterialReactiveCompatible.className(), for: indexPath) as! PromotionalMaterialReactiveCompatible
        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: if indexPath.row == 0 {
            if indexPath.row == 0 {
                //: cell.setCellData(msg: "Giving gifts 、making calls and sending paid messages can increase intimacy~".localized)
                cell.split(msg: String(bytes: str_shareValue.map{modeLabel(view: $0)}, encoding: .utf8)!.localized)
                //: } else {
            } else {
                //: cell.setCellData(msg: "1 coin = 1 intimacy".localized)
                cell.split(msg: (String(str_giftData) + String(str_beanData.prefix(4)) + "ntimacy").localized)
            }
            //: } else {
        } else {
            //: cell.setCellData(msg: "If coins are not consumed within a certain period of time, the intimacy level will be reduced.".localized)
            cell.split(msg: String(bytes: str_upValue.map{everyLast(background: $0)}, encoding: .utf8)!.localized)
        }
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return UITableView.automaticDimension
        return UITableView.automaticDimension
    }

    //: func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, estimatedHeightForRowAt _: IndexPath) -> CGFloat {
        //: return 80
        return 80
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt _: IndexPath) {}

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        //: if section == 0 {
        if section == 0 {
            //: return 32
            return 32
            //: }else {
        } else {
            //: return 36
            return 36
        }
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //: let view = UIView.init(frame: CGRect.init(x: 0, y: 0, width: ScreenWidth, height: 32))
        let view = UIView(frame: CGRect(x: 0, y: 0, width: kLet_scaleName, height: 32))
        //: view.backgroundColor = .clear
        view.backgroundColor = .clear
        //: let titleLab = UILabel()
        let titleLab = UILabel()
        //: titleLab.font = UIFont.showSize(fontSize: 16)
        titleLab.font = UIFont.showSize(fontSize: 16)
        //: titleLab.textColor = .white
        titleLab.textColor = .white
        //: titleLab.backgroundColor = .clear
        titleLab.backgroundColor = .clear
        //: titleLab.text = headerData[section]
        titleLab.text = headerData[section]
        //: view.addSubview(titleLab)
        view.addSubview(titleLab)
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.leading.equalTo(13)
            make.leading.equalTo(13)
            //: make.bottom.equalTo(0)
            make.bottom.equalTo(0)
            //: if section == 0 {
            if section == 0 {
                //: make.top.equalTo(0)
                make.top.equalTo(0)
                //: }else {
            } else {
                //: make.top.equalTo(4)
                make.top.equalTo(4)
            }
        }

        //: return view
        return view
    }
}

// MARK: - Layout

//: extension TalkingIntimateInstructionsPopUpView {
extension MusicResultDataSource {
    // 添加视图
    //: private func setupSubviews() {
    private func vertical() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: self.addSubview(topView)
        self.addSubview(topView)
        //: self.addSubview(closeBtn)
        self.addSubview(closeBtn)
        //: contentView.addSubview(msgTableView)
        contentView.addSubview(msgTableView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func areaVoice() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 301, height: 291))
            make.size.equalTo(CGSize(width: 301, height: 291))
        }

        //: msgTableView.snp.makeConstraints { make in
        msgTableView.snp.makeConstraints { make in
            //: make.top.equalTo(40)
            make.top.equalTo(40)
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.bottom.equalTo(-20)
            make.bottom.equalTo(-20)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
        }

        //: topView.snp.makeConstraints { make in
        topView.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(contentView.snp.top).offset(-30)
            make.top.equalTo(contentView.snp.top).offset(-30)
            //: make.size.equalTo(CGSize.init(width: 107, height: 31))
            make.size.equalTo(CGSize(width: 107, height: 31))
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(contentView.snp.bottom).offset(30)
            make.top.equalTo(contentView.snp.bottom).offset(30)
            //: make.size.equalTo(30)
            make.size.equalTo(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }
}
