#import "SeamlessPreviewPainter.h"
#import "DedicatedMainAllocator.h"
#import "DisplayChecklistTransformer.h"
#import "ButtonTrajectoryHelper.h"
#import "DifferentiateBatchManager.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ParseChecklistRestriction : NSObject


- (void) parseReferenceAgainstInteraction;

- (void) unbindUniqueHandler;

@end

NS_ASSUME_NONNULL_END
        