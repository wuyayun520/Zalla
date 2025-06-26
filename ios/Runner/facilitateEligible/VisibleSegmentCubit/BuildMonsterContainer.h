#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BuildMonsterContainer : NSObject

@property (nonatomic) int retainedCanvas;

+ (instancetype) buildMonsterContainerWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) serializeStep;

- (NSMutableDictionary *) creatorForce;

- (int) shouldLoadVariant;

- (NSMutableSet *) cycledrawer;

- (NSMutableArray *) crudeListener;

@end

NS_ASSUME_NONNULL_END
        