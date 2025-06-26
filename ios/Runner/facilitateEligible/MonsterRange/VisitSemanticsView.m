#import "VisitSemanticsView.h"
    
@interface VisitSemanticsView ()

@end

@implementation VisitSemanticsView

- (void) layoutChart
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSMutableArray *hasgram = [NSMutableArray array];
		for (int i = 5; i != 0; --i) {
			[hasgram addObject:[NSString stringWithFormat:@"currentCharacter%d", i]];
		}
		UITableView *animatedDuration = [[UITableView alloc] initWithFrame:CGRectMake(316, 180, 923, 705) style:UITableViewStylePlain];
		[animatedDuration registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
		//NSLog(@"Business19 gen_arr with count: %lu%@", (unsigned long)[hasgram count]);
	});
}


@end
        