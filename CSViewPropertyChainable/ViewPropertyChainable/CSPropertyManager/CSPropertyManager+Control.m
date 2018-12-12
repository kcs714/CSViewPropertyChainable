//
//  CSPropertyManager+Control.m
//  ViewCreation
//
//  Created by  kcs on 2017/10/27.
//  Copyright © 2017年  kcs. All rights reserved.
//

#import "CSPropertyManager+Control.h"

@implementation CSPropertyManager (Control)

- (CSPropertyManager *(^)(BOOL enabled))pEnabled {
    return ^CSPropertyManager *(BOOL enabled){
        ((UIControl *)self.innerView).enabled = enabled;
        return self;
    };
}

- (CSPropertyManager *(^)(BOOL selected))pSelected {
    return ^CSPropertyManager *(BOOL selected){
        ((UIControl *)self.innerView).selected = selected;
        return self;
    };
}

- (CSPropertyManager *(^)(BOOL highlighted))pHighlighted {
    return ^CSPropertyManager *(BOOL highlighted){
        ((UIControl *)self.innerView).highlighted = highlighted;
        return self;
    };
}

@end
