#import "EndListViewQueue.h"
    
@interface EndListViewQueue ()

@end

@implementation EndListViewQueue

- (void) renderObject
{
	dispatch_async(dispatch_get_main_queue(), ^{
		int stopcaption = 41;
		float backwardgraphicdistance=0.970191;
		float prismaticCycle=0.399596;
		float polyfillOffset=0.048355;
		float shouldFinishAlpha=0.645682;
		float intuitiveRenderer=0.930072;
		backwardgraphicdistance = 561 * 0.911666;
		prismaticCycle = backwardgraphicdistance + 424 * 0.682499;
		polyfillOffset = prismaticCycle + 798 * 0.457257;
		shouldFinishAlpha = polyfillOffset + 406 * 0.784795;
		if (stopcaption < 369) {
			intuitiveRenderer = stopcaption * 0.103992;
		}
		if (stopcaption <= 459) {
			intuitiveRenderer = backwardgraphicdistance + stopcaption * 0.879948;
		}
		if (stopcaption <= 899) {
			intuitiveRenderer = prismaticCycle + stopcaption * 0.631745;
		}
		if (stopcaption <= 966) {
			intuitiveRenderer = polyfillOffset + stopcaption * 0.897764;
		}
		if (stopcaption <= 239) {
			intuitiveRenderer = shouldFinishAlpha + stopcaption * 0.802560;
		}
		//NSLog(@"sets= bussiness6 gen_int %@", bussiness6);
	});
}


@end
        