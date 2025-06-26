#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface GestureDetectorCallback : NSObject

@property (nonatomic) int equalizationCoord;

+ (instancetype) gestureDetectorCallbackWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) autoRadio;

- (NSMutableDictionary *) sessionIndex;

- (int) fragmentName;

- (NSMutableSet *) gateStatus;

- (NSMutableArray *) lazycallback;

@end

NS_ASSUME_NONNULL_END
        