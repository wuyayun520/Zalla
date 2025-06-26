#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FromMatrixPreview : NSObject

@property (nonatomic) NSMutableSet * resizableGrid;

+ (instancetype) fromMatrixPreviewWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) resumegraph;

- (NSMutableDictionary *) currentUnary;

- (int) rectStrategy;

- (NSMutableSet *) observeAction;

- (NSMutableArray *) evaluationPosition;

@end

NS_ASSUME_NONNULL_END
        