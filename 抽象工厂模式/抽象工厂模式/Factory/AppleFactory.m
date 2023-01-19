//
//  AppleFactory.m
//  抽象工厂模式
//
//  Created by 翟旭博 on 2023/1/19.
//

#import "AppleFactory.h"
#import "ApplePhone.h"
#import "AppleWatch.h"
@implementation AppleFactory
- (BasePhone *)createPhone {
    return [[ApplePhone alloc] init];
}

- (BaseWatch *)createWatch {
    return [[AppleWatch alloc] init];
}
@end
