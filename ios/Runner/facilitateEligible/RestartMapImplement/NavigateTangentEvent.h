#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NavigateTangentEvent : NSObject

@property (nonatomic) NSMutableDictionary * tablevisibility;

@property (nonatomic) NSMutableSet * layerMode;

+ (instancetype) navigateTangentEventWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) shoulddispatchactivity;

- (NSMutableDictionary *) hasDialogs;

- (int) radiusthanmediator;

- (NSMutableSet *) activePager;

- (NSMutableArray *) canNavigateGrayscale;

@end

NS_ASSUME_NONNULL_END
        