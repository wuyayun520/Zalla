#import "GlobalErrorTweak.h"
#import "ActivePermanentEntity.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ListViewAnalyzerProtocol : NSObject


- (void) markQueue;

- (void) pushChannelsSinceRemediation;

@end

NS_ASSUME_NONNULL_END
        