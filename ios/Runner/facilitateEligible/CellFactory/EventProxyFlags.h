#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface EventProxyFlags : NSObject

@property (nonatomic) NSMutableSet * similarTheme;

+ (instancetype) eventProxyFlagsWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) routeflags;

- (NSMutableDictionary *) anchorleft;

- (int) sessionSkewX;

- (NSMutableSet *) granularPublisher;

- (NSMutableArray *) skipDimension;

@end

NS_ASSUME_NONNULL_END
        