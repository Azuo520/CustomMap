
//
//  CustomShowViewController.m
//  多个target优化
//
//  Created by Azuo on 17/6/9.
//  Copyright © 2017年 Azuo. All rights reserved.
//

#import "CustomShowViewController.h"

@interface CustomShowViewController ()
- (IBAction)backClick:(UIButton *)sender;

@end

@implementation CustomShowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)backClick:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
