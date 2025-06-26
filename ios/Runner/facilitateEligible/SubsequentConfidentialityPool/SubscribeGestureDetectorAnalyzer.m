#import "SubscribeGestureDetectorAnalyzer.h"
    
@interface SubscribeGestureDetectorAnalyzer ()

@end

@implementation SubscribeGestureDetectorAnalyzer

- (void) serializeInDropdownButtonType
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSMutableArray *shouldRouteKernel = [NSMutableArray array];
		for (int i = 0; i < 6; ++i) {
			[shouldRouteKernel addObject:[NSString stringWithFormat:@"bandwidthfeedback%d", i]];
		}
		NSInteger gemBorder = [shouldRouteKernel count];
		int projectActivity=0;
		for (int i = 0; i < gemBorder; i++) {
			projectActivity += [[shouldRouteKernel objectAtIndex:i] intValue];
		}
		float kernelTension = (float)projectActivity / gemBorder;
		if (gemBorder > 0) {
			NSLog(@"Average: %f", kernelTension);
		} else {
			NSLog(@"Array is empty");
		}
		//NSLog(@"Business17 gen_arr executed%@", Business17);
	});
}


@end
        