#import "OnBoxShadowUtil.h"
    
@interface OnBoxShadowUtil ()

@end

@implementation OnBoxShadowUtil

- (instancetype) init
{
	NSNotificationCenter *deployRoute = [NSNotificationCenter defaultCenter];
	[deployRoute addObserver:self selector:@selector(shouldSaveNotifier:) name:UIKeyboardWillHideNotification object:nil];
	return self;
}

- (void) syncSkinScene: (NSString *)rowBottom
{
	dispatch_async(dispatch_get_main_queue(), ^{
		const char *mediocreTexture = "tabbarTag";
    NSString *cubeTint = [[NSString alloc] initWithUTF8String:mediocreTexture];
		long objectScale = [rowBottom compare:cubeTint];
		if (objectScale != 0) {
			UIButton *shouldMountedActivity = [[UIButton alloc] init];
			[shouldMountedActivity  setTitleEdgeInsets:UIEdgeInsetsMake(19.200000f, 3.800000f, 1.400000f, 14.000000f)];
			shouldMountedActivity.layer.shadowRadius = 11.200000;
			shouldMountedActivity.layer.shadowOpacity = 0.440000;
			shouldMountedActivity.frame = CGRectMake(2564.000000, 1127.000000, 1075.000000, 1937.000000);
			[shouldMountedActivity  setTitleEdgeInsets:UIEdgeInsetsMake(9.800000f, 16.200000f, 7.600000f, 0.000000f)];
			shouldMountedActivity.frame = CGRectMake(2631.000000, 666.000000, 2348.000000, 949.000000);
			[shouldMountedActivity setTitleColor:[UIColor colorWithRed:227/255.0 green:230/255.0 blue:115/255.0 alpha:0.0] forState:UIControlStateNormal];
			shouldMountedActivity.backgroundColor = UIColor.cyanColor;
			shouldMountedActivity.layer.shadowColor = [UIColor colorWithRed:16/255.0 green:8/255.0 blue:208/255.0 alpha:0.862745].CGColor;
			shouldMountedActivity.tintColor = [UIColor colorWithRed:167/255.0 green:6/255.0 blue:131/255.0 alpha:0.027451];
		}
		//NSLog(@"sets= bussiness2 gen_str %@", bussiness2);
	});
}

- (void) shouldSaveNotifier: (NSNotification *)observerTint
{
	//NSLog(@"userInfo=%@", [observerTint userInfo]);
}

- (void) dealloc
{
	[[NSNotificationCenter defaultCenter] removeObserver:self];
}


@end
        