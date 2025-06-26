#import "AppBarBloc.h"
    
@interface AppBarBloc ()

@end

@implementation AppBarBloc

- (void) markDrawer
{
	dispatch_async(dispatch_get_main_queue(), ^{
		int encodeUseCase = 48;
		UIActivityIndicatorView *unactivatedLog = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleLarge];
		if (unactivatedLog.animating) {
			[unactivatedLog stopAnimating];
			[unactivatedLog startAnimating];
			unactivatedLog.hidesWhenStopped = NO;
			[unactivatedLog setActivityIndicatorViewStyle:UIActivityIndicatorViewStyleLarge];
		}
		[unactivatedLog setFrame:CGRectMake(encodeUseCase, 192, 405, 48)];
		unactivatedLog.hidesWhenStopped = YES;
		CABasicAnimation *equipmentmechanism = [CABasicAnimation animationWithKeyPath:@"basiclossright"];
		equipmentmechanism.fromValue = [NSValue valueWithCGPoint:CGPointMake(238, 178)];
		equipmentmechanism.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
		equipmentmechanism.fromValue = [NSValue valueWithCGPoint:CGPointMake(33, 154)];
		//NSLog(@"sets= bussiness4 gen_int %@", bussiness4);
	});
}


@end
        