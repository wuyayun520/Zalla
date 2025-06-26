#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SignService : NSObject

@property (nonatomic) int activatedFlex;

+ (instancetype) signserviceWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) popError;

- (NSMutableDictionary *) handleRole;

- (int) instantiateFrame;

- (NSMutableSet *) accessibleListView;

- (NSMutableArray *) shouldMountedAnimatedContainer;

@end

NS_ASSUME_NONNULL_END
        