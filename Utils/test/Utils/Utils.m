//
//  Utils.m
//  test
//
//  Created by Jacky on 16/11/8.
//  Copyright © 2016年 jacky. All rights reserved.
//

#import "Utils.h"

@implementation Utils

#pragma mark -String Utils
+(BOOL)stringIsNullOrSoOn:(NSString *)judgeString{
    if (![judgeString isKindOfClass:[NSString class]]) {
        return YES;
    }
    
    if (judgeString == nil) {
        return YES;
    }else{
        if ([@"NULL" isEqualToString:judgeString] ||
            [@"null" isEqualToString:judgeString] ||
            [@"(null)" isEqualToString:judgeString] ||
            [@"" isEqualToString:judgeString] ||
            [@" " isEqualToString:judgeString] ||
            [@"<null>" isEqualToString:judgeString]||
            judgeString.length == 0) {
            return YES;
        }
        if ([judgeString isKindOfClass:[NSNull class]]) {
            return YES;
        }
    }
    return NO;
}

+ (CGFloat)computeStrLength:(NSString *)strtemp {
    int strlength = 0;
    char* p = (char*)[strtemp cStringUsingEncoding:NSUnicodeStringEncoding];
    for (int i=0 ; i<[strtemp lengthOfBytesUsingEncoding:NSUnicodeStringEncoding] ;i++) {
        if (*p) {
            p++;
            strlength++;
        }
        else {
            p++;
        }
    }
    return (strlength+1)/2;
}

#pragma mark -Time Utils
+ (NSString *)getCurrentTimeStamp{
    //标准型
    NSDate* dat = [NSDate dateWithTimeIntervalSinceNow:0];
    
    NSTimeInterval a=[dat timeIntervalSince1970];
    
    NSString*timeString = [NSString stringWithFormat:@"%0.f", a];//转为字符型
    
    return timeString;
}

+ (NSString *)changeTimeFromtTimeStampToFomatter:(NSString *)timeStamp{
    NSDateFormatter*formatter = [[NSDateFormatter alloc]init];
    
    [formatter setDateStyle:NSDateFormatterMediumStyle];
    
    [formatter setTimeStyle:NSDateFormatterShortStyle];
    
    [formatter setDateFormat:@"yyyMMddHHmm"];
    
    int timeval = [timeStamp intValue];
    
    NSDate *confromTimesp = [NSDate dateWithTimeIntervalSince1970:timeval];
    
    NSString*confromTimespStr = [formatter stringFromDate:confromTimesp];
    
    return confromTimespStr;
}


+(NSString *)dateFromTimeStamp:(NSString *)timeStamp toDateFormatter:(NSString *)dateFormatter{
    NSTimeInterval time=[timeStamp doubleValue];//如果不使用本地时区,因为时差问题要加8小时 == 28800 sec
    NSDate *detaildate=[NSDate dateWithTimeIntervalSince1970:time];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setTimeZone:[NSTimeZone localTimeZone]];
    
    [formatter setDateFormat:dateFormatter];
    
    NSString *dateString = [formatter stringFromDate:detaildate];
    
    return dateString;
}

+(NSString *)dateToTimeStamp:(NSString *)time{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setTimeZone:[NSTimeZone localTimeZone]]; //设置本地时区
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm"];
    NSDate *date = [dateFormatter dateFromString:time];
    NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[date timeIntervalSince1970]];//时间戳
    return timeSp;
}



@end
