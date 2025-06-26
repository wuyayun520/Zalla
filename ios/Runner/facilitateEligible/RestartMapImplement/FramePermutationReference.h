#import "ActionTimeInstance.h"
#import "ObserverBloc.h"
#import "LossTimerFilter.h"
#import "TransformerAnalyzer.h"
#import "ToleranceDecorator.h"
#import "TextWidget.h"
#import "FromRouterProcessor.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FramePermutationReference : NSObject


- (void) publishDownStreamAction;

- (void) animateRemainderAction;

@end

NS_ASSUME_NONNULL_END
        