//
//  UIScrollView+YNPageExtend.h
//  YNPageViewTest
//
//  Created by techfun on 2020/01/08.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//


#import <UIKit/UIKit.h>

typedef void(^YNPageScrollViewDidScrollView)(UIScrollView *scrollView);

typedef void(^YNPageScrollViewBeginDragginScrollView)(UIScrollView *scrollView);

@interface UIScrollView (YNPageExtend)

@property (nonatomic, assign) BOOL yn_observerDidScrollView;

@property (nonatomic, copy) YNPageScrollViewDidScrollView yn_pageScrollViewDidScrollView;

@property (nonatomic, copy) YNPageScrollViewBeginDragginScrollView yn_pageScrollViewBeginDragginScrollView;

- (void)yn_setContentOffsetY:(CGFloat)offsetY;

@end
