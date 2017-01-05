//
//  Utils.h
//  test
//
//  Created by Jacky on 16/11/8.
//  Copyright © 2016年 jacky. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

//以下工具类
@interface Utils : NSObject

#pragma mark -Time Utils
/**
 获取当前的时间戳

 @return 返回当前的时间戳
 */
+ (NSString *)getCurrentTimeStamp;

/**
 将时间戳转化成固定格式的时间

 @param timeStamp 需要转化的时间戳
 @return 返回转化后的时间 yyyMMddHHmm
 */
+ (NSString *)changeTimeFromtTimeStampToFomatter:(NSString *)timeStamp;

/**
 将时间戳转化成固定的格式

 @param timeStamp 需要转化的时间戳
 @param dateFormatter 转化后的固定格式
 @return 返回转化后的值
 */
+(NSString *)dateFromTimeStamp:(NSString *)timeStamp toDateFormatter:(NSString *)dateFormatter;

/**
 将时间转换成时间戳

 @param timeStamp 日期时间
 @return 时间戳
 */
+(NSString *)dateToTimeStamp:(NSString *)timeStamp;


#pragma mark -String Utils
/**
 判断字符串是否是空

 @param judgeString 所判断的字符串
 @return 字符串为空返回真
 */
+ (BOOL)stringIsNullOrSoOn:(NSString *)judgeString;


/**
 计算字符串的长度 中英文混排列 2个英文，标点算一个中文

 @param strtemp 所需要计算的字符串
 @return 返回长度
 */
+ (CGFloat)computeStrLength:(NSString *)strtemp;

@end
