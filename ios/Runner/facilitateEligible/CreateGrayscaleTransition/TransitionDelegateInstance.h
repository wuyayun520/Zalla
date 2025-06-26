#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TransitionDelegateInstance : NSObject

@property (nonatomic) NSString * capsuleBorder;

@property (nonatomic) int flexSize;

@property (nonatomic) int fixedSpine;

@property (nonatomic) NSMutableArray * opaqueTransition;

@property (nonatomic) NSMutableDictionary * scrollableTouch;

+ (instancetype) transitionDelegateInstanceWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) constructEvent;

- (NSMutableDictionary *) iterativeSubscriber;

- (int) canDeserializeProject;

- (NSMutableSet *) reflectSingleton;

- (NSMutableArray *) statelessRotation;

@end

NS_ASSUME_NONNULL_END
        