//
//  MapOperationFactory.h
//  CustomMap
//
//  Created by Azuo on 17/6/13.
//  Copyright © 2017年 Azuo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MapOperation.h"
#import "MapOperation_analyze.h"
#import "MapOperation_measure.h"

@interface MapOperationFactory : NSObject



//工厂方法：实例化一个style类型的Operation
+(MapOperation *)createMaoperation;

@end
