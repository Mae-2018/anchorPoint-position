//
//  ViewController.m
//  AnchorPiont
//
//  Created by Mae on 2019/2/15.
//  Copyright © 2019年 刘静冉. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

/**
 position是相对于父视图的view的中心点
 anchorPoint是和position同一个点，anchorPoint是以自身为坐标的。
 
 例如position为（200，200）
 当anchorPoint为（0.0）则将左上角的点放到（200，200）位置
 当anchorPoint为（1.0）则将右上角的点放到（200，200）位置
 当anchorPoint为（0.1）则将左下角的点放到（200，200）位置
 当anchorPoint为（1.1）则将右下角的点放到（200，200）位置
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    

    UIView *aView = [[UIView alloc]init];
    aView.backgroundColor = [UIColor redColor];
    aView.bounds = CGRectMake(0, 0, 200, 200);
    aView.layer.position = CGPointMake(200, 200);
    [self.view addSubview:aView];
    
    UIView *bView = [[UIView alloc]init];
    bView.backgroundColor = [UIColor greenColor];
    bView.bounds = CGRectMake(0, 0, 200, 200);
    bView.layer.position = CGPointMake(200, 200);
    bView.layer.anchorPoint = CGPointMake(1, 0);
    [self.view addSubview:bView];
}


@end
