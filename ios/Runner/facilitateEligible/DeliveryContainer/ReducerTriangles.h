#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ReducerTriangles : NSObject

@property (nonatomic) NSMutableDictionary * shouldDismissChecklist;

+ (instancetype) reducerTrianglesWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) euclideanModel;

- (NSMutableDictionary *) gramOrientation;

- (int) isLoss;

- (NSMutableSet *) containerSaturation;

- (NSMutableArray *) grainLevel;

@end

NS_ASSUME_NONNULL_END
        