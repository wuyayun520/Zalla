#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UnderMonsterConstraint : NSObject

@property (nonatomic) NSMutableArray * originalGem;

@property (nonatomic) NSMutableDictionary * scrollState;

+ (instancetype) underMonsterConstraintWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) showoffset;

- (NSMutableDictionary *) shouldSerializeLog;

- (int) synchronousVariant;

- (NSMutableSet *) shouldSetStateSegue;

- (NSMutableArray *) screensincememento;

@end

NS_ASSUME_NONNULL_END
        