
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_keyViewName:[UInt8] = [0xb7,0xbc,0xb7,0xc2,0x76,0xb1,0xbd,0xb2,0xb3,0xc0,0x88,0x77,0x6e,0xb6,0xaf,0xc1,0x6e,0xbc,0xbd,0xc2,0x6e,0xb0,0xb3,0xb3,0xbc,0x6e,0xb7,0xbb,0xbe,0xba,0xb3,0xbb,0xb3,0xbc,0xc2,0xb3,0xb2]

fileprivate func iconText(enable num: UInt8) -> UInt8 {
    let value = Int(num) - 78
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Photo greeting" :*/
fileprivate let str_infoText:String = "equal text window self openPhot"
fileprivate let str_withText:String = "make modelo gre"

/*: "BottomCurrentReactiveCompatible" :*/
fileprivate let str_valueText:[Character] = ["T","a","l","k","i","n","g","E","d","i","t","P","h","o"]
fileprivate let str_dataTitle:[Character] = ["t","o","C","e","l","l"]

/*: "ReadReactiveCompatible" :*/
fileprivate let str_scaleName:[Character] = ["T","a","l","k","i","n","g","G","r","e","e","t","P","h","o","t","o","T","a","b","l","e","C","e","l","l"]

/*: "icon_me_greetSetPhoto_select_nor" :*/
fileprivate let str_userTitle:[UInt8] = [0x94,0x9e,0x92,0x93,0xa2,0x90,0x98,0xa2,0x9a,0x8f,0x98,0x98,0x89,0xae,0x98,0x89,0xad,0x95,0x92,0x89,0x92,0xa2,0x8e,0x98,0x91,0x98,0x9e,0x89,0xa2,0x93,0x92,0x8f]

private func titleReturn(state num: UInt8) -> UInt8 {
    return num ^ 253
}

/*: "icon_me_greetSetPhoto_select_pre" :*/
fileprivate let str_pathValue:[UInt8] = [0xe5,0xef,0xe3,0xe2,0xd3,0xe1,0xe9,0xd3,0xeb,0xfe,0xe9,0xe9,0xf8,0xdf,0xe9,0xf8,0xdc,0xe4,0xe3,0xf8,0xe3,0xd3,0xff,0xe9,0xe0,0xe9,0xef,0xf8,0xd3,0xfc,0xfe,0xe9]

/*: "  Burn after reading" :*/
fileprivate let str_ofValue:[Character] = [" "," ","B","u","r","n"," ","a","f","t"]
fileprivate let str_viewWhiteValue:String = "er rwhen cell"

/*: "Finish" :*/
fileprivate let str_sizeTitle:[Character] = ["F","i","n","i","s","h"]

/*: "type" :*/
fileprivate let str_userEnableText:String = "typpath"

/*: "isBurn" :*/
fileprivate let str_birthValue:String = "isBurmodel add raw"
fileprivate let str_playTitle:String = "view"

/*: "list" :*/
fileprivate let str_emptyData:String = "lloadt"

/*: "unlockGift" :*/
fileprivate let str_videoClickContent:[Character] = ["u","n","l","o","c","k","G","i","f","t"]

/*: "giftId" :*/
fileprivate let str_frameName:String = "next try label manager withgiftI"
fileprivate let str_commentManagerContent:String = "D"

/*: "id" :*/
fileprivate let str_uponText:String = "size"

/*: "content" :*/
fileprivate let str_balanceCenterName:[Character] = ["c","o","n","t","e","n","t"]

/*: "status" :*/
fileprivate let str_allViewName:String = "maketatumake"

/*: "photo" :*/
fileprivate let str_assetTitle:[Character] = ["p","h","o","t","o"]

/*: "Delete Successfully" :*/
fileprivate let str_transformContent:String = "Deletecell layer"
fileprivate let str_selectedData:[Character] = ["c","e","s","s","f","u","l","l","y"]

/*: "unlockGiftId" :*/
fileprivate let str_addGiftData:String = "untouchck"
fileprivate let str_fromValue:[Character] = ["G","i","f","t","I","d"]

/*: "Upload a beautiful photo of the greeting" :*/
fileprivate let str_formatData:[UInt8] = [0xf9,0xdc,0xc0,0xc3,0xcd,0xc8,0x8c,0xcd,0x8c,0xce,0xc9,0xcd,0xd9,0xd8,0xc5,0xca,0xd9,0xc0,0x8c,0xdc,0xc4,0xc3,0xd8,0xc3,0x8c,0xc3,0xca,0x8c,0xd8,0xc4,0xc9,0x8c,0xcb,0xde,0xc9,0xc9,0xd8,0xc5,0xc2,0xcb]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  IndoorsRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/10/27.
//

//: import UIKit
import UIKit

//: class TalkingGreetPhotoVC: TalkingBaseViewController {
class IndoorsRecognizerDelegate: MusicViewController {
    //: var PhotoArray: [TalkingUserInfoGalleryModel] = []
    var PhotoArray: [ReadMeasurable] = []
    //: var giftDic = Dictionary<String, Any>()
    var giftDic = [String: Any]()
    //: var seleteGiftId = ""  /// 选中的礼物ID
    var seleteGiftId = "" /// 选中的礼物ID
    //: var isBurn = 0
    var isBurn = 0 // 是否阅后即焚：1=是，0=否

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_keyViewName.map{iconText(enable: $0)}, encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Photo greeting".localized
        self.title = (String(str_infoText.suffix(4)) + String(str_withText.suffix(5)) + "eting").localized
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.modelCard()
        //: setupSubviews()
        awakeTo()
        //: setupSubViewsConstraint()
        state()
        //: bindInteraction()
        global()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy load

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight), style: UITableView.Style.plain)
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: kLet_scaleName, height: kLet_environmentText), style: UITableView.Style.plain)
        //: table.backgroundColor = UIColor.clear
        table.backgroundColor = UIColor.clear
        //: table.register(TalkingEditPhotoCell.self, forCellReuseIdentifier: "TalkingEditPhotoCell")
        table.register(BottomCurrentReactiveCompatible.self, forCellReuseIdentifier: (String(str_valueText) + String(str_dataTitle)))
        //: table.register(TalkingGreetPhotoTableCell.self, forCellReuseIdentifier: "TalkingGreetPhotoTableCell")
        table.register(ReadReactiveCompatible.self, forCellReuseIdentifier: (String(str_scaleName)))
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
        //: return table
        return table
        //: }()
    }()

    //: lazy var seleteBtn: UIButton = {
    lazy var seleteBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.withView(name: "icon_me_greetSetPhoto_select_nor"), for: .normal)
        btn.setImage(UIImage.withView(name: String(bytes: str_userTitle.map{titleReturn(state: $0)}, encoding: .utf8)!), for: .normal)
        //: btn.setImage(UIImage.withView(name: "icon_me_greetSetPhoto_select_pre"), for: .selected)
        btn.setImage(UIImage.withView(name: String(bytes: str_pathValue.map{$0^140}, encoding: .utf8)!), for: .selected)
        //: btn.setTitle("  Burn after reading".localized, for: .normal)
        btn.setTitle((String(str_ofValue) + String(str_viewWhiteValue.prefix(4)) + "eading").localized, for: .normal)
        //: btn.setTitleColor(UIColor.appTitleColor(), for: .normal)
        btn.setTitleColor(UIColor.ending(), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.conversationSize(type: .Medium, fontSize: 16)
        //: btn.addTarget(self, action: #selector(seleteBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(destroySize), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var finishBtn: UIButton = {
    lazy var finishBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setTitle("Finish".localized, for: .normal)
        btn.setTitle((String(str_sizeTitle)).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.conversationSize(type: .Medium, fontSize: 17)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.distancePlay(colors: UIColor.memoryImageAwake(), size: CGSize(width: kLet_scaleName - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(now), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Request & 数据处理

//: extension TalkingGreetPhotoVC {
extension IndoorsRecognizerDelegate {
    //: func getPhotoList(isFreshAll: Bool) {
    func stop(isFreshAll: Bool) {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["type"] = 4
        dict[(str_userEnableText.replacingOccurrences(of: "path", with: "e"))] = 4
        //: ProgressHUD.show()
        AtAdView.sizeUp()
        //: TalkingMeRequestTool.req_GetGreetList(params: dict) {[weak self] succeed, result, errorModel in
        AnteriorNarisRequestTool.table(params: dict) { [weak self] succeed, result, _ in
            //: ProgressHUD.dismiss()
            AtAdView.toAction()
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if succeed {
            if succeed {
                //: guard let dict = result as? Dictionary<String, Any> else {
                guard let dict = result as? [String: Any] else {
                    //: return
                    return
                }
                //: self.PhotoArray.removeAll()
                self.PhotoArray.removeAll()
                //: self.isBurn = dict["isBurn"] as? Int ?? 0
                self.isBurn = dict[(String(str_birthValue.prefix(5)) + str_playTitle.replacingOccurrences(of: "view", with: "n"))] as? Int ?? 0
                //: self.seleteBtn.isSelected = self.isBurn > 0
                self.seleteBtn.isSelected = self.isBurn > 0
                //: let array: Array =  dict["list"] as? Array<Any> ?? Array.init()
                let array: Array = dict[(str_emptyData.replacingOccurrences(of: "load", with: "is"))] as? [Any] ?? Array()
                if self.seleteGiftId.isEmpty {
                    let tempGiftDic = dict["unlockGift"] as? [String: Any] ?? Dictionary.init()
                    self.seleteGiftId = tempGiftDic["giftId"] as? String ?? ""
                    self.giftDic = tempGiftDic
                }

                //: for i in 0..<array.count {
                for i in 0 ..< array.count {
                    //: let dic  = array[i] as? Dictionary<String, Any>
                    let dic = array[i] as? [String: Any]
                    //: var model = TalkingUserInfoGalleryModel.init()
                    var model = ReadMeasurable()
                    //: model.uid = dic?["id"] as? String ?? ""
                    model.uid = dic?["id"] as? String ?? ""
                    //: model.url = dic?["content"] as? String ?? ""
                    model.url = dic?[(String(str_balanceCenterName))] as? String ?? ""
                    //: model.status = dic?["status"] as? Int ?? 0
                    model.status = dic?[(str_allViewName.replacingOccurrences(of: "make", with: "s"))] as? Int ?? 0
                    //: model.isLocal = false
                    model.isLocal = false
                    //: self.PhotoArray.append(model)
                    self.PhotoArray.append(model)
                }
                //: if isFreshAll {
                if isFreshAll {
                    //: self.MainTable.reloadData()
                    self.MainTable.reloadData()
                    //: }else {
                } else {
                    /// 防止刷新全部，把修改的礼物信息还原
                    //: self.MainTable.reloadSection(0, with: .none)
                    self.MainTable.reloadSection(0, with: .none)
                }
                //: self.examinefinishBtnStatus()
                self.top()
            }
        }
    }
}

// MARK: - Event

//: extension TalkingGreetPhotoVC {
extension IndoorsRecognizerDelegate {
    //: @objc func finishBtnClick() {
    @objc func now() {
        //: self.saveInfo()
        self.window()
    }

    //: @objc func seleteBtnClick() {
    @objc func destroySize() {
        //: seleteBtn.isSelected = !seleteBtn.isSelected
        seleteBtn.isSelected = !seleteBtn.isSelected
        //: examinefinishBtnStatus()
        top()
    }

    //: func examinefinishBtnStatus() {
    func top() {
        //: if  self.PhotoArray.count > 0 && seleteGiftId.count > 0 {
        if self.PhotoArray.count > 0, seleteGiftId.count > 0 {
            //: self.finishBtn.isEnabled = true
            self.finishBtn.isEnabled = true
            //: }else {
        } else {
            //: self.finishBtn.isEnabled = false
            self.finishBtn.isEnabled = false
        }
    }
}

// MARK: - WhiteThen

//: extension TalkingGreetPhotoVC: EditPhotoDelegate {
extension IndoorsRecognizerDelegate: WhiteThen {
    /// 添加本地图片
    //: func addPhoto(_ icon: [UIImage]) {
    func withPhoto(_ icon: [UIImage]) {
        //: uploadPhoto(icon)
        visualization(icon)
    }

    /// 删除本地相册选择的图片
    //: func deletePhoto(_ icon: UIImage) {
    func snapshot(_: UIImage) {}

    /// 删除后台相册的图片
    //: func deletePhotoWithUid(_ iconUid: String) {
    func off(_ iconUid: String) {
        //: var seleteIndex = -1
        var seleteIndex = -1
        //: for i in 0..<PhotoArray.count {
        for i in 0 ..< PhotoArray.count {
            //: if iconUid == PhotoArray[i].uid {
            if iconUid == PhotoArray[i].uid {
                //: seleteIndex =  i
                seleteIndex = i
            }
        }
        //: if seleteIndex>=0 && seleteIndex<PhotoArray.count {
        if seleteIndex >= 0 && seleteIndex < PhotoArray.count {
            //: deletePhoto(index: seleteIndex)
            touch(index: seleteIndex)
        }
    }

    /// 上传相册
    //: func uploadPhoto(_ icon: [UIImage]) {
    func visualization(_ icon: [UIImage]) {
        //: ProgressHUD.show()
        AtAdView.sizeUp()
        //: DispatchQueue.global().async {
        DispatchQueue.global().async {
            //: let sema = DispatchSemaphore(value: 0)
            let sema = DispatchSemaphore(value: 0)

            //: for i in 0..<icon.count {
            for i in 0 ..< icon.count {
                //: let resultData: NSData = icon[i].compressedImageData()! as NSData
                let resultData: NSData = icon[i].image()! as NSData
                //: var dict = Dictionary<String, Any>()
                var dict = [String: Any]()
                //: dict["type"] = 4
                dict[(str_userEnableText.replacingOccurrences(of: "path", with: "e"))] = 4
                //: dict["photo"] = resultData
                dict[(String(str_assetTitle))] = resultData

                //: TalkingMeRequestTool.req_UploadGreetAdd(params: dict) { succeed, result, errorModel in
                AnteriorNarisRequestTool.makeEqual(params: dict) { succeed, _, _ in

                    //: sema.signal()
                    sema.signal()
                    //: if succeed {
                    if succeed {
                        //: }else {
                    } else {
                        //: ProgressHUD.dismiss()
                        AtAdView.toAction()
                    }
                }
                //: sema.wait()
                sema.wait()
            }
            //: DispatchQueue.main.asyncAfter(deadline: .now()+1.0) {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                //: self.getPhotoList(isFreshAll: false)
                self.stop(isFreshAll: false)
                //: self.examinefinishBtnStatus()
                self.top()
            }
        }
    }

    /// 删除相册
    //: func deletePhoto(index: Int) {
    func touch(index: Int) {
        //: let model: TalkingUserInfoGalleryModel = self.PhotoArray[index]
        let model: ReadMeasurable = self.PhotoArray[index]
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["id"] = model.uid
        dict["id"] = model.uid
        //: ProgressHUD.show()
        AtAdView.sizeUp()
        //: TalkingMeRequestTool.req_DeleteAudio(params: dict) { succeed, result, errorModel in
        AnteriorNarisRequestTool.rankCompletion(params: dict) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            AtAdView.toAction()
            //: if succeed {
            if succeed {
                //: self.PhotoArray.remove(at: index)
                self.PhotoArray.remove(at: index)
                //: self.func__showStatusBarSuccessMsg(showMsg: "Delete Successfully".localized)
                self.sizeExecuteMsg(showMsg: (String(str_transformContent.prefix(6)) + " Suc" + String(str_selectedData)).localized)
                //: self.examinefinishBtnStatus()
                self.top()
            }
            //: self.MainTable.reloadSection(0, with: .none)
            self.MainTable.reloadSection(0, with: .none)
        }
    }

    /// 修改信息
    //: func saveInfo() {
    func window() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["unlockGiftId"] = seleteGiftId
        dict[(str_addGiftData.replacingOccurrences(of: "touch", with: "lo") + String(str_fromValue))] = seleteGiftId
        //: dict["isBurn"] = seleteBtn.isSelected ? 1:0
        dict[(String(str_birthValue.prefix(5)) + str_playTitle.replacingOccurrences(of: "view", with: "n"))] = seleteBtn.isSelected ? 1 : 0
        //: TalkingMeRequestTool.req_UploadGreetExtraSetting(params: dict) { succeed, result, errorModel in
        AnteriorNarisRequestTool.witness(params: dict) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            AtAdView.toAction()
            //: if succeed {
            if succeed {
                //: self.navigationController?.popViewController(animated: true)
                self.navigationController?.popViewController(animated: true)
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingGreetPhotoVC: UITableViewDelegate, UITableViewDataSource {
extension IndoorsRecognizerDelegate: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 2
        return 2
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: let sizewh = Int((ScreenWidth-30-12*2-9*2)/3)
            let sizewh = Int((kLet_scaleName - 30 - 12 * 2 - 9 * 2) / 3)
            //: let Y = 46+sizewh*3+18
            let Y = 46 + sizewh * 3 + 18
            //: let cellheiht = Y+12
            let cellheiht = Y + 12
            //: return CGFloat(cellheiht)
            return CGFloat(cellheiht)
            //: }else {
        } else {
            //: return 140
            return 140
        }
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection _: Int) -> CGFloat {
        //: return 15
        return 15
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: let identifier = "TalkingEditPhotoCell"
            let identifier = (String(str_valueText) + String(str_dataTitle))
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingEditPhotoCell
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? BottomCurrentReactiveCompatible
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingEditPhotoCell(style: .default, reuseIdentifier: identifier)
                cell = BottomCurrentReactiveCompatible(style: .default, reuseIdentifier: identifier)
            }
            //: cell?.setTips(str: "Upload a beautiful photo of the greeting".localized)
            cell?.setSize(str: String(bytes: str_formatData.map{$0^172}, encoding: .utf8)!.localized)
            //: cell?.backBottomOffer = 0
            cell?.backBottomOffer = 0
            //: if PhotoArray.count>0 {
            if PhotoArray.count > 0 {
                //: cell?.setPhoto(selete: PhotoArray)
                cell?.addSelete(selete: PhotoArray)
                //: }else {
            } else {
                //: cell?.resetPhoto()
                cell?.photo()
            }
            //: cell?.delegate = self
            cell?.delegate = self
            //: return cell!
            return cell!
            //: }else {
        } else {
            //: let identifier = "TalkingGreetPhotoTableCell"
            let identifier = (String(str_scaleName))
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingGreetPhotoTableCell
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? ReadReactiveCompatible
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingGreetPhotoTableCell(style: .default, reuseIdentifier: identifier)
                cell = ReadReactiveCompatible(style: .default, reuseIdentifier: identifier)
            }
            //: if self.giftDic.keys.isEmpty == false {
            if self.giftDic.keys.isEmpty == false {
                //: cell?.setGiftMsgLab(dic: self.giftDic)
                cell?.makeImage(dic: self.giftDic)
            }
            //: cell?.seleteGiftBlock = { [weak self] giftId in
            cell?.seleteGiftBlock = { [weak self] giftId in
                //: guard let self = self else {
                guard let self = self else {
                    //: return
                    return
                }
                //: self.seleteGiftId = giftId
                self.seleteGiftId = giftId
                //: self.examinefinishBtnStatus()
                self.top()
            }
            //: return cell!
            return cell!
        }
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection _: Int) -> UIView? {
        //: return UIView.init()
        return UIView()
    }

    //: func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForFooterInSection _: Int) -> CGFloat {
        //: return 0.01
        return 0.01
    }
}

// MARK: - Layout

//: extension TalkingGreetPhotoVC {
extension IndoorsRecognizerDelegate {
    /// 添加视图
    //: private func setupSubviews() {
    private func awakeTo() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
        //: self.view.addSubview(seleteBtn)
        self.view.addSubview(seleteBtn)
        //: self.view.addSubview(finishBtn)
        self.view.addSubview(finishBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func state() {
        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.bottom.equalToSuperview().offset(-35)
            make.bottom.equalToSuperview().offset(-35)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
            //: make.bottom.equalTo(finishBtn.snp.top).offset(-68)
            make.bottom.equalTo(finishBtn.snp.top).offset(-68)
        }
        //: seleteBtn.snp.makeConstraints { make in
        seleteBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(MainTable.snp.bottom).offset(21)
            make.bottom.equalTo(MainTable.snp.bottom).offset(21)
            //: make.leading.equalTo(18)
            make.leading.equalTo(18)
        }
    }

    /// 事件绑定
    //: private func bindInteraction() {
    private func global() {
        //: getPhotoList(isFreshAll: true)
        stop(isFreshAll: true)
    }
}
