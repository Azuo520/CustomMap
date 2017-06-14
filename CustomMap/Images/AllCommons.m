//
//  AllCommons.m
//  CustomMap
//
//  Created by Azuo on 17/6/13.
//  Copyright © 2017年 Azuo. All rights reserved.
//

#import "AllCommons.h"

@implementation AllCommons


//获取项目定制信息;
+(NSDictionary *)customSettings
{
    NSString *prefix = [[[NSBundle mainBundle] infoDictionary] objectForKey:(NSString*)kCFBundleNameKey];
    NSString *plistFileName = [NSString stringWithFormat:@"%@.plist", prefix];
    
    //以字典的格式，读取资源包里的"项目名.plist"文件。
    NSDictionary *customizedSetting = [NSDictionary dictionaryWithContentsOfFile:[[[NSBundle mainBundle] bundlePath] stringByAppendingPathComponent:plistFileName]];
    return [NSDictionary dictionaryWithDictionary:customizedSetting];
}


+(id)getDocumentForStr:(NSString *)str
{
    NSString*path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    path = [path stringByAppendingPathComponent:str];
    return path;
}

@end
