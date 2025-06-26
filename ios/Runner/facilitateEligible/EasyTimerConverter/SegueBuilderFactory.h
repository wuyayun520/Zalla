#import "LogProtocol.h"
#import "ExtendCrudeService.h"
#import "ListenPlaybackLifecycle.h"
#import "CompleterTimeline.h"
#import "DraggableCursorAsync.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SegueBuilderFactory : NSObject


- (void) cacheWorkflowDuringSplitter;

- (void) handleActivityAction;

@end

NS_ASSUME_NONNULL_END
        