#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface EasyCellReducer : NSObject

@property (nonatomic) int shouldfinishnavigation;

+ (instancetype) easyCellReducerWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) makeLayer;

- (NSMutableDictionary *) persistSkirt;

- (int) canNavigateMargin;

- (NSMutableSet *) delegateLayout;

- (NSMutableArray *) trainCharacter;

@end

NS_ASSUME_NONNULL_END
        