#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SchedulerCache : NSObject

@property (nonatomic) int discardedmetadatalocation;

@property (nonatomic) NSMutableDictionary * onflextap;

+ (instancetype) schedulerCacheWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) persistentSorter;

- (NSMutableDictionary *) selectorTint;

- (int) elasticBitrate;

- (NSMutableSet *) channelsPressure;

- (NSMutableArray *) cloneAwait;

@end

NS_ASSUME_NONNULL_END
        