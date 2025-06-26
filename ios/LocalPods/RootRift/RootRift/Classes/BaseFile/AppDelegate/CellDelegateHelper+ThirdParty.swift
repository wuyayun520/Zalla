
//: Declare String Begin

/*: "app_marsxlog" :*/
fileprivate let str_countValue:String = "app_marmake self false"
fileprivate let str_titleContent:[Character] = ["s","x","l","o","g"]

/*: "Install" :*/
fileprivate let str_sizeText:String = "method name topInstall"

/*: "LinkedME finished init with params(params.description)" :*/
fileprivate let str_detailValue:[UInt8] = [0x20,0x5,0x2,0x7,0x9,0x8,0x21,0x29,0x4c,0xa,0x5,0x2,0x5,0x1f,0x4,0x9,0x8,0x4c,0x5,0x2,0x5,0x18,0x4c,0x1b,0x5,0x18,0x4,0x4c,0x1c,0xd,0x1e,0xd,0x1,0x1f,0x44,0x1c,0xd,0x1e,0xd,0x1,0x1f,0x42,0x8,0x9,0x1f,0xf,0x1e,0x5,0x1c,0x18,0x5,0x3,0x2,0x45]

private func hiddenRequest(status num: UInt8) -> UInt8 {
    return num ^ 108
}

/*: "$control" :*/
fileprivate let str_imageText:[Character] = ["$","c"]
fileprivate let str_smallValue:[Character] = ["o","n","t","r","o","l"]

/*: "inviteCode" :*/
fileprivate let str_enterData:[Character] = ["i","n","v","i","t","e","C"]
fileprivate let str_dataIndexName:String = "odlimit"

/*: "TXUGCBase初始化：result:  :*/
fileprivate let str_viewValue:String = "TXUcolorC"
fileprivate let str_pageTabData:String = "\u{521d}始化：r"
fileprivate let str_withText:String = "gesture"
fileprivate let str_onContent:String = "name label normal forsult: "

/*: , reason:  :*/
fileprivate let str_makeText:[Character] = [","," ","r","e","a","s","o","n",":"," "]

/*: ." :*/
fileprivate let str_statusData:[Character] = ["."]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CellDelegateHelper+ThirdParty.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/11/3.
//

//: import Adjust
import Adjust
//: import DXMarsXlog
import DXMarsXlog
//: import Foundation
import Foundation
//: import TXLiteAVSDK_Professional
import TXLiteAVSDK_Professional
//: import UIKit
import UIKit

// MARK: - Public Event

//: extension AppDelegateHelper {
extension CellDelegateHelper {
    /// 第三方sdk初始化
    /// - Parameter application: application
    //: func initThirdPartySetup(_ application: UIApplication) {
    func clickOfSetup(_: UIApplication) {
        // 程序启动就实例化进行监听（处理自动续订的情况）
        //: _ = AppleIAPManager.shared
        _ = NameLikeTransactionObserver.shared

        //: createMsgVoicePath()
        createMsgVoicePath()

        //: DXMarsXLogger.shared().initWithNamePrefix("app_marsxlog")
        DXMarsXLogger.shared().initWithNamePrefix((String(str_countValue.prefix(7)) + String(str_titleContent)))

        //: TalkingV2Listener.shared.func__TXSDKInit()
        TalkingV2Listener.shared.infoInit()

        //: initADjust()
        colorMode()
        // 首次打开埋点【只记录一次】
        //: TalkingAdjustManager.share.addOnceEvent(key: "Install")
        NamesAdjustManager.share.titleMedium(key: (String(str_sizeText.suffix(7))))
        //: setupTXLive()
        standInLive()
        //: setupTXUGC()
        setupLoad()

        //: guard SenseTime_Use == true else { return }
        guard kLet_errorDeviceAppValue == true else { return }
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
            //: if STLicHelper.share.checkLicense() == false {
            if STLicHelper.share.checkLicense() == false {
                //: SenseTime_Use = false
                kLet_errorDeviceAppValue = false
                //: STLicHelper.share.checkRemoteLicInfoWith { succeed in
                STLicHelper.share.checkRemoteLicInfoWith { succeed in
                    // 更新商汤美颜是否可用
                    //: SenseTime_Use = succeed
                    kLet_errorDeviceAppValue = succeed
                }
            }
        }
    }

    /// LinkedME初始化
    //: func initLinkedME(launchOptions: [UIApplication.LaunchOptionsKey: Any]?) {
    func foundSecond(launchOptions _: [UIApplication.LaunchOptionsKey: Any]?) {
        //: let linkedme = LinkedME.getInstance()
        let linkedme = LinkedME.getInstance()
        // 解析深度链获取参数
        //: linkedme?.initSession(andRegisterDeepLinkHandler: { params, error in if error == nil {
        linkedme?.initSession(andRegisterDeepLinkHandler: { params, error in if error == nil {
            //: printLog(message: "LinkedME finished init with params(params.description)")
            printLog(message: String(bytes: str_detailValue.map{hiddenRequest(status: $0)}, encoding: .utf8)!)

            //: let inviteCode = UserDefaults.standard.string(forKey: SaveInviteCodeKey)
            let inviteCode = UserDefaults.standard.string(forKey: kLet_tabText)
            //: guard inviteCode == nil else {
            guard inviteCode == nil else {
                //: return
                return
            }
            //: let dic = params?["$control"] as? [String: Any]
            let dic = params?[(String(str_imageText) + String(str_smallValue))] as? [String: Any]
            //: let code = dic?["inviteCode"] as? String
            let code = dic?[(String(str_enterData) + str_dataIndexName.replacingOccurrences(of: "limit", with: "e"))] as? String
            //: if code != nil, code?.count ?? 0 > 1 {
            if code != nil, code?.count ?? 0 > 1 {
                //: UserDefaults.standard.set(code, forKey: SaveInviteCodeKey)
                UserDefaults.standard.set(code, forKey: kLet_tabText)
            }

            //: } else {
        } else {
            //: printLog(message: error as Any)
            printLog(message: error as Any)
        }

        //: })
        })
    }
}

// MARK: - Private Event

//: extension AppDelegateHelper {
extension CellDelegateHelper {
    //: private func setupTXLive() {
    private func standInLive() {
        // 腾讯SDK 6.4版本之后，推流功能需要license验证SDK，
        //: if TXLIVE_LICENSE_URL.count > 0 {
        if kLet_skipBottomText.count > 0 {
            //: TXLiveBase.setLicenceURL(TXLIVE_LICENSE_URL, key: TXLIVE_LICENSE_KEY)
            TXLiveBase.setLicenceURL(kLet_skipBottomText, key: kLet_informationSuccessData)
            //: TXLiveBase.setLogLevel(.LOGLEVEL_VERBOSE)
            TXLiveBase.setLogLevel(.LOGLEVEL_VERBOSE)
        }
    }

    // 短视频license
    //: private func setupTXUGC() {
    private func setupLoad() {
        //: TXUGCBase.setLicenceURL(TXLIVE_LICENSE_URL, key: TXLIVE_LICENSE_KEY)
        TXUGCBase.setLicenceURL(kLet_skipBottomText, key: kLet_informationSuccessData)
        //: TXUGCBase.sharedInstance().delegate = self
        TXUGCBase.sharedInstance().delegate = self
    }

    /// adjust事件买点统计
    //: private func initADjust() {
    private func colorMode() {
        //: var environment = ""
        var environment = ""
        //: if !Environment_Formal {
        if !kLet_tableContent {
            //: environment = ADJEnvironmentSandbox
            environment = ADJEnvironmentSandbox
            //: } else {
        } else {
            //: environment = ADJEnvironmentProduction
            environment = ADJEnvironmentProduction
        }
        //: let yourAppToken = AdjustKey
        let yourAppToken = kLet_foundValue
        //: let adjustConfig = ADJConfig(appToken: yourAppToken, environment: environment)
        let adjustConfig = ADJConfig(appToken: yourAppToken, environment: environment)
        //: adjustConfig?.logLevel = ADJLogLevelWarn
        adjustConfig?.logLevel = ADJLogLevelWarn
        //: Adjust.appDidLaunch(adjustConfig)
        Adjust.appDidLaunch(adjustConfig)
    }
}

// MARK: - TXUGCBaseDelegate【短视频压缩、上传】

//: extension AppDelegateHelper: TXUGCBaseDelegate {
extension CellDelegateHelper: TXUGCBaseDelegate {
    //: public func onLicenceLoaded(_ result: Int32, reason: String!) {
    public func onLicenceLoaded(_ result: Int32, reason: String!) {
        //: UploadLogTool.writeLog(msg: "TXUGCBase初始化：result: \(result), reason: \(String(describing: reason)).")
        EnableReactiveCompatible.nameBy(msg: (str_viewValue.replacingOccurrences(of: "color", with: "G") + "Base" + str_pageTabData + str_withText.replacingOccurrences(of: "gesture", with: "e") + String(str_onContent.suffix(6))) + "\(result)" + (String(str_makeText)) + "\(String(describing: reason)).")
    }
}
