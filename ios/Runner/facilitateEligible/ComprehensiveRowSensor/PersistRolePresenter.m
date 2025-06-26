#import "PersistRolePresenter.h"
    
@interface PersistRolePresenter ()

@end

@implementation PersistRolePresenter

- (void) outWidgetResource
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSMutableArray *uniqueResponse = [NSMutableArray array];
		for (int i = 0; i < 7; ++i) {
			[uniqueResponse addObject:[NSString stringWithFormat:@"largeSign%d", i]];
		}
		NSString *comprehensiveextension = [uniqueResponse objectAtIndex:0];
		UISegmentedControl *canPushButton = [[UISegmentedControl alloc] init];
		[canPushButton insertSegmentWithTitle:comprehensiveextension atIndex:0 animated:YES];
		canPushButton.selected = NO;
		canPushButton.enabled = YES;
		//NSLog(@"sets= bussiness6 gen_arr %@", bussiness6);
	});
}


@end
        