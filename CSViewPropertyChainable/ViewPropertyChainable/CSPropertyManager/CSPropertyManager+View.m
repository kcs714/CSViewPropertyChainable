//
//  CSPropertyManager+View.m
//  Schooldays
//
//  Created by  kcs on 2017/11/16.
//  Copyright © 2017年  kcs. All rights reserved.
//

#import "CSPropertyManager+View.h"

@implementation CSPropertyManager (View)

- (CSPropertyManager *(^)(UIView *superView))pSuperView {
    return ^CSPropertyManager *(UIView *superView){
        [superView addSubview:self.innerView];
        return self;
    };
}

@end
