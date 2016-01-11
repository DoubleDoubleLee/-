//
//  FirstViewController.m
//  NavigationBarDIY
//
//  Created by OnePiece on 15/9/8.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"
@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.titleLabel.text = @"首页";
    self.view.backgroundColor = [UIColor redColor];
    [self.leftBtn setTitle:@"设置" forState:UIControlStateNormal];
    [self.rightBtn setTitle:@"下一页" forState:UIControlStateNormal];
    [self.rightBtn addTarget:self action:@selector(next:) forControlEvents:UIControlEventTouchUpInside];
}
- (void)next:(UIButton *)btn{
    SecondViewController * secVC = [[SecondViewController alloc]init];
    [self.navigationController pushViewController:secVC animated:YES];
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
