//
//  UIView+WHDraw.h
//  WHKit
//
//  Created by 菜鸽途讯 on 2022/6/8.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSInteger, WHGradientLayerDirection) {
    WHGradientLayerDirection_FromLeftToRight,           // 从左到右
    WHGradientLayerDirection_FromTopToBottom,           // 从上到下
    WHGradientLayerDirection_FromTopLeftToBottomRight,  // 从左上到右下
    WHGradientLayerDirection_FromTopRightToBottomLeft,  // 从右上到左下
    WHGradientLayerDirection_FromCenterToEdge,          // 从中心向四周
};

NS_ASSUME_NONNULL_BEGIN

@interface UIView (WHDraw)

/// draw line in view.
- (void)wh_drawLineFromPoint:(CGPoint)fPoint
                     toPoint:(CGPoint)tPoint
                   lineColor:(UIColor *)color
                  lineHeight:(CGFloat)height;

/// draw dash line in view. type: 0 - cube, 1 - round
- (void)wh_drawDashLineFromPoint:(CGPoint)fPoint
                         toPoint:(CGPoint)tPoint
                       lineColor:(UIColor *)color
                       lineWidth:(CGFloat)width
                      lineHeight:(CGFloat)height
                       lineSpace:(CGFloat)space
                        lineType:(NSInteger)type;

/// draw pentagram in view. rate: 0.3 ~ 1.1
- (void)wh_drawPentagram:(CGPoint)center
                  radius:(CGFloat)radius
                   color:(UIColor *)color
                    rate:(CGFloat)rate;

/// draw rect. type: 0 - cube, 1 - round
- (void)wh_drawRect:(CGRect)rect
          lineColor:(UIColor *)color
          lineWidth:(CGFloat)width
         lineHeight:(CGFloat)height
           lineType:(NSInteger)type
             isDash:(BOOL)dash
          lineSpace:(CGFloat)space;

/// gradient layer with direction.
- (CALayer *)wh_gradientLayer:(CGRect)rect
                        color:(NSArray <UIColor *>*)colors
                     location:(NSArray <NSNumber *> *)locations
                    direction:(WHGradientLayerDirection)direction;

- (CALayer *)wh_gradientLayer:(CGRect)rect
                        color:(NSArray <UIColor *>*)colors
                   startPoint:(CGPoint)startPoint
                     endPoint:(CGPoint)endPoint
                     location:(NSArray <NSNumber *> *)locations
                         type:(NSInteger)type;

/// draw oval. type: 0 - cube, 1 - round
- (void)wh_drawOval:(CGRect)rect
          lineColor:(UIColor *)color
          lineWidth:(CGFloat)width
         lineHeight:(CGFloat)height
           lineType:(NSInteger)type
             isDash:(BOOL)dash
          lineSpace:(CGFloat)space;

/// draw round rect. type: 0 - cube, 1 - round
- (void)wh_drawRoundRect:(CGRect)rect
               lineColor:(UIColor *)color
               lineWidth:(CGFloat)width
              lineHeight:(CGFloat)height
                lineType:(NSInteger)type
                  isDash:(BOOL)dash
               lineSpace:(CGFloat)space
                  radius:(CGFloat)radius;

/// draw round rect. type: 0 - cube, 1 - round
- (void)wh_drawRoundRect:(CGRect)rect
         roundingCorners:(UIRectCorner)corners
               lineColor:(UIColor *)color
               lineWidth:(CGFloat)width
              lineHeight:(CGFloat)height
                lineType:(NSInteger)type
                  isDash:(BOOL)dash
               lineSpace:(CGFloat)space
                  radius:(CGFloat)radius;
@end

NS_ASSUME_NONNULL_END
