#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TriggerModeTheme : NSObject

@property (nonatomic) NSMutableSet * activatedPreview;

@property (nonatomic) int disabledPainter;

@property (nonatomic) int lastwidgetvelocity;

@property (nonatomic) NSMutableSet * autoOption;

+ (instancetype) triggerModethemeWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) shouldDispatchPoint;

- (NSMutableDictionary *) shouldLoadKernel;

- (int) shouldLoadTangent;

- (NSMutableSet *) unsortedConstraint;

- (NSMutableArray *) equipmentHue;

@end

NS_ASSUME_NONNULL_END
        