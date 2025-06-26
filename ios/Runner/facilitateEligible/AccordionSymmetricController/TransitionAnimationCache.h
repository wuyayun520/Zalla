#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TransitionAnimationCache : NSObject

@property (nonatomic) int cartesianVector;

@property (nonatomic) int shouldPushIndicator;

@property (nonatomic) NSMutableDictionary * scrollPressure;

@property (nonatomic) NSMutableDictionary * shouldCacheBullet;

@property (nonatomic) NSMutableArray * shouldMountScroll;

+ (instancetype) transitionAnimationCacheWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) elementResponse;

- (NSMutableDictionary *) formatSubpixel;

- (int) canObserveText;

- (NSMutableSet *) canKeepCapsule;

- (NSMutableArray *) shouldUnmountPlate;

@end

NS_ASSUME_NONNULL_END
        