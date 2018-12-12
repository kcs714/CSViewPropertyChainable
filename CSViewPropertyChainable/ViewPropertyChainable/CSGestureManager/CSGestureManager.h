//
//  CSGestureManager.h
//  Schooldays
//
//  Created by  kcs on 2017/10/31.
//  Copyright © 2017年  kcs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CSGestureManager : NSObject

/*
 设置属性的 UIGestureRecognizer
 */
@property (nonatomic, weak) UIGestureRecognizer *innerGesture;

/*
 innerGesture.name
 */
- (CSGestureManager *(^)(NSString *name))pName;

/*
 innerGesture.delegate
 */
- (CSGestureManager *(^)(id <UIGestureRecognizerDelegate> delegate))pGestureDelegate;

/*
 innerGesture.enabled
 */
- (CSGestureManager *(^)(BOOL enabled))pEnabled;

/*
 innerGesture.cancelsTouchesInView
 */
- (CSGestureManager *(^)(BOOL cancels))pCancelsTouchesInView;

/*
 innerGesture.delaysTouchesBegan
 */
- (CSGestureManager *(^)(BOOL delays))pDelaysTouchesBegan;

/*
 innerGesture.delaysTouchesEnded
 */
- (CSGestureManager *(^)(BOOL delays))pDelaysTouchesEnded;

/*
 innerGesture.allowedTouchTypes
 */
- (CSGestureManager *(^)(NSArray<NSNumber *> *touchTypes))pAllowedTouchTypes;

/*
 innerGesture.allowedPressTypes
 */
- (CSGestureManager *(^)(NSArray<NSNumber *> *pressTypes))pAllowedPressTypes;

/*
 innerGesture.requiresExclusiveTouchType
 */
- (CSGestureManager *(^)(BOOL requires))pRequiresExclusiveTouchType;

/*
 [innerGesture requireGestureRecognizerToFail:otherGesture]
 */
- (CSGestureManager *(^)(UIGestureRecognizer *otherGesture))pRequireGestureToFail;

@end
