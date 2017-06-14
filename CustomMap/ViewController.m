//
//  ViewController.m
//  CustomMap
//
//  Created by Azuo on 17/6/9.
//  Copyright © 2017年 Azuo. All rights reserved.
//

#import "ViewController.h"
#import "MapOperation.h"
#import "MapOperationFactory.h"
#import "CustomShowViewController.h"
#import "AllCommons.h"

@interface ViewController ()
- (IBAction)buttonClick:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //输出项目字段为AppTitle的值：
    NSString *appTitle = [[AllCommons customSettings]objectForKey:@"AppTitle"];
    NSLog(@"appTitle的值为：%@",appTitle);
    
    //Factory类中已根据.plist文件中的ClassName实例化对象；
    MapOperation *operation = [MapOperationFactory createMaoperation];
    NSDictionary *dict = [operation createOperationForMap:@"地图" withArea:1214.12];
    NSLog(@"操作类型：%@\n数量：%@",[dict objectForKey:@"City"],[dict objectForKey:@"count"]);
}

//点击跳转
- (IBAction)buttonClick:(UIButton *)sender {
    CustomShowViewController *customXibViewController = nil;
    NSDictionary *dictForXib =[[AllCommons customSettings]objectForKey:@"MeasureViewController_xib"];
    NSString *customXibName = [dictForXib objectForKey:@"xib_name"];
    //判断是否定制信息中.xib为空
    BOOL iscustomXib = (customXibName == nil || customXibName.length == 0);
    //这里读到的字符串为“MeasureViewController_az”，可做为控制器的xib视图
    if(iscustomXib)
    {
        customXibViewController = [[CustomShowViewController alloc] init];
    }else{
        customXibViewController = [[CustomShowViewController alloc] initWithNibName:customXibName bundle:nil];
    }
    
    [self presentViewController:customXibViewController animated:YES completion:nil];
}
@end
