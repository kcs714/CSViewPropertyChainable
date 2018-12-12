//
//  CSGestureManager.m
//  Schooldays
//
//  Created by  kcs on 2017/10/31.
//  Copyright © 2017年  kcs. All rights reserved.
//

#import "CSGestureManager.h"

@implementation CSGestureManager

- (CSGestureManager *(^)(NSString *name))pName {
    return ^CSGestureManager *(NSString *name){
        if (@available(iOS 11.0, *)) {
            self.innerGesture.name = name;
        }
        return self;
    };
}

- (CSGestureManager *(^)(id <UIGestureRecognizerDelegate> delegate))pGestureDelegate {
    return ^CSGestureManager *(id <UIGestureRecognizerDelegate> delegate){
        self.innerGesture.delegate = delegate;
        return self;
    };
}

- (CSGestureManager *(^)(BOOL enabled))pEnabled {
    return ^CSGestureManager *(BOOL enabled){
        self.innerGesture.enabled = enabled;
        return self;
    };
}

- (CSGestureManager *(^)(BOOL cancels))pCancelsTouchesInView {
    return ^CSGestureManager *(BOOL cancels){
        self.innerGesture.cancelsTouchesInView = cancels;
        return self;
    };
}

- (CSGestureManager *(^)(BOOL delays))pDelaysTouchesBegan {
    return ^CSGestureManager *(BOOL delays){
        self.innerGesture.delaysTouchesBegan = delays;
        return self;
    };
}

- (CSGestureManager *(^)(BOOL delays))pDelaysTouchesEnded {
    return ^CSGestureManager *(BOOL delays){
        self.innerGesture.delaysTouchesEnded = delays;
        return self;
    };
}

- (CSGestureManager *(^)(NSArray<NSNumber *> *touchTypes))pAllowedTouchTypes {
    return ^CSGestureManager *(NSArray<NSNumber *> *touchTypes){
        if (@available(iOS 9.0, *)) {
            self.innerGesture.allowedTouchTypes = touchTypes;
        }
        return self;
    };
}

- (CSGestureManager *(^)(NSArray<NSNumber *> *pressTypes))pAllowedPressTypes {
    return ^CSGestureManager *(NSArray<NSNumber *> *pressTypes){
        if (@available(iOS 9.0, *)) {
            self.innerGesture.allowedPressTypes = pressTypes;
        }
        return self;
    };
}

- (CSGestureManager *(^)(BOOL requires))pRequiresExclusiveTouchType {
    return ^CSGestureManager *(BOOL requires){
        if (@available(iOS 9.2, *)) {
            self.innerGesture.requiresExclusiveTouchType = requires;
        }
        return self;
    };
}

- (CSGestureManager *(^)(UIGestureRecognizer *otherGesture))pRequireGestureToFail {
    return ^CSGestureManager *(UIGestureRecognizer *otherGesture){
        [self.innerGesture requireGestureRecognizerToFail:otherGesture];
        return self;
    };
}

@end
