//
//  MapOperation.h
//  CustomMap
//
//  Created by Azuo on 17/6/12.
//  Copyright © 2017年 Azuo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MapOperation : NSObject

@property (nonatomic, strong)NSDictionary *dict;

-(NSDictionary *)createOperationForMap:(NSString *)map withArea:(double)area;

@end
