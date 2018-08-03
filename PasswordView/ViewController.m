//
//  ViewController.m
//  PasswordView
//
//  Created by Jn_Kindle on 2018/8/3.
//  Copyright © 2018年 JnKindle. All rights reserved.
//

#import "ViewController.h"

#import "JnPasswordView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *tempBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    tempBtn.backgroundColor = [UIColor orangeColor];
    tempBtn.frame = CGRectMake(50, 100, 100, 50);
    [tempBtn addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:tempBtn];
    
    
    
}

- (void)click:(UIButton *)senderr
{
    [[JnPasswordView sharedInstance] showPasswordViewWithInputPwd:^(NSString *pwd) {
        NSLog(@"pwd = %@",pwd);
    } cancel:^{
        NSLog(@"点击了取消");
    } certain:^{
        NSLog(@"点击了确定");
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
