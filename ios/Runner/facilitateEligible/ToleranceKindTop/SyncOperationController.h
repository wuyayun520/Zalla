#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SyncOperationController : NSObject

@property (nonatomic) int selectedBuilder;

@property (nonatomic) NSString * audioSpacing;

@property (nonatomic) NSMutableDictionary * fetchexpanded;

@property (nonatomic) NSMutableDictionary * pageviewResponse;

+ (instancetype) syncOperationControllerWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) canLoadTransition;

- (NSMutableDictionary *) draggableTexture;

- (int) shouldLoadPositioned;

- (NSMutableSet *) denseEffect;

- (NSMutableArray *) saveResource;

@end

NS_ASSUME_NONNULL_END
        