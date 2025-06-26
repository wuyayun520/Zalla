#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface WriteBitrateContainer : NSObject

@property (nonatomic) NSMutableSet * materialError;

@property (nonatomic) NSString * shouldAnimateLabel;

+ (instancetype) writeBitrateContainerWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) requiredThreshold;

- (NSMutableDictionary *) mediumTimeline;

- (int) canShowAspect;

- (NSMutableSet *) deactivateduration;

- (NSMutableArray *) discoverConfiguration;

@end

NS_ASSUME_NONNULL_END
        