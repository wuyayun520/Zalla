
//: Declare String Begin

/*: "Face verification" :*/
fileprivate let str_rawContent:[Character] = ["F","a","c","e"," ","v","e","r"]
fileprivate let str_modeData:String = "tableica"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CellThen.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingVerificationExampleVC: TalkingBaseViewController {
class CellThen: MusicViewController {
    //: var isRegisterPush = false
    var isRegisterPush = false /// 注册页进行真人认证
    //: typealias IconActionBlock = (_ img: UIImage) -> Void
    typealias IconActionBlock = (_ img: UIImage) -> Void
    //: var iconActionBlock: IconActionBlock?
    var iconActionBlock: IconActionBlock?

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: title = "Face verification".localized
        title = (String(str_rawContent) + str_modeData.replacingOccurrences(of: "table", with: "if") + "tion").localized
        //: self.createUI()
        self.cameraFor()
        //: self.createUIConstraint()
        self.record()
    }

    // MARK: - Lazy load

    //: lazy var mainView: TalkingVerificationExampleView = {
    lazy var mainView: WriteLostExampleView = {
        //: let view = TalkingVerificationExampleView()
        let view = WriteLostExampleView()
        //: return view
        return view
        //: }()
    }()
}

// MARK: - UIImagePickerControllerDelegate, UINavigationControllerDelegate

//: extension TalkingVerificationExampleVC: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
extension CellThen: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    //: private func takePhoto() {
    private func failure() {
        //: let isAvailable = UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.camera)
        let isAvailable = UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.camera)
        //: let isFrontAvailable = UIImagePickerController.isCameraDeviceAvailable(UIImagePickerController.CameraDevice.front)
        let isFrontAvailable = UIImagePickerController.isCameraDeviceAvailable(UIImagePickerController.CameraDevice.front)

        //: let imagePicker = UIImagePickerController()
        let imagePicker = UIImagePickerController()
        //: if isAvailable {
        if isAvailable {
            //: imagePicker.sourceType = .camera
            imagePicker.sourceType = .camera
            //: } else {
        } else {
            //: imagePicker.sourceType = .photoLibrary
            imagePicker.sourceType = .photoLibrary
        }
        //: if isFrontAvailable {
        if isFrontAvailable {
            //: imagePicker.cameraDevice = .front
            imagePicker.cameraDevice = .front
        }
        //: imagePicker.delegate = self
        imagePicker.delegate = self
        //: present(imagePicker, animated: true, completion: {})
        present(imagePicker, animated: true, completion: {})
    }

    //: func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
    func imagePickerController(_: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
        //: self.dismiss(animated: true) {
        self.dismiss(animated: true) {
            //: if let photo = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            if let photo = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
                //: if self.isRegisterPush {
                if self.isRegisterPush {
                    //: self.iconActionBlock?(photo)
                    self.iconActionBlock?(photo)
                    //: self.navigationController?.popViewController(animated: true)
                    self.navigationController?.popViewController(animated: true)
                    //: } else {
                } else {
                    //: let vc = TalkingVerificationTakePhotoVC.init(photoImage: photo)
                    let vc = LikeRecognizerDelegate(photoImage: photo)
                    //: self.navigationController?.pushViewController(vc, animated: true)
                    self.navigationController?.pushViewController(vc, animated: true)
                }
            }
        }
    }

    //: func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
    func imagePickerControllerDidCancel(_: UIImagePickerController) {
        //: self.dismiss(animated: true, completion: nil)
        self.dismiss(animated: true, completion: nil)
    }
}

// MARK: - UI

//: extension TalkingVerificationExampleVC {
extension CellThen {
    //: func createUI() {
    func cameraFor() {
        //: view.addSubview(mainView)
        view.addSubview(mainView)
        //: mainView.btnClickBlock = { [weak self] () -> Void in
        mainView.btnClickBlock = { [weak self] () in
            //: guard let self = self else { return }
            guard let self = self else { return }
            // 拍照
            //: TalkingPermissionTool.func__openCaptureDeviceServiceWithBlock(true) { isOpen in
            ColorPermissionTool.tincture(true) { isOpen in
                //: guard isOpen == true else { return }
                guard isOpen == true else { return }
                //: self.takePhoto()
                self.failure()
            }
        }
    }

    //: func createUIConstraint() {
    func record() {
        //: mainView.snp.makeConstraints { make in
        mainView.snp.makeConstraints { make in
            //: make.leading.trailing.top.bottom.equalTo(0)
            make.leading.trailing.top.bottom.equalTo(0)
        }
    }
}
