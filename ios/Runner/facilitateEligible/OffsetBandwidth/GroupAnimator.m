#import "GroupAnimator.h"
    
@interface GroupAnimator ()

@end

@implementation GroupAnimator

- (void) storeSingleLayout: (int)nextVertex
{
	dispatch_async(dispatch_get_main_queue(), ^{
		int reducepreview=17;
		if (reducepreview > nextVertex) {
			reducepreview = nextVertex;
		}
		UILabel *tensorElasticity = [[UILabel alloc] init];
		tensorElasticity.layer.shadowOpacity = 0.0f;
		tensorElasticity.textAlignment = NSTextAlignmentCenter;
		[tensorElasticity layoutSubviews];
		CATransition *volumeShape = [CATransition animation];
		volumeShape.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
		volumeShape.subtype = kCATransitionFromTop;
		volumeShape.subtype = kCATransitionFromLeft;
		//NSLog(@"sets= bussiness9 gen_int %@", bussiness9);
	});
}


@end
        