//
//  CSPropertyManager.m
//  ViewCreation
//
//  Created by  kcs on 2017/10/26.
//  Copyright © 2017年  kcs. All rights reserved.
//

#import "CSPropertyManager.h"

@implementation CSPropertyManager

- (CSPropertyManager *(^)(CGFloat x, CGFloat y, CGFloat width, CGFloat height))pFrame {
    return ^CSPropertyManager *(CGFloat x, CGFloat y, CGFloat width, CGFloat height){
        self.innerView.frame = CGRectMake(x, y, width, height);
        return self;
    };
}

- (CSPropertyManager *(^)(CGFloat x, CGFloat y))pCenter {
    return ^CSPropertyManager *(CGFloat x, CGFloat y){
        self.innerView.center = CGPointMake(x, y);
        return self;
    };
}

- (CSPropertyManager *(^)(UIColor *color))pBgColor {
    return ^CSPropertyManager *(UIColor *color){
        self.innerView.backgroundColor = color;
        return self;
    };
}

- (CSPropertyManager *(^)(NSInteger tag))pTag {
    return ^CSPropertyManager *(NSInteger tag){
        self.innerView.tag = tag;
        return self;
    };
}

- (CSPropertyManager *(^)(CGFloat width))pBorderWidth {
    return ^CSPropertyManager *(CGFloat width){
        self.innerView.layer.borderWidth = width;
        return self;
    };
}

- (CSPropertyManager *(^)(UIColor *color))pBorderColor {
    return ^CSPropertyManager *(UIColor *color){
        self.innerView.layer.borderColor = color.CGColor;
        return self;
    };
}

- (CSPropertyManager *(^)(CGFloat radius))pCornerRadius {
    return ^CSPropertyManager *(CGFloat radius){
        self.innerView.layer.cornerRadius = radius;
        return self;
    };
}

@end
