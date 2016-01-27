//
//  VIP.m
//  Demo1_自定义通知
//
//  Created by tarena on 16/1/27.
//  Copyright © 2016年 EvilCompssion. All rights reserved.
//

#import "VIP.h"

@implementation VIP
- (instancetype)init
{
    self = [super init];
    if (self) {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(receiveUpdateMessage:) name:@"Update" object:nil];
    }
    return self;
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"Update" object:nil];
}

-(void)receiveUpdateMessage:(NSNotification *)notification
{
    NSDictionary *dict = notification.userInfo;
    NSLog(@"%@跟新到第几集%@",dict[@"title"],dict[@"episode"]);
    
    
    
}

@end
