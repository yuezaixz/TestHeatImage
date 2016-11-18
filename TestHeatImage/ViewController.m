//
//  ViewController.m
//  TestHeatImage
//
//  Created by 吴迪玮 on 2016/11/10.
//  Copyright © 2016年 Paodong. All rights reserved.
//

#import "ViewController.h"
#import "WdHeatInsoleView.h"

@interface ViewController ()

@end

@implementation ViewController{
    WdHeatInsoleView *heatInsoleView_;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    heatInsoleView_ = [[[NSBundle mainBundle] loadNibNamed:@"WdHeatInsoleView" owner:nil options:nil] lastObject];
    heatInsoleView_.frame = CGRectMake(0, 0,CGRectGetWidth(heatInsoleView_.frame) , CGRectGetHeight(heatInsoleView_.frame));
    [self.view insertSubview:heatInsoleView_ atIndex:0];
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [heatInsoleView_ starBizierAnimation];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)point3Change:(UISlider *)sender {
    NSInteger sliderValue = (NSInteger)sender.value;
    
    [heatInsoleView_ setPoint1Offset:MIN(MAX(sliderValue-30,0),50)];
    [heatInsoleView_ setPoint2Offset:MIN(MAX(sliderValue-20,0),50)];
    [heatInsoleView_ setPoint3Offset:MIN(sliderValue,50)];
}

@end
