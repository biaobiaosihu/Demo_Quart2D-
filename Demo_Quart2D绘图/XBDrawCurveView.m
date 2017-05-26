//
//  XBDrawCurveView.m
//  Demo_Quart2D绘图
//
//  Created by xbgph on 16/3/18.
//  Copyright © 2016年 xbgph. All rights reserved.
//

#import "XBDrawCurveView.h"

@implementation XBDrawCurveView

- (void)drawRect:(CGRect)rect
{
    // 获取图形上下文
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    // 绘制弧线
    [self drawArcWithContext:context];
    
    // 绘制二次贝塞尔曲线
    [self drawQuadCurveWithContext:context];
    // 绘制三次贝塞尔曲线
    [self drawCurveWithContext:context];
    
}

#pragma mark - 绘制弧形
- (void)drawArcWithContext:(CGContextRef)context
{
    // 添加弧形对象
    CGContextAddArc(context, 250, 400, 100.0, 0.0, M_PI_2, 0);
    /**参数说明
     * 1.图形上下文
     * 2.中心点x坐标
     * 3.中心点y坐标
     * 4.半径
     * 5.起始弧度
     * 6.结束弧度
     * 7.是否逆时针绘制（1 = YES，0 = NO）
     */
    
    // 设置属性
    [[UIColor cyanColor] setStroke];
    
    // 绘制
    CGContextDrawPath(context, kCGPathStroke);
}

#pragma mark - 绘制贝塞尔曲线
// 绘制二次贝塞尔曲线
- (void)drawQuadCurveWithContext:(CGContextRef)context
{
    // 设置起点
    CGContextMoveToPoint(context, 20, 100);
    // 添加二次贝塞尔曲线对象
    CGContextAddQuadCurveToPoint(context, 160, 50, 300, 100);
    /**参数说明
     * 1.图形上下文
     * 2.控制点x坐标
     * 3.控制点y坐标
     * 4.起始点x坐标
     * 5.起始点y坐标
     */
    
    // 设置颜色
    [[UIColor purpleColor] setStroke];
    [[UIColor cyanColor] setFill];
    
    // 绘制路径
    CGContextDrawPath(context, kCGPathFillStroke);
}

// 绘制三次贝塞尔曲线
- (void)drawCurveWithContext:(CGContextRef)context
{
    // 设置起点
    CGContextMoveToPoint(context, 20, 500);
    // 添加三次贝塞尔曲线的对象
    CGContextAddCurveToPoint(context, 80, 300, 240, 650, 300, 300);
    // 设置颜色
    [[UIColor purpleColor] setStroke];
    [[UIColor cyanColor] setFill];
    
    // 绘制路径
    CGContextDrawPath(context, kCGPathFillStroke);
}

@end
