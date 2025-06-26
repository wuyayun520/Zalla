#import "SanitizeModalCreator.h"
    
@interface SanitizeModalCreator ()

@end

@implementation SanitizeModalCreator

- (void) notifySessionIncludeObserver: (int)reactiveListener
{
	dispatch_async(dispatch_get_main_queue(), ^{
		float globalVideo=0.918569;
		float explicitMobile=0.174996;
		float storyboardLocation=0.073604;
		float bitrateScale=0.812157;
		float tweenplatformscale=0.033607;
		globalVideo = 206 * 0.951559;
		explicitMobile = globalVideo + 332 * 0.896320;
		storyboardLocation = explicitMobile + 503 * 0.165616;
		bitrateScale = storyboardLocation + 984 * 0.359660;
		if (reactiveListener < 740) {
			tweenplatformscale = reactiveListener * 0.704669;
		}
		if (reactiveListener <= 344) {
			tweenplatformscale = globalVideo + reactiveListener * 0.481379;
		}
		if (reactiveListener <= 122) {
			tweenplatformscale = explicitMobile + reactiveListener * 0.024530;
		}
		if (reactiveListener <= 382) {
			tweenplatformscale = storyboardLocation + reactiveListener * 0.137087;
		}
		if (reactiveListener <= 754) {
			tweenplatformscale = bitrateScale + reactiveListener * 0.658064;
		}
		//NSLog(@"sets= bussiness6 gen_int %@", bussiness6);
	});
}


@end
        