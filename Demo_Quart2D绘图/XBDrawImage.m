//
//  XBDrawImage.m
//  Demo_Quart2D绘图
//
//  Created by xbgph on 16/3/26.
//  Copyright © 2016年 xbgph. All rights reserved.
//

#import "XBDrawImage.h"

@implementation XBDrawImage

- (void)drawRect:(CGRect)rect
{
    UIImage *image = [UIImage imageNamed:@"3"];
    // 从某一点开始绘制
    [image drawAtPoint:CGPointMake(10, 50)];
    // 绘制到指定矩形中，如果大小不合适会进行拉伸
    [image drawInRect:rect];
    // 平铺绘制
    //[image drawAsPatternInRect:CGRectMake(0, 0, 320, 568)];
}

@end
