#import "AsynchronousObserverConverter.h"
#import "CopyControllerLayout.h"
#import "OtherUsecaseDelegate.h"
#import "ServiceObserverDelegate.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface EmbedBorderSelector : NSObject


- (void) stopOriginalModal;

- (void) didDispatchSink;

@end

NS_ASSUME_NONNULL_END
        