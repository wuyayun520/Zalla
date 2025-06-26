#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface StatefulCallbackArchitecture : NSObject


- (void) renderTicker;

- (void) routeStateful: (NSMutableSet *)parentTransition and: (int)dynamicPermutation;

@end

NS_ASSUME_NONNULL_END
        