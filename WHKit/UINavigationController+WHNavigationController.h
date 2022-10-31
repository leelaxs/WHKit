//
//  UINavigationController+WHNavigationController.h
//  WHKit
//  https://github.com/remember17/WHKit
//  Created by 吴浩 on 2017/6/7.
//  Copyright © 2017年 remember17. All rights reserved.
//  

#import <UIKit/UIKit.h>

@interface UINavigationController (WHNavigationController)

/** 寻找Navigation中的某个viewcontroler */
- (id)wh_findViewController:(Class)className;

/** 判断是否只有一个RootViewController */
- (BOOL)isOnlyContainRootViewController;

/** RootViewController */
- (UIViewController *)wh_rootViewController;

/** 返回指定的viewcontroler */
- (NSArray *)wh_popToViewControllerWithClassName:(Class)className animated:(BOOL)animated;

/** pop回第n层 */
- (NSArray *)wh_popToViewControllerWithLevel:(NSInteger)level animated:(BOOL)animated;

/** 以某种动画形式push */
- (void)wh_pushViewController:(UIViewController *)controller withTransition:(UIViewAnimationTransition)transition;

/** 以某种动画形式pop */
- (UIViewController *)wh_popViewControllerWithTransition:(UIViewAnimationTransition)transition;

@end
