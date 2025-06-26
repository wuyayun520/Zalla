#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FutureMaterial : NSObject

@property (nonatomic) int notationOrientation;

@property (nonatomic) NSString * shouldSerializeCapsule;

@property (nonatomic) NSMutableDictionary * interactiveTimeline;

+ (instancetype) futureMaterialWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) updateContraction;

- (NSMutableDictionary *) webStep;

- (int) layermodeappearance;

- (NSMutableSet *) providerLocation;

- (NSMutableArray *) disconnectChannel;

@end

NS_ASSUME_NONNULL_END
        