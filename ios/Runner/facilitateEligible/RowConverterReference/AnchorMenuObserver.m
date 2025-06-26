#import "AnchorMenuObserver.h"
    
@interface AnchorMenuObserver ()

@end

@implementation AnchorMenuObserver

- (void) tellCupertinoNodeObserver: (NSMutableDictionary *)sourceTabBar
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSInteger respectiveSine = sourceTabBar.count;
		UITableView *primarySemantics = [[UITableView alloc] init];
		[primarySemantics setDelegate:self];
		[primarySemantics setDataSource:self];
		[primarySemantics setSeparatorStyle:UITableViewCellSeparatorStyleSingleLine];
		[primarySemantics setRowHeight:42];
		NSString *materializeLoop = @"CellIdentifier";
		[primarySemantics registerClass:[UITableViewCell class] forCellReuseIdentifier:materializeLoop];
		UIRefreshControl *nativeBox = [[UIRefreshControl alloc] init];
		[nativeBox addTarget:self action:@selector(refreshData:) forControlEvents:UIControlEventValueChanged];
		[primarySemantics setRefreshControl:nativeBox];
		if (respectiveSine > 8) {
			// 当字典元素较多时，添加分页控件
			UIPageControl *pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
			pageControl.numberOfPages = respectiveSine / 10 + 1;
			pageControl.currentPage = 0;
			[pageControl addTarget:self action:@selector(pageChanged:) forControlEvents:UIControlEventValueChanged];
		}
		//NSLog(@"Business18 gen_dic with count: %d%@", respectiveSine);
	});
}


@end
        