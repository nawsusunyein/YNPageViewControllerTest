//
//  TAAbstractDotView.h
//  YNPageViewTest
//
//  Created by techfun on 2020/01/08.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface TAAbstractDotView : UIView


/**
 *  A method call let view know which state appearance it should take. Active meaning it's current page. Inactive not the current page.
 *
 *  @param active BOOL to tell if view is active or not
 */
- (void)changeActivityState:(BOOL)active;


@end
