//
//  FirstViewController.m
//  XXTabBar
//
//  Created by xx on 2019/6/19.
//  Copyright © 2019 xx. All rights reserved.
//

#import "FirstViewController.h"
#import "ThirdViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
}
- (IBAction)testButtonClick:(id)sender {
   
}


- (IBAction)presentView:(id)sender {
    ThirdViewController * vc =[[ThirdViewController alloc] init];
    [self presentViewController:vc animated:YES completion:^{
        NSLog(@"present Over");
    }];
    NSLog(@"present");
}

-(void)viewWillAppear:(BOOL)animated{

}

- (IBAction)gotoNext:(id)sender {
    ThirdViewController * vc =[[ThirdViewController alloc] init];
    
    vc.hidesBottomBarWhenPushed = YES;
    NSLog(@"push ");
    [self.navigationController pushViewController:vc  animated:YES];
}

@end
