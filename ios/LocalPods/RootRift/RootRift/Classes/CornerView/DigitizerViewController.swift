
//: Declare String Begin

/*: "LaunchImage" :*/
fileprivate let str_fillData:[Character] = ["L","a","u","n","c","h"]
fileprivate let str_toContent:[Character] = ["I","m","a","g","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DigitizerViewController.swift
//  RootRift
//
//  Created by DouXiu on 2025/1/16.
//

//: import UIKit
import UIKit

//: class NormalWaitingController: UIViewController {
class DigitizerViewController: UIViewController {
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()

        //: let bgImgV = UIImageView()
        let bgImgV = UIImageView()
        //: bgImgV.image = UIImage(named: "LaunchImage")
        bgImgV.image = UIImage(named: (String(str_fillData) + String(str_toContent)))
        //: view.addSubview(bgImgV)
        view.addSubview(bgImgV)
        //: bgImgV.snp.makeConstraints { make in
        bgImgV.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
