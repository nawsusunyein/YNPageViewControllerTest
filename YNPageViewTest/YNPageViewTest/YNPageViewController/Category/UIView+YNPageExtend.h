//
//  UIView+YNPageExtend.h
//  YNPageViewTest
//
//  Created by techfun on 2020/01/08.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kYNPAGE_SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)

#define kYNPAGE_SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)

#define kYNPAGE_IS_IPHONE_X  ((kYNPAGE_SCREEN_WIDTH == 375.f && kYNPAGE_SCREEN_HEIGHT == 812.f) || (kYNPAGE_SCREEN_WIDTH == 414.f && kYNPAGE_SCREEN_HEIGHT == 896.f))

#define kYNPAGE_NAVHEIGHT (kYNPAGE_IS_IPHONE_X ? 88 : 64)

#define kYNPAGE_TABBARHEIGHT (kYNPAGE_IS_IPHONE_X ? 83 : 49)

#define kLESS_THAN_iOS11 ([[UIDevice currentDevice].systemVersion floatValue] < 11.0 ? YES : NO)

@interface UIView (YNPageExtend)

@property (nonatomic, assign) CGFloat yn_x;

@property (nonatomic, assign) CGFloat yn_y;

@property (nonatomic, assign) CGFloat yn_width;

@property (nonatomic, assign) CGFloat yn_height;

@property (nonatomic, assign) CGFloat yn_bottom;

@end
