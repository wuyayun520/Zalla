
//: Declare String Begin

/*: "DID_LOGIN_SUCCESS_NOTIFICATION" :*/
fileprivate let str_actionValue:String = "DID_Lvar to component"
fileprivate let str_colorName:[Character] = ["O","G","I","N","_","S","U","C","C","E","S","S","_","N","O","T","I","F","I","C","A","T","I","O","N"]

/*: "DID_LOGIN_OUT_SUCCESS_NOTIFICATION" :*/
fileprivate let str_makeText:[UInt8] = [0xe4,0xe9,0xe4,0xff,0xec,0xef,0xe7,0xe9,0xee,0xff,0xef,0xf5,0xf4,0xff,0xf3,0xf5,0xe3,0xe3,0xe5,0xf3,0xf3,0xff,0xee,0xef,0xf4,0xe9,0xe6,0xe9,0xe3,0xe1,0xf4,0xe9,0xef,0xee]

private func playerImage(bar num: UInt8) -> UInt8 {
    return num ^ 160
}

/*: "UPDATE_APP_GETCONFIG_NOTIFICATION" :*/
fileprivate let str_modelContent:[UInt8] = [0xb2,0xad,0xa1,0x9e,0xb1,0xa2,0xbc,0x9e,0xad,0xad,0xbc,0xa4,0xa2,0xb1,0xa0,0xac,0xab,0xa3,0xa6,0xa4,0xbc,0xab,0xac,0xb1,0xa6,0xa3,0xa6,0xa0,0x9e,0xb1,0xa6,0xac,0xab]

fileprivate func rawTo(action num: UInt8) -> UInt8 {
    let value = Int(num) - 93
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "REFRESH_INDEX_GETCONFIG_NOTIFICATION" :*/
fileprivate let str_toData:[UInt8] = [0x21,0x36,0x35,0x21,0x36,0x20,0x3b,0x2c,0x3a,0x3d,0x37,0x36,0x2b,0x2c,0x34,0x36,0x27,0x30,0x3c,0x3d,0x35,0x3a,0x34,0x2c,0x3d,0x3c,0x27,0x3a,0x35,0x3a,0x30,0x32,0x27,0x3a,0x3c,0x3d]

private func socialBar(view num: UInt8) -> UInt8 {
    return num ^ 115
}

/*: "UPDATE_INDEX_GETCONFIG_NOTIFICATION" :*/
fileprivate let str_iconValue:[UInt8] = [0x4e,0x4f,0x49,0x54,0x41,0x43,0x49,0x46,0x49,0x54,0x4f,0x4e,0x5f,0x47,0x49,0x46,0x4e,0x4f,0x43,0x54,0x45,0x47,0x5f,0x58,0x45,0x44,0x4e,0x49,0x5f,0x45,0x54,0x41,0x44,0x50,0x55]

/*: "UPDATE_USER_GETMYINFO_NOTIFICATION" :*/
fileprivate let str_addCookieValue:[UInt8] = [0xa8,0xad,0xb9,0xbc,0xa9,0xb8,0xa2,0xa8,0xae,0xb8,0xaf,0xa2,0xba,0xb8,0xa9,0xb0,0xa4,0xb4,0xb3,0xbb,0xb2,0xa2,0xb3,0xb2,0xa9,0xb4,0xbb,0xb4,0xbe,0xbc,0xa9,0xb4,0xb2,0xb3]

private func pushEqual(up num: UInt8) -> UInt8 {
    return num ^ 253
}

/*: "USER_GETMYINFO_SUCCEED_NOTIFICATION" :*/
fileprivate let str_toText:[UInt8] = [0x18,0x16,0x8,0x15,0x22,0xa,0x8,0x17,0x10,0x1c,0xc,0x11,0x9,0x12,0x22,0x16,0x18,0x6,0x6,0x8,0x8,0x7,0x22,0x11,0x12,0x17,0xc,0x9,0xc,0x6,0x4,0x17,0xc,0x12,0x11]

fileprivate func eigenvalueOfAMatrix(view num: UInt8) -> UInt8 {
    let value = Int(num) - 195
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "USER_UPDATE_LOUNGEPLUSINFO_NOTIFICATION" :*/
fileprivate let str_labColorData:[UInt8] = [0x4e,0x4f,0x49,0x54,0x41,0x43,0x49,0x46,0x49,0x54,0x4f,0x4e,0x5f,0x4f,0x46,0x4e,0x49,0x53,0x55,0x4c,0x50,0x45,0x47,0x4e,0x55,0x4f,0x4c,0x5f,0x45,0x54,0x41,0x44,0x50,0x55,0x5f,0x52,0x45,0x53,0x55]

/*: "UPDATE_USER_GETINFOCOLUMN_NOTIFICATION" :*/
fileprivate let str_errorValue:[UInt8] = [0xf9,0xfc,0xe8,0xed,0xf8,0xe9,0xf3,0xf9,0xff,0xe9,0xfe,0xf3,0xeb,0xe9,0xf8,0xe5,0xe2,0xea,0xe3,0xef,0xe3,0xe0,0xf9,0xe1,0xe2,0xf3,0xe2,0xe3,0xf8,0xe5,0xea,0xe5,0xef,0xed,0xf8,0xe5,0xe3,0xe2]

private func cellView(model num: UInt8) -> UInt8 {
    return num ^ 172
}

/*: "USER_RECIEVED_GIFT_NOTIFICATION" :*/
fileprivate let str_mTitle:[UInt8] = [0x73,0x71,0x63,0x70,0x7d,0x70,0x63,0x61,0x67,0x63,0x74,0x63,0x62,0x7d,0x65,0x67,0x64,0x72,0x7d,0x6c,0x6d,0x72,0x67,0x64,0x67,0x61,0x5f,0x72,0x67,0x6d,0x6c]

fileprivate func formOfGovernment(manager num: UInt8) -> UInt8 {
    let value = Int(num) - 30
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "USER_INFO_MSG_LIST_NOTIFICATION" :*/
fileprivate let str_viewMakeValue:[UInt8] = [0x37,0x35,0x27,0x34,0x41,0x2b,0x30,0x28,0x31,0x41,0x2f,0x35,0x29,0x41,0x2e,0x2b,0x35,0x36,0x41,0x30,0x31,0x36,0x2b,0x28,0x2b,0x25,0x23,0x36,0x2b,0x31,0x30]

fileprivate func renderTask(object num: UInt8) -> UInt8 {
    let value = Int(num) + 30
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "CHAT_TIPS_TEXT_NOTIFICATION" :*/
fileprivate let str_crushData:[Character] = ["C","H","A","T","_","T","I","P","S","_","T","E","X","T","_","N","O","T","I","F"]
fileprivate let str_managerValue:[Character] = ["I","C","A","T","I","O","N"]

/*: "WHOLIKEME_BADGENUMBER_NOTIF" :*/
fileprivate let str_blockName:[Character] = ["W","H","O","L","I","K","E","M","E","_"]
fileprivate let str_errorPathValue:[Character] = ["B","A","D","G","E","N","U","M","B"]
fileprivate let str_modeValue:String = "ER_NOTIFage image label"

/*: "UPDATE_COMMENTNUMBER_NOTIFICATION" :*/
fileprivate let str_rangeValue:[UInt8] = [0xe9,0xec,0xf8,0xfd,0xe8,0xf9,0xe3,0xff,0xf3,0xf1,0xf1,0xf9,0xf2,0xe8,0xf2,0xe9,0xf1,0xfe,0xf9,0xee,0xe3,0xf2,0xf3,0xe8,0xf5,0xfa,0xf5,0xff,0xfd,0xe8,0xf5,0xf3,0xf2]

/*: "UPDATE_LIKE_NUMBER_NOTIFICATION" :*/
fileprivate let str_rawName:[UInt8] = [0xfd,0xf8,0xec,0xe9,0xfc,0xed,0xf7,0xe4,0xe1,0xe3,0xed,0xf7,0xe6,0xfd,0xe5,0xea,0xed,0xfa,0xf7,0xe6,0xe7,0xfc,0xe1,0xee,0xe1,0xeb,0xe9,0xfc,0xe1,0xe7,0xe6]

private func backCell(with num: UInt8) -> UInt8 {
    return num ^ 168
}

/*: "UPDATE_ATTION_NOTIFICATION" :*/
fileprivate let str_micVideoName:String = "UPDATtool"
fileprivate let str_clearTitleData:String = "price share pushION_NO"
fileprivate let str_equalAddData:String = "TIFImodeA"

/*: "DELETE_MINE_POST_NOTIFICATION" :*/
fileprivate let str_colorShadowAddValue:[Character] = ["D","E","L","E","T","E","_","M"]
fileprivate let str_enableMessageData:[Character] = ["I","N","E","_","P","O","S","T","_","N","O","T","I","F","I","C","A","T","I","O","N"]

/*: "FREEBTN_UPLOAD_POST_NOTIFICATION" :*/
fileprivate let str_currentContent:[UInt8] = [0x31,0x25,0x32,0x32,0x35,0x23,0x39,0x28,0x22,0x27,0x3b,0x38,0x36,0x33,0x28,0x27,0x38,0x24,0x23,0x28,0x39,0x38,0x23,0x3e,0x31,0x3e,0x34,0x36,0x23,0x3e,0x38,0x39]

private func contextFile(cell num: UInt8) -> UInt8 {
    return num ^ 119
}

/*: "POST_EXPLORE_SUCCESS_NOTIFICATION" :*/
fileprivate let str_assetBeyondGiftData:[UInt8] = [0xd6,0xc9,0xd5,0xd2,0xd9,0xc3,0xde,0xd6,0xca,0xc9,0xd4,0xc3,0xd9,0xd5,0xd3,0xc5,0xc5,0xc3,0xd5,0xd5,0xd9,0xc8,0xc9,0xd2,0xcf,0xc0,0xcf,0xc5,0xc7,0xd2,0xcf,0xc9,0xc8]

private func safetyMargin(style num: UInt8) -> UInt8 {
    return num ^ 134
}

/*: "CHAT_NEW_MSG_NOTIFICATION" :*/
fileprivate let str_contactDemocratData:[Character] = ["C","H","A","T","_","N","E","W","_","M","S","G","_"]
fileprivate let str_voicePairValue:String = "NOTmake"

/*: "CHAT_MSG_READ_RECEIPT_NOTIFICATION" :*/
fileprivate let str_mValue:[UInt8] = [0x1a,0x11,0x18,0xd,0x6,0x14,0xa,0x1e,0x6,0xb,0x1c,0x18,0x1d,0x6,0xb,0x1c,0x1a,0x1c,0x10,0x9,0xd,0x6,0x17,0x16,0xd,0x10,0x1f,0x10,0x1a,0x18,0xd,0x10,0x16,0x17]

private func nameAs(share num: UInt8) -> UInt8 {
    return num ^ 89
}

/*: "MSGLIST_UPDATE_ONLINESTATUS_NOTIFICATION" :*/
fileprivate let str_appearData:[UInt8] = [0x5c,0x42,0x56,0x5d,0x58,0x42,0x45,0x4e,0x44,0x41,0x55,0x50,0x45,0x54,0x4e,0x5e,0x5f,0x5d,0x58,0x5f,0x54,0x42,0x45,0x50,0x45,0x44,0x42,0x4e,0x5f,0x5e,0x45,0x58,0x57,0x58,0x52,0x50,0x45,0x58,0x5e,0x5f]

private func labelMode(cell num: UInt8) -> UInt8 {
    return num ^ 17
}

/*: "MSGLIST_UPDATE_INTIMATE_NOTIFICATION" :*/
fileprivate let str_nameValue:[UInt8] = [0x48,0x56,0x42,0x49,0x4c,0x56,0x51,0x5a,0x50,0x55,0x41,0x44,0x51,0x40,0x5a,0x4c,0x4b,0x51,0x4c,0x48,0x44,0x51,0x40,0x5a,0x4b,0x4a,0x51,0x4c,0x43,0x4c,0x46,0x44,0x51,0x4c,0x4a,0x4b]

private func sawLog(place num: UInt8) -> UInt8 {
    return num ^ 5
}

/*: "CHAT_ADD_CALL_RECORD_MSG_NOTIFICATION" :*/
fileprivate let str_atText:[UInt8] = [0x4e,0x4f,0x49,0x54,0x41,0x43,0x49,0x46,0x49,0x54,0x4f,0x4e,0x5f,0x47,0x53,0x4d,0x5f,0x44,0x52,0x4f,0x43,0x45,0x52,0x5f,0x4c,0x4c,0x41,0x43,0x5f,0x44,0x44,0x41,0x5f,0x54,0x41,0x48,0x43]

/*: "VIDEO_CHAT_OTHER_CAMERA_AVAILABLE_NOTIFICATION" :*/
fileprivate let str_lineContent:[UInt8] = [0xf5,0xea,0xe7,0xe6,0xec,0xfc,0xe0,0xeb,0xe2,0xf7,0xfc,0xec,0xf7,0xeb,0xe6,0xf1,0xfc,0xe0,0xe2,0xee,0xe6,0xf1,0xe2,0xfc,0xe2,0xf5,0xe2,0xea,0xef,0xe2,0xe1,0xef,0xe6,0xfc,0xed,0xec,0xf7,0xea,0xe5,0xea,0xe0,0xe2,0xf7,0xea,0xec,0xed]

/*: "SEARCH_DETAIL_HOMEREFRESH_NOTIFICATION" :*/
fileprivate let str_fieldTitle:[UInt8] = [0x99,0x8b,0x87,0x98,0x89,0x8e,0xa5,0x8a,0x8b,0x9a,0x87,0x8f,0x92,0xa5,0x8e,0x95,0x93,0x8b,0x98,0x8b,0x8c,0x98,0x8b,0x99,0x8e,0xa5,0x94,0x95,0x9a,0x8f,0x8c,0x8f,0x89,0x87,0x9a,0x8f,0x95,0x94]

fileprivate func totalMessage(action num: UInt8) -> UInt8 {
    let value = Int(num) + 186
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "SWITCH_TABBAR_HOME_PARTY_NOTIFICATION" :*/
fileprivate let str_equalValue:[UInt8] = [0xc7,0xc3,0xdd,0xc0,0xd7,0xdc,0xcb,0xc0,0xd5,0xd6,0xd6,0xd5,0xc6,0xcb,0xdc,0xdb,0xd9,0xd1,0xcb,0xc4,0xd5,0xc6,0xc0,0xcd,0xcb,0xda,0xdb,0xc0,0xdd,0xd2,0xdd,0xd7,0xd5,0xc0,0xdd,0xdb,0xda]

/*: "PUSH_MEEDIT_NOTIFICATION" :*/
fileprivate let str_ofText:String = "push"
fileprivate let str_topSizeIntervalervalData:String = "prompt video button topT_NOT"
fileprivate let str_wrapValue:String = "IFICATIdisk"

/*: "LIVE_USER_POINT_CHANGE" :*/
fileprivate let str_clearUserValue:String = "LIVE_Ucancel let estimated"
fileprivate let str_tabLabelInValue:String = "playE"
fileprivate let str_backgroundValue:String = "R_POwindow ok image"
fileprivate let str_countData:String = "HAlineGE"

/*: "LIVE_HALF_VIEW_SHOW" :*/
fileprivate let str_startData:String = "if labLIVE_"
fileprivate let str_pathKitValue:[Character] = ["E","W","_","S","H","O","W"]

/*: "LIVE_HALF_VIEW_DISMISS" :*/
fileprivate let str_modelText:String = "LIVE_var add self label self"
fileprivate let str_changeData:String = "view"
fileprivate let str_dataValue:[Character] = ["M","I","S","S"]

/*: "LIVE_RECIVE_STARTLIVE_NOTIFICATION" :*/
fileprivate let str_contentName:[UInt8] = [0x35,0x30,0x2f,0x3c,0x26,0x2b,0x3c,0x3a,0x30,0x2f,0x3c,0x26,0x2a,0x2d,0x38,0x2b,0x2d,0x35,0x30,0x2f,0x3c,0x26,0x37,0x36,0x2d,0x30,0x3f,0x30,0x3a,0x38,0x2d,0x30,0x36,0x37]

/*: "LIVE_RECIVE_FLOATSCREEN_NOTIFICATION" :*/
fileprivate let str_meData:[UInt8] = [0x4e,0x4f,0x49,0x54,0x41,0x43,0x49,0x46,0x49,0x54,0x4f,0x4e,0x5f,0x4e,0x45,0x45,0x52,0x43,0x53,0x54,0x41,0x4f,0x4c,0x46,0x5f,0x45,0x56,0x49,0x43,0x45,0x52,0x5f,0x45,0x56,0x49,0x4c]

/*: "LIVE_BLOCK_USER_NOTIFICATION" :*/
fileprivate let str_toCellName:String = "LadjustE"
fileprivate let str_colorData:String = "K_USfor self"
fileprivate let str_mightValue:String = "OTIFImodelT"
fileprivate let str_giftValue:String = "Isend"

/*: "SOCKET_IS_OPEN_NOTIFICATION" :*/
fileprivate let str_titleName:String = "makeOCK"
fileprivate let str_sizeData:[Character] = ["_","O","P","E","N","_","N","O","T","I","F","I","C"]
fileprivate let str_hiddenTitle:String = "ATmanagerN"

/*: "GIFT_REFRESHPACKAGE_NOTIFICATION" :*/
fileprivate let str_operationTitle:[UInt8] = [0xa6,0xa8,0xa7,0xb5,0xbe,0xb3,0xa4,0xa7,0xb3,0xa4,0xb2,0xa9,0xb1,0xa0,0xa2,0xaa,0xa0,0xa6,0xa4,0xbe,0xaf,0xae,0xb5,0xa8,0xa7,0xa8,0xa2,0xa0,0xb5,0xa8,0xae,0xaf]

private func shareTemp(party num: UInt8) -> UInt8 {
    return num ^ 225
}

/*: "VIDEOCALL_INITIV_NOTIFICATION" :*/
fileprivate let str_dataName:String = "VIDequal"
fileprivate let str_logIndexValue:String = "_INItrue my image to to"
fileprivate let str_userModeTitle:String = "tific"

/*: "VIDEOCALL_END_CLOSEDISCOUNTS_NOTIFICATION" :*/
fileprivate let str_defineTitle:[UInt8] = [0x4e,0x4f,0x49,0x54,0x41,0x43,0x49,0x46,0x49,0x54,0x4f,0x4e,0x5f,0x53,0x54,0x4e,0x55,0x4f,0x43,0x53,0x49,0x44,0x45,0x53,0x4f,0x4c,0x43,0x5f,0x44,0x4e,0x45,0x5f,0x4c,0x4c,0x41,0x43,0x4f,0x45,0x44,0x49,0x56]

/*: "RECHARGEHALFPAGE_END_CLOSE_NOTIFICATION" :*/
fileprivate let str_selectedValue:[UInt8] = [0x4e,0x4f,0x49,0x54,0x41,0x43,0x49,0x46,0x49,0x54,0x4f,0x4e,0x5f,0x45,0x53,0x4f,0x4c,0x43,0x5f,0x44,0x4e,0x45,0x5f,0x45,0x47,0x41,0x50,0x46,0x4c,0x41,0x48,0x45,0x47,0x52,0x41,0x48,0x43,0x45,0x52]

/*: "Net Error, Try again later" :*/
fileprivate let str_standardValue:String = "text super runningNet Er"
fileprivate let str_progressName:String = "cell left live let iTry a"
fileprivate let str_labelData:String = "aadder"

/*: "We want everyone to enjoy a healthy chatting environment and to use this feature you need to be " :*/
fileprivate let str_objectName:[UInt8] = [0xba,0x88,0xcd,0x9a,0x8c,0x83,0x99,0xcd,0x88,0x9b,0x88,0x9f,0x94,0x82,0x83,0x88,0xcd,0x99,0x82,0xcd,0x88,0x83,0x87,0x82,0x94,0xcd,0x8c,0xcd,0x85,0x88,0x8c,0x81,0x99,0x85,0x94,0xcd,0x8e,0x85,0x8c,0x99,0x99,0x84,0x83,0x8a,0xcd,0x88,0x83,0x9b,0x84,0x9f,0x82,0x83,0x80,0x88,0x83,0x99,0xcd,0x8c,0x83,0x89,0xcd,0x99,0x82,0xcd,0x98,0x9e,0x88,0xcd,0x99,0x85,0x84,0x9e,0xcd,0x8b,0x88,0x8c,0x99,0x98,0x9f,0x88,0xcd,0x94,0x82,0x98,0xcd,0x83,0x88,0x88,0x89,0xcd,0x99,0x82,0xcd,0x8f,0x88,0xcd]

private func constraintTitle(gift num: UInt8) -> UInt8 {
    return num ^ 237
}

/*: "Face cerification" :*/
fileprivate let str_sizeText:[Character] = ["F","a","c","e"," ","c","e","r","i"]
fileprivate let str_modelName:String = "fviewation"

/*: "By blocking a user, you will not receive his/her new messages and the message history will be removed too. Continue to block this user?" :*/
fileprivate let str_playerValue:[UInt8] = [0x5e,0x65,0x3c,0x7e,0x70,0x73,0x7f,0x77,0x75,0x72,0x7b,0x3c,0x7d,0x3c,0x69,0x6f,0x79,0x6e,0x30,0x3c,0x65,0x73,0x69,0x3c,0x6b,0x75,0x70,0x70,0x3c,0x72,0x73,0x68,0x3c,0x6e,0x79,0x7f,0x79,0x75,0x6a,0x79,0x3c,0x74,0x75,0x6f,0x33,0x74,0x79,0x6e,0x3c,0x72,0x79,0x6b,0x3c,0x71,0x79,0x6f,0x6f,0x7d,0x7b,0x79,0x6f,0x3c,0x7d,0x72,0x78,0x3c,0x68,0x74,0x79,0x3c,0x71,0x79,0x6f,0x6f,0x7d,0x7b,0x79,0x3c,0x74,0x75,0x6f,0x68,0x73,0x6e,0x65,0x3c,0x6b,0x75,0x70,0x70,0x3c,0x7e,0x79,0x3c,0x6e,0x79,0x71,0x73,0x6a,0x79,0x78,0x3c,0x68,0x73,0x73,0x32,0x3c,0x5f,0x73,0x72,0x68,0x75,0x72,0x69,0x79,0x3c,0x68,0x73,0x3c,0x7e,0x70,0x73,0x7f,0x77,0x3c,0x68,0x74,0x75,0x6f,0x3c,0x69,0x6f,0x79,0x6e,0x23]

private func giftActual(shared num: UInt8) -> UInt8 {
    return num ^ 28
}

/*: "Turn on permissions in settings before you can use the feature" :*/
fileprivate let str_highLowValue:[UInt8] = [0x65,0x72,0x75,0x74,0x61,0x65,0x66,0x20,0x65,0x68,0x74,0x20,0x65,0x73,0x75,0x20,0x6e,0x61,0x63,0x20,0x75,0x6f,0x79,0x20,0x65,0x72,0x6f,0x66,0x65,0x62,0x20,0x73,0x67,0x6e,0x69,0x74,0x74,0x65,0x73,0x20,0x6e,0x69,0x20,0x73,0x6e,0x6f,0x69,0x73,0x73,0x69,0x6d,0x72,0x65,0x70,0x20,0x6e,0x6f,0x20,0x6e,0x72,0x75,0x54]

/*: "Not available during a call" :*/
fileprivate let str_tableContent:String = "next session conversation live imageNot av"
fileprivate let str_pathTargetData:String = "e duringift import in self"
fileprivate let str_toTitle:String = "g a callself number if true self"

/*: "You're on the live" :*/
fileprivate let str_viewValue:String = "You\'r"
fileprivate let str_cameraTitle:String = "e onin address"

/*: "You are already in Party room" :*/
fileprivate let str_leadingValue:String = "You group true depth false"
fileprivate let str_labelEffectName:String = "alredit"
fileprivate let str_progressValue:[Character] = [" ","P","a","r","t"]
fileprivate let str_topName:[Character] = ["y"," ","r","o","o","m"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  NotificationDefine.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/3/29.
//

//: import Foundation
import Foundation

// MARK: - NSNotification

// 登录成功
//: public let DID_LOGIN_SUCCESS_NOTIFICATION = NSNotification.Name(rawValue: "DID_LOGIN_SUCCESS_NOTIFICATION")
public let kLet_iconBottomTitle = NSNotification.Name(rawValue: (String(str_actionValue.prefix(5)) + String(str_colorName)))
// 退出登录
//: public let DID_LOGIN_OUT_SUCCESS_NOTIFICATION = NSNotification.Name(rawValue: "DID_LOGIN_OUT_SUCCESS_NOTIFICATION")
public let kLet_screenPathName = NSNotification.Name(rawValue: String(bytes: str_makeText.map{playerImage(bar: $0)}, encoding: .utf8)!)
// app配置信息
//: public let UPDATE_APP_GETCONFIG_NOTIFICATION = NSNotification.Name(rawValue: "UPDATE_APP_GETCONFIG_NOTIFICATION")
public let kLet_informationTimeName = NSNotification.Name(rawValue: String(bytes: str_modelContent.map{rawTo(action: $0)}, encoding: .utf8)!)
// 刷新 mf/index/getConfig配置信息接口
//: public let REFRESH_INDEX_GETCONFIG_NOTIFICATION = NSNotification.Name(rawValue: "REFRESH_INDEX_GETCONFIG_NOTIFICATION")
public let kLet_replaceText = NSNotification.Name(rawValue: String(bytes: str_toData.map{socialBar(view: $0)}, encoding: .utf8)!)
// mf/index/getConfig配置信息接口成功通知
//: public let UPDATE_INDEX_GETCONFIG_NOTIFICATION = NSNotification.Name(rawValue: "UPDATE_INDEX_GETCONFIG_NOTIFICATION")
public let kLet_inviteData = NSNotification.Name(rawValue: String(bytes: str_iconValue.reversed(), encoding: .utf8)!)
// 请求app个人信息
//: public let UPDATE_USER_GETMYINFO_NOTIFICATION = NSNotification.Name(rawValue: "UPDATE_USER_GETMYINFO_NOTIFICATION")
public let kLet_limitName = NSNotification.Name(rawValue: String(bytes: str_addCookieValue.map{pushEqual(up: $0)}, encoding: .utf8)!)
// app个人信息请求成功
//: public let USER_GETMYINFO_SUCCEED_NOTIFICATION = NSNotification.Name(rawValue: "USER_GETMYINFO_SUCCEED_NOTIFICATION")
public let kLet_qualityName = NSNotification.Name(rawValue: String(bytes: str_toText.map{eigenvalueOfAMatrix(view: $0)}, encoding: .utf8)!)
// 刷新218用户余额次数/会员状态
//: public let USER_UPDATE_LOUNGEPLUSINFO_NOTIFICATION = NSNotification.Name(rawValue: "USER_UPDATE_LOUNGEPLUSINFO_NOTIFICATION")
public let kLet_partyFailValue = NSNotification.Name(rawValue: String(bytes: str_labColorData.reversed(), encoding: .utf8)!)

// 刷新金币
//: public let UPDATE_USER_GETINFOCOLUMN_NOTIFICATION = NSNotification.Name(rawValue: "UPDATE_USER_GETINFOCOLUMN_NOTIFICATION")
public let kLet_tabLimitData = NSNotification.Name(rawValue: String(bytes: str_errorValue.map{cellView(model: $0)}, encoding: .utf8)!)
// 首页礼物
//: public let USER_RECIEVED_GIFT_NOTIFICATION = NSNotification.Name(rawValue: "USER_RECIEVED_GIFT_NOTIFICATION")
public let kLet_backgroundDisplayContent = NSNotification.Name(rawValue: String(bytes: str_mTitle.map{formOfGovernment(manager: $0)}, encoding: .utf8)!)
// 获取聊天列表数据成功
//: public let USER_INFO_MSG_LIST_NOTIFICATION = NSNotification.Name(rawValue: "USER_INFO_MSG_LIST_NOTIFICATION")
public let kLet_objectViewValue = NSNotification.Name(rawValue: String(bytes: str_viewMakeValue.map{renderTask(object: $0)}, encoding: .utf8)!)

// 插入聊天提示消息
//: public let CHAT_TIPS_TEXT_NOTIFICATION = NSNotification.Name(rawValue: "CHAT_TIPS_TEXT_NOTIFICATION")
public let kLet_intervalPlayTitle = NSNotification.Name(rawValue: (String(str_crushData) + String(str_managerValue)))

// 获取谁喜欢我数量消息
//: public let WHOLIKEME_BADGENUMBER_NOTIF = NSNotification.Name(rawValue: "WHOLIKEME_BADGENUMBER_NOTIF")
public let kLet_playTitleValue = NSNotification.Name(rawValue: (String(str_blockName) + String(str_errorPathValue) + String(str_modeValue.prefix(8))))

// 更新评论数量
//: public let UPDATE_COMMENTNUMBER_NOTIFICATION = NSNotification.Name(rawValue: "UPDATE_COMMENTNUMBER_NOTIFICATION")
public let kLet_depthValue = NSNotification.Name(rawValue: String(bytes: str_rangeValue.map{$0^188}, encoding: .utf8)!)
// 动态更新点赞数量
//: public let UPDATE_LIKE_NUMBER_NOTIFICATION = NSNotification.Name(rawValue: "UPDATE_LIKE_NUMBER_NOTIFICATION")
public let kLet_successInputMeValue = NSNotification.Name(rawValue: String(bytes: str_rawName.map{backCell(with: $0)}, encoding: .utf8)!)
// 动态关注
//: public let UPDATE_ATTION_NOTIFICATION = NSNotification.Name(rawValue: "UPDATE_ATTION_NOTIFICATION")
public let kLet_screenKeyText = NSNotification.Name(rawValue: (str_micVideoName.replacingOccurrences(of: "tool", with: "E") + "_ATT" + String(str_clearTitleData.suffix(6)) + str_equalAddData.replacingOccurrences(of: "mode", with: "C") + "TION"))
// 删除个人动态，动态列表更新
//: public let DELETE_MINE_POST_NOTIFICATION = NSNotification.Name(rawValue: "DELETE_MINE_POST_NOTIFICATION")
public let kLet_topUseValue = NSNotification.Name(rawValue: (String(str_colorShadowAddValue) + String(str_enableMessageData)))
// 打开发布动态
//: public let FREEBTN_UPLOAD_POST_NOTIFICATION = NSNotification.Name(rawValue: "FREEBTN_UPLOAD_POST_NOTIFICATION")
public let kLet_screenSuccessNoText = NSNotification.Name(rawValue: String(bytes: str_currentContent.map{contextFile(cell: $0)}, encoding: .utf8)!)

// 发布动态成功，列表更新
//: public let POST_EXPLORE_SUCCESS_NOTIFICATION = NSNotification.Name(rawValue: "POST_EXPLORE_SUCCESS_NOTIFICATION")
public let kLet_formalValue = NSNotification.Name(rawValue: String(bytes: str_assetBeyondGiftData.map{safetyMargin(style: $0)}, encoding: .utf8)!)

// 收到新消息
//: public let CHAT_NEW_MSG_NOTIFICATION = NSNotification.Name(rawValue: "CHAT_NEW_MSG_NOTIFICATION")
public let kLet_domainMeetingName = NSNotification.Name(rawValue: (String(str_contactDemocratData) + str_voicePairValue.replacingOccurrences(of: "make", with: "IF") + "ICATION"))

// 消息已读回执通知
//: public let CHAT_MSG_READ_RECEIPT_NOTIFICATION = NSNotification.Name(rawValue: "CHAT_MSG_READ_RECEIPT_NOTIFICATION")
public let kLet_postPointData = NSNotification.Name(rawValue: String(bytes: str_mValue.map{nameAs(share: $0)}, encoding: .utf8)!)

// 消息列表更新在线状态
//: public let MSGLIST_UPDATE_ONLINESTATUS_NOTIFICATION = NSNotification.Name(rawValue: "MSGLIST_UPDATE_ONLINESTATUS_NOTIFICATION")
public let kLet_formalText = NSNotification.Name(rawValue: String(bytes: str_appearData.map{labelMode(cell: $0)}, encoding: .utf8)!)

// 消息列表更新亲密度
//: public let MSGLIST_UPDATE_INTIMATE_NOTIFICATION = NSNotification.Name(rawValue: "MSGLIST_UPDATE_INTIMATE_NOTIFICATION")
public let kLet_profileData = NSNotification.Name(rawValue: String(bytes: str_nameValue.map{sawLog(place: $0)}, encoding: .utf8)!)

// 本地插入通话送礼的消息
//: public let CHAT_ADD_CALL_RECORD_MSG_NOTIFICATION = NSNotification.Name(rawValue: "CHAT_ADD_CALL_RECORD_MSG_NOTIFICATION")
public let kLet_partyName = NSNotification.Name(rawValue: String(bytes: str_atText.reversed(), encoding: .utf8)!)

// 视频通话对方摄像头是否可用通知
//: public let VIDEO_CHAT_OTHER_CAMERA_AVAILABLE_NOTIFICATION = NSNotification.Name(rawValue: "VIDEO_CHAT_OTHER_CAMERA_AVAILABLE_NOTIFICATION")
public let kLet_tableText = NSNotification.Name(rawValue: String(bytes: str_lineContent.map{$0^163}, encoding: .utf8)!)

// 搜索筛选页触发首页刷新
//: public let SEARCH_DETAIL_HOMEREFRESH_NOTIFICATION = NSNotification.Name(rawValue: "SEARCH_DETAIL_HOMEREFRESH_NOTIFICATION")
public let kLet_showNextTitle = NSNotification.Name(rawValue: String(bytes: str_fieldTitle.map{totalMessage(action: $0)}, encoding: .utf8)!)

// 切换底部tabbar到home-party
//: public let SWITCH_TABBAR_HOME_PARTY_NOTIFICATION = NSNotification.Name(rawValue: "SWITCH_TABBAR_HOME_PARTY_NOTIFICATION")
public let kLet_endContent = NSNotification.Name(rawValue: String(bytes: str_equalValue.map{$0^148}, encoding: .utf8)!)

// 打开个人资料编辑页
//: public let PUSH_MEEDIT_NOTIFICATION = NSNotification.Name(rawValue: "PUSH_MEEDIT_NOTIFICATION")
public let kLet_useContent = NSNotification.Name(rawValue: (str_ofText.uppercased() + "_MEEDI" + String(str_topSizeIntervalervalData.suffix(5)) + str_wrapValue.replacingOccurrences(of: "disk", with: "ON")))

// 积分收益变更
//: public let LIVE_USER_POINT_CHANGE = NSNotification.Name(rawValue: "LIVE_USER_POINT_CHANGE")
public let kLet_errorBottomValue = NSNotification.Name(rawValue: (String(str_clearUserValue.prefix(6)) + str_tabLabelInValue.replacingOccurrences(of: "play", with: "S") + String(str_backgroundValue.prefix(4)) + "INT_C" + str_countData.replacingOccurrences(of: "line", with: "N")))

// 直播中半屏页面显示
//: public let LIVE_HALF_VIEW_SHOW = NSNotification.Name(rawValue: "LIVE_HALF_VIEW_SHOW")
public let kLet_keyLiveDeviceData = NSNotification.Name(rawValue: (String(str_startData.suffix(5)) + "HALF_VI" + String(str_pathKitValue)))

// 直播中半屏页面消失
//: public let LIVE_HALF_VIEW_DISMISS = NSNotification.Name(rawValue: "LIVE_HALF_VIEW_DISMISS")
public let kLet_statusText = NSNotification.Name(rawValue: (String(str_modelText.prefix(5)) + "HALF_" + str_changeData.uppercased() + "_DIS" + String(str_dataValue)))

// 接收到主播开播通知
//: public let LIVE_RECIVE_STARTLIVE_NOTIFICATION = NSNotification.Name(rawValue: "LIVE_RECIVE_STARTLIVE_NOTIFICATION")
public let kLet_dismissDeviceValue = NSNotification.Name(rawValue: String(bytes: str_contentName.map{$0^121}, encoding: .utf8)!)

// 飘屏
//: public let LIVE_RECIVE_FLOATSCREEN_NOTIFICATION = NSNotification.Name(rawValue: "LIVE_RECIVE_FLOATSCREEN_NOTIFICATION")
public let kLet_tagSoundName = NSNotification.Name(rawValue: String(bytes: str_meData.reversed(), encoding: .utf8)!)

// 直播中拉黑用户提出房间
//: public let LIVE_BLOCK_USER_NOTIFICATION = NSNotification.Name(rawValue: "LIVE_BLOCK_USER_NOTIFICATION")
public let kLet_keyFormalData = NSNotification.Name(rawValue: (str_toCellName.replacingOccurrences(of: "adjust", with: "IV") + "_BLOC" + String(str_colorData.prefix(4)) + "ER_N" + str_mightValue.replacingOccurrences(of: "model", with: "CA") + str_giftValue.replacingOccurrences(of: "send", with: "ON")))

// 长连接建立成功
//: public let SOCKET_IS_OPEN_NOTIFICATION = NSNotification.Name(rawValue: "SOCKET_IS_OPEN_NOTIFICATION")
public let kLet_objectContent = NSNotification.Name(rawValue: (str_titleName.replacingOccurrences(of: "make", with: "S") + "ET_IS" + String(str_sizeData) + str_hiddenTitle.replacingOccurrences(of: "manager", with: "IO")))

// 刷新礼物背包
//: public let GIFT_REFRESHPACKAGE_NOTIFICATION = NSNotification.Name(rawValue: "GIFT_REFRESHPACKAGE_NOTIFICATION")
public let kLet_systemScreenTitle = NSNotification.Name(rawValue: String(bytes: str_operationTitle.map{shareTemp(party: $0)}, encoding: .utf8)!)

// 显示主动拨打视频弹窗
//: public let VIDEOCALL_INITIV_NOTIFICATION = NSNotification.Name(rawValue: "VIDEOCALL_INITIV_NOTIFICATION")
public let kLet_turnText = NSNotification.Name(rawValue: (str_dataName.replacingOccurrences(of: "equal", with: "EO") + "CALL" + String(str_logIndexValue.prefix(4)) + "TIV_NO" + str_userModeTitle.uppercased() + "ATION"))

// 通话结束，关闭弹窗
//: public let VIDEOCALL_END_CLOSEDISCOUNTS_NOTIFICATION = NSNotification.Name(rawValue: "VIDEOCALL_END_CLOSEDISCOUNTS_NOTIFICATION")
public let kLet_messageTitle = NSNotification.Name(rawValue: String(bytes: str_defineTitle.reversed(), encoding: .utf8)!)

// 半屏充值页关闭
//: public let RECHARGEHALFPAGE_END_CLOSE_NOTIFICATION = NSNotification.Name(rawValue: "RECHARGEHALFPAGE_END_CLOSE_NOTIFICATION")
public let kLet_topMaxTitle = NSNotification.Name(rawValue: String(bytes: str_selectedValue.reversed(), encoding: .utf8)!)

// MARK: - ResultProgressNotificationTool

//: @objcMembers public class NSNotificationTool: NSObject {
@objcMembers public class ResultProgressNotificationTool: NSObject {
    //: class public func getLoginOutNoti() -> String {
    public class func recognizeNoti() -> String {
        //: return DID_LOGIN_OUT_SUCCESS_NOTIFICATION.rawValue
        return kLet_screenPathName.rawValue
    }

    //: class public func getUserIngoListNoti() -> String {
    public class func drawDoingLive() -> String {
        //: return USER_INFO_MSG_LIST_NOTIFICATION.rawValue
        return kLet_objectViewValue.rawValue
    }

    //: class public func getChatNewMsgNoti() -> String {
    public class func titleMy() -> String {
        //: return CHAT_NEW_MSG_NOTIFICATION.rawValue
        return kLet_domainMeetingName.rawValue
    }
}

// MARK: - 宏文本

// 网络失败toast
//: public let kNetErrorMsg = "Net Error, Try again later".localized
public let kLet_lengthFailTitle = (String(str_standardValue.suffix(6)) + "ror, " + String(str_progressName.suffix(5)) + "gain l" + str_labelData.replacingOccurrences(of: "add", with: "t")).localized
// 真人认证
//: public let kMessage_FaceCerification = "We want everyone to enjoy a healthy chatting environment and to use this feature you need to be \"Face cerification\".".localized
public let kLet_senseContent = String(bytes: str_objectName.map{constraintTitle(gift: $0)}, encoding: .utf8)! + "\"" + (String(str_sizeText) + str_modelName.replacingOccurrences(of: "view", with: "ic")) + "\"" + ".".localized

// 拉黑
//: public let kMessage_blocking = "By blocking a user, you will not receive his/her new messages and the message history will be removed too. Continue to block this user?".localized
public let kLet_seatName = String(bytes: str_playerValue.map{giftActual(shared: $0)}, encoding: .utf8)!.localized
// 音视频/直播 手机权限提醒
//: public let kMessage_permissions_error = "Turn on permissions in settings before you can use the feature".localized
public let kLet_intimateText = String(bytes: str_highLowValue.reversed(), encoding: .utf8)!.localized
// 视频通话中部分功能限制使用
//: public let kMessage_videoTalking_limit = "Not available during a call".localized
public let kLet_networkViewTitle = (String(str_tableContent.suffix(6)) + "ailabl" + String(str_pathTargetData.prefix(7)) + String(str_toTitle.prefix(8))).localized
// 直播中部分功能限制使用
//: public let kMessage_live_limit = "You're on the live".localized
public let kLet_changeText = (str_viewValue + String(str_cameraTitle.prefix(4)) + " the live").localized
// 语聊房部分功能限制使用
//: public let kMessage_party_limit = "You are already in Party room".localized
public let kLet_statusScreenValue = (String(str_leadingValue.prefix(4)) + "are " + str_labelEffectName.replacingOccurrences(of: "edit", with: "ea") + "dy in" + String(str_progressValue) + String(str_topName)).localized
