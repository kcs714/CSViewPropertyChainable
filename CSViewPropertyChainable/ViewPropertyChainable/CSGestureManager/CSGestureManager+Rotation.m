//
//  CSGestureManager+Rotation.m
//  Schooldays
//
//  Created by  kcs on 2017/10/31.
//  Copyright © 2017年  kcs. All rights reserved.
//

#import "CSGestureManager+Rotation.h"

@implementation CSGestureManager (Rotation)

- (CSGestureManager *(^)(CGFloat rotation))pRotation {
    return ^CSGestureManager *(CGFloat rotation){
        ((UIRotationGestureRecognizer *)self.innerGesture).rotation = rotation;
        return self;
    };
}

@end
