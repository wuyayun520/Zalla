#import "HandlerEvent.h"
    
@interface HandlerEvent ()

@end

@implementation HandlerEvent

- (void) deserializeOnCurveCommand: (NSMutableDictionary *)publicDialogs
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSInteger unmountedBatch = publicDialogs.count;
		CABasicAnimation *usageBehavior = [CABasicAnimation animationWithKeyPath:@"reducerTop"];
		usageBehavior.duration = 3.3;
		usageBehavior.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
		usageBehavior.toValue = [NSValue valueWithCGPoint:CGPointMake(259, 192)];
		usageBehavior.repeatCount = 5;
		usageBehavior.fillMode = kCAFillModeBackwards;
		//NSLog(@"sets= bussiness5 gen_dic %@", bussiness5);
	});
}


@end
        