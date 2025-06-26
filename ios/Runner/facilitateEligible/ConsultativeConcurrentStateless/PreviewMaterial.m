#import "PreviewMaterial.h"
    
@interface PreviewMaterial ()

@end

@implementation PreviewMaterial

- (void) inflateGlobalFactory: (NSString *)accordionPicker
{
	dispatch_async(dispatch_get_main_queue(), ^{
		CALayer * opaqueelasticity = [[CALayer alloc] init];
		opaqueelasticity.name = accordionPicker;
		opaqueelasticity.backgroundColor = [UIColor magentaColor].CGColor;
		opaqueelasticity.borderWidth = 920;
		opaqueelasticity.bounds = CGRectMake(481, 409, 920, 785);
		opaqueelasticity.position = CGPointZero;
		opaqueelasticity.borderColor = [UIColor clearColor].CGColor;
		//NSLog(@"sets= bussiness8 gen_str %@", bussiness8);
	});
}


@end
        