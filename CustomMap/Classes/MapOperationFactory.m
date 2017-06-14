//
//  MapOperationFactory.m
//  CustomMap
//
//  Created by Azuo on 17/6/13.
//  Copyright © 2017年 Azuo. All rights reserved.
//

#import "MapOperationFactory.h"
#import "AllCommons.h"

@implementation MapOperationFactory

+ (MapOperation *)createMaoperation
{
    //1.初识化操作
    id operation;
    
    //2.读取定制信息
    NSDictionary *targetDict = [[AllCommons customSettings] objectForKey:@"MapOperation"];
    NSString *targetClassName = [targetDict objectForKey:@"classsName"];
    
    Class targetClass = NSClassFromString(targetClassName);
    
    if (targetClass != nil) {
        operation = [[targetClass alloc]init];
    }
    
    //3.添加不同的数据：

    return operation;
}

@end
