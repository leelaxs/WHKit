//
//  UIBarButtonItem+WHBarButtonItem.m
//  WHKit
//  https://github.com/remember17/WHKit
//  Created by 吴浩 on 2017/6/7.
//  Copyright © 2017年 remember17. All rights reserved.
//

#import "UIBarButtonItem+WHBarButtonItem.h"

@implementation UIBarButtonItem (WHBarButtonItem)

+(instancetype _Nullable )wh_barButtonItemWithTitle:(NSString *_Nullable)title
                                          imageName:(NSString *_Nullable)imageName
                                             target:(nullable id)target
                                             action:(nonnull SEL)action
                                            btnSize:(CGSize)btnSize
                                           fontSize:(CGFloat)fontSize
                                   titleNormalColor:(UIColor *_Nullable)normalColor
                                  titleDisableColor:(UIColor *_Nullable)disableColor
                                   titleSelectColor:(UIColor *_Nullable)selectColor
                              titleHighlightedColor:(UIColor *_Nullable)highlightedColor {
    
    UIButton *button = [UIButton new];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:normalColor forState:UIControlStateNormal];
    [button setTitleColor:disableColor forState:UIControlStateDisabled];
    [button setTitleColor:selectColor forState:UIControlStateSelected];
    [button setTitleColor:highlightedColor forState:UIControlStateHighlighted];
    button.titleLabel.font = [UIFont systemFontOfSize:fontSize];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    if (imageName && ![@"" isEqualToString:imageName]) {
        [button setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    }
    if (CGSizeEqualToSize(btnSize, CGSizeZero)) {
        [button sizeToFit];
    }else{
        button.frame = CGRectMake(0, 0, btnSize.width, btnSize.height);
    }
    return [[UIBarButtonItem alloc] initWithCustomView:button];
}


@end
