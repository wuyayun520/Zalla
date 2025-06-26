#import "SchedulerCache.h"
#import "EnhanceScaffoldInterface.h"
#import "BorderVisitorForce.h"
#import "ConcurrentStoreAdapter.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ComposableAxisProvider : NSObject


- (void) escalateService;

- (void) syncLastSink;

@end

NS_ASSUME_NONNULL_END
        