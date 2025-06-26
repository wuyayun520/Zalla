#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MeasureCaptionReducer : NSObject

@property (nonatomic) NSMutableDictionary * instructionValidation;

+ (instancetype) measureCaptionReducerWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) nativeIcon;

- (NSMutableDictionary *) secondChooser;

- (int) startIcon;

- (NSMutableSet *) canNotifyRole;

- (NSMutableArray *) immutableEquipment;

@end

NS_ASSUME_NONNULL_END
        