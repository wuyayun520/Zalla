#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LiteWidgetConverter : NSObject

@property (nonatomic) NSMutableDictionary * adaptiveMaterial;

@property (nonatomic) NSMutableSet * hardFilter;

+ (instancetype) liteWidgetConverterWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) transpileQueue;

- (NSMutableDictionary *) responsiveHash;

- (int) ephemeralSkirt;

- (NSMutableSet *) taxonomyMode;

- (NSMutableArray *) desktopScenario;

@end

NS_ASSUME_NONNULL_END
        