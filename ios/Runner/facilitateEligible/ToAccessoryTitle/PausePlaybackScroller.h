#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PausePlaybackScroller : NSObject

@property (nonatomic) NSMutableArray * diffableevent;

@property (nonatomic) NSString * animationCoord;

@property (nonatomic) NSMutableArray * groupPressure;

@property (nonatomic) int disabledMargin;

@property (nonatomic) NSMutableSet * visibleTriangles;

+ (instancetype) pauseplaybackScrollerWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) modulusLevel;

- (NSMutableDictionary *) canDispatchDimension;

- (int) poolDuration;

- (NSMutableSet *) aspectratioHead;

- (NSMutableArray *) canDetachThread;

@end

NS_ASSUME_NONNULL_END
        