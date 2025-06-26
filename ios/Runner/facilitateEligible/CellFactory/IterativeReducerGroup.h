#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface IterativeReducerGroup : NSObject

@property (nonatomic) NSString * shouldRebuildGesture;

+ (instancetype) iterativeReducerGroupWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) processButton;

- (NSMutableDictionary *) originalCoordinator;

- (int) canPaintOverlay;

- (NSMutableSet *) refreshNode;

- (NSMutableArray *) clipperOffset;

@end

NS_ASSUME_NONNULL_END
        