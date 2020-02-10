#import "AFHTTPSessionManager.h"
#import "YBSportsRequest_Url.h"
NS_ASSUME_NONNULL_BEGIN
typedef void (^YBSportsCompletedBlock)(BOOL ret, id obj);
@interface ReferThroughoutSection : AFHTTPSessionManager
+ (instancetype)sharedManager;
- (void)burstPioneer:(NSString *)path dict:(NSDictionary*)dict completed:(YBSportsCompletedBlock)completed;
- (void)inferiorAssociation:(NSString *)path dict:(NSDictionary*)dict completed:(YBSportsCompletedBlock)completed;
@end
NS_ASSUME_NONNULL_END


