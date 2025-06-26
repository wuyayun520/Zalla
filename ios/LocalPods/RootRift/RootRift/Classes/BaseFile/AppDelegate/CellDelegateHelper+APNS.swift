
//: Declare String Begin

/*: "%02hhx" :*/
fileprivate let str_appName:[Character] = ["%","0","2","h","h","x"]

/*: "APNS Token =  :*/
fileprivate let str_toTitle:[Character] = ["A","P","N","S"," ","T","o","k"]
fileprivate let str_sizeBeTitle:String = "en = detail tap view"

/*: "APNS Token Error:  :*/
fileprivate let str_sData:[Character] = ["A","P","N","S"," ","T","o","k","e","n"," ","E","r","r"]
fileprivate let str_cellValue:String = "or: view to self transition"

/*: ." :*/
fileprivate let str_sizeData:String = "asset"

/*: "token =  :*/
fileprivate let str_seatTitle:[Character] = ["t","o","k","e","n"]
fileprivate let str_hereFollowingData:String = " = "

/*: "extra" :*/
fileprivate let str_modeValue:String = "extrindex"

/*: "Unable to register for remote notifications: :*/
fileprivate let str_upValue:[UInt8] = [0x9c,0xb5,0xa8,0xa9,0xb3,0xac,0x67,0xbb,0xb6,0x67,0xb9,0xac,0xae,0xb0,0xba,0xbb,0xac,0xb9,0x67,0xad,0xb6,0xb9,0x67,0xb9,0xac,0xb4,0xb6,0xbb,0xac,0x67,0xb5,0xb6,0xbb,0xb0,0xad,0xb0,0xaa,0xa8,0xbb,0xb0,0xb6,0xb5,0xba,0x81]

fileprivate func cellData(confirm num: UInt8) -> UInt8 {
    let value = Int(num) - 71
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "token" :*/
fileprivate let str_modelData:[UInt8] = [0x22,0x1d,0x19,0x13,0x1c]

fileprivate func taskResume(status num: UInt8) -> UInt8 {
    let value = Int(num) + 82
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "FCMToken" :*/
fileprivate let str_listName:[Character] = ["F","C","M","T","o","k","e","n"]

/*: _LocalPush" :*/
fileprivate let str_equalOriginName:String = "raw row self type size_Loc"

/*: "identifier" :*/
fileprivate let str_indexManagerVideoData:String = "locationden"
fileprivate let str_logName:String = "tifiehidden"

/*: "fcm_options" :*/
fileprivate let str_valueData:String = "normal"
fileprivate let str_fatalName:[Character] = ["c","m","_","o","p","t","i","o","n","s"]

/*: "image" :*/
fileprivate let str_managerName:[UInt8] = [0x93,0x97,0x9b,0x9d,0x9f]

private func frameLive(conversation num: UInt8) -> UInt8 {
    return num ^ 250
}

/*: "本地推送通知 -- 用户未授权(.notDetermined)" :*/
fileprivate let str_tableName:[UInt8] = [0xda,0xa0,0x90,0xd9,0xa0,0x8c,0xda,0xb2,0x94,0xd5,0xbc,0xbd,0xd5,0xbc,0xa6,0xdb,0xa3,0x99,0x1c,0x11,0x11,0x1c,0xdb,0xa8,0x94,0xda,0xb4,0x8b,0xda,0xa0,0x96,0xda,0xb2,0xb4,0xda,0xa1,0xbf,0x14,0x12,0x52,0x53,0x48,0x78,0x59,0x48,0x59,0x4e,0x51,0x55,0x52,0x59,0x58,0x15]

private func brandTitle(succeed num: UInt8) -> UInt8 {
    return num ^ 60
}

/*: "本地推送通知 -- 用户未授权(.denied)" :*/
fileprivate let str_equalViewData:String = "本地\u{63a8}\u{9001}"
fileprivate let str_buttonWithTitle:String = "bar"
fileprivate let str_addMakeData:[Character] = [" ","用","户","未","授","权","(",".","d","e","n","i","e","d",")"]

/*: "本地推送通知 -- 用户未授权(.ephemeral)" :*/
fileprivate let str_itemData:String = "本\u{5730}推\u{9001}通"
fileprivate let str_requestMakeName:[Character] = ["用","户","未"]
fileprivate let str_lastData:[Character] = ["授","权","(",".","e","p","h","e","m","e","r","a","l",")"]

/*: "本地推送通知 -- 用户未授权" :*/
fileprivate let str_groupText:String = "本地推送通\u{77e5}"
fileprivate let str_indexValue:String = "户未授\u{6743}"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CellDelegateHelper+APNS.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/23.
//

//: import FirebaseCore
import FirebaseCore
//: import FirebaseMessaging
import FirebaseMessaging
//: import Foundation
import Foundation
//: import UserNotifications
import UserNotifications

//: public extension AppDelegateHelper {
public extension CellDelegateHelper {
    /// 成功的回调
    //: class func application(didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
    class func topLoad(didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        //: let deviceStr = deviceToken.map { String(format: "%02hhx", $0) }.joined()
        let deviceStr = deviceToken.map { String(format: "%02hhx", $0) }.joined()
        //: Messaging.messaging().apnsToken = deviceToken
        Messaging.messaging().apnsToken = deviceToken
        //: printLog(message: "APNS Token = \(deviceStr)")
        printLog(message: (String(str_toTitle) + String(str_sizeBeTitle.prefix(5))) + "\(deviceStr)")
        //: Messaging.messaging().token { token, error in
        Messaging.messaging().token { token, error in
            //: if let error = error {
            if let error = error {
                //: UploadLogTool.writeLog(msg: "APNS Token Error: \(error).")
                EnableReactiveCompatible.nameBy(msg: (String(str_sData) + String(str_cellValue.prefix(4))) + "\(error).")
                //: } else if let token = token {
            } else if let token = token {
                //: printLog(message: "token = \(token)")
                printLog(message: (String(str_seatTitle) + str_hereFollowingData.capitalized) + "\(token)")
            }
        }
    }

    /// 收到远程推送（kill app）
    //: class func application(didReceiveRemoteNotification userInfo: [AnyHashable: Any]) {
    class func dataRecordNotification(didReceiveRemoteNotification userInfo: [AnyHashable: Any]) {
        //: Messaging.messaging().appDidReceiveMessage(userInfo)
        Messaging.messaging().appDidReceiveMessage(userInfo)
        //: if UIApplication.shared.applicationState != .active {
        if UIApplication.shared.applicationState != .active {
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                //: if userInfo.keys.contains("extra") {
                if userInfo.keys.contains((str_modeValue.replacingOccurrences(of: "index", with: "a"))) {
                    //: let extraStr = userInfo["extra"] as? String ?? ""
                    let extraStr = userInfo[(str_modeValue.replacingOccurrences(of: "index", with: "a"))] as? String ?? ""
                    //: TalkingAPNSManager.share.APNSUserInfoStr = extraStr
                    AdVoiceReactiveCompatible.share.APNSUserInfoStr = extraStr
                    //: TalkingAPNSManager.share.launchFromApns = true
                    AdVoiceReactiveCompatible.share.launchFromApns = true
                }
            }
        }
    }

    /// 失败的回调
    //: class func application(didFailToRegisterForRemoteNotificationsWithError error: Error) {
    class func enableLeaveError(didFailToRegisterForRemoteNotificationsWithError error: Error) {
        //: printLog(message: "Unable to register for remote notifications:\(error.localizedDescription)")
        printLog(message: String(bytes: str_upValue.map{cellData(confirm: $0)}, encoding: .utf8)! + "\(error.localizedDescription)")
    }

    /// 点击消息（app运行中）
    //: class func userNotificationCenter(didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
    class func busyKey(didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        //: if UIApplication.shared.applicationState == .active {
        if UIApplication.shared.applicationState == .active {
            //: TalkingAPNSManager.share.APNSUserInfoStr = ""
            AdVoiceReactiveCompatible.share.APNSUserInfoStr = ""
            //: TalkingAPNSManager.share.launchFromApns = false
            AdVoiceReactiveCompatible.share.launchFromApns = false

            //: } else {
        } else {
            //: let userInfo = response.notification.request.content.userInfo
            let userInfo = response.notification.request.content.userInfo
            //: if userInfo.keys.contains("extra") {
            if userInfo.keys.contains((str_modeValue.replacingOccurrences(of: "index", with: "a"))) {
                //: let extraStr = userInfo["extra"] as? String ?? ""
                let extraStr = userInfo[(str_modeValue.replacingOccurrences(of: "index", with: "a"))] as? String ?? ""
                //: TalkingAPNSManager.share.APNSUserInfoStr = extraStr
                AdVoiceReactiveCompatible.share.APNSUserInfoStr = extraStr
                //: TalkingAPNSManager.share.launchFromApns = true
                AdVoiceReactiveCompatible.share.launchFromApns = true
            }
        }

        //: completionHandler()
        completionHandler()
    }

    /// MessagingDelegate
    //: class func messaging(didReceiveRegistrationToken fcmToken: String?) {
    class func doImage(didReceiveRegistrationToken fcmToken: String?) {
        //: let dataDict: [String: String] = ["token": fcmToken ?? ""]
        let dataDict: [String: String] = [String(bytes: str_modelData.map{taskResume(status: $0)}, encoding: .utf8)!: fcmToken ?? ""]
        //: NotificationCenter.default.post(
        NotificationCenter.default.post(
            //: name: Notification.Name("FCMToken"),
            name: Notification.Name((String(str_listName))),
            //: object: nil,
            object: nil,
            //: userInfo: dataDict
            userInfo: dataDict
        )
    }
}

// MARK: - 本地推送

//: extension AppDelegateHelper {
extension CellDelegateHelper {
    /// 构建通知内容，发送本地通知
    /// - Parameters:
    ///   - uid: 用户Id（用于identifier）
    ///   - title: 标题
    ///   - body: 内容
    ///   - imageUrl: 图片地址
    //: class func pushLocalNotification(uid: String? = nil,
    class func thoughtImageDismiss(uid: String? = nil,
                                   //: title: String? = nil,
                                   title: String? = nil,
                                   //: body: String,
                                   body: String,
                                   //: imageUrl: String? = nil) {
                                   imageUrl: String? = nil)
    {
        //: UNUserNotificationCenter.current().getNotificationSettings { settings in
        UNUserNotificationCenter.current().getNotificationSettings { settings in
            //: switch settings.authorizationStatus {
            switch settings.authorizationStatus {
            //: case .provisional, .authorized:
            case .provisional, .authorized: // 已授权，发送本地推送通知
                //: let content = UNMutableNotificationContent()
                let content = UNMutableNotificationContent()
                //: content.title = title ?? ""
                content.title = title ?? ""
                //: content.body = body
                content.body = body
                //: content.sound = UNNotificationSound.default
                content.sound = UNNotificationSound.default
                //: let identifier = (uid != nil) ? uid:"\(AppName)_LocalPush"
                let identifier = (uid != nil) ? uid : "\(kLet_maxProgressData)" + (String(str_equalOriginName.suffix(4)) + "alPush")
                //: let userInfo = ["identifier": identifier!] as [String: Any]
                let userInfo = [(str_indexManagerVideoData.replacingOccurrences(of: "location", with: "i") + str_logName.replacingOccurrences(of: "hidden", with: "r")): identifier!] as [String: Any]
                //: content.userInfo = userInfo
                content.userInfo = userInfo
                //: guard let imgStr = imageUrl else {
                guard let imgStr = imageUrl else {
                    //: local_notificationPush(content)
                    cloutPush(content)
                    //: return
                    return
                }
                /// 带图片的本地通知
                //: let newStr = imgStr.replacingOccurrences(of: UrlDomin.urlAes256Decrypt(), with: ReplaceUrlDomain)
                let newStr = imgStr.replacingOccurrences(of: kLet_localContent.showUponCompute(), with: kLet_barRecordScreenText)
                //: content.userInfo["fcm_options"] = ["image": newStr]
                content.userInfo[(str_valueData.replacingOccurrences(of: "normal", with: "f") + String(str_fatalName))] = [String(bytes: str_managerName.map{frameLive(conversation: $0)}, encoding: .utf8)!: newStr]
                //: FIRMessagingExtensionHelper().populateNotificationContent(content) { content in
                FIRMessagingExtensionHelper().populateNotificationContent(content) { content in
                    //: local_notificationPush(content)
                    cloutPush(content)
                }

            //: case .notDetermined:
            case .notDetermined:
                //: printLog(message: "本地推送通知 -- 用户未授权(.notDetermined)")
                printLog(message: String(bytes: str_tableName.map{brandTitle(succeed: $0)}, encoding: .utf8)!)
            //: case .denied:
            case .denied:
                //: printLog(message: "本地推送通知 -- 用户未授权(.denied)")
                printLog(message: (str_equalViewData + "通知 -" + str_buttonWithTitle.replacingOccurrences(of: "bar", with: "-") + String(str_addMakeData)))
            //: case .ephemeral:
            case .ephemeral:
                //: printLog(message: "本地推送通知 -- 用户未授权(.ephemeral)")
                printLog(message: (str_itemData + "知 -- " + String(str_requestMakeName) + String(str_lastData)))
            //: @unknown default:
            @unknown default:
                //: printLog(message: "本地推送通知 -- 用户未授权")
                printLog(message: (str_groupText + " -- 用" + str_indexValue))
            }
        }
    }

    /// 根据content发送本地通知
    /// - Parameter content: 通知内容
    //: private class func local_notificationPush(_ content: UNNotificationContent) {
    private class func cloutPush(_ content: UNNotificationContent) {
        //: let time = Date(timeIntervalSinceNow: 1).timeIntervalSinceNow
        let time = Date(timeIntervalSinceNow: 1).timeIntervalSinceNow
        //: let trigger = UNTimeIntervalNotificationTrigger(timeInterval: time, repeats: false)
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: time, repeats: false)
        //: if let identifier = content.userInfo["identifier"] as? String {
        if let identifier = content.userInfo[(str_indexManagerVideoData.replacingOccurrences(of: "location", with: "i") + str_logName.replacingOccurrences(of: "hidden", with: "r"))] as? String {
            //: let request = UNNotificationRequest(identifier: identifier, content: content, trigger: trigger)
            let request = UNNotificationRequest(identifier: identifier, content: content, trigger: trigger)
            //: UNUserNotificationCenter.current().add(request) { _ in
            UNUserNotificationCenter.current().add(request) { _ in
            }
        }
    }

    /// 移除已经展示的推送
    /// - Parameter identifier: 通知标识符（nil：移除所有）
    //: class func local_removeDeliveredNotification(identifier: String?) {
    class func spread(identifier: String?) {
        //: guard let idf = identifier else {
        guard let idf = identifier else {
            //: UNUserNotificationCenter.current().removeAllDeliveredNotifications()
            UNUserNotificationCenter.current().removeAllDeliveredNotifications()
            //: return
            return
        }
        //: UNUserNotificationCenter.current().removeDeliveredNotifications(withIdentifiers: [idf])
        UNUserNotificationCenter.current().removeDeliveredNotifications(withIdentifiers: [idf])
    }
}
