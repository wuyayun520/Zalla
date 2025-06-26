#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface InErrorSplitter : NSObject


- (void) consumeBeforeReducerCommand;

- (void) observeResourceAwait: (NSString *)reactiveSign;

@end

NS_ASSUME_NONNULL_END
        