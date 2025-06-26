#import "SequentialStoryboardAsync.h"
#import "AutoNotifierError.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DirectlyRapidCompleter : NSObject


- (void) detachThroughObserverMode;

- (void) processExpandedOutsideScope;

@end

NS_ASSUME_NONNULL_END
        