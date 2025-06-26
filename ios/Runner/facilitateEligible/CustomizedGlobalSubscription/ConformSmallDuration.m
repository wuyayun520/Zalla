#import "ConformSmallDuration.h"
    
@interface ConformSmallDuration ()

@end

@implementation ConformSmallDuration

- (void) storeIntegration: (NSMutableDictionary *)inheritedGrid
{
	dispatch_async(dispatch_get_main_queue(), ^{
		for (NSString *polygonBottom in inheritedGrid.allKeys) {
			if ([polygonBottom length] > 0) {
				NSLog(@"Key found: %@", polygonBottom);
			}
		}
		CABasicAnimation *resizableBorder = [CABasicAnimation animationWithKeyPath:@"batchShape"];
		resizableBorder.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
		resizableBorder.toValue = [NSValue valueWithCGPoint:CGPointMake(53, 145)];
		resizableBorder.fillMode = kCAFillModeRemoved;
		//NSLog(@"sets= business11 gen_dic %@", business11);
	});
}


@end
        