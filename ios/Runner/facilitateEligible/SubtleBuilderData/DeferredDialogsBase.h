#import "ForGemProvider.h"
#import "AsynchronousDialogsObserver.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DeferredDialogsBase : NSObject


- (void) moveNotifierThroughGrain;

- (void) lockEnabledPreview;

@end

NS_ASSUME_NONNULL_END
        