//
//  MapOperation_measure.m
//  CustomMap
//
//  Created by Azuo on 17/6/13.
//  Copyright © 2017年 Azuo. All rights reserved.
//

#import "MapOperation_measure.h"
#import "AllCommons.h"

@implementation MapOperation_measure

-(NSDictionary *)createOperationForMap:(NSString *)map withArea:(double)area
{
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    
    [dict setValue:@"测量" forKey:@"City"];
    
    [dict setValue:[NSNumber numberWithDouble:area] forKey:@"count"];

    return dict;
}

@end
