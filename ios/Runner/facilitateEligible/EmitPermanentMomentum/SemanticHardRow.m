#import "SemanticHardRow.h"
    
@interface SemanticHardRow ()

@end

@implementation SemanticHardRow

- (void) partitionBloc: (NSMutableArray *)rectAcceleration
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSInteger keepSemantics = [rectAcceleration count];
		int exceptionpager=0;
		for (int i = 0; i < keepSemantics; i++) {
			exceptionpager += [[rectAcceleration objectAtIndex:i] intValue];
		}
		float shearException = (float)exceptionpager / keepSemantics;
		if (keepSemantics > 0) {
			NSLog(@"Average: %f", shearException);
		} else {
			NSLog(@"Array is empty");
		}
		UITextField *canCreateNavigation = [[UITextField alloc] init];
		canCreateNavigation.tag = 7;
		//NSLog(@"Business17 gen_arr executed%@", Business17);
	});
}


@end
        