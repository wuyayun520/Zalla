#import "SegmentShader.h"
    
@interface SegmentShader ()

@end

@implementation SegmentShader

- (void) poolSearcher: (NSString *)priorityTransparency
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSMutableDictionary *shaderview = [NSMutableDictionary dictionary];
		[priorityTransparency drawAtPoint:CGPointMake(130, 324) withAttributes:shaderview];
		shaderview[@"None"] = [UIColor colorNamed:@"greenColor"];;
		shaderview[@"None"] = @140;
		//NSLog(@"sets= bussiness7 gen_str %@", bussiness7);
	});
}


@end
        