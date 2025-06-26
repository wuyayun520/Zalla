#import "TransitionMissedStateful.h"
#import "UnmountPositionedFactory.h"
#import "PreviewRangeList.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface StreamThemeState : NSObject


- (void) deserializeNavigationConstraint;

- (void) unmountedInTransitionSingleton;

@end

NS_ASSUME_NONNULL_END
        