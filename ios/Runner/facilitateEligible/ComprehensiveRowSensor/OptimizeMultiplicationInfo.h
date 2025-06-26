#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface OptimizeMultiplicationInfo : NSObject

@property (nonatomic) NSString * concreteResult;

@property (nonatomic) int shouldRebuildTransition;

@property (nonatomic) int concurrentSingleton;

+ (instancetype) optimizeMultiplicationInfoWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) shouldConnectFragment;

- (NSMutableDictionary *) discardedStateful;

- (int) semanticsEdge;

- (NSMutableSet *) binderScale;

- (NSMutableArray *) themeLayer;

@end

NS_ASSUME_NONNULL_END
        