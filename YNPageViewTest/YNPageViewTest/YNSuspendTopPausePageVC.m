//
//  YNSuspendTopPausePageVC.m
//  YNPageViewTest
//
//  Created by techfun on 2020/01/08.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

#import "YNSuspendTopPausePageVC.h"
#import "SDCycleScrollView.h"
#import "WebViewController.h"
#import "UIView+YNPageExtend.h"

#define kOpenRefreshHeaderViewHeight 0

@interface YNSuspendTopPausePageVC () <YNPageViewControllerDataSource, YNPageViewControllerDelegate, SDCycleScrollViewDelegate>

@property (nonatomic, copy) NSArray *imagesURLs;

@end

@implementation YNSuspendTopPausePageVC

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    //    [self.navigationController setNavigationBarHidden:YES animated:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    //     [self.navigationController setNavigationBarHidden:NO animated:animated];
}

#pragma mark - Public Function

+ (instancetype)suspendTopPausePageVC {
    YNPageConfigration *configration = [YNPageConfigration defaultConfig];
    configration.pageStyle = YNPageStyleSuspensionTopPause;
    configration.headerViewCouldScale = YES;
    configration.showTabbar = NO;
    configration.showNavigation = YES;
    configration.scrollMenu = NO;
    configration.aligmentModeCenter = NO;
    configration.lineWidthEqualFontWidth = NO;
    configration.showBottomLine = YES;
    
    YNSuspendTopPausePageVC *vc = [YNSuspendTopPausePageVC pageViewControllerWithControllers:[self getArrayVCs]
                                                                                      titles:[self getArrayTitles]
                                                                                      config:configration];
    vc.dataSource = vc;
    vc.delegate = vc;
    
    
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    headerView.layer.contents = (id)[UIImage imageNamed:@"mine_header_bg"].CGImage;
    
    SDCycleScrollView *autoScrollView = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 200.1234) imageURLStringsGroup:vc.imagesURLs];
    autoScrollView.delegate = vc;
    
    vc.headerView = autoScrollView;
    
    //    vc.headerView = headerView;
    /// 指定默认选择index 页面
    vc.pageIndex = 2;
    
    __weak typeof(YNSuspendTopPausePageVC *) weakVC = vc;
    
    return vc;
}

+ (NSArray *)getArrayVCs {
 
   
    WebViewController *controller1 = [[WebViewController alloc]init:0 link:@"https://www.google.com"];
    WebViewController *controller2 = [[WebViewController alloc]init:1 link:@"https://www.facebook.com"];
    WebViewController *controller3 = [[WebViewController alloc]init:2 link:@"https://www.tutorialspoint.com"];
    WebViewController *controller4 = [[WebViewController alloc]init:3 link:@"https://www.google.com"];
    WebViewController *controller5 = [[WebViewController alloc]init:4 link:@"https://www.udemy.com"];
    WebViewController *controller6 = [[WebViewController alloc]init:5 link:@"https://www.crunchbase.com"];
    WebViewController *controller7 = [[WebViewController alloc]init:6 link:@"https://www.google.com"];
    WebViewController *controller8 = [[WebViewController alloc]init:7 link:@"https://www.facebook.com"];
    
    
  
     return @[controller1, controller2, controller3,controller4,controller5,controller6,controller7,controller8];
}

+ (NSArray *)getArrayTitles {
     return @[@"News", @"キャンペーン", @"閲覧履歴",@"ランキング", @"新着", @"TSC",@"White", @"UL"];
}

#pragma mark - Private Function

#pragma mark - Getter and Setter
- (NSArray *)imagesURLs {
    if (!_imagesURLs) {
        _imagesURLs = @[
                        @"https://ss2.baidu.com/-vo3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=a4b3d7085dee3d6d2293d48b252b5910/0e2442a7d933c89524cd5cd4d51373f0830200ea.jpg",
                        @"https://ss0.baidu.com/-Po3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=a41eb338dd33c895a62bcb3bb72e47c2/5fdf8db1cb134954a2192ccb524e9258d1094a1e.jpg",
                        @"http://c.hiphotos.baidu.com/image/w%3D400/sign=c2318ff84334970a4773112fa5c8d1c0/b7fd5266d0160924c1fae5ccd60735fae7cd340d.jpg"];
    }
    return _imagesURLs;
}



@end
