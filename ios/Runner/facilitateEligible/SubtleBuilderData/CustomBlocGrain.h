#import "PushSecondSink.h"
#import "BelowColumnProvider.h"
#import "AdjustNavigationType.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CustomBlocGrain : NSObject


- (void) pauseMovementThanTrigger;

- (void) deflateTimeline;

@end

NS_ASSUME_NONNULL_END
        