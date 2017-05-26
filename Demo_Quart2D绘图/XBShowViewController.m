//
//  XBShowViewController.m
//  Demo_Quart2D绘图
//
//  Created by xbgph on 16/3/26.
//  Copyright © 2016年 xbgph. All rights reserved.
//

#import "XBShowViewController.h"

//#import "XBDrawLineView.h"

@interface XBShowViewController ()

@property (nonatomic, retain)Class viewClass;

@end



@implementation XBShowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _viewClass = NSClassFromString(self.viewName);
    
    CGRect rect = XBDrawViewRect;
    
    //NSLog(@"%lf  %lf", rect.size.width, rect.size.height);
    
    UIView *view = [[self.viewClass alloc] initWithFrame:rect];
    
    [self.view addSubview:view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
