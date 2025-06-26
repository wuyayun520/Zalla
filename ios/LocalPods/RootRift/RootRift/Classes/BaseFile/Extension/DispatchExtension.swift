
//: Declare String Begin

/*: "DispatchQueueToken_StatusBarInit" :*/
fileprivate let str_labValue:[UInt8] = [0xa6,0xcb,0xd5,0xd2,0xc3,0xd6,0xc5,0xca,0xb3,0xd7,0xc7,0xd7,0xc7,0xb6,0xd1,0xcd,0xc7,0xd0,0xc1,0xb5,0xd6,0xc3,0xd6,0xd7,0xd5,0xa4,0xc3,0xd4,0xab,0xd0,0xcb,0xd6]

fileprivate func registerPhoto(table num: UInt8) -> UInt8 {
    let value = Int(num) + 158
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
//  DispatchExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/1.
//

//: import UIKit
import UIKit

//: let DispatchQueueToken_StatusBarInit = "DispatchQueueToken_StatusBarInit"  //状态栏初始化
let kLet_showSenseValue = String(bytes: str_labValue.map{registerPhoto(table: $0)}, encoding: .utf8)! // 状态栏初始化

//: extension DispatchQueue {
extension DispatchQueue {
    //: private static var _onceTracket = [String]()
    private static var _onceTracket = [String]()
    //: class func once(token:String , block:() -> Void) {
    class func viewBlock(token: String, block: () -> Void) {
        //: if _onceTracket.contains(token) {
        if _onceTracket.contains(token) {
            //: return
            return
        }
        //: _onceTracket.append(token)
        _onceTracket.append(token)
        //: block()
        block()
    }
}
