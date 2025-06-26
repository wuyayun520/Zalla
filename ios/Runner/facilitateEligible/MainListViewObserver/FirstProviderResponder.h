#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FirstProviderResponder : NSObject

@property (nonatomic) int criticalStream;

+ (instancetype) firstProviderResponderWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) bitrateFrequency;

- (NSMutableDictionary *) seekLoop;

- (int) canEndInterpolation;

- (NSMutableSet *) persistentElement;

- (NSMutableArray *) requestOperation;

@end

NS_ASSUME_NONNULL_END
        