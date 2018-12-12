//
//  CSGestureManager+Swipe.m
//  Schooldays
//
//  Created by  kcs on 2017/10/31.
//  Copyright © 2017年  kcs. All rights reserved.
//

#import "CSGestureManager+Swipe.h"

@implementation CSGestureManager (Swipe)

- (CSGestureManager *(^)(UISwipeGestureRecognizerDirection direction))pDirection {
    return ^CSGestureManager *(UISwipeGestureRecognizerDirection direction){
        ((UISwipeGestureRecognizer *)self.innerGesture).direction = direction;
        return self;
    };
}

@end
