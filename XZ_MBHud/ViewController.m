//
//  ViewController.m
//  XZ_MBHud
//
//  Created by yq on 2017/11/24.
//  Copyright © 2017年 XZ. All rights reserved.
//

#import "ViewController.h"
#import "XZHud.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
//    [XZHud showMessage:@"hahah"];
    [XZHud showLoading];
//    [XZHud showLoading:@"haha..."];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [XZHud hide];
    });
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
