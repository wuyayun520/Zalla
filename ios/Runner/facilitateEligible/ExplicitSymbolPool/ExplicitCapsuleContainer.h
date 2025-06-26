#import "WithinRouterElement.h"
#import "TouchLoopContainer.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ExplicitCapsuleContainer : NSObject


- (void) disconnectReductionSubscription;

- (void) resumeTouchWithoutPosition;

@end

NS_ASSUME_NONNULL_END
        