#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ExplicitChapterAudio : NSObject

@property (nonatomic) NSString * directRoute;

@property (nonatomic) int relationalComposition;

+ (instancetype) explicitChapterAudioWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) smartHash;

- (NSMutableDictionary *) serializeSemantics;

- (int) canUnbindReduction;

- (NSMutableSet *) shouldPresentInterpolation;

- (NSMutableArray *) annotateUseCase;

@end

NS_ASSUME_NONNULL_END
        