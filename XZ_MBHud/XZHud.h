//
//  XZHud.h
//  XZ_MBHud
//
//  Created by yq on 2017/11/24.
//  Copyright © 2017年 XZ. All rights reserved.
//

#import "MBProgressHUD.h"

@interface XZHud : MBProgressHUD

+ (instancetype)shareHud;

#pragma mark - —— Methods ——
+ (void)showMessage:(NSString *)message;
+ (void)showLoading:(NSString *)message;
+ (void)showLoading;
+ (void)hide;

@end
