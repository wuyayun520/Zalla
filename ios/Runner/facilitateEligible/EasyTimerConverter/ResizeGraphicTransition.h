#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ResizeGraphicTransition : NSObject

@property (nonatomic) NSString * typicalScroller;

+ (instancetype) resizeGraphicTransitionWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) sortedResource;

- (NSMutableDictionary *) canRouteText;

- (int) shouldRenderOption;

- (NSMutableSet *) ephemeralScaffold;

- (NSMutableArray *) adaptiveLog;

@end

NS_ASSUME_NONNULL_END
        