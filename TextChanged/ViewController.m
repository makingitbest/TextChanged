//
//  ViewController.m
//  TextChanged
//
//  Created by 王巧 on 16/7/8.
//  Copyright © 2016年 wq. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
   
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(10, 50, 150, 40)];
    [self.view addSubview:label];
    
    NSString *totalString = @"小黄鸭,小黄狗";
    NSString *fullString  = [NSString stringWithFormat:@"%@,都是黄色的",totalString];
    
    NSMutableAttributedString * newString = [[NSMutableAttributedString alloc] initWithString:fullString];
    // 设置字体
    [newString addAttribute:NSFontAttributeName value:[UIFont boldSystemFontOfSize:15] range:NSMakeRange(0, 7)];
    
    //设置整个字体颜色
    [newString addAttribute:NSForegroundColorAttributeName value:[UIColor blackColor] range:NSMakeRange(0, fullString.length)];
    
    //设置部分字体的颜色
    [newString addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:[fullString rangeOfString:totalString]];
    
    label.attributedText = newString;
    [label sizeToFit];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
