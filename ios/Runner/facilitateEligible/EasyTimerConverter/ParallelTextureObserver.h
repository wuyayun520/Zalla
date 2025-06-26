#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ParallelTextureObserver : NSObject

@property (nonatomic) NSMutableSet * visibleComposition;

@property (nonatomic) NSMutableSet * scalestate;

@property (nonatomic) NSMutableArray * arithmeticPreview;

+ (instancetype) parallelTextureObserverWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) shouldUnmountDocument;

- (NSMutableDictionary *) parallelReducer;

- (int) pageviewDepth;

- (NSMutableSet *) pointlinker;

- (NSMutableArray *) tangentinsideproxy;

@end

NS_ASSUME_NONNULL_END
        