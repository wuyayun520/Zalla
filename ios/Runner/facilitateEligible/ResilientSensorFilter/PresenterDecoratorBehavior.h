#import "PersistentDimensionReceiver.h"
#import "DescriptionObserverColor.h"
#import "WithVariantConstraint.h"
#import "ActivityObserverGroup.h"
#import "SmallStateManager.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PresenterDecoratorBehavior : NSObject


- (void) addCompletionLikeConsumer;

- (void) finishRow;

@end

NS_ASSUME_NONNULL_END
        