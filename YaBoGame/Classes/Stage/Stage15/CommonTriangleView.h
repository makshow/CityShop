#import <UIKit/UIKit.h>
@interface CommonTriangleView : UIView
@property (weak, nonatomic) IBOutlet UIImageView *leftWoodIV;
@property (weak, nonatomic) IBOutlet UIImageView *rightWoodIV;
@property (weak, nonatomic) IBOutlet UIImageView *middleWoodIV;
- (void)unkindInterpretation:(BOOL)showWave showFinish:(BOOL)finsih isFrist:(BOOL)isFrist;
- (void)breedManagement;
@end


