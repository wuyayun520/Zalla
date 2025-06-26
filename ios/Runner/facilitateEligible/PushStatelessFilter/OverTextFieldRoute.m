#import "OverTextFieldRoute.h"
    
@interface OverTextFieldRoute ()

@end

@implementation OverTextFieldRoute

- (void) marshalConsumption
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSMutableArray *lostStream = [NSMutableArray array];
		NSString* completerOperation = @"shouldFormatEffect";
		for (int i = 0; i < 10; ++i) {
			[lostStream addObject:[completerOperation stringByAppendingFormat:@"%d", i]];
		}
		NSInteger disposeInteger = [lostStream count];
		int activatedDescent=0;
		for (int i = 0; i < disposeInteger; i++) {
			activatedDescent += [[lostStream objectAtIndex:i] intValue];
		}
		float primaryTexture = (float)activatedDescent / disposeInteger;
		if (disposeInteger > 0) {
			NSLog(@"Average: %f", primaryTexture);
		} else {
			NSLog(@"Array is empty");
		}
		//NSLog(@"Business17 gen_arr executed%@", Business17);
	});
}


@end
        