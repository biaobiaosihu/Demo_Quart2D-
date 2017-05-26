//
//  XBDrawTextView.m
//  Demo_Quart2D绘图
//
//  Created by xbgph on 16/3/18.
//  Copyright © 2016年 xbgph. All rights reserved.
//

#import "XBDrawTextView.h"

@implementation XBDrawTextView

- (void)drawRect:(CGRect)rect
{
    // 获取上下文
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    NSString *str = @"There are moments in life when you miss someone so much that you just want to pick them from your dreams and hug them for real! Dream what you want to dream;go where you want to go;be what you want to be,because you have only one life and one chance to do all the things you want to do.";
    
    CGRect rect1 = CGRectMake(20, 50, 280, 300); // 文字范围
    
    UIFont *font = [UIFont systemFontOfSize:18]; // 设置字体
    UIColor *color = [UIColor redColor]; // 设置颜色
    NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc] init]; // 段落样式
    NSTextAlignment align = NSTextAlignmentLeft; // 对齐方式
    style.alignment = align;
    // 绘制文字
    [str drawInRect:rect1 withAttributes:@{NSFontAttributeName:font, NSForegroundColorAttributeName:color, NSParagraphStyleAttributeName:style}];
}

@end
