#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface StateVisitorName : NSObject

@property (nonatomic) NSMutableArray * mapIndex;

@property (nonatomic) NSString * sortedFrame;

@property (nonatomic) NSString * immediateItem;

+ (instancetype) stateVisitorNameWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) shouldCreateView;

- (NSMutableDictionary *) desktopTransition;

- (int) dismissMaterial;

- (NSMutableSet *) refreshCurve;

- (NSMutableArray *) canValidatePadding;

@end

NS_ASSUME_NONNULL_END
        