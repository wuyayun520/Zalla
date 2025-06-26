#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FixedAppBarConverter : NSObject

@property (nonatomic) int shouldObserveSign;

+ (instancetype) fixedAppBarConverterWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) canSerializeCaption;

- (NSMutableDictionary *) pickerAppearance;

- (int) shouldRebuildBehavior;

- (NSMutableSet *) iterativeProtocol;

- (NSMutableArray *) shouldDeserializeBrush;

@end

NS_ASSUME_NONNULL_END
        