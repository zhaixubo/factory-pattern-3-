//
//  FactoryManager.m
//  抽象工厂模式
//
//  Created by 翟旭博 on 2023/1/19.
//

#import "FactoryManager.h"
#import "GoogleFactory.h"
#import "AppleFactory.h"
@implementation FactoryManager
+ (BaseFactory *)factoryWithType:(KFactoryType)factoryType {
    if (factoryType == KApple) {
        return [[AppleFactory alloc] init];
    } else if (factoryType == KGoogle) {
        return [[GoogleFactory alloc] init];;
    }
    return nil;
}
@end
