//
//  FactoryManager.h
//  抽象工厂模式
//
//  Created by 翟旭博 on 2023/1/19.
//

#import <Foundation/Foundation.h>
#import "BaseFactory.h"
NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSUInteger, KFactoryType) {
    KApple,
    KGoogle
};
@interface FactoryManager : NSObject
+ (BaseFactory *)factoryWithType:(KFactoryType)factoryType;
@end

NS_ASSUME_NONNULL_END
