//
//  CSPropertyManager+Switch.m
//  Schooldays
//
//  Created by  kcs on 2017/11/16.
//  Copyright © 2017年  kcs. All rights reserved.
//

#import "CSPropertyManager+Switch.h"

@implementation CSPropertyManager (Switch)

- (CSPropertyManager *(^)(UIColor *onTintColor))pOnTintColor {
    return ^CSPropertyManager *(UIColor *onTintColor){
        ((UISwitch *)self.innerView).onTintColor = onTintColor;
        return self;
    };
}

- (CSPropertyManager *(^)(UIColor *tintColor))pTintColor {
    return ^CSPropertyManager *(UIColor *tintColor){
        ((UISwitch *)self.innerView).tintColor = tintColor;
        return self;
    };
}

- (CSPropertyManager *(^)(UIColor *thumbTintColor))pSwitchThumbTintColor {
    return ^CSPropertyManager *(UIColor *thumbTintColor){
        ((UISwitch *)self.innerView).thumbTintColor = thumbTintColor;
        return self;
    };
}

- (CSPropertyManager *(^)(UIImage *onImage))pOnImage {
    return ^CSPropertyManager *(UIImage *onImage){
        ((UISwitch *)self.innerView).onImage = onImage;
        return self;
    };
}

- (CSPropertyManager *(^)(UIImage *offImage))pOffImage {
    return ^CSPropertyManager *(UIImage *offImage){
        ((UISwitch *)self.innerView).offImage = offImage;
        return self;
    };
}

- (CSPropertyManager *(^)(BOOL on))pOn {
    return ^CSPropertyManager *(BOOL on){
        ((UISwitch *)self.innerView).on = on;
        return self;
    };
}

@end
