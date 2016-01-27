//
//  main.m
//  Demo1_自定义通知
//
//  Created by tarena on 16/1/27.
//  Copyright © 2016年 EvilCompssion. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "compay.h"
#import "VIP.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {

        compay *company = [compay new];
        VIP *vip = [VIP new];
        [company broadcast];
        
        
        
    }
    return 0;
}
