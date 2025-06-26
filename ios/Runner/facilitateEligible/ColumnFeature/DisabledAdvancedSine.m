#import "DisabledAdvancedSine.h"
    
@interface DisabledAdvancedSine ()

@end

@implementation DisabledAdvancedSine

- (void) deprecateControllerAndRange: (NSMutableArray *)advancedScheduler
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSNumberFormatter *priorConverter = [[NSNumberFormatter alloc] init];
		priorConverter.minimumFractionDigits = 1;
		[priorConverter setNumberStyle:NSNumberFormatterCurrencyStyle];
		priorConverter.minimumFractionDigits = 9;
		//NSLog(@"sets= bussiness5 gen_arr %@", bussiness5);
	});
}


@end
        