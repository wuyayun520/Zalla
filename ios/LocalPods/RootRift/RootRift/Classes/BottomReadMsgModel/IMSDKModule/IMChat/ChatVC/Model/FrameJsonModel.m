
#import <Foundation/Foundation.h>

NSString *StringFromMusicData(Byte *data);


//: img
Byte str_clubName[] = {26, 3, 13, 203, 67, 118, 6, 249, 7, 100, 189, 167, 161, 103, 109, 105, 182};


//: gift
Byte str_destinationName[] = {63, 4, 13, 178, 208, 47, 145, 20, 139, 183, 73, 153, 173, 116, 102, 105, 103, 20};


//: video
Byte str_arrayData[] = {14, 5, 9, 254, 65, 187, 25, 77, 148, 111, 101, 100, 105, 118, 46};


//: audio
Byte str_renderText[] = {97, 5, 11, 136, 215, 220, 120, 158, 11, 47, 80, 111, 105, 100, 117, 97, 55};


//: Sent 
Byte str_localMobileTitle[] = {22, 5, 7, 90, 254, 254, 241, 32, 116, 110, 101, 83, 103};


//: text
Byte str_clubValue[] = {93, 4, 9, 145, 137, 39, 222, 140, 3, 116, 120, 101, 116, 31};

// __DEBUG__
// __CLOSE_PRINT__
//
//  FrameJsonModel.m
//  Talking
//
//   on 2021/9/3.
//  Copyright © 2021 
//

// __M_A_C_R_O__
//: #import "FrameJsonModel.h"
#import "FrameJsonModel.h"
//: #import "RootRift/RootRift-Swift.h"
#import "RootRift/RootRift-Swift.h"

//: @implementation FrameJsonModel
@implementation FrameJsonModel

//: @end
@end

//: @implementation CornerModel
@implementation CornerModel

//: @end
@end

//: @implementation LabModel
@implementation LabModel

//: + (void)saveIntimatePhoto:(LabModel *)photoModel forMsgID:(NSString *)msgID {
+ (void)render:(LabModel *)photoModel beyondPhoto:(NSString *)msgID {
    //: NSMutableDictionary *dict = [self loadLocalIntimatePhotoDict].mutableCopy;
    NSMutableDictionary *dict = [self handleVideo].mutableCopy;
    //: NSString *jsonString = [photoModel toJSONString];
    NSString *jsonString = [photoModel toJSONString];
    //: dict[msgID] = jsonString;
    dict[msgID] = jsonString;
    //: NSString *path = [DanceMusicReactiveCompatible getIntimatePhotoPath];
    NSString *path = [DanceMusicReactiveCompatible infoPath];
    //: [NSKeyedArchiver archiveRootObject:dict toFile:path];
    [NSKeyedArchiver archiveRootObject:dict toFile:path];
}

//: + (NSMutableDictionary<NSString *, NSString *> *)loadLocalIntimatePhotoDict {
+ (NSMutableDictionary<NSString *, NSString *> *)handleVideo {
    //: NSString *path = [DanceMusicReactiveCompatible getIntimatePhotoPath];
    NSString *path = [DanceMusicReactiveCompatible infoPath];
    //: NSMutableDictionary *dict = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    NSMutableDictionary *dict = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    //: if (dict.allKeys.count > 0) {
    if (dict.allKeys.count > 0) {
        //: return dict;
        return dict;
    }
    //: return [NSMutableDictionary dictionary];
    return [NSMutableDictionary dictionary];
}

//: @end
@end

//: @implementation ModeAddModel
@implementation ModeAddModel

//: + (void)saveIntimateVideo:(ModeAddModel *)videoModel forMsgID:(NSString *)msgID {
+ (void)owner:(ModeAddModel *)videoModel assemblage:(NSString *)msgID {
    //: NSMutableDictionary *dict = [self loadLocalIntimateVideoDict].mutableCopy;
    NSMutableDictionary *dict = [self run].mutableCopy;
    //: NSString *jsonString = [videoModel toJSONString];
    NSString *jsonString = [videoModel toJSONString];
    //: dict[msgID] = jsonString;
    dict[msgID] = jsonString;
    //: NSString *path = [DanceMusicReactiveCompatible getIntimateVideoPath];
    NSString *path = [DanceMusicReactiveCompatible buttonPath];
    //: [NSKeyedArchiver archiveRootObject:dict toFile:path];
    [NSKeyedArchiver archiveRootObject:dict toFile:path];
}

//: + (NSMutableDictionary<NSString *, NSString *> *)loadLocalIntimateVideoDict {
+ (NSMutableDictionary<NSString *, NSString *> *)run {
    //: NSString *path = [DanceMusicReactiveCompatible getIntimateVideoPath];
    NSString *path = [DanceMusicReactiveCompatible buttonPath];
    //: NSMutableDictionary *dict = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    NSMutableDictionary *dict = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    //: if (dict.allKeys.count > 0) {
    if (dict.allKeys.count > 0) {
        //: return dict;
        return dict;
    }
    //: return [NSMutableDictionary dictionary];
    return [NSMutableDictionary dictionary];
}

//: @end
@end

//: @implementation AbTalkingChatMsgCustomSendModel
@implementation CornerJsonModel

//: @end
@end

//: @implementation NamePathModel
@implementation NamePathModel

//: @end
@end

//: @implementation ModeJsonModel
@implementation ModeJsonModel

//: @end
@end

//: @implementation AbTalkingChatMsgGiftModel
@implementation OpenJsonModel

//: @end
@end

//: @implementation WithLayerModel
@implementation WithLayerModel

//: @end
@end


//: @implementation AbTalkingChatMsgQuoteModel
@implementation ToModel

//: - (BOOL)isQuoteMsg{
- (BOOL)levelAsk{
    //: if (self && self.msgId && self.msgId.length > 0) {
    if (self && self.msgId && self.msgId.length > 0) {
        //: return YES;
        return YES;
    }
    //: return NO;
    return NO;
}
//: - (CGSize)quoteSize:(NSInteger)maxWidth{
- (CGSize)reiterate:(NSInteger)maxWidth{
    //: NSInteger height = height;
    NSInteger height = height;

    //: NSDictionary* attributes = @{NSFontAttributeName: [UIFont pingfangRugularFontWithFontSize:12]};
    NSDictionary* attributes = @{NSFontAttributeName: [UIFont rugularWithFontSize:12]};


    //: if ([self.renderType isEqualToString:@"video"] || [self.renderType isEqualToString:@"img"]) {
    if ([self.renderType isEqualToString:StringFromMusicData(str_arrayData)] || [self.renderType isEqualToString:StringFromMusicData(str_clubName)]) {
        //: NSString *str = [NSString stringWithFormat:@"%@: ",self.sendName];
        NSString *str = [NSString stringWithFormat:@"%@: ",self.sendName];
        //: CGSize nameSize = [str boundingRectWithSize:CGSizeMake(1.7976931348623157e+308, 14) options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:attributes context:nil].size;
        CGSize nameSize = [str boundingRectWithSize:CGSizeMake(1.7976931348623157e+308, 14) options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:attributes context:nil].size;

        //: return CGSizeMake(((5 + nameSize.width + 34) < (maxWidth) ? (5 + nameSize.width + 34) : (maxWidth)) , 31);
        return CGSizeMake(((5 + nameSize.width + 34) < (maxWidth) ? (5 + nameSize.width + 34) : (maxWidth)) , 31);

    }
    //: if ([self.renderType isEqualToString:@"text"]) {
    if ([self.renderType isEqualToString:StringFromMusicData(str_clubValue)]) {
        //: NSString *str = [NSString stringWithFormat:@"%@: %@",self.sendName,self.renderData.content];
        NSString *str = [NSString stringWithFormat:@"%@: %@",self.sendName,self.renderData.content];
        //: CGSize contentSize = [str boundingRectWithSize:CGSizeMake(1.7976931348623157e+308, 14) options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:attributes context:nil].size;
        CGSize contentSize = [str boundingRectWithSize:CGSizeMake(1.7976931348623157e+308, 14) options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:attributes context:nil].size;

        //: return CGSizeMake(((maxWidth) < (5 + contentSize.width) ? (maxWidth) : (5 + contentSize.width)) , 14);
        return CGSizeMake(((maxWidth) < (5 + contentSize.width) ? (maxWidth) : (5 + contentSize.width)) , 14);
    }

    //: if ([self.renderType isEqualToString:@"audio"]) {
    if ([self.renderType isEqualToString:StringFromMusicData(str_renderText)]) {
        //: NSString *str = [NSString stringWithFormat:@"%@: ",self.sendName];
        NSString *str = [NSString stringWithFormat:@"%@: ",self.sendName];
        //: CGSize nameSize = [str boundingRectWithSize:CGSizeMake(1.7976931348623157e+308, 14) options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:attributes context:nil].size;
        CGSize nameSize = [str boundingRectWithSize:CGSizeMake(1.7976931348623157e+308, 14) options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:attributes context:nil].size;

        //: return CGSizeMake(((5 + nameSize.width + 48) < (maxWidth) ? (5 + nameSize.width + 48) : (maxWidth)) , 22);
        return CGSizeMake(((5 + nameSize.width + 48) < (maxWidth) ? (5 + nameSize.width + 48) : (maxWidth)) , 22);
    }
    //: if ([self.renderType isEqualToString:@"gift"]) {
    if ([self.renderType isEqualToString:StringFromMusicData(str_destinationName)]) {
        //: NSString *str = [NSString stringWithFormat:@"%@: %@%@ x%ld",self.sendName,@"Sent ".localized,self.renderData.giftNameLocal, (long)self.renderData.giftNum];
        NSString *str = [NSString stringWithFormat:@"%@: %@%@ x%ld",self.sendName,StringFromMusicData(str_localMobileTitle).roundEqual,self.renderData.sumimate, (long)self.renderData.giftNum];
        //: CGSize contentSize = [str boundingRectWithSize:CGSizeMake(1.7976931348623157e+308, 14) options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:attributes context:nil].size;
        CGSize contentSize = [str boundingRectWithSize:CGSizeMake(1.7976931348623157e+308, 14) options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:attributes context:nil].size;
        //: return CGSizeMake(((maxWidth) < (5 + contentSize.width) ? (maxWidth) : (5 + contentSize.width)) , 14);
        return CGSizeMake(((maxWidth) < (5 + contentSize.width) ? (maxWidth) : (5 + contentSize.width)) , 14);
    }

    //: return CGSizeZero;
    return CGSizeZero;
}

//: @end
@end

//: @implementation AbTalkingChatMsgQuoteDataModel
@implementation ListModel

//: - (NSString *)giftNameLocal{
- (NSString *)sumimate{
    //: NSString *locName;
    NSString *locName;
    //: NSString *sysLangCode = [ListMacroDefine getSystemLangCode];
    NSString *sysLangCode = [ListMacroDefine upOf];
    //: if ([sysLangCode isEqualToString:@"ar"]) {
    if ([sysLangCode isEqualToString:@"ar"]) {
        //: locName = self.giftNameI18n[@"ar"];
        locName = self.giftNameI18n[@"ar"];
    //: }else if ([sysLangCode isEqualToString:@"es"]) {
    }else if ([sysLangCode isEqualToString:@"es"]) {
        //: locName = self.giftNameI18n[@"es"];
        locName = self.giftNameI18n[@"es"];
    //: }else if ([sysLangCode isEqualToString:@"pt"]) {
    }else if ([sysLangCode isEqualToString:@"pt"]) {
        //: locName = self.giftNameI18n[@"pt"];
        locName = self.giftNameI18n[@"pt"];
    //: }else{
    }else{
        //: locName = self.giftNameI18n[@"en"];
        locName = self.giftNameI18n[@"en"];
    }
    //: if (locName == nil || locName.length > 0 ) {
    if (locName == nil || locName.length > 0 ) {
        //: locName = self.giftName;
        locName = self.giftName;
    }
    //: return locName;
    return locName;
}

//: @end
@end

//: @implementation ClickJsonModel
@implementation ClickJsonModel

//: + (void)saveAskForGiftWithMsgID:(NSString *)msgID {
+ (void)size:(NSString *)msgID {
    //: @synchronized (self) {
    @synchronized (self) {
        //: NSMutableArray *arr = [self loadAskForGiftArr];
        NSMutableArray *arr = [self withUnwanted];
        //: [arr addObject:msgID];
        [arr addObject:msgID];
        //: NSString *path = [DanceMusicReactiveCompatible getAskForGiftPath];
        NSString *path = [DanceMusicReactiveCompatible stuff];
        //: [NSKeyedArchiver archiveRootObject:arr toFile:path];
        [NSKeyedArchiver archiveRootObject:arr toFile:path];
    }
}

//: + (NSMutableArray *)loadAskForGiftArr {
+ (NSMutableArray *)withUnwanted {
    //: NSString *path = [DanceMusicReactiveCompatible getAskForGiftPath];
    NSString *path = [DanceMusicReactiveCompatible stuff];
    //: NSMutableArray *arr = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    NSMutableArray *arr = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    //: if (arr.count > 0) {
    if (arr.count > 0) {
        //: return arr;
        return arr;
    }
    //: return [@[] mutableCopy];
    return [@[] mutableCopy];
}

//: @end
@end

Byte * MusicDataToCache(Byte *data) {
    int scaleMaker = data[0];
    int response = data[1];
    int external = data[2];
    if (!scaleMaker) return data + external;
    for (int i = 0; i < response / 2; i++) {
        int begin = external + i;
        int end = external + response - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[external + response] = 0;
    return data + external;
}

NSString *StringFromMusicData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)MusicDataToCache(data)];
}  
