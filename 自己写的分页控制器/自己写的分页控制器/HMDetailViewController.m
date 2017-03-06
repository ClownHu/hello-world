//
//  HMDetailViewController.m
//  自己写一个分页控制器
//
//  Created by HM09 on 17/2/21.
//  Copyright © 2017年 itheima. All rights reserved.
//

#import "HMDetailViewController.h"

@interface HMDetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *textLabel;

@end

@implementation HMDetailViewController

-(void)setIndex:(NSInteger)index{
    
    _index = index;

}

-(void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
    
    _textLabel.text = @(_index).description;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
