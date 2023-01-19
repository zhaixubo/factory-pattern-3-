//
//  GoogleFactory.m
//  抽象工厂模式
//
//  Created by 翟旭博 on 2023/1/19.
//

#import "GoogleFactory.h"
#import "GooglePhone.h"
#import "GoogleWatch.h"
@implementation GoogleFactory
- (BasePhone *)createPhone {
    return [[GooglePhone alloc] init];
}

- (BaseWatch *)createWatch {
    return [[GoogleWatch alloc] init];
}
@end
