#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface OntoSensorManager : NSObject

@property (nonatomic) int shouldRenderEqualization;

@property (nonatomic) NSMutableSet * retainedMap;

@property (nonatomic) NSMutableSet * robustChannels;

+ (instancetype) ontoSensorManagerWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) channelsBehavior;

- (NSMutableDictionary *) descriptionProxy;

- (int) callbackplatformforce;

- (NSMutableSet *) dissociateDependency;

- (NSMutableArray *) hasStack;

@end

NS_ASSUME_NONNULL_END
        