#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface InjectionSplitterReference : NSObject

@property (nonatomic) NSMutableSet * directConstraint;

@property (nonatomic) NSMutableSet * originalSegment;

@property (nonatomic) NSString * audioDensity;

+ (instancetype) injectionSplitterReferenceWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) groupTop;

- (NSMutableDictionary *) recursionState;

- (int) canProcessBase;

- (NSMutableSet *) embedReducer;

- (NSMutableArray *) intensityMethod;

@end

NS_ASSUME_NONNULL_END
        