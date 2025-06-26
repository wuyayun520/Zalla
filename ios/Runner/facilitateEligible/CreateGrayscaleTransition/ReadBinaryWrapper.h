#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ReadBinaryWrapper : NSObject

@property (nonatomic) NSString * currentCurve;

@property (nonatomic) NSString * hasMusic;

@property (nonatomic) NSMutableArray * tickerFrequency;

@property (nonatomic) int resultSkewY;

+ (instancetype) readBinaryWrapperWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) dynamicExponent;

- (NSMutableDictionary *) benchmarkHash;

- (int) autoSign;

- (NSMutableSet *) serviceFormat;

- (NSMutableArray *) canLayoutContraction;

@end

NS_ASSUME_NONNULL_END
        