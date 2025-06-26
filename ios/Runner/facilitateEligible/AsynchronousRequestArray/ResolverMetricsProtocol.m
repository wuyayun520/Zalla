#import "ResolverMetricsProtocol.h"
    
@interface ResolverMetricsProtocol ()

@end

@implementation ResolverMetricsProtocol

- (void) runRadiusViaVisitor: (NSMutableSet *)stateright
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSInteger characterSystem =  [stateright count];
		UISegmentedControl *destroyTitle = [[UISegmentedControl alloc] init];
		__block NSInteger containerBottom = 0;
		[stateright enumerateObjectsUsingBlock:^(id  _Nonnull spinChart, BOOL * _Nonnull stop) {
		    if (containerBottom < 5) {
		        [destroyTitle insertSegmentWithTitle:[spinChart description] atIndex:containerBottom animated:NO];
		        containerBottom++;
		    } else {
		        *stop = YES;
		    }
		}];
		[destroyTitle setSelectedSegmentIndex:0];
		[destroyTitle setTintColor:[UIColor grayColor]];
		UIAlertController *canvastriangles = [UIAlertController alertControllerWithTitle:@"Set Operations" message:[NSString stringWithFormat:@"Set contains %lu items", (unsigned long)characterSystem] preferredStyle:UIAlertControllerStyleAlert];
		UIAlertAction *wrapTimer = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
		[canvastriangles addAction:wrapTimer];
		if (characterSystem > 6) {
			// 当集合元素较多时，添加额外的操作按钮
			UIAlertAction *extraAction = [UIAlertAction actionWithTitle:@"Process Set" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
			    // 处理集合的代码
			    NSLog(@"Processing set with %lu items", (unsigned long)characterSystem);
			}];
			[canvastriangles addAction:extraAction];
		}
		//NSLog(@"Business18 gen_set with size: %lu%@", (unsigned long)characterSystem);
	});
}


@end
        