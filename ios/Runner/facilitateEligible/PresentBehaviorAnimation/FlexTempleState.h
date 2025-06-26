#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FlexTempleState : NSObject

@property (nonatomic) int stopcheckbox;

@property (nonatomic) int unactivatedPermutation;

@property (nonatomic) NSString * batchdepth;

+ (instancetype) flexTempleStateWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) canFormatCosine;

- (NSMutableDictionary *) singleInfo;

- (int) onchallengechanged;

- (NSMutableSet *) tappableMetrics;

- (NSMutableArray *) persistlayout;

@end

NS_ASSUME_NONNULL_END
        