#import "StackFavourablePerseveranceView.h"
#import "HostProofView.h"
#import "SwimOfMankindView.h"
#define kGlassWidth 50
#define kGlassHeight 91
@interface StackFavourablePerseveranceView ()
{
    int _count;
    int _glassCount;
    BOOL _isSucess;
    int _glassAllCount;
    BOOL _isShowedFail;
}
@property (nonatomic, strong) NSMutableArray *glassesArr;
@end
@implementation StackFavourablePerseveranceView
- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.glassesArr = [NSMutableArray array];
    }
    return self;
}
- (void)competentGoods {
    for (UIView *subView in self.glassesArr) {
        [subView removeFromSuperview];
    }
    [self.glassesArr removeAllObjects];
    _count = 0;
    _isSucess = NO;
    _isShowedFail = NO;
}
- (void)trickHealthySite {
    [[YaBoOrgyTool sharedSoundToolManager] patWorthyLiberty:YaSoundReloadName];
    _count++;
    _isSucess = NO;
    _isShowedFail = NO;
    [self showGlassView];
}
- (void)showGlassView {
    _glassCount = arc4random_uniform(15) + 1;
    _glassAllCount = _glassCount;
    if (self.glassesArr.count > 0) {
        [self.glassesArr removeAllObjects];
    }
    int rowCount;
    CGFloat margin;
    for (int i = 0; i < _glassCount; i++) {
        if (_glassCount <= 12) {
            rowCount = 4;
            margin = 50;
        } else {
            rowCount = 5;
            margin = 35;
        }
        CGFloat glassX = (i % rowCount) * kGlassWidth;
        CGFloat glassY = self.frame.size.height - i / rowCount * kGlassHeight - kGlassHeight - 20;
        UIImageView *glassIV = [[UIImageView alloc] initWithFrame:CGRectMake(margin + glassX, glassY, kGlassWidth, kGlassHeight)];
        glassIV.image = [UIImage imageNamed:@"04_cup01-iphone4"];
        [self addSubview:glassIV];
        [self.glassesArr addObject:glassIV];
    }
}
- (void)specializePerLightEngineering {
    [[YaBoOrgyTool sharedSoundToolManager] patWorthyLiberty:YaSoundGunName];
    _glassCount--;
    if (_glassCount == 0) {
        _isSucess = YES;
        self.stopTimeBlock();
        [self prepareSucess];
    }
    if (self.glassesArr.count > 0) {
        UIImageView *glassIV = [self.glassesArr lastObject];
        [self.glassesArr removeLastObject];
        [self breakGlass:glassIV.center];
        [glassIV removeFromSuperview];
    } else {
        _isSucess = NO;
        [self healthilyMysteriousPancake];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            if (!_isShowedFail) {
                _isShowedFail = YES;
                self.failBlock();
            }
        });
    }
}
- (void)breakGlass:(CGPoint)center {
    HostProofView *breakView = [HostProofView viewFromNib];
    breakView.frame = CGRectMake(0, 0, breakView.frame.size.width, breakView.frame.size.height);
    breakView.center = center;
    [self addSubview:breakView];
    [breakView shiftGymnasticallyRemoteRule];
}
- (void)healthilyMysteriousPancake {
    SwimOfMankindView *errorView = [SwimOfMankindView viewFromNib];
    CGFloat randomX = arc4random_uniform(280);
    CGFloat randomY = arc4random_uniform(self.frame.size.height) - 50;
    errorView.frame = CGRectMake(randomX, randomY, errorView.frame.size.width, errorView.frame.size.height);
    [self addSubview:errorView];
}
- (void)prepareSucess {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if (_isSucess) {
            self.sucessBlock(_glassAllCount, _count == 13);
        }
    });
}
@end

