//
//  UILabel+WHLabel.m
//  WHKit
//  https://github.com/remember17/WHKit
//  Created by 吴浩 on 2017/6/7.
//  Copyright © 2017年 remember17. All rights reserved.
//

#import "UILabel+WHLabel.h"
#import <CoreText/CoreText.h>

@implementation UILabel (WHLabel)
+(instancetype)wh_labelWithText:(NSString *)text
                       textSize:(int)size
                      textColor:(UIColor *)color{
    return [self wh_labelWithText:text textFont:[UIFont systemFontOfSize:size] textColor:color frame:CGRectZero];
}

+(instancetype)wh_labelWithText:(nullable NSString *)text
                       textFont:(UIFont *)font
                      textColor:(nullable UIColor *)color{
    return [self wh_labelWithText:text textFont:font textColor:color frame:CGRectZero];
}

+(instancetype)wh_labelWithText:(NSString *)text textFont:(UIFont *)font textColor:(UIColor *)color frame:(CGRect)frame{
    UILabel *label = [UILabel new];
    label.text = text;
    label.font = font;
    label.textColor = color;
    label.frame=frame;
    return label;
}

- (void)setColumnSpace:(CGFloat)columnSpace
{
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithAttributedString:self.attributedText];
    //调整间距
    [attributedString addAttribute:(__bridge NSString *)kCTKernAttributeName value:@(columnSpace) range:NSMakeRange(0, [attributedString length])];
    self.attributedText = attributedString;
}

- (void)setRowSpace:(CGFloat)rowSpace
{
    self.numberOfLines = 0;
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithAttributedString:self.attributedText];
    //调整行距
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle.lineSpacing = rowSpace;
    paragraphStyle.baseWritingDirection = NSWritingDirectionLeftToRight;
    paragraphStyle.lineBreakMode = NSLineBreakByTruncatingTail;
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [self.text length])];
    self.attributedText = attributedString;
}

@end
