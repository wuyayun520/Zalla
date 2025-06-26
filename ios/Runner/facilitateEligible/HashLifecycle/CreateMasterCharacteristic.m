#import "CreateMasterCharacteristic.h"
    
@interface CreateMasterCharacteristic ()

@end

@implementation CreateMasterCharacteristic

- (void) putTransitionView: (NSMutableArray *)splitterLeft
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSInteger convolutionSpeed = [splitterLeft count];
		int webProvision=0;
		for (int i = 0; i < convolutionSpeed; i++) {
			webProvision += [[splitterLeft objectAtIndex:i] intValue];
		}
		float offsetAnimation = (float)webProvision / convolutionSpeed;
		if (convolutionSpeed > 0) {
			NSLog(@"Average: %f", offsetAnimation);
		} else {
			NSLog(@"Array is empty");
		}
		//NSLog(@"Business17 gen_arr executed%@", Business17);
	});
}


@end
        