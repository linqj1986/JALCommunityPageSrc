//
//  ViewController.m
//  TestPage
//
//  Created by j066 on 2019/3/14.
//  Copyright © 2019 j066. All rights reserved.
//

#import "ViewController.h"
/** Pods*/
#import <MGJRouter/MGJRouter.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"测试首页";
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(50, 100, 120, 50)];
    btn.backgroundColor = UIColor.greenColor;
    [btn setTitle:@"社区页面" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)btnAction
{
    UIViewController *vc =[MGJRouter objectForURL:@"JAL://JALCommunityPage/MainVC"
                                     withUserInfo:@{@"navigationVC" : self.navigationController}];
    [self.navigationController pushViewController:vc animated:YES];
}


@end
