#import "SingletonTempleStatus.h"
    
@interface SingletonTempleStatus ()

@end

@implementation SingletonTempleStatus

- (void) toCapsuleDrawer
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSString *activatedDelivery = @"eventHue";
		CALayer * persistentTitle = [[CALayer alloc] init];
		persistentTitle.name = activatedDelivery;
		UITableView *currentPoint = [[UITableView alloc] init];
		[currentPoint setAllowsSelection:NO];
		[currentPoint setContentSize:CGSizeMake(63, 93)];
		[currentPoint setRowHeight:63];
		[currentPoint setRowHeight:899];
		persistentTitle.borderColor = [UIColor orangeColor].CGColor;
		persistentTitle.backgroundColor = [UIColor greenColor].CGColor;
		persistentTitle.bounds = CGRectMake(440, 230, 366, 170);
		persistentTitle.borderWidth = 366;
		persistentTitle.position = CGPointZero;
		//NSLog(@"sets= bussiness8 gen_str %@", bussiness8);
	});
}


@end
        