#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UpSinkLinker : NSObject

@property (nonatomic) NSMutableSet * protectedThreshold;

+ (instancetype) upSinkLinkerWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) shouldStreamProvider;

- (NSMutableDictionary *) shouldInflateEqualization;

- (int) shouldUnmountedWidget;

- (NSMutableSet *) updateShader;

- (NSMutableArray *) canObservePriority;

@end

NS_ASSUME_NONNULL_END
        