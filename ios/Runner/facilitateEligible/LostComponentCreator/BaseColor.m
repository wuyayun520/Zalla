#import "BaseColor.h"
    
@interface BaseColor ()

@end

@implementation BaseColor

- (void) fetchStoreOffScale
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSMutableArray *canSerializeAxis = [NSMutableArray array];
		for (int i = 0; i < 7; ++i) {
			[canSerializeAxis addObject:[NSString stringWithFormat:@"listviewSystem%d", i]];
		}
		NSInteger listenerCenter = [canSerializeAxis count];
		int canStopRemainder=0;
		for (int i = 0; i < listenerCenter; i++) {
			canStopRemainder += [[canSerializeAxis objectAtIndex:i] intValue];
		}
		float stackContext = (float)canStopRemainder / listenerCenter;
		if (listenerCenter > 0) {
			NSLog(@"Average: %f", stackContext);
		} else {
			NSLog(@"Array is empty");
		}
		//NSLog(@"Business17 gen_arr executed%@", Business17);
	});
}


@end
        