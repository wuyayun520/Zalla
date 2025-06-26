#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MitigateScaleTween : NSObject

@property (nonatomic) NSMutableSet * easyConfiguration;

+ (instancetype) mitigateScaleTweenWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) unlockFrame;

- (NSMutableDictionary *) shouldStartMovement;

- (int) entityStatus;

- (NSMutableSet *) staticResponder;

- (NSMutableArray *) queueBottom;

@end

NS_ASSUME_NONNULL_END
        