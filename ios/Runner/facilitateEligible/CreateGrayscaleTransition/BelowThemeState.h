#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BelowThemeState : NSObject

@property (nonatomic) NSMutableDictionary * lastTool;

@property (nonatomic) NSMutableDictionary * autoDialogs;

@property (nonatomic) NSMutableSet * shouldRenderScroll;

@property (nonatomic) NSMutableSet * commonStateless;

@property (nonatomic) NSMutableDictionary * pivotalLatency;

@property (nonatomic) NSMutableSet * futurevisibility;

@property (nonatomic) NSMutableArray * missedTentative;

@property (nonatomic) NSMutableSet * shouldDisconnectScroll;

@property (nonatomic) NSString * shouldTransformController;

+ (instancetype) belowThemeStateWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) chapterInset;

- (NSMutableDictionary *) temporaryDependency;

- (int) nativeTrigger;

- (NSMutableSet *) elasticScheduler;

- (NSMutableArray *) temporaryStore;

@end

NS_ASSUME_NONNULL_END
        