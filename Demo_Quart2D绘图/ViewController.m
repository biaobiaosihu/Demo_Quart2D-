//
//  ViewController.m
//  Demo_Quart2D绘图
//
//  Created by xbgph on 16/3/18.
//  Copyright © 2016年 xbgph. All rights reserved.
//

/**
 * 绘图一般分为以下步骤
 * 1.获取绘图上下文
 * 2.创建并设置路径
 * 3.将路径添加到上下文
 * 4.设置上下文状态
 * 5.绘制路径
 * 6.释放路径
 */

#import "ViewController.h"

#import "XBShowViewController.h"

// 画线
#import "XBDrawLineView.h"
// 画矩形
#import "XBDrawSquareView.h"
// 画椭圆
#import "XBDrawEllipseView.h"
// 绘制曲线
#import "XBDrawCurveView.h"
// 绘制文字
#import "XBDrawTextView.h"
// 绘制Image
#import "XBDrawImage.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong)UITableView *tableView;
@property (nonatomic, strong)NSArray *dataArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //self.navigationController.automaticallyAdjustsScrollViewInsets = NO;
    
    if (!_dataArray) {
        _dataArray = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"XBAnimationView" ofType:@"plist"]];
    }
    NSLog(@"%@", _dataArray);
    
//    
//    // 绘制线段
//    [self drawLine];
//    
//    // 绘制矩形
//    [self drawSquare];
//    
//    // 绘制椭圆
//    [self drawEllipse];
//    
//    // 绘制曲线
//    [self drawCurve];
//    
//    // 绘制文字
//    [self drawText];
//    
//    // 绘制Image
//    [self drawImage];
    
    [self.view addSubview:self.tableView];

}

#pragma mark - tableView Get Methed
- (UITableView *)tableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height - 64) style:UITableViewStyleGrouped];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    }
    return _tableView;
}

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    NSDictionary *dict = _dataArray[indexPath.row];
    
    cell.textLabel.text = dict[@"title"];
    
    return cell;
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    XBShowViewController *showVc = [[XBShowViewController alloc] init];
    NSDictionary *dict = _dataArray[indexPath.row];
    showVc.title = dict[@"title"];
    showVc.viewName = dict[@"view"];
    showVc.rect = dict[@"rect"];
    [self.navigationController pushViewController:showVc animated:YES];
}


- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 0.1;
}

#pragma mark - 绘制线段
- (void)drawLine
{
    XBDrawLineView *line = [[XBDrawLineView alloc] initWithFrame:CGRectMake(50, 100, 300, 300)];
    line.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:line];
}

#pragma mark - 绘制矩形
- (void)drawSquare
{
    XBDrawSquareView *square = [[XBDrawSquareView alloc] initWithFrame:self.view.bounds];
    square.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:square];
}

#pragma mark - 绘制椭圆
- (void)drawEllipse
{
    XBDrawEllipseView *ellipse = [[XBDrawEllipseView alloc] initWithFrame:self.view.bounds];
    ellipse.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:ellipse];
}

#pragma mark - 绘制曲线
- (void)drawCurve
{
    XBDrawCurveView *curve = [[XBDrawCurveView alloc] initWithFrame:self.view.bounds];
    curve.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:curve];
}

#pragma mark - 绘制文字
- (void)drawText
{
    XBDrawTextView *text = [[XBDrawTextView alloc] initWithFrame:self.view.bounds];
    text.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:text];
}

#pragma mark - 绘制Image
- (void)drawImage
{
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
