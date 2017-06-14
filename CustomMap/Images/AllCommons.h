//
//  AllCommons.h
//  CustomMap
//
//  Created by Azuo on 17/6/13.
//  Copyright © 2017年 Azuo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AllCommons : NSObject

//获取项目定制信息;
+(NSDictionary *)customSettings;

/* 获取沙盒中的某文件 */
+(id)getDocumentForStr:(NSString *)str;

@end
