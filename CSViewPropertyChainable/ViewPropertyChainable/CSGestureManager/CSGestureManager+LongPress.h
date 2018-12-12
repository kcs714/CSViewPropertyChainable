//
//  CSGestureManager+LongPress.h
//  Schooldays
//
//  Created by  kcs on 2017/10/31.
//  Copyright © 2017年  kcs. All rights reserved.
//

#import "CSGestureManager.h"

@interface CSGestureManager (LongPress)

/*
 numberOfTapsRequired
 */
- (CSGestureManager *(^)(NSUInteger  numbers))pLPNumberOfTaps;

/*
 minimumPressDuration
 */
- (CSGestureManager *(^)(CFTimeInterval minDuration))pMinPressDuration;

/*
 allowableMovement
 */
- (CSGestureManager *(^)(CGFloat movement))pAllowableMovement;

@end
