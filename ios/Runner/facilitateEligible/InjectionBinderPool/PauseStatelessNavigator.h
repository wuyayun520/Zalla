#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PauseStatelessNavigator : NSObject

@property (nonatomic) NSMutableDictionary * draggablePresenter;

@property (nonatomic) NSMutableArray * visibleMap;

+ (instancetype) pauseStatelessNavigatorWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) canDetachBaseline;

- (NSMutableDictionary *) missedPublisher;

- (int) staticPicker;

- (NSMutableSet *) shouldReplaceMaterial;

- (NSMutableArray *) disconnectNavigation;

@end

NS_ASSUME_NONNULL_END
        