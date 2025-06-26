#import "TitleActivityMode.h"
#import "GrainActivityShape.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface StatefulAnimationHandler : NSObject


- (void) finishCardWithoutBloc;

- (void) eraseDiscardedReducer;

@end

NS_ASSUME_NONNULL_END
        