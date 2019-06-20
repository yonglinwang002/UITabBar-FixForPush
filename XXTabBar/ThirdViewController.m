//
//  ThirdViewController.m
//  XXTabBar
//
//  Created by xx on 2019/6/19.
//  Copyright © 2019 xx. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title =@"第三页";
    [self.view setBackgroundColor:[UIColor grayColor]];
    
    UIButton * closeButton =[[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 44)];
    [closeButton setTitle:@"close" forState:UIControlStateNormal];
    [closeButton addTarget:self action:@selector(closeButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:closeButton];
}

- (void)closeButtonClick:(id)sender {
    NSLog(@"close前");
    if (self.navigationController.viewControllers.count>1) {
        [self.navigationController popViewControllerAnimated:YES];
        NSLog(@"pop");
    }else {
        [self dismissViewControllerAnimated:YES completion:^{
            NSLog(@"dismiss completed");
            [self.tabBarController.tabBar setNeedsLayout];
        }];
        NSLog(@"dismiss");
    }
}

@end
