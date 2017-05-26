//
//  XBDrawLineView.m
//  Demo_Quart2D绘图
//
//  Created by xbgph on 16/3/18.
//  Copyright © 2016年 xbgph. All rights reserved.
//

#import "XBDrawLineView.h"

@implementation XBDrawLineView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    
    return self;
}

/***绘图只能从此方法中获取上下文***/
// 基本绘图
//- (void)drawRect:(CGRect)rect
//{
//    // 1.取得绘图上下文
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    
//    // 2.创建路径对象
//    CGMutablePathRef path = CGPathCreateMutable();
//    CGPathMoveToPoint(path, nil, 50, 50); // 设置路径起点
//    CGPathAddLineToPoint(path, nil, 200, 50); // 绘制直线
//    CGPathAddLineToPoint(path, nil, 100, 100); // 绘制另外一条
//    
//    // 3.添加路径到上下文
//    CGContextAddPath(context, path);
//    
//    // 4.设置图形上下文的状态属性
//    CGContextSetRGBStrokeColor(context, 1.0, 0.0, 0.0, 1.0); // 设置笔触颜色
//    CGContextSetRGBFillColor(context, 0.0, 1.0, 1.0, 0.0); // 设置填充颜色
//    CGContextSetLineWidth(context, 2.0); // 设置线条宽度
//    CGContextSetLineCap(context, kCGLineCapRound); // 设置顶点(包括起点和终点)样式
//    CGContextSetLineJoin(context, kCGLineJoinRound); // 设置链接点(中间点)样式
//    
//    CGFloat lengths[3] = {10, 20, 5};
//    CGContextSetLineDash(context, 0, lengths, 3); // 设置线段的样式
//    /**
//     * 参数1：上下文
//     * 参数2：虚线开始的位置
//     * 参数3：虚线长度间隔 (例如：lengths[3] = {10, 20, 5} 表示先绘制10个点，然后跳过20个点，然后再绘制5个点，然后跳过10个点，循环下去)
//     * 参数4：虚线数组的元素个数
//     */
//
//    CGColorRef color = [UIColor purpleColor].CGColor;
//    CGContextSetShadowWithColor(context, CGSizeMake(2, 2), 0.8, color); // 设置线段的阴影
//    /**
//     * 参数1：图形上下文
//     * 参数2：偏移量
//     * 参数3：模糊度
//     * 参数4：阴影颜色
//     */
//    
//    // 5.绘制图像到指定图形上下文
//    CGContextDrawPath(context, kCGPathFillStroke);
//    /**
//     * 最后一个参数说明
//     * kCGPathFill, 只有填充，不绘制边框
//     * kCGPathEOFill, 奇偶规则填充（多条路径交叉式，奇数交叉点填充，偶数不填充）
//     * kCGPathStroke, 只有边框，不填充
//     * kCGPathFillStroke, 既有边框又填充
//     * kCGPathEOFillStroke 奇偶填充并绘制边框
//     */
//    
//    // 6.释放路径对象
//    CGPathRelease(path);
//}

// 简化上面绘图方式
- (void)drawRect:(CGRect)rect
{
    // 1.取得绘图上下文
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    // 2.创建路径对象
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathMoveToPoint(path, nil, 50, 50); // 设置路径起点
    CGPathAddLineToPoint(path, nil, 200, 50); // 绘制直线
    CGPathAddLineToPoint(path, nil, 100, 100); // 绘制另外一条
    CGContextAddPath(context, path); // 添加到上下文
    CGContextClosePath(context); // 封闭路径
    
    // 3.设置图形上下文属性
    [[UIColor redColor] setStroke]; // 设置边框颜色
    [[UIColor greenColor] setFill]; // 设置填充颜色
    //[[UIColor yellowColor] set]; // 同时设置边框和填充颜色;
    
    // 4.绘制路径
    CGContextDrawPath(context, kCGPathFillStroke);
}


@end
