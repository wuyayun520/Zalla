#import "WithoutRequestSearcher.h"
    
@interface WithoutRequestSearcher ()

@end

@implementation WithoutRequestSearcher

- (void) cancelFinder: (NSString *)missedArchitecture
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSMutableDictionary *transformspot = [NSMutableDictionary dictionary];
		transformspot[@"None"] = [UIFont fontWithName:@"STHeitiTC-Light" size:75];;
		transformspot[@"None"] = [UIColor colorNamed:@"magentaColor"];;
		[missedArchitecture drawInRect:CGRectMake(456, 454, 30, 674) withAttributes:nil];
		CABasicAnimation *deserializeGroup = [CABasicAnimation animationWithKeyPath:@"layoutjobposition"];
		deserializeGroup.toValue = [NSValue valueWithCGPoint:CGPointMake(118, 185)];
		deserializeGroup.toValue = [NSValue valueWithCGPoint:CGPointMake(278, 38)];
		//NSLog(@"sets= bussiness1 gen_str %@", bussiness1);
	});
}


@end
        