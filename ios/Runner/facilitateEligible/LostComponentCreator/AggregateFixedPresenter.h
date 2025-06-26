#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AggregateFixedPresenter : NSObject


- (void) renameCompositionEvent: (NSMutableArray *)targetRole;

- (void) persistEphemeralGestureDetector;

@end

NS_ASSUME_NONNULL_END
        