#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SymbolAnimationManager : NSObject

@property (nonatomic) NSString * keySplitter;

+ (instancetype) symbolAnimationManagerWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) resultCommand;

- (NSMutableDictionary *) tensorMechanism;

- (int) gemFunction;

- (NSMutableSet *) overridestep;

- (NSMutableArray *) permissiveStatus;

@end

NS_ASSUME_NONNULL_END
        