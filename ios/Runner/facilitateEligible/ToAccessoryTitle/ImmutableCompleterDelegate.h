#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ImmutableCompleterDelegate : NSObject

@property (nonatomic) NSString * globalRow;

+ (instancetype) immutableCompleterDelegateWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) immediateSchema;

- (NSMutableDictionary *) shouldPersistAppBar;

- (int) canPaintSizedBox;

- (NSMutableSet *) decoupleAnimation;

- (NSMutableArray *) hardCursor;

@end

NS_ASSUME_NONNULL_END
        