#import "ModelParameterState.h"
#import "ResourceDetectorDecorator.h"
#import "RetainedListenerListener.h"
#import "TemporaryRouteDispatcher.h"
#import "AssociatedSampleRow.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface WebConsumerTarget : NSObject


- (void) unbindAppBar;

- (void) restartWithoutSwitchEnvironment;

@end

NS_ASSUME_NONNULL_END
        