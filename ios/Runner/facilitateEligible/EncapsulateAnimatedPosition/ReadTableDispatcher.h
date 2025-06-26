#import "CurveActionAlignment.h"
#import "FillProjectMerger.h"
#import "EraseObserverBloc.h"
#import "ProtectedGroupImplement.h"
#import "EffectScreen.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ReadTableDispatcher : NSObject


- (void) notifyView;

- (void) activateWithLabelBuffer;

@end

NS_ASSUME_NONNULL_END
        