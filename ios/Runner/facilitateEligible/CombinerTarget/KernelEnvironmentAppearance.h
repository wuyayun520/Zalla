#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface KernelEnvironmentAppearance : NSObject

@property (nonatomic) int borderinfo;

@property (nonatomic) NSMutableSet * dynamicRange;

@property (nonatomic) NSMutableArray * shouldSkipBloc;

@property (nonatomic) NSMutableDictionary * firstroutemode;

@property (nonatomic) NSMutableSet * beginnerTouch;

+ (instancetype) kernelEnvironmentAppearanceWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) shouldReplaceUsage;

- (NSMutableDictionary *) pauseSensor;

- (int) lastdescriptor;

- (NSMutableSet *) requestResource;

- (NSMutableArray *) monsterRate;

@end

NS_ASSUME_NONNULL_END
        