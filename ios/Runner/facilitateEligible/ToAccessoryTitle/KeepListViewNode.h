#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface KeepListViewNode : NSObject

@property (nonatomic) int opaquePromise;

+ (instancetype) keepListViewNodeWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) deactivateMetadata;

- (NSMutableDictionary *) consumerSingleton;

- (int) futureVelocity;

- (NSMutableSet *) detachFragment;

- (NSMutableArray *) boxBuffer;

@end

NS_ASSUME_NONNULL_END
        