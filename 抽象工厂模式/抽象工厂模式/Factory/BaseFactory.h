//
//  BaseFactory.h
//  抽象工厂模式
//
//  Created by 翟旭博 on 2023/1/19.
//

#import <Foundation/Foundation.h>
#import "BaseWatch.h"
#import "BasePhone.h"
NS_ASSUME_NONNULL_BEGIN

@interface BaseFactory : NSObject
- (BasePhone*)createPhone;
- (BaseWatch*)createWatch;
@end

NS_ASSUME_NONNULL_END
