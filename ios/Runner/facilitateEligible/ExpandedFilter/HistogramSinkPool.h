#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HistogramSinkPool : NSObject

@property (nonatomic) NSMutableSet * concreteRoute;

+ (instancetype) histogramSinkPoolWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) sortedEfficiency;

- (NSMutableDictionary *) fixedTrajectory;

- (int) replacestoryboard;

- (NSMutableSet *) reusableProvider;

- (NSMutableArray *) bufferSkewX;

@end

NS_ASSUME_NONNULL_END
        