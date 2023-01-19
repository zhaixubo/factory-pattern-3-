//
//  ViewController.m
//  抽象工厂模式
//
//  Created by 翟旭博 on 2023/1/19.
//

#import "ViewController.h"
#import "BaseFactory.h"
#import "FactoryManager.h"
#import "BasePhone.h"
#import "BaseWatch.h"
#import "AppleWatch.h"
#import "ApplePhone.h"
#import "GoogleWatch.h"
#import "GooglePhone.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //确定工厂
    BaseFactory *googleFactory = [FactoryManager factoryWithType:KGoogle];
    //确定商品（1）
    GooglePhone *googlePhone = (GooglePhone *)[googleFactory createPhone];
    //执行方法（1）
    [googlePhone phoneCell];
    [googlePhone googlePhoneWays];
    //确定商品（2）
    GoogleWatch *googleWatch = (GoogleWatch *)[googleFactory createWatch];
    //执行方法（2）
    [googleWatch watchCell];
    [googleWatch googleWatchWays];
    
    NSLog(@"-------------------------------------");
    
    //确定工厂
    BaseFactory *appleFactory = [FactoryManager factoryWithType:KApple];
    //确定商品（1）
    ApplePhone *applePhone = (ApplePhone *)[appleFactory createPhone];
    //执行方法（1）
    [applePhone phoneCell];
    [applePhone applePhoneWays];
    //确定商品（2）
    AppleWatch *appleWatch = (AppleWatch *)[appleFactory createWatch];
    //执行方法（2）
    [appleWatch watchCell];
    [appleWatch appleWatchWays];
}


@end
