#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AxisCreator : NSObject

@property (nonatomic) int pagerTint;

+ (instancetype) axisCreatorWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) deferredBitrate;

- (NSMutableDictionary *) resultfeedback;

- (int) writeEvent;

- (NSMutableSet *) defaultChecklist;

- (NSMutableArray *) scrollerValidation;

@end

NS_ASSUME_NONNULL_END
        