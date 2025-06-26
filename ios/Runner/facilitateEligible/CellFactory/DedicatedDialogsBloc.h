#import "DeclarativeHandlerMetrics.h"
#import "DispatchReferenceObserver.h"
#import "ResumeButtonFactory.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DedicatedDialogsBloc : NSObject


- (void) publishPermissiveReference;

- (void) readBetweenRepositoryTier;

@end

NS_ASSUME_NONNULL_END
        