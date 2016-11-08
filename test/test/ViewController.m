//
//  ViewController.m
//  test
//
//  Created by Jacky on 16/11/8.
//  Copyright © 2016年 jacky. All rights reserved.
//

#import "ViewController.h"
#import "Utils.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //NSLog(@"%d",[Utils stringIsNullOrSoOn:@""]);
    
    //NSLog(@"输出现在的时间：%@",[Utils dateFromTimeStamp:@"1462395905" toDateFormatter:@"YY/MM/dd/hh/mm/ss"]);
 
    //NSLog(@"输出输出时间戳：%@",[Utils dateToTimeStamp:@"2016-5-5 5:5"]);//这边的时间必须方法体内的格式是一样的
    
    NSLog(@"输出字符串的长度%f",[Utils computeStrLength:@"这是数量的联系"]);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
