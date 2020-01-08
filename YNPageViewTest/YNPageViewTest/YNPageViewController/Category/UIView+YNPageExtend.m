//
//  UIView+YNPageExtend.m
//  YNPageViewTest
//
//  Created by techfun on 2020/01/08.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//


#import "UIView+YNPageExtend.h"

@implementation UIView (YNPageExtend)

- (void)setYn_x:(CGFloat)yn_x {
    CGRect frame = self.frame;
    frame.origin.x = yn_x;
    self.frame = frame;
}

- (CGFloat)yn_x {
    return self.frame.origin.x;
}

- (void)setYn_y:(CGFloat)yn_y {
    CGRect frame = self.frame;
    frame.origin.y = yn_y;
    self.frame = frame;
}

- (CGFloat)yn_y {
    return self.frame.origin.y;
}

- (CGFloat)yn_width {
    return self.frame.size.width;
}

- (void)setYn_width:(CGFloat)yn_width {
    CGRect frame = self.frame;
    frame.size.width = yn_width;
    self.frame = frame;
}

- (CGFloat)yn_height {
    return self.frame.size.height;
}

- (void)setYn_height:(CGFloat)yn_height {
    CGRect frame = self.frame;
    frame.size.height = yn_height;
    self.frame = frame;
}

- (CGFloat)yn_bottom {
    return self.frame.size.height + self.frame.origin.y;
}

- (void)setYn_bottom:(CGFloat)yn_bottom {
    CGRect frame = self.frame;
    frame.origin.y = yn_bottom - frame.size.height;
    self.frame = frame;
}

@end
