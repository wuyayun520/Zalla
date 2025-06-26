#import "AssociateInactiveModel.h"
    
@interface AssociateInactiveModel ()

@end

@implementation AssociateInactiveModel

- (void) pushIndicatorFrame: (NSMutableDictionary *)originalCard
{
	dispatch_async(dispatch_get_main_queue(), ^{
		CATransition *iterativeAnimatedContainer = [CATransition animation];
		iterativeAnimatedContainer.type = kCATransitionPush;
		//NSLog(@"sets= bussiness2 gen_dic %@", bussiness2);
	});
}


@end
        