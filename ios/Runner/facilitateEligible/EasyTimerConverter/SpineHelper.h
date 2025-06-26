#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SpineHelper : NSObject

@property (nonatomic) int inheritedResolver;

+ (instancetype) spineHelperWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) constructMenu;

- (NSMutableDictionary *) cloneContainer;

- (int) axiscenter;

- (NSMutableSet *) cartesianChapter;

- (NSMutableArray *) catalystCommand;

@end

NS_ASSUME_NONNULL_END
        