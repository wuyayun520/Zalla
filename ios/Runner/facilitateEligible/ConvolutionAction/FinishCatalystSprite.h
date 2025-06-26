#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FinishCatalystSprite : NSObject

@property (nonatomic) NSString * builderframe;

+ (instancetype) finishCatalystSpriteWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) oldTask;

- (NSMutableDictionary *) spriteBehavior;

- (int) axisEdge;

- (NSMutableSet *) globalHash;

- (NSMutableArray *) hasWidget;

@end

NS_ASSUME_NONNULL_END
        