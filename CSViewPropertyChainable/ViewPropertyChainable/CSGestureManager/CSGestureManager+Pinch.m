//
//  CSGestureManager+Pinch.m
//  Schooldays
//
//  Created by  kcs on 2017/10/31.
//  Copyright © 2017年  kcs. All rights reserved.
//

#import "CSGestureManager+Pinch.h"

@implementation CSGestureManager (Pinch)

- (CSGestureManager *(^)(CGFloat scale))pScale {
    return ^CSGestureManager *(CGFloat scale){
        ((UIPinchGestureRecognizer *)self.innerGesture).scale = scale;
        return self;
    };
}

@end
