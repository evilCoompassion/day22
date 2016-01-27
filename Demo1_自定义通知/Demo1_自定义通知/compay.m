//
//  compay.m
//  Demo1_自定义通知
//
//  Created by tarena on 16/1/27.
//  Copyright © 2016年 EvilCompssion. All rights reserved.
//

#import "compay.h"

@implementation compay


-(void)broadcast
{
    NSDictionary *dict = @{@"title":@"少帅",@"episode":@"第32集"};
    
    NSNotificationCenter *center = [NSNotificationCenter defaultCenter];
    [center postNotificationName:@"Update" object:self userInfo:dict];
}
@end
