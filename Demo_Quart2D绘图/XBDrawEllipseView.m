//
//  XBDrawEllipseView.m
//  Demo_Quart2D绘图
//
//  Created by xbgph on 16/3/18.
//  Copyright © 2016年 xbgph. All rights reserved.
//

#import "XBDrawEllipseView.h"

@implementation XBDrawEllipseView

- (void)drawRect:(CGRect)rect
{
    // 获取当前那上下文
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGRect rect1 = CGRectMake(50.0, 50.0, 200.0, 200.0);
    // 添加椭圆对象
    CGContextAddEllipseInRect(context, rect1);
    
    // 设置属性
    [[UIColor purpleColor] setStroke];
    [[UIColor cyanColor] setFill];
    
    // 绘制
    CGContextDrawPath(context, kCGPathFillStroke);
    
    
}




@end
