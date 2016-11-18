//
//  WdRadialGradientLayer.m
//  TestHeatImage
//
//  Created by 吴迪玮 on 2016/11/11.
//  Copyright © 2016年 Paodong. All rights reserved.
//

#import "WdRadialGradientLayer.h"

@interface WdRadialGradientLayer()

@property (nonatomic) CGPoint center;
@property (nonatomic) CGFloat radius;

@end

@implementation WdRadialGradientLayer

//- (instancetype)init{
//    self = [super init];
//    if (self) {
//        self.needsDisplayOnBoundsChange = YES;
//    }
//    return self;
//}
//
//- (instancetype)initWithCoder:(NSCoder *)aDecoder{
//    return [self init];
//}
//
//
///**
// <#Description#>
//
// @param center <#center description#>
// @param radius <#radius description#>
// @param colors 数组 每四个一组 表示一个颜色 ｛r,g,b,a ,r,g,b,a｝
//
// @return <#return value description#>
// */
//- (instancetype)initWithCenter:(CGPoint )center radius:(CGFloat )radius colors:(NSArray *)colors {
//    self = [super init];
//    if (self) {
//        self.needsDisplayOnBoundsChange = YES;
//        self.center = center;
//        self.radius = radius;
//        self.colors = colors;
//    }
//    return self;
//}
//
//-(void)setColors:(NSArray *)colors{
//    _colors = colors;
//    [self setNeedsDisplay];
//}
//
//-(void)drawInContext:(CGContextRef)context{
//    if (![self.colors count]) {
//        return;
//    }
//    //步骤：
//    /*
//     一  创建颜色空间
//     二  创建渐变
//     三  设置裁剪区域
//     四  绘制渐变
//     五  释放对象
//     */
//    
//    //绘制渐变
//    
//    //在计算机设置中，直接选择rgb即可，其他颜色空间暂时不用考虑。
//    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
//    
//    //1.创建渐变
//    /*
//     1.<#CGColorSpaceRef space#> : 颜色空间 rgb
//     2.<#const CGFloat *components#> ： 数组 每四个一组 表示一个颜色 ｛r,g,b,a ,r,g,b,a｝
//     3.<#const CGFloat *locations#>:表示渐变的开始位置
//     
//     */
//    CGFloat components[8] = {[self.colors[0] floatValue],[self.colors[1] floatValue],[self.colors[2] floatValue],[self.colors[3] floatValue],[self.colors[4] floatValue],[self.colors[5] floatValue],[self.colors[6] floatValue],[self.colors[7] floatValue]};
//    CGFloat locations[2] = {0.0,1.0};
//    
//    CGGradientRef gradient=CGGradientCreateWithColorComponents(colorSpace, components, locations, 2);
//    
//    //绘制渐变
//    /*
//     参数：
//     一 context
//     二 gradient
//     三 statCenter 起始中心点
//     四 sartRadius 起始半径 指定为0  从圆心渐变  否则  中心位置不渐变
//     五 endCenter  结束中心点（通常与起始专心点重合）
//     六 endRadius  结束半径
//     七 渐变填充方式
//     
//     */
//    CGContextDrawRadialGradient(context, gradient, self.center, 0, self.center, self.radius,kCGGradientDrawsAfterEndLocation);
//    
//    //释放对象
//    CGColorSpaceRelease(colorSpace);
//    CGGradientRelease(gradient);
//}

@end
