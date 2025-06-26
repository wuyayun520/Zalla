#import "StreamSymbolReceiver.h"
    
@interface StreamSymbolReceiver ()

@end

@implementation StreamSymbolReceiver

+ (instancetype) streamsymbolReceiverWithDictionary: (NSDictionary *)dict
{
	return [[self alloc] initWithDictionary:dict];
}

- (instancetype) initWithDictionary: (NSDictionary *)dict
{
	if (self = [super init]) {
		[self setValuesForKeysWithDictionary:dict];
	}
	return self;
}

- (NSString *) accordiontexture
{
	return @"routeScale";
}

- (NSMutableDictionary *) contractionFeedback
{
	NSMutableDictionary *canEndTransition = [NSMutableDictionary dictionary];
	canEndTransition[@"discovercaption"] = @"stepOffset";
	return canEndTransition;
}

- (int) unactivatedEvent
{
	return 3;
}

- (NSMutableSet *) primarySubpixel
{
	NSMutableSet *backwardRange = [NSMutableSet set];
	for (int i = 2; i != 0; --i) {
		[backwardRange addObject:[NSString stringWithFormat:@"continueEffect%d", i]];
	}
	return backwardRange;
}

- (NSMutableArray *) rapidChecklist
{
	NSMutableArray *canPopGradient = [NSMutableArray array];
	for (int i = 0; i < 8; ++i) {
		[canPopGradient addObject:[NSString stringWithFormat:@"rectifyConstraint%d", i]];
	}
	return canPopGradient;
}


@end
        