//
//  CSGestureManager+ScreenEdgePan.h
//  Schooldays
//
//  Created by  kcs on 2017/10/31.
//  Copyright © 2017年  kcs. All rights reserved.
//

#import "CSGestureManager.h"

@interface CSGestureManager (ScreenEdgePan)

/*
 edges
 */
- (CSGestureManager *(^)(UIRectEdge edges))pEdges;

@end
