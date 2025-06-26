#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ParticleRendererManager : NSObject

@property (nonatomic) int displayableBloc;

+ (instancetype) particleRendererManagerWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) canUnmountBehavior;

- (NSMutableDictionary *) shouldRebuildObserver;

- (int) descriptordensity;

- (NSMutableSet *) emitSpine;

- (NSMutableArray *) opaquestate;

@end

NS_ASSUME_NONNULL_END
        