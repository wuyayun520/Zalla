#import "OptionProcessPosition.h"
    
@interface OptionProcessPosition ()

@end

@implementation OptionProcessPosition

- (void) seekBeforeInteractorSystem
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSMutableSet *addSize = [NSMutableSet set];
		for (int i = 8; i != 0; --i) {
			[addSize addObject:[NSString stringWithFormat:@"canRebuildSizedBox%d", i]];
		}
		NSInteger endBuilder =  [addSize count];
		UISegmentedControl *certificatePhase = [[UISegmentedControl alloc] init];
		__block NSInteger persistMonster = 0;
		[addSize enumerateObjectsUsingBlock:^(id  _Nonnull canRebuildNotifier, BOOL * _Nonnull stop) {
		    if (persistMonster < 5) {
		        [certificatePhase insertSegmentWithTitle:[canRebuildNotifier description] atIndex:persistMonster animated:NO];
		        persistMonster++;
		    } else {
		        *stop = YES;
		    }
		}];
		[certificatePhase setSelectedSegmentIndex:0];
		[certificatePhase setTintColor:[UIColor grayColor]];
		UIAlertController *optimizerPhase = [UIAlertController alertControllerWithTitle:@"Set Operations" message:[NSString stringWithFormat:@"Set contains %lu items", (unsigned long)endBuilder] preferredStyle:UIAlertControllerStyleAlert];
		UIAlertAction *searchBloc = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
		[optimizerPhase addAction:searchBloc];
		if (endBuilder > 9) {
			// 当集合元素较多时，添加额外的操作按钮
			UIAlertAction *extraAction = [UIAlertAction actionWithTitle:@"Process Set" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
			    // 处理集合的代码
			    NSLog(@"Processing set with %lu items", (unsigned long)endBuilder);
			}];
			[optimizerPhase addAction:extraAction];
		}
		//NSLog(@"Business18 gen_set with size: %lu%@", (unsigned long)endBuilder);
	});
}


@end
        