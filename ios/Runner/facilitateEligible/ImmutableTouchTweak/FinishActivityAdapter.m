#import "FinishActivityAdapter.h"
    
@interface FinishActivityAdapter ()

@end

@implementation FinishActivityAdapter

- (void) hideFunctionalDurationStyle: (int)playbackEdge
{
	dispatch_async(dispatch_get_main_queue(), ^{
		int shouldKeepSkin=3;
		if (shouldKeepSkin > playbackEdge) {
			shouldKeepSkin = playbackEdge;
		}
		UILabel *canYieldBinary = [[UILabel alloc] initWithFrame:CGRectMake(59, 387, 251, 275)];
		canYieldBinary.layer.shadowOpacity = 0.0f;
		canYieldBinary.layer.shadowOpacity = 0.0f;
		CATransition *similarDescription = [CATransition animation];
		similarDescription.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
		//NSLog(@"sets= bussiness9 gen_int %@", bussiness9);
	});
}


@end
        