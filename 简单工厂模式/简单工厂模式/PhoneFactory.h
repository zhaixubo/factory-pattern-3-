//
//  PhoneFactory.h
//  简单工厂模式
//
//  Created by 翟旭博 on 2023/1/19.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PhoneFactory : NSObject
+ (id)createPhone:(NSString*)phoneType;
@end

NS_ASSUME_NONNULL_END
