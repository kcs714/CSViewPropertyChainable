//
//  CSGestureManager+ScreenEdgePan.m
//  Schooldays
//
//  Created by  kcs on 2017/10/31.
//  Copyright © 2017年  kcs. All rights reserved.
//

#import "CSGestureManager+ScreenEdgePan.h"

@implementation CSGestureManager (ScreenEdgePan)

- (CSGestureManager *(^)(UIRectEdge edges))pEdges {
    return ^CSGestureManager *(UIRectEdge edges){
        ((UIScreenEdgePanGestureRecognizer *)self.innerGesture).edges = edges;
        return self;
    };
}
@end
