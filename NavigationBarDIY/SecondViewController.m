//
//  SecondViewController.m
//  NavigationBarDIY
//
//  Created by OnePiece on 15/9/8.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.titleLabel.text = @"详情页";
    self.view.backgroundColor = [UIColor greenColor];
    [self.rightBtn setTitle:@"删除" forState:UIControlStateNormal];
    [self.leftBtn setTitle:@"返回" forState:UIControlStateNormal];
    [self.leftBtn addTarget:self action:@selector(goBack:) forControlEvents:UIControlEventTouchUpInside];
}
- (void)goBack:(UIButton *)btn{
    [self.navigationController popViewControllerAnimated:YES];
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
