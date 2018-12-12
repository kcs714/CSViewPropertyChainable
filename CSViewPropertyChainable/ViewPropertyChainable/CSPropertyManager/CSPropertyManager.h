//
//  CSPropertyManager.h
//  ViewCreation
//
//  Created by  kcs on 2017/10/26.
//  Copyright © 2017年  kcs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CSPropertyManager : NSObject

/*
 设置属性的view
 */
@property (nonatomic, weak) UIView *innerView;

/*
 innerView.frame
 */
- (CSPropertyManager *(^)(CGFloat x, CGFloat y, CGFloat width, CGFloat height))pFrame;

/*
 innerView.center
 */
- (CSPropertyManager *(^)(CGFloat x, CGFloat y))pCenter;

/*
 innerView.backgroundColor
 */
- (CSPropertyManager *(^)(UIColor *color))pBgColor;

/*
 innerView.tag
 */
- (CSPropertyManager *(^)(NSInteger tag))pTag;

/*
 innerView.layer.borderWidth
 */
- (CSPropertyManager *(^)(CGFloat width))pBorderWidth;

/*
 innerView.layer.borderColor
 */
- (CSPropertyManager *(^)(UIColor *color))pBorderColor;

/*
 innerView.layer.cornerRadius
 */
- (CSPropertyManager *(^)(CGFloat radius))pCornerRadius;

@end
