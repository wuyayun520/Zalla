#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DecodeShaderHelper : NSObject

@property (nonatomic) NSMutableArray * elasticityTag;

@property (nonatomic) NSMutableDictionary * errorscale;

@property (nonatomic) NSMutableSet * firstTimeline;

+ (instancetype) decodeShaderHelperWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) reusablePromise;

- (NSMutableDictionary *) immutableEffect;

- (int) moduleFormat;

- (NSMutableSet *) descriptorName;

- (NSMutableArray *) canYieldStamp;

@end

NS_ASSUME_NONNULL_END
        