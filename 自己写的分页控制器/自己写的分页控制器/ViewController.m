//
//  ViewController.m
//  自己写一个分页控制器
//
//  Created by HM09 on 17/2/21.
//  Copyright © 2017年 itheima. All rights reserved.
//

#import "ViewController.h"
#import "HMDetailViewController.h"

@interface ViewController () <UIPageViewControllerDataSource>

@end

@implementation ViewController{
    
    NSInteger _index;
}


- (nullable UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController{
    
    _index--;
    
    //每一页都是新的控制器
    HMDetailViewController *vc = [HMDetailViewController new];
    
    vc.index = _index;
    
    return vc;
}


- (nullable UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController{
    
    _index++;
    
    //每一页都是新的控制器
    HMDetailViewController *vc = [HMDetailViewController new];
    
    vc.index = _index;
    
    return vc;
}

- (void)viewDidLoad {
    [super viewDidLoad];
   
    //创建分页控制器
    UIPageViewController *pageVC = [[UIPageViewController alloc] initWithTransitionStyle:UIPageViewControllerTransitionStylePageCurl navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:nil];
    
    //给它准备展示的数据
    HMDetailViewController *detailVC = [[HMDetailViewController alloc] init];
    
    [pageVC setViewControllers:@[detailVC] direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
    
    //设置数据源
    pageVC.dataSource = self;
    
    //把分页作为子控制器
    [self addChildViewController:pageVC];
    
    [self.view addSubview:pageVC.view];
    
    [pageVC didMoveToParentViewController:self];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
