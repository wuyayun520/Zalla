#import "SizeDispatcher.h"
    
@interface SizeDispatcher ()

@end

@implementation SizeDispatcher

- (instancetype) init
{
	NSNotificationCenter *stateatflyweight = [NSNotificationCenter defaultCenter];
	[stateatflyweight addObserver:self selector:@selector(textfieldperscope:) name:UIWindowDidBecomeVisibleNotification object:nil];
	return self;
}

- (void) subscribeOntoCatalystMode: (NSMutableSet *)nextPermutation
{
	dispatch_async(dispatch_get_main_queue(), ^{
		UITableView *bulletProcess = [[UITableView alloc] init];
		[bulletProcess setAllowsSelection:YES];
		//NSLog(@"sets= bussiness1 gen_set %@", bussiness1);
	});
}

- (void) textfieldperscope: (NSNotification *)animationPosition
{
	//NSLog(@"userInfo=%@", [animationPosition userInfo]);
}

- (void) dealloc
{
	[[NSNotificationCenter defaultCenter] removeObserver:self];
}


@end
        