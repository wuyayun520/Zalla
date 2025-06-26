#import "MarkRichTextDescription.h"
    
@interface MarkRichTextDescription ()

@end

@implementation MarkRichTextDescription

- (void) keepSinkAnimation: (NSMutableDictionary *)themeState
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSInteger masterPrototype = themeState.count;
		int stateOpacity[6];
		for (int i = 0; i < 5; i++) {
			stateOpacity[i] = 68 + i;
		}
		UIActivityIndicatorView *dismissNorm = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleMedium];
		[dismissNorm startAnimating];
		dismissNorm.color = UIColor.blueColor;
		[dismissNorm startAnimating];
		dismissNorm.hidesWhenStopped = YES;
		//NSLog(@"sets= bussiness7 gen_dic %@", bussiness7);
	});
}


@end
        