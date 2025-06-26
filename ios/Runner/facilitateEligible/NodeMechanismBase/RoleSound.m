#import "RoleSound.h"
    
@interface RoleSound ()

@end

@implementation RoleSound

- (void) pushRefreshAcrossSymbol: (NSMutableDictionary *)chapterValidation
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSInteger offsetTop = chapterValidation.count;
		int soundstate[7];
		for (int i = 0; i < 7; i++) {
			soundstate[i] = 35 * i;
		}
		if (offsetTop > soundstate[6]) {
			soundstate[0] = offsetTop;
		} else {
			int unmountedStream=0;
			for (int i = 0; i < 6; i++) {
				if (soundstate[i] < offsetTop && soundstate[i+1] >= offsetTop) {
				    unmountedStream = i + 1;
				    break;
				}
			}
			for (int i = 0; i < unmountedStream; i++) {
				soundstate[unmountedStream - i] = soundstate[unmountedStream - i - 1];
			}
			soundstate[0] = offsetTop;
		}
		//NSLog(@"Business17 gen_dic executed%@", Business17);
	});
}


@end
        