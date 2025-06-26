
//: Declare String Begin

/*: "action" :*/
fileprivate let str_colorName:[UInt8] = [0x6e,0x6f,0x69,0x74,0x63,0x61]

/*: "category" :*/
fileprivate let str_edgeData:[UInt8] = [0x6e,0x6c,0x79,0x68,0x6a,0x62,0x7f,0x74]

private func labApp(label num: UInt8) -> UInt8 {
    return num ^ 13
}

/*: "label" :*/
fileprivate let str_environmentValue:[Character] = ["l","a","b","e","l"]

/*: "user_action" :*/
fileprivate let str_resultTitle:String = "USER"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CellAnalyticsManager.swift
//  RootRift
//
//  Created by DouXiu on 2025/4/1.
//

//: import FirebaseAnalytics
import FirebaseAnalytics
//: import UIKit
import UIKit

//: class FirebaseAnalyticsManager: NSObject {
class CellAnalyticsManager: NSObject {
    //: static let share = FirebaseAnalyticsManager()
    static let share = CellAnalyticsManager()
    //: private override init() {}
    override private init() {}

    // MARK: - 用户属性

    //: func setUserProperty(name: String, value: String) {
    func set(name: String, value: String) {
        //: Analytics.setUserProperty(value, forName: name)
        Analytics.setUserProperty(value, forName: name)
    }

    // MARK: - 用户行为追踪

    //: func trackUserAction(action: String, category: String, label: String? = nil) {
    func thoughtImagePop(action: String, category: String, label: String? = nil) {
        //: var parameters: [String: Any] = [
        var parameters: [String: Any] = [
            //: "action": action,
            String(bytes: str_colorName.reversed(), encoding: .utf8)!: action,
            //: "category": category,
            String(bytes: str_edgeData.map{labApp(label: $0)}, encoding: .utf8)!: category,
        ]

        //: if let label = label {
        if let label = label {
            //: parameters["label"] = label
            parameters[(String(str_environmentValue))] = label
        }

        //: logEvent(name: "user_action", parameters: parameters)
        sawLogLayer(name: (str_resultTitle.lowercased() + "_action"), parameters: parameters)
    }

    // MARK: - 页面访问追踪

    //: func trackScreenView(screenName: String, screenClass: String) {
    func balanceBy(screenName: String, screenClass: String) {
        //: Analytics.logEvent(
        Analytics.logEvent(
            //: AnalyticsEventScreenView,
            AnalyticsEventScreenView,
            //: parameters: [
            parameters: [
                //: AnalyticsParameterScreenName: screenName,
                AnalyticsParameterScreenName: screenName,
                //: AnalyticsParameterScreenClass: screenClass,
                AnalyticsParameterScreenClass: screenClass,
                //: ])
            ]
        )
    }

    // MARK: - 事件追踪

    //: func logEvent(name: String, parameters: [String: Any]? = nil) {
    func sawLogLayer(name: String, parameters: [String: Any]? = nil) {
        //: Analytics.logEvent(name, parameters: parameters)
        Analytics.logEvent(name, parameters: parameters)
    }

    // MARK: - 内购事件追踪

    //: func trackPurchase(payType: String, price: Double, currency: String) {
    func sectionBy(payType: String, price: Double, currency: String) {
        //: Analytics.logEvent(
        Analytics.logEvent(
            //: AnalyticsEventPurchase,
            AnalyticsEventPurchase,
            //: parameters: [
            parameters: [
                //: AnalyticsParameterPaymentType: payType,
                AnalyticsParameterPaymentType: payType,
                //: AnalyticsParameterPrice: price,
                AnalyticsParameterPrice: price,
                //: AnalyticsParameterCurrency: currency,
                AnalyticsParameterCurrency: currency,
                //: ])
            ]
        )
    }
}
