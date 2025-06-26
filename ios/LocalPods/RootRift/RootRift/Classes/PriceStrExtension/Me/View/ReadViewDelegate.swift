
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_pageTitle:[UInt8] = [0x48,0x4f,0x48,0x55,0x9,0x42,0x4e,0x45,0x44,0x53,0x1b,0x8,0x1,0x49,0x40,0x52,0x1,0x4f,0x4e,0x55,0x1,0x43,0x44,0x44,0x4f,0x1,0x48,0x4c,0x51,0x4d,0x44,0x4c,0x44,0x4f,0x55,0x44,0x45]

private func streetSmart(add num: UInt8) -> UInt8 {
    return num ^ 33
}

/*: "icon_me_wallet" :*/
fileprivate let str_buttonTitle:[Character] = ["i","c","o","n","_","m","e","_","w","a","l","l","e","t"]

/*: "icon_me_dgc" :*/
fileprivate let str_crushTitle:String = "cancelc"
fileprivate let str_redName:String = "layer if app var resulton_me"

/*: "icon_me_friends" :*/
fileprivate let str_selectedData:[Character] = ["i","c","o","n","_","m","e","_","f","r","i","e","n","d"]
fileprivate let str_viewValue:[Character] = ["s"]

/*: "xicon_me_posts" :*/
fileprivate let str_userTouchViewValue:[Character] = ["x","i","c","o","n","_","m","e","_","p","o","s","t","s"]

/*: "icon_me_Service" :*/
fileprivate let str_rangeName:String = "lab s hidden info messageicon_m"
fileprivate let str_pageText:[Character] = ["e","_","S","e","r","v","i","c","e"]

/*: "icon_me_game" :*/
fileprivate let str_infoValue:[Character] = ["i","c","o","n","_","m","e","_","g","a","m","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ReadViewDelegate.swift
//  AbroadTalking
//
//  Created by young on 2023/4/25.
//

//: import UIKit
import UIKit

//: class TalkingMeThreeColumnsCell: UITableViewCell {
class ReadViewDelegate: UITableViewCell {
    //: private var tupleData = [(CenterItemType, String)]()
    private var tupleData = [(ViewContiguousBytes, String)]()
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.selectionStyle = .none
        self.selectionStyle = .none

        //: setupSubviews()
        informationThroughSubviews()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_pageTitle.map{streetSmart(add: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var collectionView: UICollectionView = {
    private lazy var collectionView: UICollectionView = {
        //: let layout = UICollectionViewFlowLayout()
        let layout = UICollectionViewFlowLayout()
        //: layout.minimumLineSpacing = 0
        layout.minimumLineSpacing = 0
        //: layout.minimumInteritemSpacing = 0
        layout.minimumInteritemSpacing = 0
        //: layout.scrollDirection = .vertical
        layout.scrollDirection = .vertical
        //: let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        //: collectionView.backgroundColor = .white
        collectionView.backgroundColor = .white
        //: collectionView.delegate = self
        collectionView.delegate = self
        //: collectionView.dataSource = self
        collectionView.dataSource = self
        //: collectionView.showsHorizontalScrollIndicator = false
        collectionView.showsHorizontalScrollIndicator = false
        //: collectionView.layer.cornerRadius = 6
        collectionView.layer.cornerRadius = 6
        //: collectionView.layer.masksToBounds = true
        collectionView.layer.masksToBounds = true
        //: collectionView.register(TalkingMeItemCell.self, forCellWithReuseIdentifier: TalkingMeItemCell.className())
        collectionView.register(IndexReusableView.self, forCellWithReuseIdentifier: IndexReusableView.className())
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: collectionView.contentInsetAdjustmentBehavior = .never
            collectionView.contentInsetAdjustmentBehavior = .never
        }
        //: return collectionView
        return collectionView
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMeThreeColumnsCell {
extension ReadViewDelegate {
    //: func setViewData() {
    func notEventChannel() {
        //: if WatercourseThen.share.appStatus == AppSkinStatus.normal.rawValue {
        if WatercourseThen.share.appStatus == PublishWidthTotal.normal.rawValue { // 默认模式
            //: if WatercourseThen.share.loginUserMode.sex == Gender.female.rawValue {
            if WatercourseThen.share.loginUserMode.sex == PushDownStackScalarLiteral.female.rawValue { // 女性
                //: tupleData = [(.My_Wallet, "icon_me_wallet"),
                tupleData = [(.My_Wallet, (String(str_buttonTitle))),
                             //: (.Daily_Gold_Coins, "icon_me_dgc"),
                             (.Daily_Gold_Coins, (str_crushTitle.replacingOccurrences(of: "cancel", with: "i") + String(str_redName.suffix(5)) + "_dgc")),
                             //: (.Invite_Friends, "icon_me_friends"),
                             (.Invite_Friends, (String(str_selectedData) + String(str_viewValue))),
                             //: (.My_Posts, "xicon_me_posts"),
                             (.My_Posts, (String(str_userTouchViewValue))),
                             //: (.My_Assistant, "icon_me_Service")]
                             (.My_Assistant, (String(str_rangeName.suffix(6)) + String(str_pageText)))]

                //: } else {
            } else {
                //: tupleData = [(.Daily_Gold_Coins, "icon_me_dgc"),
                tupleData = [(.Daily_Gold_Coins, (str_crushTitle.replacingOccurrences(of: "cancel", with: "i") + String(str_redName.suffix(5)) + "_dgc")),
                             //: (.Invite_Friends, "icon_me_friends"),
                             (.Invite_Friends, (String(str_selectedData) + String(str_viewValue))),
                             //: (.My_Posts, "xicon_me_posts"),
                             (.My_Posts, (String(str_userTouchViewValue))),
                             //: (.My_Assistant, "icon_me_Service")]
                             (.My_Assistant, (String(str_rangeName.suffix(6)) + String(str_pageText)))]
            }
            // 游戏入口
            //: if WatercourseThen.share.appUserConfigMode.gameShowBit == 1 ||
            if WatercourseThen.share.appUserConfigMode.gameShowBit == 1 ||
                //: WatercourseThen.share.appUserConfigMode.gameShowBit == 3 {
                WatercourseThen.share.appUserConfigMode.gameShowBit == 3
            {
                //: tupleData.append((.My_Slots, "icon_me_game"))
                tupleData.append((.My_Slots, (String(str_infoValue))))
            }

            //: } else {
        } else { // 审核模式
            //: tupleData = [(.Daily_Gold_Coins, "icon_me_dgc"),
            tupleData = [(.Daily_Gold_Coins, (str_crushTitle.replacingOccurrences(of: "cancel", with: "i") + String(str_redName.suffix(5)) + "_dgc")),
                         //: (.My_Posts, "xicon_me_posts"),
                         (.My_Posts, (String(str_userTouchViewValue))),
                         //: (.My_Assistant, "icon_me_Service")]
                         (.My_Assistant, (String(str_rangeName.suffix(6)) + String(str_pageText)))]
        }

        //: self.collectionView.reloadData()
        self.collectionView.reloadData()
        //: setupSubViewsConstraint()
        wheeledVehicle()
    }
}

// MARK: - Delegate

//: extension TalkingMeThreeColumnsCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
extension ReadViewDelegate: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    //: func numberOfSections(in collectionView: UICollectionView) -> Int {
    func numberOfSections(in _: UICollectionView) -> Int {
        //: return 1
        return 1
    }

    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        //: return self.tupleData.count
        return self.tupleData.count
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TalkingMeItemCell.className(), for: indexPath) as! TalkingMeItemCell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: IndexReusableView.className(), for: indexPath) as! IndexReusableView
        //: cell.refreshItem(tupleData[indexPath.row])
        cell.withMake(tupleData[indexPath.row])
        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    func collectionView(_: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //: let data = tupleData[indexPath.row]
        let data = tupleData[indexPath.row]
        //: switch data.0 {
        switch data.0 {
        //: case .My_Wallet:
        case .My_Wallet:
            //: IndoorsPushManager.share.func__pushToWebVC(webViewType: .RechargeFullPage)
            IndoorsPushManager.share.pushType(webViewType: .RechargeFullPage)

        //: case .Daily_Gold_Coins:
        case .Daily_Gold_Coins:
            //: IndoorsPushManager.share.func__pushToSubscribePageWebVC()
            IndoorsPushManager.share.timeText()

        //: case .Invite_Friends:
        case .Invite_Friends:
            //: IndoorsPushManager.share.func__pushToWebVC(webViewType: .InviteFriends)
            IndoorsPushManager.share.pushType(webViewType: .InviteFriends)

        //: case .My_Posts:
        case .My_Posts:
            //: let vc = TalkingUserMomentVC.init(uid: WatercourseThen.share.loginUserMode.userID)
            let vc = ScaleDataSource(uid: WatercourseThen.share.loginUserMode.userID)
            //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
            self.toController()?.navigationController?.pushViewController(vc, animated: true)

        //: case .My_Assistant:
        case .My_Assistant:
            //: IndoorsPushManager.share.func__pushToWebVC(webViewType: .FAQ)
            IndoorsPushManager.share.pushType(webViewType: .FAQ)

        //: case .My_Slots:
        case .My_Slots:
            //: let vc = TalkingGameListViewController()
            let vc = ExtentDataSource()
            //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
            self.toController()?.navigationController?.pushViewController(vc, animated: true)

        //: default: break
        default: break
        }
    }

    // MARK: - UICollectionViewDelegateFlowLayout

    //: func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, sizeForItemAt _: IndexPath) -> CGSize {
        //: return CGSize(width: (ScreenWidth-30)/3, height: 84.0)
        return CGSize(width: (kLet_scaleName - 30) / 3, height: 84.0)
    }
}

// MARK: - Layout

//: extension TalkingMeThreeColumnsCell {
extension ReadViewDelegate {
    /// 添加视图
    //: private func setupSubviews() {
    private func informationThroughSubviews() {
        //: self.contentView.addSubview(collectionView)
        self.contentView.addSubview(collectionView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func wheeledVehicle() {
        //: collectionView.snp.makeConstraints { make in
        collectionView.snp.makeConstraints { make in
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.leading.equalToSuperview().offset(15)
            make.leading.equalToSuperview().offset(15)
            //: make.trailing.equalToSuperview().offset(-15)
            make.trailing.equalToSuperview().offset(-15)
            //: let height = ceil(Double(self.tupleData.count)/Double(3))*84+15
            let height = ceil(Double(self.tupleData.count) / Double(3)) * 84 + 15
            //: make.height.equalTo(height)
            make.height.equalTo(height)
            //: make.bottom.equalToSuperview().offset(-12)
            make.bottom.equalToSuperview().offset(-12)
        }
    }
}

// MARK: - IndexReusableView

//: class TalkingMeItemCell: UICollectionViewCell {
class IndexReusableView: UICollectionViewCell {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_pageTitle.map{streetSmart(add: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .white
        self.backgroundColor = .white
        //: self.contentView.addSubview(icon)
        self.contentView.addSubview(icon)
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(18)
            make.top.equalToSuperview().offset(18)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 38, height: 38))
            make.size.equalTo(CGSize(width: 38, height: 38))
        }

        //: self.contentView.addSubview(nameLab)
        self.contentView.addSubview(nameLab)
        //: nameLab.snp.makeConstraints { make in
        nameLab.snp.makeConstraints { make in
            //: make.top.equalTo(icon.snp.bottom).offset(8)
            make.top.equalTo(icon.snp.bottom).offset(8)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalToSuperview()
            make.width.equalToSuperview()
        }
    }

    /// 刷新
    //: func refreshItem(_ data: (CenterItemType, String)) {
    func withMake(_ data: (ViewContiguousBytes, String)) {
        //: nameLab.text = data.0.rawValue.localized
        nameLab.text = data.0.rawValue.localized
        //: icon.image = UIImage.withView(name: data.1)
        icon.image = UIImage.withView(name: data.1)
    }

    // MARK: - Lazy Laod

    //: private lazy var icon: UIImageView = {
    private lazy var icon: UIImageView = {
        //: let icon = UIImageView()
        let icon = UIImageView()
        //: icon.contentMode = .scaleAspectFill
        icon.contentMode = .scaleAspectFill
        //: return icon
        return icon
        //: }()
    }()

    //: private lazy var nameLab: UILabel = {
    private lazy var nameLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.ending()
        //: lab.font = .pingfangFont(type: .Regular, fontSize: 14)
        lab.font = .conversationSize(type: .Regular, fontSize: 14)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()
}
