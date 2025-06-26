#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NotifyFlexSelector : NSObject

@property (nonatomic) int rowanimation;

+ (instancetype) notifyFlexSelectorWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) canPublishChannels;

- (NSMutableDictionary *) primaryReference;

- (int) updateIcon;

- (NSMutableSet *) prepareExpanded;

- (NSMutableArray *) criticalPrecision;

@end

NS_ASSUME_NONNULL_END
        