#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BufferPickerCollection : NSObject

@property (nonatomic) NSMutableDictionary * diffableGroup;

@property (nonatomic) NSMutableArray * webInfo;

@property (nonatomic) NSMutableSet * eagerstore;

+ (instancetype) bufferPickerCollectionWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) temporaryOverlay;

- (NSMutableDictionary *) prevDocument;

- (int) resumeProtocol;

- (NSMutableSet *) sortedInteger;

- (NSMutableArray *) shouldEndStack;

@end

NS_ASSUME_NONNULL_END
        