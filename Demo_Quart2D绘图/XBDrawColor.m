//
//  XBDrawColor.m
//  Demo_Quart2D绘图
//
//  Created by xbgph on 16/3/28.
//  Copyright © 2016年 xbgph. All rights reserved.
//

#import "XBDrawColor.h"

@implementation XBDrawColor

- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    [self drawRadialGradient1:context];
}

#pragma mark - 线性渐变
- (void)drawRadialGradient:(CGContextRef)context
{
    // 使用RGB颜色空间
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    
    // 裁剪的范围
    UIRectClip(CGRectMake(20, 50, 280, 300));
    
    CGFloat compoents[12] = {248.0/255.0, 86.0/255.0, 86.0/255.0,1,
        249.0/255.0, 127.0/255.0, 127.0/255.0, 1,
        1.0,1.0,1.0,1.0};
    
    CGFloat location[3] = {0.0, 0.8, 1.0};
    
    // 指定渐变色
    CGGradientRef gradient = CGGradientCreateWithColorComponents(colorSpace, compoents, location, 3);
    /** 指定渐变色的方法参数说明：
     * 1.space:颜色空间
     * 2.compoents:颜色数组，注意由于指定了RGB颜色空间，那么四个数组元素表示一个颜色（red, green, blue, alpha）,如果有三个颜色这个数组就是12个元素
     * 3.locations:颜色所在的位置（范围0~1）,这个数组的个数不小于compoents中存放的颜色的个数
     * 4.count:渐变个数，等于locations的个数
     */
    
    // 绘制线性渐变
    CGContextDrawLinearGradient(context, gradient, CGPointZero, CGPointMake(320, 300), kCGGradientDrawsAfterEndLocation);
    /** 参数说明
     * 1.context:上下文
     * 2.gradient:渐变色
     * 3.startPoint:起始位置
     * 4.endPoint:结束位置
     * 5.options:绘制方式，kCGGradientDrawsBeforeStartLocation 开始位置之前就进行绘制，到结束位置之后不再绘制，
     kCGGradientDrawsAfterEndLocation开始位置之前不进行绘制，到结束点之后继续填充
     */

    // 释放颜色空间
    CGColorSpaceRelease(colorSpace);
}

#pragma mark - （直径）径向渐变
- (void)drawRadialGradient1:(CGContextRef)context{
    //使用rgb颜色空间
    CGColorSpaceRef colorSpace=CGColorSpaceCreateDeviceRGB();
    
    // 裁剪的范围
    UIRectClip(CGRectMake(20, 50, 280, 300));
    
    CGFloat compoents[12]={
        248.0/255.0,86.0/255.0,86.0/255.0,1,
        249.0/255.0,127.0/255.0,127.0/255.0,1,
        1.0,1.0,1.0,1.0
    };
    CGFloat locations[3]={0,0.3,1.0};
    CGGradientRef gradient= CGGradientCreateWithColorComponents(colorSpace, compoents, locations, 3);
    
    CGContextDrawRadialGradient(context, gradient, CGPointMake(160, 284),0, CGPointMake(165, 289), 150, kCGGradientDrawsAfterEndLocation);
    //释放颜色空间
    CGColorSpaceRelease(colorSpace);
}

@end
