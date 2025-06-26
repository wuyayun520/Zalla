#import "PaintDeferredKernel.h"
#import "BeforeContractionDetector.h"
#import "UnsortedSubpixelOwner.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface VisibleEvaluationProtocol : NSObject


- (void) loadStep;

- (void) stopSophisticatedSkin;

@end

NS_ASSUME_NONNULL_END
        