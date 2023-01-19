//
//  PhoneFactory.m
//  简单工厂模式
//
//  Created by 翟旭博 on 2023/1/19.
//

#import "PhoneFactory.h"
#import "Vivo.h"
#import "Oppo.h"
#import "Xiaomi.h"
#import "Apple.h"
@implementation PhoneFactory
NSArray *array = @[@"vivo", @"oppo", @"xiaomi", @"apple"];
+ (id)createPhone:(NSString*)phoneType {
    switch ([array indexOfObject:phoneType]) {
        case 0:
            return [[Vivo alloc] init];
            break;
        case 1:
            return [[Oppo alloc] init];
            break;
        case 2:
            return [[Xiaomi alloc] init];
            break;
        case 3:
            return [[Apple alloc] init];
            break;
        default:
            break;
    }
    return nil;
}
@end
