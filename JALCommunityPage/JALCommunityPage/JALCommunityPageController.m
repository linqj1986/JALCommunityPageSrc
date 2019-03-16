//
//  JALCommunityPageController.m
//  JALCommunityPage
//
//  Created by j066 on 2019/3/13.
//  Copyright © 2019 j066. All rights reserved.
//

#import "JALCommunityPageController.h"
#import <MGJRouter/MGJRouter.h>

@interface JALCommunityPageController ()

@end

@implementation JALCommunityPageController

+ (void)load
{
    [super load];
    
    [MGJRouter registerURLPattern:@"JAL://JALCommunityPage/MainVC" toObjectHandler:^id(NSDictionary *routerParameters) {
        JALCommunityPageController *vc = [[JALCommunityPageController alloc] init];
        return vc;
    }];
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.title = @"社区";
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor cyanColor];
    
    NSURL *bundleUrl = [[NSBundle mainBundle] URLForResource:@"JALCommunityBundle" withExtension:@"bundle"];
    if (bundleUrl) {
        NSBundle *bundle = [NSBundle bundleWithURL:bundleUrl];
        UIImage *img = [UIImage imageNamed:@"exit" inBundle:bundle compatibleWithTraitCollection:nil];
        UIImageView *imgView = [[UIImageView alloc] initWithImage:img];
        imgView.frame = CGRectMake(0, 0, 50, 50);
        imgView.center = self.view.center;
        [self.view addSubview:imgView];
        
        self.tabBarItem.image = img;
        NSLog(@"bundleUrl");
    } else {
        NSLog(@"bundleUrl nil");
    }
    
}

@end
