//
//  CSPropertyManager+Button.m
//  ViewCreation
//
//  Created by  kcs on 2017/10/26.
//  Copyright © 2017年  kcs. All rights reserved.
//

#import "CSPropertyManager+Button.h"

@implementation CSPropertyManager (Button)

- (CSPropertyManager *(^)(NSString *title))pNormalTitle {
    return ^CSPropertyManager *(NSString *title){
        [((UIButton *)self.innerView) setTitle:title forState:UIControlStateNormal];
        return self;
    };
}

- (CSPropertyManager *(^)(UIColor *color))pNormalTitleColor {
    return ^CSPropertyManager *(UIColor *color){
        [((UIButton *)self.innerView) setTitleColor:color forState:UIControlStateNormal];
        return self;
    };
}

- (CSPropertyManager *(^)(NSString *title))pHighlightTitle {
    return ^CSPropertyManager *(NSString *title){
        [((UIButton *)self.innerView) setTitle:title forState:UIControlStateHighlighted];
        return self;
    };
}

- (CSPropertyManager *(^)(UIColor *color))pHighlightTitleColor {
    return ^CSPropertyManager *(UIColor *color){
        [((UIButton *)self.innerView) setTitleColor:color forState:UIControlStateHighlighted];
        return self;
    };
}

- (CSPropertyManager *(^)(NSString *title))pSelectTitle {
    return ^CSPropertyManager *(NSString *title){
        [((UIButton *)self.innerView) setTitle:title forState:UIControlStateSelected];
        return self;
    };
}

- (CSPropertyManager *(^)(UIColor *color))pSelectTitleColor {
    return ^CSPropertyManager *(UIColor *color){
        [((UIButton *)self.innerView) setTitleColor:color forState:UIControlStateSelected];
        return self;
    };
}

- (CSPropertyManager *(^)(NSString *title))pDisabledTitle {
    return ^CSPropertyManager *(NSString *title){
        [((UIButton *)self.innerView) setTitle:title forState:UIControlStateDisabled];
        return self;
    };
}

- (CSPropertyManager *(^)(UIColor *color))pDisabledTitleColor {
    return ^CSPropertyManager *(UIColor *color){
        [((UIButton *)self.innerView) setTitleColor:color forState:UIControlStateDisabled];
        return self;
    };
}

@end
