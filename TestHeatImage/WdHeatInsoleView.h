//
//  WdHeatInsole.h
//  TestHeatImage
//
//  Created by 吴迪玮 on 2016/11/10.
//  Copyright © 2016年 Paodong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WdHeatInsoleView : UIView

- (void)starBizierAnimation;
- (void)stopBezierAnimation;

- (void)setPoint1Offset:(NSInteger)point1Offset;
- (void)setPoint2Offset:(NSInteger)point2Offset;
- (void)setPoint3Offset:(NSInteger)point3Offset;

@end
