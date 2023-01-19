//
//  ViewController.m
//  简单工厂模式
//
//  Created by 翟旭博 on 2023/1/19.
//

#import "ViewController.h"
#import "PhoneFactory.h"
#import "PhoneDelegate.h"
@interface ViewController ()
@property (nonatomic, strong) UIButton *button;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSArray *array = @[@"vivo", @"oppo", @"xiaomi", @"apple"];
    for (int i = 0; i < 4; i++) {
        self.button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        self.button.frame = CGRectMake(100, 100 + i * 150, 200, 100);
        self.button.backgroundColor = [UIColor yellowColor];
        self.button.titleLabel.font = [UIFont systemFontOfSize:30];
        [self.button setTitle:array[i] forState:UIControlStateNormal];
        [self.view addSubview:self.button];
        [self.button addTarget:self action:@selector(press:) forControlEvents:UIControlEventTouchUpInside];
    }
    
}
- (void)press:(UIButton*)button {
    id whichPhone = [PhoneFactory createPhone:button.titleLabel.text];
    [whichPhone phoneWays];
}

@end
