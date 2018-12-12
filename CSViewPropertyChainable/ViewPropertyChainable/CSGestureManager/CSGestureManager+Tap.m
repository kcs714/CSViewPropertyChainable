//
//  CSGestureManager+Tap.m
//  Schooldays
//
//  Created by  kcs on 2017/10/31.
//  Copyright © 2017年  kcs. All rights reserved.
//

#import "CSGestureManager+Tap.h"

@implementation CSGestureManager (Tap)

- (CSGestureManager *(^)(NSUInteger  numbers))pNumberOfTaps {
    return ^CSGestureManager *(NSUInteger  numbers){
        ((UITapGestureRecognizer *)self.innerGesture).numberOfTapsRequired = numbers;
        return self;
    };
}

@end
