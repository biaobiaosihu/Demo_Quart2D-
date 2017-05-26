//
//  XBDrawSquareView.m
//  Demo_Quart2D绘图
//
//  Created by xbgph on 16/3/18.
//  Copyright © 2016年 xbgph. All rights reserved.
//

#import "XBDrawSquareView.h"

@implementation XBDrawSquareView
{
    // 记录当前上下文
    CGContextRef _context;
}

- (void)drawRect:(CGRect)rect
{
    // 获取图形上下文
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    [self drawRectWithContext:context];
    [self drawRectByUIKitWithContext:context];
}

#pragma mark - 绘制矩形
- (void)drawRectWithContext:(CGContextRef)context
{
    // 添加矩形对象
    CGRect rect = CGRectMake(20.0, 50.0, 280.0, 50.0);
    CGContextAddRect(context, rect);

    // 设置属性
    [[UIColor blueColor] setStroke]; // 边框颜色
    [[UIColor yellowColor] setFill]; // 填充色
    
    // 绘制
    CGContextDrawPath(context, kCGPathFillStroke);
}

#pragma mark - 绘制矩形（利用UIKit的封装方法）
- (void)drawRectByUIKitWithContext:(CGContextRef)context
{
    // 添加矩形对象
    CGRect rect1 = CGRectMake(20.0, 150.0, 280.0, 50.0);
    CGRect rect2 = CGRectMake(20.0, 250.0, 280.0, 50.0);
    
    // 设置属性
    [[UIColor purpleColor] set];
    [[UIColor purpleColor] setStroke];
    
    // 绘制矩形相当于创建对象，添加到上下文，绘制三个步骤
    UIRectFill(rect1); // 只有填充
    UIRectFrame(rect2); // 只有边框
    
}

@end
