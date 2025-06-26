#import "MetricsStateDelay.h"
    
@interface MetricsStateDelay ()

@end

@implementation MetricsStateDelay

- (void) eraseTouch
{
	dispatch_async(dispatch_get_main_queue(), ^{
		int indicatorCount = 21;
		UIActivityIndicatorView *performSingleton = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleMedium];
		[performSingleton setActivityIndicatorViewStyle:UIActivityIndicatorViewStyleMedium];
		[performSingleton startAnimating];
		[performSingleton setFrame:CGRectMake(indicatorCount, 36, 16, 902)];
		performSingleton.hidesWhenStopped = YES;
		if (performSingleton.animating) {
			[performSingleton stopAnimating];
			[performSingleton setFrame:CGRectMake(58, 52, 96, 92)];
			[performSingleton setActivityIndicatorViewStyle:UIActivityIndicatorViewStyleLarge];
			performSingleton.hidesWhenStopped = YES;
		}
		UILabel *streamInstruction = [[UILabel alloc] initWithFrame:CGRectMake(150, 279, 632, 207)];
		streamInstruction.frame = CGRectMake(127, 312, 452, 173);
		streamInstruction.layer.shadowOpacity = 0.0f;
		streamInstruction.numberOfLines = 486;
		streamInstruction.frame = CGRectMake(427, 420, 920, 920);
		streamInstruction.allowsDefaultTighteningForTruncation = NO;
		streamInstruction.lineBreakMode = 2;
		streamInstruction.shadowColor = [UIColor colorWithRed:96/255.0 green:127/255.0 blue:96/255.0 alpha:1.0];
		streamInstruction.numberOfLines = 57;
		streamInstruction.numberOfLines = 5;
		streamInstruction.contentScaleFactor = 2.0f;
		//NSLog(@"sets= business14 gen_int %@", business14);
	});
}


@end
        