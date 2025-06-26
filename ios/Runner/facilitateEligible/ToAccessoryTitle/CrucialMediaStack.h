#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CrucialMediaStack : NSObject

@property (nonatomic) NSMutableDictionary * scrollableBinary;

@property (nonatomic) NSMutableDictionary * menucenter;

+ (instancetype) crucialMediaStackWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) canParseProtocol;

- (NSMutableDictionary *) shouldDisconnectAnimatedContainer;

- (int) taskBuffer;

- (NSMutableSet *) serializeRow;

- (NSMutableArray *) stopPromise;

@end

NS_ASSUME_NONNULL_END
        