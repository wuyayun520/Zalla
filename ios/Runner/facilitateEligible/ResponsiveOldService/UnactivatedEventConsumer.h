#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UnactivatedEventConsumer : NSObject

@property (nonatomic) NSString * independentDecoration;

+ (instancetype) unactivatedEventConsumerWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) emitStack;

- (NSMutableDictionary *) startInstruction;

- (int) notificationRate;

- (NSMutableSet *) reusableImpact;

- (NSMutableArray *) pushInkWell;

@end

NS_ASSUME_NONNULL_END
        