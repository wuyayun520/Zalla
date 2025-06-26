#import "RowAnalyzerType.h"
#import "FromPrecisionCompleter.h"
#import "LazyDetailCreator.h"
#import "OptimizeBaseConstant.h"
#import "PerformAnimationFilter.h"
#import "ListenGateTrigger.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ShaderServiceAdapter : NSObject


- (void) serializeBeforeNibFacade;

- (void) provideStep;

@end

NS_ASSUME_NONNULL_END
        