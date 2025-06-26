#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface KeepSimilarPriority : NSObject

@property (nonatomic) int tensorInstruction;

@property (nonatomic) NSMutableDictionary * pausespot;

+ (instancetype) keepSimilarPriorityWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) shaderDecorator;

- (NSMutableDictionary *) shouldPushTheme;

- (int) usagePhase;

- (NSMutableSet *) containerType;

- (NSMutableArray *) documentChain;

@end

NS_ASSUME_NONNULL_END
        