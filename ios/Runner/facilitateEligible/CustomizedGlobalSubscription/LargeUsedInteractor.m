#import "LargeUsedInteractor.h"
    
@interface LargeUsedInteractor ()

@end

@implementation LargeUsedInteractor

- (void) playElasticSprite: (NSMutableDictionary *)usedscroll
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSInteger formatInterpolation = usedscroll.count;
		UITableView *bufferTemple = [[UITableView alloc] init];
		[bufferTemple setDelegate:self];
		[bufferTemple setDataSource:self];
		[bufferTemple setSeparatorStyle:UITableViewCellSeparatorStyleSingleLine];
		[bufferTemple setRowHeight:50];
		NSString *canUnmountedSpecifier = @"CellIdentifier";
		[bufferTemple registerClass:[UITableViewCell class] forCellReuseIdentifier:canUnmountedSpecifier];
		UIRefreshControl *divideDuration = [[UIRefreshControl alloc] init];
		[divideDuration addTarget:self action:@selector(refreshData:) forControlEvents:UIControlEventValueChanged];
		[bufferTemple setRefreshControl:divideDuration];
		if (formatInterpolation > 6) {
			// 当字典元素较多时，添加分页控件
			UIPageControl *pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
			pageControl.numberOfPages = formatInterpolation / 10 + 1;
			pageControl.currentPage = 0;
			[pageControl addTarget:self action:@selector(pageChanged:) forControlEvents:UIControlEventValueChanged];
		}
		//NSLog(@"Business18 gen_dic with count: %d%@", formatInterpolation);
	});
}


@end
        