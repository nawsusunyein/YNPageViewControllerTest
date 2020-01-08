//
//  YNPageHeaderScrollView.m
//  YNPageViewTest
//
//  Created by techfun on 2020/01/08.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

#import "YNPageHeaderScrollView.h"

@interface YNPageHeaderScrollView () <UIScrollViewDelegate>

@end

@implementation YNPageHeaderScrollView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.delegate = self;
        self.showsVerticalScrollIndicator = NO;
        self.showsHorizontalScrollIndicator = NO;
    }
    return self;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    [scrollView setContentOffset:CGPointMake(0, 0) animated:NO];
}

@end
