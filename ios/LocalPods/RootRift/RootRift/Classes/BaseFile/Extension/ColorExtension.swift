
//: Declare String Begin

/*: "#8A79F9" :*/
fileprivate let str_voiceData:String = "for succeed content count#8A79F9"

/*: "#E6BD8B" :*/
fileprivate let str_blackTitle:String = "touch self#E6BD8"
fileprivate let str_layerData:String = "b"

/*: "#F5F5F8" :*/
fileprivate let str_tropicText:[Character] = ["#","F","5","F","5","F","8"]

/*: "333333" :*/
fileprivate let str_firstTitle:[Character] = ["3","3","3","3","3","3"]

/*: "FF2348" :*/
fileprivate let str_photoValue:[Character] = ["F","F","2","3","4","8"]

/*: "666666" :*/
fileprivate let str_viewValue:String = "666666"

/*: "999999" :*/
fileprivate let str_intimateName:String = "999999"

/*: "7C74F4" :*/
fileprivate let str_listValue:String = "count regular view false self7C74F4"

/*: "B97AF8" :*/
fileprivate let str_tempContent:[Character] = ["B","9","7","A","F","8"]

/*: "#FF5C9D" :*/
fileprivate let str_equalName:String = "model"
fileprivate let str_managerData:String = "ff5c9d"

/*: "#EEEEEE" :*/
fileprivate let str_topTitle:[Character] = ["#","E","E","E","E"]
fileprivate let str_originName:[Character] = ["E","E"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import Foundation
import Foundation
//: import UIKit
import UIKit

//: extension UIColor {
extension UIColor {
    //: @objc convenience init?(hex: String) {
    @objc convenience init?(hex: String) {
        //: var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        //: hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")
        //: var rgb: UInt64 = 0
        var rgb: UInt64 = 0
        //: var r: CGFloat = 0.0
        var r: CGFloat = 0.0
        //: var g: CGFloat = 0.0
        var g: CGFloat = 0.0
        //: var b: CGFloat = 0.0
        var b: CGFloat = 0.0
        //: var a: CGFloat = 1.0
        var a: CGFloat = 1.0

        //: let length = hexSanitized.count
        let length = hexSanitized.count
        //: guard Scanner(string: hexSanitized).scanHexInt64(&rgb) else { return nil }
        guard Scanner(string: hexSanitized).scanHexInt64(&rgb) else { return nil }

        //: if length == 6 {
        if length == 6 {
            //: r = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
            r = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
            //: g = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
            g = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
            //: b = CGFloat(rgb & 0x0000FF) / 255.0
            b = CGFloat(rgb & 0x0000FF) / 255.0
            //: } else if length == 8 {
        } else if length == 8 {
            //: r = CGFloat((rgb & 0xFF000000) >> 24) / 255.0
            r = CGFloat((rgb & 0xFF00_0000) >> 24) / 255.0
            //: g = CGFloat((rgb & 0x00FF0000) >> 16) / 255.0
            g = CGFloat((rgb & 0x00FF_0000) >> 16) / 255.0
            //: b = CGFloat((rgb & 0x0000FF00) >> 8) / 255.0
            b = CGFloat((rgb & 0x0000_FF00) >> 8) / 255.0
            //: a = CGFloat(rgb & 0x000000FF) / 255.0
            a = CGFloat(rgb & 0x0000_00FF) / 255.0
            //: } else {
        } else {
            //: return nil
            return nil
        }
        //: self.init(red: r, green: g, blue: b, alpha: a)
        self.init(red: r, green: g, blue: b, alpha: a)
    }

    //: class func RGBA(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat, _ a: CGFloat) -> UIColor {
    class func nearComponentRgba(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat, _ a: CGFloat) -> UIColor {
        //: return UIColor.init(red: (r/255.0), green: (g/255.0), blue: (b/255.0), alpha: a)
        return UIColor(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: a)
    }

    //: @objc static func appThemeColor() -> UIColor {
    @objc static func smallFor() -> UIColor {
        //: return UIColor.init(hex: "#8A79F9")!
        return UIColor(hex: (String(str_voiceData.suffix(7))))!
    }

    //: @objc static func userVipColor() -> UIColor {
    @objc static func toUser() -> UIColor {
        //: return UIColor(hex: "#E6BD8B")!
        return UIColor(hex: (String(str_blackTitle.suffix(6)) + str_layerData.uppercased()))!
    }

    //: @objc static func appBgColor() -> UIColor {
    @objc static func modelCard() -> UIColor {
        //: return UIColor.init(hex: "#F5F5F8")!
        return UIColor(hex: (String(str_tropicText)))!
    }

    //: @objc static func appTitleColor() ->UIColor {
    @objc static func ending() -> UIColor {
        //: return UIColor.init(hex: "333333")!
        return UIColor(hex: (String(str_firstTitle)))!
    }

    //: @objc static func msgTipsColor() ->UIColor {
    @objc static func colorationPick() -> UIColor {
        //: return UIColor.init(hex: "FF2348")!
        return UIColor(hex: (String(str_photoValue)))!
    }

    //: @objc static func appValueColor() ->UIColor {
    @objc static func obtrudeUpon() -> UIColor {
        //: return UIColor.init(hex: "666666")!
        return UIColor(hex: (str_viewValue.capitalized))!
    }

    //: @objc static func appValueDetailColor() ->UIColor {
    @objc static func touchColor() -> UIColor {
        //: return UIColor.init(hex: "999999")!
        return UIColor(hex: (str_intimateName.capitalized))!
    }

    //: class func appGradientColor() ->[CGColor] {
    class func memoryImageAwake() -> [CGColor] {
        //: return [UIColor.init(hex: "7C74F4")!.cgColor, UIColor.init(hex: "B97AF8")!.cgColor]
        return [UIColor(hex: (String(str_listValue.suffix(6))))!.cgColor, UIColor(hex: (String(str_tempContent)))!.cgColor]
    }

    //: class func appGradientDisableColor() ->[CGColor] {
    class func commit() -> [CGColor] {
        //: return [UIColor.init(hex: "#FF5C9D")!.withAlphaComponent(0.4).cgColor, UIColor.init(hex: "#FF5C9D")!.withAlphaComponent(0.4).cgColor]
        return [UIColor(hex: (str_equalName.replacingOccurrences(of: "model", with: "#") + str_managerData.uppercased()))!.withAlphaComponent(0.4).cgColor, UIColor(hex: (str_equalName.replacingOccurrences(of: "model", with: "#") + str_managerData.uppercased()))!.withAlphaComponent(0.4).cgColor]
    }

    //: class func separatorLineColor() -> UIColor {
    class func tablePoint() -> UIColor {
        //: return UIColor.init(hex: "#EEEEEE")!
        return UIColor(hex: (String(str_topTitle) + String(str_originName)))!
    }

    //: class func getRandomColor() -> UIColor {
    class func commensurateColor() -> UIColor {
        //: let red = CGFloat(arc4random_uniform(256)) / 255.0
        let red = CGFloat(arc4random_uniform(256)) / 255.0
        //: let green = CGFloat(arc4random_uniform(256)) / 255.0
        let green = CGFloat(arc4random_uniform(256)) / 255.0
        //: let blue = CGFloat(arc4random_uniform(256)) / 255.0
        let blue = CGFloat(arc4random_uniform(256)) / 255.0
        //: return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}
