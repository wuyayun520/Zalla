#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AboveCaptionIsolate : NSObject

@property (nonatomic) NSMutableSet * emitterType;

@property (nonatomic) NSMutableSet * workflowSkewY;

+ (instancetype) aboveCaptionIsolateWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) shouldLoadBox;

- (NSMutableDictionary *) rebuildTransition;

- (int) attachBitrate;

- (NSMutableSet *) skirtValidation;

- (NSMutableArray *) connectBehavior;

@end

NS_ASSUME_NONNULL_END
        