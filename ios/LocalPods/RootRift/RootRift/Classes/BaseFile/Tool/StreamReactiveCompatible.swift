
//: Declare String Begin

/*: "AppResourcesVersionKey" :*/
fileprivate let str_coverName:String = "AppResright title self"
fileprivate let str_addName:String = "index range let buttonesVer"
fileprivate let str_removeValue:[Character] = ["s","i","o","n","K","e","y"]

/*: ".zip" :*/
fileprivate let str_replyText:[Character] = [".","z","i","p"]

/*: "pic" :*/
fileprivate let str_sharedText:String = "pilist"

/*: "nor" :*/
fileprivate let str_succeedContent:[Character] = ["n","o","r"]

/*: "svga" :*/
fileprivate let str_viewContent:[Character] = ["s","v","g","a"]

/*: "mp3" :*/
fileprivate let str_randomText:String = "onp3"

/*: "model" :*/
fileprivate let str_partyValue:[Character] = ["m","o","d","e","l"]

/*: "@2x.png" :*/
fileprivate let str_sizeName:String = "at"
fileprivate let str_itemData:[Character] = ["2","x",".","p","n","g"]

/*: "png" :*/
fileprivate let str_managerText:[Character] = ["p","n","g"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StreamReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/4/27.
//

//: import Foundation
import Foundation

/// 资源版本号
//: private let AppResourcesVersionKey = "AppResourcesVersionKey"
private let kLet_displayValue = (String(str_coverName.prefix(6)) + "ourc" + String(str_addName.suffix(5)) + String(str_removeValue))

//: enum SVGAType: String {
enum ColorKeyTextProtocol: String {
    //: case Login_Main_BG              = "login_main_bg"
    case Login_Main_BG = "login_main_bg"
    //: case Chat_Record_Yellow         = "chat_record_yellow"
    case Chat_Record_Yellow = "chat_record_yellow"
    //: case Chat_Record_Red            = "chat_record_red"
    case Chat_Record_Red = "chat_record_red"
    //: case Greet_Corrugated_Yellow    = "greet_corrugated_yellow"
    case Greet_Corrugated_Yellow = "greet_corrugated_yellow"
    //: case Greet_Corrugated_Red       = "greet_corrugated_red"
    case Greet_Corrugated_Red = "greet_corrugated_red"
    //: case Crush_Detail               = "crush2_detail"
    case Crush_Detail = "crush2_detail"
    //: case Play_Audio_Wave            = "play_audio_wave"
    case Play_Audio_Wave = "play_audio_wave"
    //: case Home_match_box             = "home_match_box"
    case Home_match_box = "home_match_box"

    //: case Quick_Video_Entry          = "quick_video_entry"
    case Quick_Video_Entry = "quick_video_entry"
    //: case Quick_Video_BG             = "quick_video_bg"
    case Quick_Video_BG = "quick_video_bg"
    //: case Invite_Video_BG            = "invite_video_bg"
    case Invite_Video_BG = "invite_video_bg"
    //: case Invite_Video_Calling       = "inviteVideo_calling"
    case Invite_Video_Calling = "inviteVideo_calling"
    //: case Invite_Video_Matching      = "inviteVideo_matching"
    case Invite_Video_Matching = "inviteVideo_matching"
    //: case Invite_Video_MaleAccept    = "inviteVideo_male_accept"
    case Invite_Video_MaleAccept = "inviteVideo_male_accept"
    //: case Club_guidePage             = "club_guidePage"
    case Club_guidePage = "club_guidePage"
    //: case VideoCall_femalePoint      = "videoCall_femalePoint"
    case VideoCall_femalePoint = "videoCall_femalePoint"
    //: case videoCall_femalePoint_ar      = "videoCall_femalePoint_ar"
    case videoCall_femalePoint_ar
    //: case videoCall_femalePoint_es      = "videoCall_femalePoint_es"
    case videoCall_femalePoint_es
    //: case videoCall_femalePoint_pt      = "videoCall_femalePoint_pt"
    case videoCall_femalePoint_pt
    //: case Live_tabBar                = "live_tabbar"
    case Live_tabBar = "live_tabbar"
    //: case tabbar_suguar_1                = "tabbar_suguar_1"
    case tabbar_suguar_1
    //: case tabbar_suguar_2                = "tabbar_suguar_2"
    case tabbar_suguar_2
    //: case tabbar_suguar_3                = "tabbar_suguar_3"
    case tabbar_suguar_3
    //: case tabbar_suguar_4                = "tabbar_suguar_4"
    case tabbar_suguar_4
    //: case tabbar_suguar_5                = "tabbar_suguar_5"
    case tabbar_suguar_5
    //: case Moment_like                = "moment_like"
    case Moment_like = "moment_like"
    //: case Moment_likeRight           = "Moment_likeRight"
    case Moment_likeRight
    //: case Crush                      = "crush"
    case Crush = "crush"
    //: case Videocall_initiver         = "videocall_initiver"
    case Videocall_initiver = "videocall_initiver"
    //: case Live_countdown_bg          = "live_countdown_bg"
    case Live_countdown_bg = "live_countdown_bg"
    //: case Random_video_bg            = "random_video_bg"
    case Random_video_bg = "random_video_bg"
    //: case Random_video_bg_nor        = "random_video_bg_nor"
    case Random_video_bg_nor = "random_video_bg_nor"
    //: case Match_userCall             = "match_userCall"
    case Match_userCall = "match_userCall"
    //: case Tabbar_randownCall         = "tabbar_randownCall"
    case Tabbar_randownCall = "tabbar_randownCall"
    //: case CallTalk_Accept            = "CallTalk_Accept"
    case CallTalk_Accept
    //: case Private_Chat_intimate      = "private_Chat_intimate"
    case Private_Chat_intimate = "private_Chat_intimate"
    //: case Home_Chat_hi               = "home_Chat_hi"
    case Home_Chat_hi = "home_Chat_hi"
    //: case Female_Randomvideo_Enter   = "female_randomvideo_enter"
    case Female_Randomvideo_Enter = "female_randomvideo_enter"
    //: case Female_Randomvideo_Bg      = "female_randomvideo_bg"
    case Female_Randomvideo_Bg = "female_randomvideo_bg"
    //: case Party_List                 = "Party_List"
    case Party_List
}

//: class SVGAEffectTool: NSObject {
class StreamReactiveCompatible: NSObject {
    //: static let `default` = SVGAEffectTool()
    static let `default` = StreamReactiveCompatible()
    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
    }

    //: private lazy var AppResPath: String = {
    private lazy var AppResPath: String = {
        //: let docuPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        let docuPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        //: let res_Dir = (docuPath as NSString).appendingPathComponent(PodspecName)
        let res_Dir = (docuPath as NSString).appendingPathComponent(kLet_topText)
        //: let version = Defaults.string(forKey: AppResourcesVersionKey) ?? ""
        let version = kLet_timeContent.string(forKey: kLet_displayValue) ?? ""
        //: if version == AppVersion, FileManager.default.fileExists(atPath: res_Dir) {
        if version == kLet_lengthName, FileManager.default.fileExists(atPath: res_Dir) {
            //: return res_Dir
            return res_Dir
        }
        //: let path = PodspecBundle.bundle.path(forResource: PodspecName, ofType: ".zip") ?? ""
        let path = PublishPodspecBundle.bundle.path(forResource: kLet_topText, ofType: (String(str_replyText))) ?? ""
        //: let zipSuc = SSZipArchive.unzipFile(atPath: path,
        let zipSuc = SSZipArchive.unzipFile(atPath: path,
                                            //: toDestination: docuPath,
                                            toDestination: docuPath,
                                            //: overwrite: true,
                                            overwrite: true,
                                            //: password: PodspecName,
                                            password: kLet_topText,
                                            //: progressHandler: nil)
                                            progressHandler: nil)
        //: if zipSuc {
        if zipSuc {
            //: Defaults.set(AppVersion, forKey: AppResourcesVersionKey)
            kLet_timeContent.set(kLet_lengthName, forKey: kLet_displayValue)
            //: return res_Dir
            return res_Dir
        }
        //: return ""
        return ""
        //: }()
    }()

    //: private lazy var imageResPath: String = {
    private lazy var imageResPath: String = //: return (AppResPath as NSString).appendingPathComponent("pic")
        (AppResPath as NSString).appendingPathComponent((str_sharedText.replacingOccurrences(of: "list", with: "c")))
    //: }()

    //: private lazy var languageImageResPath: String = {
    private lazy var languageImageResPath: String = {
        //: let language = LanguageManager.shared.currLanguage
        let language = FactoryShowThen.shared.currLanguage
        //: return (imageResPath as NSString).appendingPathComponent(language)
        return (imageResPath as NSString).appendingPathComponent(language)
        //: }()
    }()

    //: private lazy var norImageResPath: String = {
    private lazy var norImageResPath: String = {
        //: let language = LanguageManager.shared.currLanguage
        let language = FactoryShowThen.shared.currLanguage
        //: return (imageResPath as NSString).appendingPathComponent("nor")
        return (imageResPath as NSString).appendingPathComponent((String(str_succeedContent)))
        //: }()
    }()

    //: private lazy var svgaResPath: String = {
    private lazy var svgaResPath: String = //: return (AppResPath as NSString).appendingPathComponent("svga")
        (AppResPath as NSString).appendingPathComponent((String(str_viewContent)))
    //: }()

    //: private lazy var mp3ResPath: String = {
    private lazy var mp3ResPath: String = //: return (AppResPath as NSString).appendingPathComponent("mp3")
        (AppResPath as NSString).appendingPathComponent((str_randomText.replacingOccurrences(of: "on", with: "m")))
    //: }()

    //: public lazy var modelResPath: String = {
    public lazy var modelResPath: String = //: return (AppResPath as NSString).appendingPathComponent("model")
        (AppResPath as NSString).appendingPathComponent((String(str_partyValue)))
    //: }()
}

//: extension SVGAEffectTool {
extension StreamReactiveCompatible {
    /// 直接获取图片
    //: func getImage(name: String) -> UIImage? {
    func inform(name: String) -> UIImage? {
        //: let languagePath = (languageImageResPath as NSString).appendingPathComponent(name).appending("@2x.png")
        let languagePath = (languageImageResPath as NSString).appendingPathComponent(name).appending((str_sizeName.replacingOccurrences(of: "at", with: "@") + String(str_itemData)))
        //: if FileManager.default.fileExists(atPath: languagePath) {
        if FileManager.default.fileExists(atPath: languagePath) {
            //: return UIImage(contentsOfFile: languagePath)
            return UIImage(contentsOfFile: languagePath)
        }
        //: let path = (norImageResPath as NSString).appendingPathComponent(name).appending("@2x.png")
        let path = (norImageResPath as NSString).appendingPathComponent(name).appending((str_sizeName.replacingOccurrences(of: "at", with: "@") + String(str_itemData)))
        //: return UIImage(contentsOfFile: path)
        return UIImage(contentsOfFile: path)
    }

    /// 获取svga资源url
    //: func getZipEffectPath(type: SVGAType) -> URL {
    func picName(type: ColorKeyTextProtocol) -> URL {
        //: var path = (svgaResPath as NSString).appendingPathComponent(type.rawValue)
        var path = (svgaResPath as NSString).appendingPathComponent(type.rawValue)
        //: path = (path as NSString).appendingPathExtension("svga")!
        path = (path as NSString).appendingPathExtension((String(str_viewContent)))!
        //: let url = URL(fileURLWithPath: path)
        let url = URL(fileURLWithPath: path)

        //: return url
        return url
    }

    /// 获取国家icon资源url
    //: func getZipAreaIconPath(iconName: String) -> URL {
    func turnDownName(iconName: String) -> URL {
        //: var path = (norImageResPath as NSString).appendingPathComponent(iconName)
        var path = (norImageResPath as NSString).appendingPathComponent(iconName)
        //: path = (path as NSString).appendingPathExtension("png")!
        path = (path as NSString).appendingPathExtension((String(str_managerText)))!
        //: let url = URL(fileURLWithPath: path)
        let url = URL(fileURLWithPath: path)
        //: return url
        return url
    }

    /// 获取Mp3资源url
    //: func getMp3Path(name: String, type: String = "mp3") -> String {
    func repossessType(name: String, type: String = (str_randomText.replacingOccurrences(of: "on", with: "m"))) -> String {
        //: var path = (mp3ResPath as NSString).appendingPathComponent(name)
        var path = (mp3ResPath as NSString).appendingPathComponent(name)
        //: path = (path as NSString).appendingPathExtension(type)!
        path = (path as NSString).appendingPathExtension(type)!
        //: return path
        return path
    }
}
