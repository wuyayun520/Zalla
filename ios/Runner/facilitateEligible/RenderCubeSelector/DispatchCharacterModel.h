#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DispatchCharacterModel : NSObject

@property (nonatomic) int binderCount;

+ (instancetype) dispatchCharacterModelWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) explicitZone;

- (NSMutableDictionary *) clipperName;

- (int) expandedTransparency;

- (NSMutableSet *) permissivePrecision;

- (NSMutableArray *) visitPreview;

@end

NS_ASSUME_NONNULL_END
        