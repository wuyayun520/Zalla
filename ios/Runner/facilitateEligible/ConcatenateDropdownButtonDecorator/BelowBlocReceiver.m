#import "BelowBlocReceiver.h"
    
@interface BelowBlocReceiver ()

@end

@implementation BelowBlocReceiver

- (void) resumeSubtleZone: (NSMutableDictionary *)prevAnalyzer
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSInteger activeSchema = prevAnalyzer.count;
		int interfaceskewy[3];
		for (int i = 0; i < 3; i++) {
			interfaceskewy[i] = 31 * i;
		}
		if (activeSchema > interfaceskewy[2]) {
			interfaceskewy[0] = activeSchema;
		} else {
			int routeRow=0;
			for (int i = 0; i < 2; i++) {
				if (interfaceskewy[i] < activeSchema && interfaceskewy[i+1] >= activeSchema) {
				    routeRow = i + 1;
				    break;
				}
			}
			for (int i = 0; i < routeRow; i++) {
				interfaceskewy[routeRow - i] = interfaceskewy[routeRow - i - 1];
			}
			interfaceskewy[0] = activeSchema;
		}
		//NSLog(@"Business17 gen_dic executed%@", Business17);
	});
}


@end
        