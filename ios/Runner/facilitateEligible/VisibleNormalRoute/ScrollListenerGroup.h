#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScrollListenerGroup : NSObject

@property (nonatomic) NSMutableArray * temporaryMaterial;

@property (nonatomic) NSMutableArray * webSorter;

@property (nonatomic) NSMutableDictionary * shouldCacheColumn;

@property (nonatomic) NSMutableArray * pivotalCycle;

+ (instancetype) scrollListenerGroupWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) missedTable;

- (NSMutableDictionary *) schemaName;

- (int) shouldHandleMission;

- (NSMutableSet *) shouldAnimatePet;

- (NSMutableArray *) commonStream;

@end

NS_ASSUME_NONNULL_END
        