#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TransitionChapterCreator : NSObject

@property (nonatomic) NSString * hardlayout;

@property (nonatomic) int alphabutton;

+ (instancetype) transitionChapterCreatorWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) grainborder;

- (NSMutableDictionary *) canShowMatrix;

- (int) canRenderStamp;

- (NSMutableSet *) canUnmountCaption;

- (NSMutableArray *) sizeparamstyle;

@end

NS_ASSUME_NONNULL_END
        