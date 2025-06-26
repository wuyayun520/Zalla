#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RebuildExpandedCallback : NSObject

@property (nonatomic) NSString * referenceresult;

@property (nonatomic) NSMutableSet * reusableAudio;

@property (nonatomic) NSMutableSet * resizableOverlay;

+ (instancetype) rebuildExpandedCallbackWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) sequentialBaseline;

- (NSMutableDictionary *) effectBottom;

- (int) canDispatchThread;

- (NSMutableSet *) frameCommand;

- (NSMutableArray *) shouldKeepCycle;

@end

NS_ASSUME_NONNULL_END
        