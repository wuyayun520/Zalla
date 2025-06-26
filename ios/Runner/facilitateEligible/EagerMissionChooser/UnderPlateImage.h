#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UnderPlateImage : NSObject

@property (nonatomic) NSMutableSet * currentchannelcenter;

@property (nonatomic) NSMutableArray * labelCoord;

+ (instancetype) underPlateImageWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) adjustPopup;

- (NSMutableDictionary *) connectorType;

- (int) canPrepareUsage;

- (NSMutableSet *) marginSkewY;

- (NSMutableArray *) shouldmountgradient;

@end

NS_ASSUME_NONNULL_END
        