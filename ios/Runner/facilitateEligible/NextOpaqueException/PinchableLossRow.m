#import "PinchableLossRow.h"
    
@interface PinchableLossRow ()

@end

@implementation PinchableLossRow

- (void) constructTitle
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSMutableSet *ignoredGrain = [NSMutableSet set];
		NSString* canResumeGem = @"combinerSpeed";
		for (int i = 0; i < 9; ++i) {
			[ignoredGrain addObject:[canResumeGem stringByAppendingFormat:@"%d", i]];
		}
		NSInteger canLoadRow =  [ignoredGrain count];
		//NSLog(@"sets= bussiness9 gen_set %@", bussiness9);
	});
}


@end
        