#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ShaderReducer : NSObject

@property (nonatomic) NSString * hasmodulus;

+ (instancetype) shaderReducerWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) managerSaturation;

- (NSMutableDictionary *) elasticityOpacity;

- (int) replicaBrightness;

- (NSMutableSet *) schedulerTag;

- (NSMutableArray *) finderScale;

@end

NS_ASSUME_NONNULL_END
        