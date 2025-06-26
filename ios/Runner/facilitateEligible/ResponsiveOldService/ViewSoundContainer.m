#import "ViewSoundContainer.h"
    
@interface ViewSoundContainer ()

@end

@implementation ViewSoundContainer

- (void) callIterativeGrainTask
{
	dispatch_async(dispatch_get_main_queue(), ^{
		int divideAnimation = 88;
		int desktopSize=72;
		if (desktopSize > divideAnimation) {
			desktopSize = divideAnimation;
		}
		UILabel *reliabilityOpacity = [[UILabel alloc] initWithFrame:CGRectMake(213, 353, 276, 446)];
		reliabilityOpacity.preferredMaxLayoutWidth = 3.0f;
		reliabilityOpacity.layer.masksToBounds = YES;
		reliabilityOpacity.frame = CGRectMake(242, 462, 898, 471);
		reliabilityOpacity.translatesAutoresizingMaskIntoConstraints = NO;
		reliabilityOpacity.contentScaleFactor = 2.0f;
		//NSLog(@"sets= bussiness9 gen_int %@", bussiness9);
	});
}


@end
        