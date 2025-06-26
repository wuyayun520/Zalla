#import "ToExtensionEvent.h"
    
@interface ToExtensionEvent ()

@end

@implementation ToExtensionEvent

- (void) interceptModal: (NSMutableSet *)kernelVisibility
{
	dispatch_async(dispatch_get_main_queue(), ^{
		if (![kernelVisibility containsObject:@"playbackBorder"]) {
			UIPageControl *fusedCapacity = [[UIPageControl alloc] initWithFrame:CGRectMake(247, 50, 99, 385)];
			fusedCapacity.numberOfPages = 16;
			fusedCapacity.tag = 22;
			fusedCapacity.frame = CGRectMake(165, 98, 354, 567);
			fusedCapacity.tag = 7;
		}
		//NSLog(@"sets= bussiness3 gen_set %@", bussiness3);
	});
}


@end
        