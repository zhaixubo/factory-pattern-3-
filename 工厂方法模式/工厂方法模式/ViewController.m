//
//  ViewController.m
//  工厂方法模式
//
//  Created by 翟旭博 on 2023/1/19.
//

#import "ViewController.h"
#import "PhoneCenter.h"
#import "Vivo.h"
#import "Oppo.h"
#import "Xiaomi.h"
#import "Apple.h"
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
        self.button.backgroundColor = [UIColor orangeColor];
        self.button.titleLabel.font = [UIFont systemFontOfSize:30];
        [self.button setTitle:array[i] forState:UIControlStateNormal];
        self.button.tag = i;
        [self.view addSubview:self.button];
        [self.button addTarget:self action:@selector(press:) forControlEvents:UIControlEventTouchUpInside];
    }
}

- (void)press:(UIButton *)button {
    if (button.tag == 0) {
        PhoneCenter *a = [[Vivo alloc] init];
        [a beginProductionPhone];
        [a succeedProductionPhone];
    } else if (button.tag == 1) {
        PhoneCenter *b = [[Oppo alloc] init];
        [b beginProductionPhone];
        [b succeedProductionPhone];
    } else if (button.tag == 2) {
        PhoneCenter *c = [[Xiaomi alloc] init];
        [c beginProductionPhone];
        [c succeedProductionPhone];
    } else if (button.tag == 3) {
        PhoneCenter *d = [[Apple alloc] init];
        [d beginProductionPhone];
        [d succeedProductionPhone];
    }
}
@end
