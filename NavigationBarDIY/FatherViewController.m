//
//  FatherViewController.m
//  NavigationBarDIY
//
//  Created by OnePiece on 15/9/8.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "FatherViewController.h"

@interface FatherViewController ()

@end

@implementation FatherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.navigationBarHidden = YES;
    
    //设置自定义的导航栏
    [self setMainHeaderView];
    // Do any additional setup after loading the view.
}

-(void)setMainHeaderView{
    //状态栏高度20
    //导航栏高度44
    _headerView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 64)];
    
    _headerView.backgroundColor = [UIColor clearColor];
    
    [self.view addSubview:_headerView];
    
    //设置背景imageview
    _bgHeaderView = [[UIImageView alloc]initWithFrame:_headerView.bounds];
    
    _bgHeaderView.backgroundColor = [UIColor whiteColor];
    
    _bgHeaderView.alpha = 0.8;
    
    [_headerView addSubview:_bgHeaderView];
    
    
    _titleLabel = [[UILabel alloc]init];
    _titleLabel.center = CGPointMake([UIScreen mainScreen].bounds.size.width/2, 22  + 20);
    _titleLabel.bounds = CGRectMake(0, 0, 210, 44);
    _titleLabel.textAlignment = NSTextAlignmentCenter;

    [_headerView addSubview:_titleLabel];
    
    _leftBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _leftBtn.frame = CGRectMake(10, 20 + 4.5, 60, 35);
    
    [_headerView addSubview:_leftBtn];
    
    
    _rightBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _rightBtn.frame = CGRectMake([UIScreen mainScreen].bounds.size.width - 10 - 60, 20 + 4.5, 60, 35);

    
    [_headerView addSubview:_rightBtn];
    [self.view addSubview:_headerView];
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
