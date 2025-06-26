#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CaptureSignType : NSObject

@property (nonatomic) NSMutableSet * desktopChecklist;

@property (nonatomic) NSMutableDictionary * readcurve;

@property (nonatomic) NSMutableSet * resultduration;

@property (nonatomic) NSString * animatorVelocity;

@property (nonatomic) NSString * routeDirection;

@property (nonatomic) NSString * shouldPopMediaQuery;

+ (instancetype) captureSignTypeWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) checkboxParam;

- (NSMutableDictionary *) subtleDescriptor;

- (int) resilienceTheme;

- (NSMutableSet *) canPushMargin;

- (NSMutableArray *) precisionMode;

@end

NS_ASSUME_NONNULL_END
        