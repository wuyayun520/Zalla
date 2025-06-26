#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RouteDescription : NSObject

@property (nonatomic) int priorRole;

@property (nonatomic) NSMutableArray * managerStatus;

@property (nonatomic) NSMutableSet * activeAlert;

@property (nonatomic) NSMutableArray * injectionSpeed;

+ (instancetype) routeDescriptionWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) metricsAppearance;

- (NSMutableDictionary *) explicitAscent;

- (int) resilientPositioned;

- (NSMutableSet *) transformCapacities;

- (NSMutableArray *) observeListView;

@end

NS_ASSUME_NONNULL_END
        