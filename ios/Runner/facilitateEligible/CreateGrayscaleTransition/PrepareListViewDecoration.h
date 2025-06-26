#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PrepareListViewDecoration : NSObject

@property (nonatomic) NSString * persistentSelector;

@property (nonatomic) int shouldKeepExpanded;

+ (instancetype) prepareListViewDecorationWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) overlayScale;

- (NSMutableDictionary *) cellradius;

- (int) sizeOffset;

- (NSMutableSet *) receiverHead;

- (NSMutableArray *) mountedClipper;

@end

NS_ASSUME_NONNULL_END
        