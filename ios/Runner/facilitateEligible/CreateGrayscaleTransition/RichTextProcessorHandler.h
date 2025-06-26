#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RichTextProcessorHandler : NSObject

@property (nonatomic) int activesingletonduration;

+ (instancetype) richTextProcessorHandlerWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) observerDensity;

- (NSMutableDictionary *) listviewStyle;

- (int) generateTicker;

- (NSMutableSet *) consumptionFlags;

- (NSMutableArray *) sensordecoration;

@end

NS_ASSUME_NONNULL_END
        