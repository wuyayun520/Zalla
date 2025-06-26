#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ThemeProcessor : NSObject

@property (nonatomic) NSMutableSet * shouldBindConstraint;

+ (instancetype) themeProcessorWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) deferredAmortization;

- (NSMutableDictionary *) copyIsolate;

- (int) canUnbindCapacities;

- (NSMutableSet *) autoschema;

- (NSMutableArray *) unsortedAlpha;

@end

NS_ASSUME_NONNULL_END
        