//
//  MapOperation_analyze.m
//  CustomMap
//
//  Created by Azuo on 17/6/13.
//  Copyright © 2017年 Azuo. All rights reserved.
//

#import "MapOperation_analyze.h"

@implementation MapOperation_analyze

-(NSDictionary *)createOperationForMap:(NSString *)map withArea:(double)area
{  
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    
    [dict setValue:@"分析" forKey:@"City"];
    
    area = area + 20.2;
    
    [dict setValue:[NSNumber numberWithDouble:area] forKey:@"count"];
    
    return dict;
}

@end
