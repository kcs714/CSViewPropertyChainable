//
//  CSGestureManager+LongPress.m
//  Schooldays
//
//  Created by  kcs on 2017/10/31.
//  Copyright © 2017年  kcs. All rights reserved.
//

#import "CSGestureManager+LongPress.h"

@implementation CSGestureManager (LongPress)

- (CSGestureManager *(^)(NSUInteger  numbers))pLPNumberOfTaps {
    return ^CSGestureManager *(NSUInteger  numbers){
        ((UILongPressGestureRecognizer *)self.innerGesture).numberOfTapsRequired = numbers;
        return self;
    };
}

- (CSGestureManager *(^)(CFTimeInterval minDuration))pMinPressDuration {
    return ^CSGestureManager *(CFTimeInterval minDuration){
        ((UILongPressGestureRecognizer *)self.innerGesture).minimumPressDuration = minDuration;
        return self;
    };
}

- (CSGestureManager *(^)(CGFloat movement))pAllowableMovement {
    return ^CSGestureManager *(CGFloat movement){
        ((UILongPressGestureRecognizer *)self.innerGesture).allowableMovement = movement;
        return self;
    };
}

@end
