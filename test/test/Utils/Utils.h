//
//  Utils.h
//  test
//
//  Created by Jacky on 16/11/8.
//  Copyright © 2016年 jacky. All rights reserved.
//

#import <Foundation/Foundation.h>

//以下工具类
@interface Utils : NSObject

//判断字符串是否是空
+(BOOL)stringIsNullOrSoOn:(NSString *)judgeString;


//将时间戳转化成固定的格式
+(NSString *)dateFromTimeStamp:(NSString *)timeStamp toDateFormatter:(NSString *)dateFormatter;

//将时间转换成时间戳
+(NSString *)dateToTimeStamp:(NSString *)timeStamp;


@end
