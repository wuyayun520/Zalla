#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface WorkflowTexture : NSObject

@property (nonatomic) NSMutableSet * isbloc;

@property (nonatomic) NSMutableArray * shouldpresenttransition;

@property (nonatomic) int shouldShowSensor;

@property (nonatomic) NSMutableSet * previewfeedback;

@property (nonatomic) NSString * shouldContinueGem;

+ (instancetype) workflowTextureWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) otherParticle;

- (NSMutableDictionary *) nativeTexture;

- (int) publicCursor;

- (NSMutableSet *) unsortedJoiner;

- (NSMutableArray *) sinkTag;

@end

NS_ASSUME_NONNULL_END
        