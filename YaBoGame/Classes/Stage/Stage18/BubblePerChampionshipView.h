#import <UIKit/UIKit.h>
typedef NS_ENUM(NSInteger, WNXPokerType) {
    WNXPokerTypeHearts = 0,   
    WNXPokerTypeDiamonds = 1, 
    WNXPokerTypeSpade = 2,    
    WNXPokerTypeClubs         
};
@interface BubblePerChampionshipView : UIView
- (void)joinPerhapsInstantProfit:(WNXPokerType)type number:(int)number;
@end


