//
//  WdHeatInsole.m
//  TestHeatImage
//
//  Created by 吴迪玮 on 2016/11/10.
//  Copyright © 2016年 Paodong. All rights reserved.
//

#import "WdHeatInsoleView.h"

@interface WdHeatInsoleView()

@property (weak, nonatomic) IBOutlet UIImageView *backgroundView;

@property (weak, nonatomic) IBOutlet UIView *point3Layer1View;
@property (weak, nonatomic) IBOutlet UIView *point2Layer1View;
@property (weak, nonatomic) IBOutlet UIView *point1Layer1View;

@property (weak, nonatomic) IBOutlet UIView *point3Layer2View;
@property (weak, nonatomic) IBOutlet UIView *point2Layer2View;
@property (weak, nonatomic) IBOutlet UIView *point1Layer2View;

@property (weak, nonatomic) IBOutlet UIView *figure1LayerView;
@property (weak, nonatomic) IBOutlet UIView *figure2LayerView;
@property (weak, nonatomic) IBOutlet UIView *figure3LayerView;
@property (weak, nonatomic) IBOutlet UIView *figure4LayerView;
@property (weak, nonatomic) IBOutlet UIView *figure5LayerView;

@end

@implementation WdHeatInsoleView{
    CAShapeLayer *point1Layer1_;
    UIBezierPath *point1Path1_;
    
    CAShapeLayer *point2Layer1_;
    UIBezierPath *point2Path1_;
    
    CAShapeLayer *point3Layer1_;
    UIBezierPath *point3Path1_;
    
    CAShapeLayer *point1Layer2_;
    UIBezierPath *point1Path2_;
    
    CAShapeLayer *point2Layer2_;
    UIBezierPath *point2Path2_;
    
    CAShapeLayer *point3Layer2_;
    UIBezierPath *point3Path2_;
    
    CAShapeLayer *point1Layer3_;
    UIBezierPath *point1Path3_;
    
    CAShapeLayer *point2Layer3_;
    UIBezierPath *point2Path3_;
    
    CAShapeLayer *point3Layer3_;
    UIBezierPath *point3Path3_;
    
    CAShapeLayer *figure1Layer1_;
    UIBezierPath *figure1Path1_;
    
    CAShapeLayer *figure1Layer2_;
    UIBezierPath *figure1Path2_;
    
    CAShapeLayer *figure1Layer3_;
    UIBezierPath *figure1Path3_;
    
    CAShapeLayer *figure2Layer1_;
    UIBezierPath *figure2Path1_;
    
    CAShapeLayer *figure3Layer1_;
    UIBezierPath *figure3Path1_;
    
    CAShapeLayer *figure2Layer2_;
    UIBezierPath *figure2Path2_;
    
    CAShapeLayer *figure3Layer2_;
    UIBezierPath *figure3Path2_;
    
    CAShapeLayer *figure4Layer1_;
    UIBezierPath *figure4Path1_;
    
    CAShapeLayer *figure5Layer1_;
    UIBezierPath *figure5Path1_;
    
    
    CADisplayLink *displayLink_;
    
    NSInteger point1Offset_;
    NSInteger point2Offset_;
    NSInteger point3Offset_;
}

-(void)awakeFromNib{
    [super awakeFromNib];
    [self setUp];
}

- (void)setUp {
    {//所有最外层
        CGColorRef layer1Color =[UIColor colorWithHue:0.154 saturation:0.887 brightness:0.971 alpha:1].CGColor;
        point1Path1_ = [UIBezierPath bezierPath];
        point1Layer1_ = [CAShapeLayer layer];
        point1Layer1_.fillColor = layer1Color;
        [self.point1Layer1View.layer addSublayer:point1Layer1_];
        
        point2Path1_ = [UIBezierPath bezierPath];
        point2Layer1_ = [CAShapeLayer layer];
        point2Layer1_.fillColor = layer1Color;
        [self.point2Layer1View.layer addSublayer:point2Layer1_];
        
        point3Path1_ = [UIBezierPath bezierPath];
        point3Layer1_ = [CAShapeLayer layer];
        point3Layer1_.fillColor = layer1Color;
        [self.point3Layer1View.layer addSublayer:point3Layer1_];
        
        figure1Path1_ = [UIBezierPath bezierPath];
        figure1Layer1_ = [CAShapeLayer layer];
        figure1Layer1_.fillColor = layer1Color;
        [self.figure1LayerView.layer addSublayer:figure1Layer1_];
        
        figure2Path1_ = [UIBezierPath bezierPath];
        figure2Layer1_ = [CAShapeLayer layer];
        figure2Layer1_.fillColor = layer1Color;
        [self.figure2LayerView.layer addSublayer:figure2Layer1_];
        
        figure3Path1_ = [UIBezierPath bezierPath];
        figure3Layer1_ = [CAShapeLayer layer];
        figure3Layer1_.fillColor = layer1Color;
        [self.figure3LayerView.layer addSublayer:figure3Layer1_];
        
        figure4Path1_ = [UIBezierPath bezierPath];
        figure4Layer1_ = [CAShapeLayer layer];
        figure4Layer1_.fillColor = layer1Color;
        [self.figure4LayerView.layer addSublayer:figure4Layer1_];
        
        figure5Path1_ = [UIBezierPath bezierPath];
        figure5Layer1_ = [CAShapeLayer layer];
        figure5Layer1_.fillColor = layer1Color;
        [self.figure5LayerView.layer addSublayer:figure5Layer1_];
    }
    
    {//中间层
        CGColorRef layer2Color = [UIColor colorWithHue:0.1 saturation:0.86 brightness:0.96 alpha:1].CGColor;
        point1Path2_ = [UIBezierPath bezierPath];
        point1Layer2_ = [CAShapeLayer layer];
        point1Layer2_.fillColor = layer2Color;
        [self.point1Layer2View.layer addSublayer:point1Layer2_];
        point2Path2_ = [UIBezierPath bezierPath];
        point2Layer2_ = [CAShapeLayer layer];
        point2Layer2_.fillColor = layer2Color;
        [self.point2Layer2View.layer addSublayer:point2Layer2_];
        
        point3Path2_ = [UIBezierPath bezierPath];
        point3Layer2_ = [CAShapeLayer layer];
        point3Layer2_.fillColor = layer2Color;
        [self.point3Layer2View.layer addSublayer:point3Layer2_];
        
        figure1Path2_ = [UIBezierPath bezierPath];
        figure1Layer2_ = [CAShapeLayer layer];
        figure1Layer2_.fillColor = layer2Color;
        [self.figure1LayerView.layer addSublayer:figure1Layer2_];
        
        figure2Path2_ = [UIBezierPath bezierPath];
        figure2Layer2_ = [CAShapeLayer layer];
        figure2Layer2_.fillColor = layer2Color;
        [self.figure2LayerView.layer addSublayer:figure2Layer2_];
        
        figure3Path2_ = [UIBezierPath bezierPath];
        figure3Layer2_ = [CAShapeLayer layer];
        figure3Layer2_.fillColor = layer2Color;
        [self.figure3LayerView.layer addSublayer:figure3Layer2_];
    }
    
    {//最里层
        CGColorRef layer3Color = [UIColor colorWithHue:0.98 saturation:0.99 brightness:0.82 alpha:1].CGColor;
        point1Path3_ = [UIBezierPath bezierPath];
        point1Layer3_ = [CAShapeLayer layer];
        point1Layer3_.fillColor = layer3Color;
        [self.point1Layer2View.layer addSublayer:point1Layer3_];
        
        point2Path3_ = [UIBezierPath bezierPath];
        point2Layer3_ = [CAShapeLayer layer];
        point2Layer3_.fillColor = layer3Color;
        [self.point2Layer2View.layer addSublayer:point2Layer3_];
        
        point3Path3_ = [UIBezierPath bezierPath];
        point3Layer3_ = [CAShapeLayer layer];
        point3Layer3_.fillColor = layer3Color;
        [self.point3Layer2View.layer addSublayer:point3Layer3_];
        
        figure1Path3_ = [UIBezierPath bezierPath];
        figure1Layer3_ = [CAShapeLayer layer];
        figure1Layer3_.fillColor = layer3Color;
        [self.figure1LayerView.layer addSublayer:figure1Layer3_];
        
    }
    
    
}

- (void)starBizierAnimation{
    
    if (displayLink_ != nil) {
        [self stopBezierAnimation];
        return ;
    }
    displayLink_ = [CADisplayLink displayLinkWithTarget: self
                                               selector: @selector(updatePath)];
    [displayLink_ addToRunLoop: [NSRunLoop currentRunLoop]
                       forMode: NSRunLoopCommonModes];
    
}

- (void)stopBezierAnimation{
    [displayLink_ invalidate];
    displayLink_ = nil;
    
}

- (void) drawRect:(CGRect)rect {
    [point1Path1_ removeAllPoints];
    [point2Path1_ removeAllPoints];
    [point3Path1_ removeAllPoints];
    [point1Path2_ removeAllPoints];
    [point2Path2_ removeAllPoints];
    [point3Path2_ removeAllPoints];
    [point1Path3_ removeAllPoints];
    [point2Path3_ removeAllPoints];
    [point3Path3_ removeAllPoints];
    
    [figure1Path1_ removeAllPoints];
    [figure2Path1_ removeAllPoints];
    [figure3Path1_ removeAllPoints];
    [figure4Path1_ removeAllPoints];
    [figure5Path1_ removeAllPoints];
    [figure1Path2_ removeAllPoints];
    [figure2Path2_ removeAllPoints];
    [figure3Path2_ removeAllPoints];
    [figure1Path3_ removeAllPoints];
    
    [self drawPoint1Path1:point1Path1_ withOffset:point1Offset_];
    point1Layer1_.path = [point1Path1_ CGPath];
    [self drawPoint2Path1:point2Path1_ withOffset:point2Offset_];
    point2Layer1_.path = [point2Path1_ CGPath];
    [self drawPoint3Path1:point3Path1_ withOffset:point3Offset_];
    point3Layer1_.path = [point3Path1_ CGPath];
    
    [self drawPoint1Path2:point1Path2_ withOffset:MAX(point1Offset_-20, 0)];
    point1Layer2_.path = [point1Path2_ CGPath];
    [self drawPoint2Path2:point2Path2_ withOffset:MAX(point2Offset_-20, 0)];
    point2Layer2_.path = [point2Path2_ CGPath];
    [self drawPoint3Path2:point3Path2_ withOffset:MAX(point3Offset_-20, 0)];
    point3Layer2_.path = [point3Path2_ CGPath];
    
    [self drawPoint1Path3:point1Path3_ withOffset:MAX(point1Offset_-30, 0)];
    point1Layer3_.path = [point1Path3_ CGPath];
    [self drawPoint2Path3:point2Path3_ withOffset:MAX(point2Offset_-30, 0)];
    point2Layer3_.path = [point2Path3_ CGPath];
    [self drawPoint3Path3:point3Path3_ withOffset:MAX(point3Offset_-30, 0)];
    point3Layer3_.path = [point3Path3_ CGPath];
    
    [self drawFigure1Path1:figure1Path1_ withOffset:point1Offset_];
    figure1Layer1_.path = [figure1Path1_ CGPath];
    [self drawFigure2Path1:figure2Path1_ withOffset:(point1Offset_+point2Offset_)/2];
    figure2Layer1_.path = [figure2Path1_ CGPath];
    [self drawFigure3Path1:figure3Path1_ withOffset:(point1Offset_+point2Offset_)/2];
    figure3Layer1_.path = [figure3Path1_ CGPath];
    [self drawFigure4Path1:figure4Path1_ withOffset:point2Offset_];
    figure4Layer1_.path = [figure4Path1_ CGPath];
    [self drawFigure5Path1:figure5Path1_ withOffset:point2Offset_];
    figure5Layer1_.path = [figure5Path1_ CGPath];
    
    [self drawFigure1Path2:figure1Path2_ withOffset:MAX(point1Offset_-20, 0)];
    figure1Layer2_.path = [figure1Path2_ CGPath];
    [self drawFigure2Path2:figure2Path2_ withOffset:MAX((point1Offset_+point2Offset_)/2-20, 0)];
    figure2Layer2_.path = [figure2Path2_ CGPath];
    [self drawFigure3Path2:figure3Path2_ withOffset:MAX((point1Offset_+point2Offset_)/2-20, 0)];
    figure3Layer2_.path = [figure3Path2_ CGPath];
    
    [self drawFigure1Path3:figure1Path3_ withOffset:MAX(point1Offset_-30, 0)];
    figure1Layer3_.path = [figure1Path3_ CGPath];
    
}

- (void)updatePath {
    [self setNeedsDisplay];
}

- (void)setPoint1Offset:(NSInteger)point1Offset {
    point1Offset_ = point1Offset;
}

- (void)setPoint2Offset:(NSInteger)point2Offset {
    point2Offset_ = point2Offset;
}

- (void)setPoint3Offset:(NSInteger)point3Offset {
    point3Offset_ = point3Offset;
}

#pragma mark - utils

- (void)drawPoint1Path1:(UIBezierPath *)point1Path withOffset:(float)offset {
    if (offset < 1) {
        return;
    }
    [point1Path moveToPoint:CGPointMake(252.9/2 + (offset/50)*(330-252.9)/2, 248.85/2 + (offset/50)*(195-248.85)/2)];
    [point1Path addCurveToPoint:CGPointMake(253.35/2 + (offset/50)*(345-253.35)/2, 252.6/2 + (offset/50)*(320-252.6)/2) controlPoint1:CGPointMake((253.5 + (offset/50)*(350-253.5))/2, (249.15 + (offset/50)*(205-249.15))/2) controlPoint2:CGPointMake((254.55 + (offset/50)*(385-254.55))/2, (250.35 + (offset/50)*(245-250.35))/2)];
    
    [point1Path addCurveToPoint:CGPointMake(250.8/2 + (offset/50)*(260-250.8)/2, 253.5/2 + (offset/50)*(350-253.5)/2) controlPoint1:CGPointMake(252.6/2 + (offset/50)*(320-252.6)/2, 253.8/2 + (offset/50)*(360-253.8)/2) controlPoint2:CGPointMake(251.7/2 + (offset/50)*(289.78-251.7)/2, 253.32/2 + (offset/50)*(344.04-253.32)/2)];
    
    [point1Path addCurveToPoint:CGPointMake(248.4/2 + (offset/50)*(180-248.4)/2, 253.05/2 + (offset/50)*(335-253.05)/2) controlPoint1:CGPointMake(250.05/2 + (offset/50)*(235-250.05)/2, 253.65/2 + (offset/50)*(355-253.65)/2) controlPoint2:CGPointMake(249.45/2 + (offset/50)*(215-249.45)/2, 254.1/2 + (offset/50)*(370-254.1)/2)];
    [point1Path addCurveToPoint:CGPointMake(249.9/2 + (offset/50)*(230-249.9)/2, 247.5/2 + (offset/50)*(150-247.5)/2) controlPoint1:CGPointMake(247.05/2 + (offset/50)*(135-247.05)/2, 251.7/2 + (offset/50)*(290-251.7)/2) controlPoint2:CGPointMake(245.7/2 + (offset/50)*(90-245.7)/2, 247.5/2 + (offset/50)*(150-247.5)/2)];
    [point1Path addCurveToPoint:CGPointMake(252.9/2 + (offset/50)*(330-252.9)/2, 248.85/2 + (offset/50)*(195-248.85)/2) controlPoint1:CGPointMake(251.1/2 + (offset/50)*(270-251.1)/2, 247.5/2 + (offset/50)*(150-247.5)/2) controlPoint2:CGPointMake(251.4/2 + (offset/50)*(280-251.4)/2, 248.1/2 + (offset/50)*(170-248.1)/2)];
    [point1Path closePath];
}

- (void)drawPoint2Path1:(UIBezierPath *)point2Path withOffset:(float)offset  {
    if (offset < 1) {
        return;
    }
    [point2Path moveToPoint:CGPointMake(128.985 + (offset/50)*48.514999999999986 , 123.805 + (offset/50)*-31.305000000000007)];
    [point2Path addCurveToPoint:CGPointMake(127.18 + (offset/50)*25.319999999999993 , 126.56 + (offset/50)*30.939999999999998) controlPoint1: CGPointMake(129.205 + (offset/50)*51.329999999999984 , 124.965 + (offset/50)*-5.1200000000000045) controlPoint2:CGPointMake(127.18 + (offset/50)*25.319999999999993 , 125.395 + (offset/50)*4.605000000000004)];
    [point2Path addCurveToPoint:CGPointMake(125.195 + (offset/50)*-0.19499999999999318 , 129 + (offset/50)*86) controlPoint1: CGPointMake(127.18 + (offset/50)*25.319999999999993 , 127.62 + (offset/50)*54.879999999999995) controlPoint2:CGPointMake(126.815 + (offset/50)*20.685000000000002 , 129 + (offset/50)*86)];
    [point2Path addCurveToPoint:CGPointMake(122.125 + (offset/50)*-39.625 , 125.5 + (offset/50)*7) controlPoint1: CGPointMake(122.485 + (offset/50)*-34.985 , 129 + (offset/50)*86) controlPoint2:CGPointMake(124.47 + (offset/50)*-9.469999999999999 , 127.515 + (offset/50)*52.485)];
    [point2Path addCurveToPoint:CGPointMake(125.375 + (offset/50)*2.125 , 121.58 + (offset/50)*-81.58) controlPoint1: CGPointMake(121.4 + (offset/50)*-48.900000000000006 , 124.97 + (offset/50)*-4.969999999999999) controlPoint2:CGPointMake(120.32 + (offset/50)*-62.81999999999999 , 122.32 + (offset/50)*-64.82)];
    [point2Path addCurveToPoint:CGPointMake(128.985 + (offset/50)*48.514999999999986 , 123.805 + (offset/50)*-31.305000000000007) controlPoint1: CGPointMake(127.72 + (offset/50)*32.28 , 121.26 + (offset/50)*-88.76) controlPoint2:CGPointMake(128.62 + (offset/50)*43.879999999999995 , 121.895 + (offset/50)*-74.395)];
    [point2Path closePath];
}

- (void)drawPoint3Path1:(UIBezierPath *)point3Path withOffset:(float)offset {
    if (offset < 1) {
        return;
    }
    [point3Path moveToPoint:CGPointMake(126.96 + (offset/50)*18.040000000000006 , 124.915 + (offset/50)*-12.415000000000006)];
    [point3Path addCurveToPoint:CGPointMake(128.9 + (offset/50)*41.099999999999994 , 127.45 + (offset/50)*50.05) controlPoint1: CGPointMake(128.51 + (offset/50)*36.49000000000001 , 125.695 + (offset/50)*6.805000000000007) controlPoint2:CGPointMake(129.29 + (offset/50)*45.71000000000001 , 126.38 + (offset/50)*23.620000000000005)];
    [point3Path addCurveToPoint:CGPointMake(122.685 + (offset/50)*-32.685 , 127.74 + (offset/50)*57.260000000000005) controlPoint1: CGPointMake(128.51 + (offset/50)*36.49000000000001 , 128.52 + (offset/50)*76.47999999999999) controlPoint2:CGPointMake(124.435 + (offset/50)*-11.935000000000002 , 130.175 + (offset/50)*117.32499999999999)];
    [point3Path addCurveToPoint:CGPointMake(121.715 + (offset/50)*-44.215 , 123.165 + (offset/50)*-55.665000000000006) controlPoint1: CGPointMake(122.1 + (offset/50)*-39.599999999999994 , 126.475 + (offset/50)*26.025000000000006) controlPoint2:CGPointMake(122.59 + (offset/50)*-33.815 , 125.305 + (offset/50)*-2.805000000000007)];
    [point3Path addCurveToPoint:CGPointMake(123.075 + (offset/50)*-28.075000000000003 , 121.51 + (offset/50)*-96.51) controlPoint1: CGPointMake(121.315 + (offset/50)*-48.92 , 122.195 + (offset/50)*-79.60999999999999) controlPoint2:CGPointMake(121.325 + (offset/50)*-48.825 , 121.61 + (offset/50)*-94.11)];
    [point3Path addCurveToPoint:CGPointMake(126.96 + (offset/50)*18.040000000000006 , 124.915 + (offset/50)*-12.415000000000006) controlPoint1: CGPointMake(125.795 + (offset/50)*4.204999999999998 , 121.315 + (offset/50)*-101.315) controlPoint2:CGPointMake(125.015 + (offset/50)*-5.015000000000001 , 123.945 + (offset/50)*-36.44499999999999)];
    [point3Path closePath];
}

- (void)drawPoint1Path2:(UIBezierPath *)point1Path withOffset:(float)offset {
    if (offset < 1) {
        return;
    }
    [point1Path moveToPoint:CGPointMake(128.655 + (offset/30)*30.345 , 127.99 + (offset/30)*19.010000000000005)];
    [point1Path addCurveToPoint:CGPointMake(124.94 + (offset/30)*-2.9399999999999977 , 128.865 + (offset/30)*25.13499999999999) controlPoint1: CGPointMake(127.55 + (offset/30)*20.450000000000003 , 129.615 + (offset/30)*30.38499999999999) controlPoint2:CGPointMake(125.44 + (offset/30)*1.5600000000000023 , 128.74 + (offset/30)*24.25999999999999)];
    [point1Path addCurveToPoint:CGPointMake(122.33 + (offset/30)*-26.33 , 127.865 + (offset/30)*18.135000000000005) controlPoint1: CGPointMake(124.34 + (offset/30)*-8.340000000000003 , 128.99 + (offset/30)*26.00999999999999) controlPoint2:CGPointMake(123.635 + (offset/30)*-14.635000000000005 , 129.365 + (offset/30)*28.63499999999999)];
    [point1Path addCurveToPoint:CGPointMake(124.54 + (offset/30)*-6.540000000000006 , 121.5 + (offset/30)*-26.5) controlPoint1: CGPointMake(121.025 + (offset/30)*-38.025000000000006 , 126.37 + (offset/30)*7.6299999999999955) controlPoint2:CGPointMake(120.925 + (offset/30)*-38.925 , 121.375 + (offset/30)*-27.375)];
    [point1Path addCurveToPoint:CGPointMake(128.655 + (offset/30)*30.345 , 127.99 + (offset/30)*19.010000000000005) controlPoint1: CGPointMake(126.85 + (offset/30)*14.150000000000006 , 121.625 + (offset/30)*-25.625) controlPoint2:CGPointMake(130.06 + (offset/30)*42.94 , 124.995 + (offset/30)*-1.9950000000000045)];
    [point1Path closePath];
}

- (void)drawPoint2Path2:(UIBezierPath *)point2Path withOffset:(float)offset {
    if (offset < 1) {
        return;
    }
    [point2Path moveToPoint:CGPointMake(123.07 + (offset/30)*-18.069999999999993 , 126.315 + (offset/30)*13.685000000000002)];
    [point2Path addCurveToPoint:CGPointMake(126.03 + (offset/30)*6.469999999999999 , 128.99 + (offset/30)*48.50999999999999) controlPoint1: CGPointMake(123.605 + (offset/30)*-13.605000000000004 , 127.03 + (offset/30)*22.97) controlPoint2:CGPointMake(123.875 + (offset/30)*-11.375 , 129.17 + (offset/30)*50.83000000000001)];
    [point2Path addCurveToPoint:CGPointMake(128.18 + (offset/30)*24.319999999999993 , 125.605 + (offset/30)*4.394999999999996) controlPoint1: CGPointMake(127.645 + (offset/30)*19.855000000000004 , 128.81 + (offset/30)*46.19) controlPoint2:CGPointMake(126.57 + (offset/30)*10.930000000000007 , 126.675 + (offset/30)*18.325000000000003)];
    [point2Path addCurveToPoint:CGPointMake(126.03 + (offset/30)*6.469999999999999 , 121.51 + (offset/30)*-49.010000000000005) controlPoint1: CGPointMake(129.795 + (offset/30)*37.70500000000001 , 124.36 + (offset/30)*-11.86) controlPoint2:CGPointMake(128.99 + (offset/30)*31.00999999999999 , 121.33 + (offset/30)*-51.33)];
    [point2Path addCurveToPoint:CGPointMake(121.72 + (offset/30)*-29.245000000000005 , 123.29 + (offset/30)*-25.745000000000005) controlPoint1: CGPointMake(124.685 + (offset/30)*-4.685000000000002 , 121.51 + (offset/30)*-49.010000000000005) controlPoint2:CGPointMake(122.53 + (offset/30)*-22.53 , 121.685 + (offset/30)*-46.685)];
    [point2Path addCurveToPoint:CGPointMake(123.07 + (offset/30)*-18.069999999999993 , 126.315 + (offset/30)*13.685000000000002) controlPoint1: CGPointMake(120.915 + (offset/30)*-35.915000000000006 , 125.07 + (offset/30)*-2.569999999999993) controlPoint2:CGPointMake(122.53 + (offset/30)*-22.53 , 125.425 + (offset/30)*2.075000000000003)];
    [point2Path closePath];
}

- (void)drawPoint3Path2:(UIBezierPath *)point3Path withOffset:(float)offset {
    if (offset < 1) {
        return;
    }
    [point3Path moveToPoint:CGPointMake(127.495 + (offset/30)*15.004999999999995 , 125.67 + (offset/30)*6.829999999999998)];
    [point3Path addCurveToPoint:CGPointMake(126 + (offset/30)*4 , 128.965 + (offset/30)*68.535) controlPoint1: CGPointMake(128.695 + (offset/30)*23.805000000000007 , 126.305 + (offset/30)*18.694999999999993) controlPoint2:CGPointMake(130.79 + (offset/30)*39.21000000000001 , 128.455 + (offset/30)*59.04499999999999)];
    [point3Path addCurveToPoint:CGPointMake(121.805 + (offset/30)*-26.805000000000007 , 125.67 + (offset/30)*6.829999999999998) controlPoint1: CGPointMake(122.105 + (offset/30)*-24.605000000000004 , 129.345 + (offset/30)*75.655) controlPoint2:CGPointMake(121.51 + (offset/30)*-29.010000000000005 , 126.685 + (offset/30)*25.814999999999998)];
    [point3Path addCurveToPoint:CGPointMake(122.385 + (offset/30)*-22.560000000000002 , 121.505 + (offset/30)*-71.28999999999999) controlPoint1: CGPointMake(122.105 + (offset/30)*-24.605000000000004 , 124.155 + (offset/30)*-21.655) controlPoint2:CGPointMake(120.61 + (offset/30)*-35.61 , 121.62 + (offset/30)*-69.12)];
    [point3Path addCurveToPoint:CGPointMake(127.495 + (offset/30)*15.004999999999995 , 125.67 + (offset/30)*6.829999999999998) controlPoint1: CGPointMake(124.5 + (offset/30)*-7 , 121.37 + (offset/30)*-73.87) controlPoint2:CGPointMake(123.905 + (offset/30)*-11.405000000000001 , 123.775 + (offset/30)*-28.775000000000006)];
    [point3Path closePath];
}

- (void)drawPoint1Path3:(UIBezierPath *)point1Path withOffset:(float)offset {
    if (offset < 1) {
        return;
    }
    [point1Path moveToPoint:CGPointMake(128.78 + (offset/20)*17.754999999999995 , 127.945 + (offset/20)*10.545000000000016)];
    [point1Path addCurveToPoint:CGPointMake(122.51 + (offset/20)*-14.510000000000005 , 127.65 + (offset/20)*9.349999999999994) controlPoint1: CGPointMake(127.88 + (offset/20)*13.120000000000005 , 129.83 + (offset/20)*18.169999999999987) controlPoint2:CGPointMake(123.81 + (offset/20)*-7.810000000000002 , 128.84 + (offset/20)*14.159999999999997)];
    [point1Path addCurveToPoint:CGPointMake(124.46 + (offset/20)*-4.459999999999994 , 121.505 + (offset/20)*-15.504999999999995) controlPoint1: CGPointMake(121.205 + (offset/20)*-21.205 , 126.46 + (offset/20)*4.540000000000006) controlPoint2:CGPointMake(120.555 + (offset/20)*-24.555000000000007 , 121.305 + (offset/20)*-16.305000000000007)];
    [point1Path addCurveToPoint:CGPointMake(128.78 + (offset/20)*17.754999999999995 , 127.945 + (offset/20)*10.545000000000016) controlPoint1: CGPointMake(126.9 + (offset/20)*8.099999999999994 , 121.505 + (offset/20)*-15.504999999999995) controlPoint2:CGPointMake(129.83 + (offset/20)*23.169999999999987 , 125.27 + (offset/20)*-0.269999999999996)];
    [point1Path closePath];
}

- (void)drawPoint2Path3:(UIBezierPath *)point2Path withOffset:(float)offset {
    if (offset < 1) {
        return;
    }
    [point2Path moveToPoint:CGPointMake(125.795 + (offset/20)*1.2049999999999983 , 128.5 + (offset/20)*13.5)];
    [point2Path addCurveToPoint:CGPointMake(125.795 + (offset/20)*1.2049999999999983 , 121.015 + (offset/20)*-33.015) controlPoint1: CGPointMake(127.925 + (offset/20)*10.075000000000003 , 128.635 + (offset/20)*14.365000000000009) controlPoint2:CGPointMake(131.795 + (offset/20)*26.205000000000013 , 120.6 + (offset/20)*-35.599999999999994)];
    [point2Path addCurveToPoint:CGPointMake(121.535 + (offset/20)*-16.534999999999997 , 123.785 + (offset/20)*-15.784999999999997) controlPoint1: CGPointMake(124.245 + (offset/20)*-5.2450000000000045 , 121.155 + (offset/20)*-32.155) controlPoint2:CGPointMake(121.73 + (offset/20)*-15.730000000000004 , 121.71 + (offset/20)*-28.709999999999994)];
    [point2Path addCurveToPoint:CGPointMake(125.795 + (offset/20)*1.2049999999999983 , 128.5 + (offset/20)*13.5) controlPoint1: CGPointMake(121.15 + (offset/20)*-18.150000000000006 , 126.005 + (offset/20)*-2.0049999999999955) controlPoint2:CGPointMake(123.86 + (offset/20)*-6.859999999999999 , 128.36 + (offset/20)*12.639999999999986)];
    [point2Path closePath];
}

- (void)drawPoint3Path3:(UIBezierPath *)point3Path withOffset:(float)offset {
    if (offset < 1) {
        return;
    }
    [point3Path moveToPoint:CGPointMake(128.21 + (offset/20)*7.789999999999992 , 149.565 + (offset/20)*-9.564999999999998)];
    [point3Path addCurveToPoint:CGPointMake(121.145 + (offset/20)*-18.144999999999996 , 149.33 + (offset/20)*-11.330000000000013) controlPoint1: CGPointMake(130.14 + (offset/20)*14.860000000000014 , 152.48 + (offset/20)*12.52000000000001) controlPoint2:CGPointMake(121.785 + (offset/20)*-15.784999999999997 , 154.465 + (offset/20)*27.534999999999997)];
    [point3Path addCurveToPoint:CGPointMake(122.43 + (offset/20)*-13.430000000000007 , 145.015 + (offset/20)*-44.014999999999986) controlPoint1: CGPointMake(120.93 + (offset/20)*-18.930000000000007 , 147.815 + (offset/20)*-22.814999999999998) controlPoint2:CGPointMake(120.715 + (offset/20)*-19.715000000000003 , 145.25 + (offset/20)*-42.25)];
    [point3Path addCurveToPoint:CGPointMake(128.21 + (offset/20)*7.789999999999992 , 149.565 + (offset/20)*-9.564999999999998) controlPoint1: CGPointMake(124.355 + (offset/20)*-6.355000000000004 , 144.78 + (offset/20)*-45.78) controlPoint2:CGPointMake(126.71 + (offset/20)*2.2900000000000063 , 147.35 + (offset/20)*-26.349999999999994)];
    [point3Path closePath];
}

- (void)drawFigure1Path1:(UIBezierPath *)path withOffset:(float)offset {
    if (offset < 1) {
        return;
    }
    [path moveToPoint:CGPointMake(53.455 + (offset/50)*20.045 , 51.34 + (offset/50)*9.694999999999993)];
    [path addCurveToPoint:CGPointMake(49.79 + (offset/50)*-3.174999999999997 , 54 + (offset/50)*34) controlPoint1: CGPointMake(53.455 + (offset/50)*20.045 , 52.325 + (offset/50)*18.694999999999993) controlPoint2:CGPointMake(51.555 + (offset/50)*8.005000000000003 , 54 + (offset/50)*34)];
    [path addCurveToPoint:CGPointMake(47.075 + (offset/50)*-20.375000000000004 , 48.185 + (offset/50)*-19.115000000000002) controlPoint1: CGPointMake(48.025 + (offset/50)*-14.354999999999997 , 54 + (offset/50)*34) controlPoint2:CGPointMake(45.31 + (offset/50)*-31.555 , 51.735 + (offset/50)*13.295000000000002)];
    [path addCurveToPoint:CGPointMake(54 + (offset/50)*23.485 , 48.285 + (offset/50)*-18.214999999999996) controlPoint1: CGPointMake(48.185 + (offset/50)*-13.32 , 45.655 + (offset/50)*-42.225) controlPoint2:CGPointMake(54.135 + (offset/50)*24.345000000000006 , 46.215 + (offset/50)*-37.120000000000005)];
    [path addCurveToPoint:CGPointMake(53.455 + (offset/50)*20.045 , 51.34 + (offset/50)*9.694999999999993) controlPoint1: CGPointMake(53.725 + (offset/50)*21.764999999999993 , 49.565 + (offset/50)*-6.509999999999998) controlPoint2:CGPointMake(53.455 + (offset/50)*20.045 , 50.355 + (offset/50)*0.6900000000000048)];
    [path closePath];
}

- (void)drawFigure2Path1:(UIBezierPath *)path withOffset:(float)offset {
    if (offset < 1) {
        return;
    }
    [path moveToPoint:CGPointMake(23.79 + (offset/50)*-5.289999999999999 , 28.905 + (offset/50)*16.595)];
    [path addCurveToPoint:CGPointMake(21.64 + (offset/50)*-12.64 , 23.385 + (offset/50)*-7.385000000000002) controlPoint1: CGPointMake(21.415 + (offset/50)*-13.415 , 28.345 + (offset/50)*14.155000000000001) controlPoint2:CGPointMake(21.3 + (offset/50)*-13.8 , 24.975 + (offset/50)*-0.4750000000000014)];
    [path addCurveToPoint:CGPointMake(28.995 + (offset/50)*12.504999999999999 , 23.855 + (offset/50)*-5.355) controlPoint1: CGPointMake(22.32 + (offset/50)*-10.32 , 20.58 + (offset/50)*-19.58) controlPoint2:CGPointMake(29.22 + (offset/50)*13.280000000000001 , 21.045 + (offset/50)*-17.545)];
    [path addCurveToPoint:CGPointMake(23.79 + (offset/50)*-5.289999999999999 , 28.905 + (offset/50)*16.595) controlPoint1: CGPointMake(28.655 + (offset/50)*11.344999999999999 , 26.66 + (offset/50)*6.84) controlPoint2:CGPointMake(27.185 + (offset/50)*6.315000000000001 , 29.56 + (offset/50)*19.44)];
    [path closePath];
}

- (void)drawFigure3Path1:(UIBezierPath *)path withOffset:(float)offset {
    if (offset < 1) {
        return;
    }
    [path moveToPoint:CGPointMake(26.22 + (offset/50)*2.780000000000001 , 28.97 + (offset/50)*12.030000000000001)];
    [path addCurveToPoint:CGPointMake(21.505 + (offset/50)*-12.504999999999999 , 25 + (offset/50)*-1) controlPoint1: CGPointMake(24.57 + (offset/50)*-2.5700000000000003 , 29.2 + (offset/50)*12.8) controlPoint2:CGPointMake(22.095 + (offset/50)*-10.594999999999999 , 28.15 + (offset/50)*9.350000000000001)];
    [path addCurveToPoint:CGPointMake(28.925 + (offset/50)*11.575 , 23.015 + (offset/50)*-7.515000000000001) controlPoint1: CGPointMake(21.27 + (offset/50)*-13.27 , 21.96 + (offset/50)*-10.96) controlPoint2:CGPointMake(28.34 + (offset/50)*9.66 , 19.975 + (offset/50)*-17.475)];
    [path addCurveToPoint:CGPointMake(26.22 + (offset/50)*2.780000000000001 , 28.97 + (offset/50)*12.030000000000001) controlPoint1: CGPointMake(29.28 + (offset/50)*12.719999999999999 , 24.88 + (offset/50)*-1.379999999999999) controlPoint2:CGPointMake(28.34 + (offset/50)*9.66 , 28.62 + (offset/50)*10.879999999999999)];
    [path closePath];
}

- (void)drawFigure4Path1:(UIBezierPath *)path withOffset:(float)offset {
    if (offset < 1) {
        return;
    }
    [path moveToPoint:CGPointMake(26.22 + (offset/50)*2.780000000000001 , 28.97 + (offset/50)*12.030000000000001)];
    [path addCurveToPoint:CGPointMake(21.505 + (offset/50)*-12.504999999999999 , 25 + (offset/50)*-1) controlPoint1: CGPointMake(24.57 + (offset/50)*-2.5700000000000003 , 29.2 + (offset/50)*12.8) controlPoint2:CGPointMake(22.095 + (offset/50)*-10.594999999999999 , 28.15 + (offset/50)*9.350000000000001)];
    [path addCurveToPoint:CGPointMake(28.925 + (offset/50)*11.575 , 23.015 + (offset/50)*-7.515000000000001) controlPoint1: CGPointMake(21.27 + (offset/50)*-13.27 , 21.96 + (offset/50)*-10.96) controlPoint2:CGPointMake(28.34 + (offset/50)*9.66 , 19.975 + (offset/50)*-17.475)];
    [path addCurveToPoint:CGPointMake(26.22 + (offset/50)*2.780000000000001 , 28.97 + (offset/50)*12.030000000000001) controlPoint1: CGPointMake(29.28 + (offset/50)*12.719999999999999 , 24.88 + (offset/50)*-1.379999999999999) controlPoint2:CGPointMake(28.34 + (offset/50)*9.66 , 28.62 + (offset/50)*10.879999999999999)];
    [path closePath];
}

- (void)drawFigure5Path1:(UIBezierPath *)path withOffset:(float)offset {
    if (offset < 1) {
        return;
    }
    [path moveToPoint:CGPointMake(28.26 + (offset/50)*6.794999999999998 , 28.185 + (offset/50)*7.035)];
    [path addCurveToPoint:CGPointMake(21.975 + (offset/50)*-7.420000000000002 , 27.48 + (offset/50)*5.239999999999998) controlPoint1: CGPointMake(27.035 + (offset/50)*4.02 , 29.175 + (offset/50)*9.544999999999998) controlPoint2:CGPointMake(24.275 + (offset/50)*-2.219999999999999 , 29.595 + (offset/50)*10.625)];
    [path addCurveToPoint:CGPointMake(27.035 + (offset/50)*4.02 , 21.985 + (offset/50)*-8.764999999999999) controlPoint1: CGPointMake(19.985 + (offset/50)*-11.93 , 25.225 + (offset/50)*-0.5050000000000026) controlPoint2:CGPointMake(24.735 + (offset/50)*-1.1799999999999997 , 19.87 + (offset/50)*-14.150000000000002)];
    [path addCurveToPoint:CGPointMake(28.26 + (offset/50)*6.794999999999998 , 28.185 + (offset/50)*7.035) controlPoint1: CGPointMake(28.415 + (offset/50)*7.140000000000001 , 23.255 + (offset/50)*-5.535) controlPoint2:CGPointMake(29.945 + (offset/50)*10.61 , 26.92 + (offset/50)*3.799999999999997)];
    [path closePath];
}

- (void)drawFigure1Path2:(UIBezierPath *)path withOffset:(float)offset {
    if (offset < 1) {
        return;
    }
    [path moveToPoint:CGPointMake(49.755 + (offset/30)*-1.7250000000000014 , 54 + (offset/30)*20)];
    [path addCurveToPoint:CGPointMake(47.085 + (offset/30)*-10.965000000000003 , 48.2 + (offset/30)*-11.305) controlPoint1: CGPointMake(47.975 + (offset/30)*-7.884999999999998 , 54 + (offset/30)*20) controlPoint2:CGPointMake(45.31 + (offset/30)*-17.135 , 51.65 + (offset/30)*7.305)];
    [path addCurveToPoint:CGPointMake(53.975 + (offset/30)*12.919999999999995 , 48.515 + (offset/30)*-9.615000000000002) controlPoint1: CGPointMake(48.42 + (offset/30)*-6.344999999999999 , 45.38 + (offset/30)*-26.535000000000004) controlPoint2:CGPointMake(54.42 + (offset/30)*14.459999999999994 , 46.48 + (offset/30)*-20.615)];
    [path addCurveToPoint:CGPointMake(49.755 + (offset/30)*-1.7250000000000014 , 54 + (offset/30)*20) controlPoint1: CGPointMake(53.755 + (offset/30)*12.145000000000003 , 49.77 + (offset/30)*-2.845000000000006) controlPoint2:CGPointMake(54.205 + (offset/30)*13.715000000000003 , 54 + (offset/30)*20)];
    [path closePath];
}

- (void)drawFigure2Path2:(UIBezierPath *)path withOffset:(float)offset {
    if (offset < 1) {
        return;
    }
    [path moveToPoint:CGPointMake(23.745 + (offset/30)*-2.245000000000001 , 28.83 + (offset/30)*5.670000000000002)];
    [path addCurveToPoint:CGPointMake(21.6 + (offset/30)*-4.600000000000001 , 23.255 + (offset/30)*-3.254999999999999) controlPoint1: CGPointMake(21.36 + (offset/30)*-4.859999999999999 , 28.25 + (offset/30)*4.75) controlPoint2:CGPointMake(21.36 + (offset/30)*-4.859999999999999 , 24.6 + (offset/30)*-1.1000000000000014)];
    [path addCurveToPoint:CGPointMake(28.995 + (offset/30)*3.504999999999999 , 23.83 + (offset/30)*-2.3299999999999983) controlPoint1: CGPointMake(22.315 + (offset/30)*-3.8150000000000013 , 20.56 + (offset/30)*-7.559999999999999) controlPoint2:CGPointMake(29.23 + (offset/30)*3.7699999999999996 , 21.14 + (offset/30)*-6.640000000000001)];
    [path addCurveToPoint:CGPointMake(23.745 + (offset/30)*-2.245000000000001 , 28.83 + (offset/30)*5.670000000000002) controlPoint1: CGPointMake(28.755 + (offset/30)*3.245000000000001 , 26.52 + (offset/30)*1.9800000000000004) controlPoint2:CGPointMake(27.565 + (offset/30)*1.9349999999999987 , 29.79 + (offset/30)*7.210000000000001)];
    [path closePath];
}

- (void)drawFigure3Path2:(UIBezierPath *)path withOffset:(float)offset {
    if (offset < 1) {
        return;
    }
    [path moveToPoint:CGPointMake(25.965 + (offset/30)*0.03500000000000014 , 28.945 + (offset/30)*1.0549999999999997)];
    [path addCurveToPoint:CGPointMake(21.515 + (offset/30)*-1.5150000000000006 , 24.86 + (offset/30)*-0.35999999999999943) controlPoint1: CGPointMake(24.48 + (offset/30)*-0.4800000000000004 , 29.315 + (offset/30)*1.1849999999999987) controlPoint2:CGPointMake(22.255 + (offset/30)*-1.254999999999999 , 27.83 + (offset/30)*0.6700000000000017)];
    [path addCurveToPoint:CGPointMake(28.93 + (offset/30)*1.0700000000000003 , 23.005 + (offset/30)*-1.004999999999999) controlPoint1: CGPointMake(21.145 + (offset/30)*-1.6449999999999996 , 21.89 + (offset/30)*-1.3900000000000006) controlPoint2:CGPointMake(28.19 + (offset/30)*0.8099999999999987 , 20.035 + (offset/30)*-2.035)];
    [path addCurveToPoint:CGPointMake(25.965 + (offset/30)*0.03500000000000014 , 28.945 + (offset/30)*1.0549999999999997) controlPoint1: CGPointMake(29.3 + (offset/30)*1.1999999999999993 , 24.86 + (offset/30)*-0.35999999999999943) controlPoint2:CGPointMake(28.19 + (offset/30)*0.8099999999999987 , 28.575 + (offset/30)*0.9250000000000007)];
    [path closePath];
}

- (void)drawFigure1Path3:(UIBezierPath *)path withOffset:(float)offset {
    if (offset < 1) {
        return;
    }
    [path moveToPoint:CGPointMake(49.875 + (offset/20)*-0.9200000000000017 , 54 + (offset/20)*7.594999999999999)];
    [path addCurveToPoint:CGPointMake(46.71 + (offset/20)*-4.710000000000001 , 48.435 + (offset/20)*-3.9350000000000023) controlPoint1: CGPointMake(48.04 + (offset/20)*-3.125 , 54 + (offset/20)*7.594999999999999) controlPoint2:CGPointMake(45.8 + (offset/20)*-5.799999999999997 , 52.18 + (offset/20)*3.8200000000000003)];
    [path addCurveToPoint:CGPointMake(53.995 + (offset/20)*4.005000000000003 , 48.6 + (offset/20)*-3.6000000000000014) controlPoint1: CGPointMake(47.385 + (offset/20)*-3.905000000000001 , 45.67 + (offset/20)*-9.675000000000004) controlPoint2:CGPointMake(54.22 + (offset/20)*4.280000000000001 , 45.995 + (offset/20)*-8.994999999999997)];
    [path addCurveToPoint:CGPointMake(49.875 + (offset/20)*-0.9200000000000017 , 54 + (offset/20)*7.594999999999999) controlPoint1: CGPointMake(53.995 + (offset/20)*4.005000000000003 , 52.015 + (offset/20)*3.4849999999999994) controlPoint2:CGPointMake(51.715 + (offset/20)*1.279999999999994 , 54 + (offset/20)*7.594999999999999)];
    [path closePath];
}

@end
