//
//  XZHud.m
//  XZ_MBHud
//
//  Created by yq on 2017/11/24.
//  Copyright © 2017年 XZ. All rights reserved.
//

#import "XZHud.h"

static id hud = nil;
@implementation XZHud

+ (instancetype)shareHud {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        hud = [[self alloc] initWithView:[UIApplication sharedApplication].keyWindow];
    });
    return hud;
}

#pragma mark - —— Methods ——

+ (void)showMessage:(NSString *)message {
    
    XZHud *hud = [self shareHud];
    hud.mode = MBProgressHUDModeText;
    hud.bezelView.color = [UIColor blackColor];
    hud.contentColor = [UIColor whiteColor];
    hud.label.text = message;
    [hud showAnimated:YES];
    [[UIApplication sharedApplication].keyWindow addSubview:hud];
    [hud hideAnimated:YES afterDelay:2.0f];
}

+ (void)showLoading {
    
    [self showLoading:@""];
}

+ (void)showLoading:(NSString *)message {
    
    XZHud *hud = [self shareHud];
    hud.mode = MBProgressHUDModeIndeterminate;
    hud.label.text = message;
    hud.bezelView.color = [UIColor blackColor];
    hud.contentColor = [UIColor whiteColor];
    [hud showAnimated:YES];
    [[UIApplication sharedApplication].keyWindow addSubview:hud];
}

+ (void)hide {
    XZHud *hud = [self shareHud];
    [hud hideAnimated:YES];
}

@end
