//
//  CSPropertyManager+ScrollView.m
//  Schooldays
//
//  Created by  kcs on 2017/11/16.
//  Copyright © 2017年  kcs. All rights reserved.
//

#import "CSPropertyManager+ScrollView.h"

@implementation CSPropertyManager (ScrollView)

- (CSPropertyManager *(^)(CGPoint contentOffset))pContentOffset {
    return ^CSPropertyManager *(CGPoint contentOffset){
        ((UIScrollView *)self.innerView).contentOffset = contentOffset;
        return self;
    };
}

- (CSPropertyManager *(^)(CGSize contentSize))pContentSize {
    return ^CSPropertyManager *(CGSize contentSize){
        ((UIScrollView *)self.innerView).contentSize = contentSize;
        return self;
    };
}

- (CSPropertyManager *(^)(UIEdgeInsets contentInset))pContentInset {
    return ^CSPropertyManager *(UIEdgeInsets contentInset){
        ((UIScrollView *)self.innerView).contentInset = contentInset;
        return self;
    };
}

- (CSPropertyManager *(^)(id<UIScrollViewDelegate> delegate))pScrollDelegate {
    return ^CSPropertyManager *(id<UIScrollViewDelegate> delegate){
        ((UIScrollView *)self.innerView).delegate = delegate;
        return self;
    };
}

- (CSPropertyManager *(^)(BOOL directionalLockEnabled))pDirectionalLockEnabled {
    return ^CSPropertyManager *(BOOL directionalLockEnabled){
        ((UIScrollView *)self.innerView).directionalLockEnabled = directionalLockEnabled;
        return self;
    };
}

- (CSPropertyManager *(^)(BOOL bounces))pBounces {
    return ^CSPropertyManager *(BOOL bounces){
        ((UIScrollView *)self.innerView).bounces = bounces;
        return self;
    };
}

- (CSPropertyManager *(^)(BOOL alwaysBounceVertical))pAlwaysBounceVertical {
    return ^CSPropertyManager *(BOOL alwaysBounceVertical){
        ((UIScrollView *)self.innerView).alwaysBounceVertical = alwaysBounceVertical;
        return self;
    };
}

- (CSPropertyManager *(^)(BOOL alwaysBounceHorizontal))pAlwaysBounceHorizontal {
    return ^CSPropertyManager *(BOOL alwaysBounceHorizontal){
        ((UIScrollView *)self.innerView).alwaysBounceHorizontal = alwaysBounceHorizontal;
        return self;
    };
}

- (CSPropertyManager *(^)(BOOL scrollEnabled))pScrollEnabled {
    return ^CSPropertyManager *(BOOL scrollEnabled){
        ((UIScrollView *)self.innerView).scrollEnabled = scrollEnabled;
        return self;
    };
}

- (CSPropertyManager *(^)(BOOL showsHorizontalScrollIndicator))pShowsHorizontalScrollIndicator {
    return ^CSPropertyManager *(BOOL showsHorizontalScrollIndicator){
        ((UIScrollView *)self.innerView).showsHorizontalScrollIndicator = showsHorizontalScrollIndicator;
        return self;
    };
}

- (CSPropertyManager *(^)(BOOL showsVerticalScrollIndicator))pShowsVerticalScrollIndicator {
    return ^CSPropertyManager *(BOOL showsVerticalScrollIndicator){
        ((UIScrollView *)self.innerView).showsVerticalScrollIndicator = showsVerticalScrollIndicator;
        return self;
    };
}

- (CSPropertyManager *(^)(UIEdgeInsets scrollIndicatorInsets))pScrollIndicatorInsets {
    return ^CSPropertyManager *(UIEdgeInsets scrollIndicatorInsets){
        ((UIScrollView *)self.innerView).scrollIndicatorInsets = scrollIndicatorInsets;
        return self;
    };
}

- (CSPropertyManager *(^)(UIScrollViewIndicatorStyle indicatorStyle))pIndicatorStyle {
    return ^CSPropertyManager *(UIScrollViewIndicatorStyle indicatorStyle){
        ((UIScrollView *)self.innerView).indicatorStyle = indicatorStyle;
        return self;
    };
}

- (CSPropertyManager *(^)(CGFloat decelerationRate))pDecelerationRate {
    return ^CSPropertyManager *(CGFloat decelerationRate){
        ((UIScrollView *)self.innerView).decelerationRate = decelerationRate;
        return self;
    };
}

- (CSPropertyManager *(^)(BOOL delaysContentTouches))pDelaysContentTouches {
    return ^CSPropertyManager *(BOOL delaysContentTouches){
        ((UIScrollView *)self.innerView).delaysContentTouches = delaysContentTouches;
        return self;
    };
}

- (CSPropertyManager *(^)(BOOL canCancelContentTouches))pCanCancelContentTouches {
    return ^CSPropertyManager *(BOOL canCancelContentTouches){
        ((UIScrollView *)self.innerView).canCancelContentTouches = canCancelContentTouches;
        return self;
    };
}

- (CSPropertyManager *(^)(CGFloat minimumZoomScale))pMinimumZoomScale {
    return ^CSPropertyManager *(CGFloat minimumZoomScale){
        ((UIScrollView *)self.innerView).minimumZoomScale = minimumZoomScale;
        return self;
    };
}

- (CSPropertyManager *(^)(CGFloat maximumZoomScale))pMaximumZoomScale {
    return ^CSPropertyManager *(CGFloat maximumZoomScale){
        ((UIScrollView *)self.innerView).maximumZoomScale = maximumZoomScale;
        return self;
    };
}

- (CSPropertyManager *(^)(CGFloat zoomScale))pZoomScale {
    return ^CSPropertyManager *(CGFloat zoomScale){
        ((UIScrollView *)self.innerView).zoomScale = zoomScale;
        return self;
    };
}

- (CSPropertyManager *(^)(BOOL bouncesZoom))pBouncesZoom {
    return ^CSPropertyManager *(BOOL bouncesZoom){
        ((UIScrollView *)self.innerView).bouncesZoom = bouncesZoom;
        return self;
    };
}

- (CSPropertyManager *(^)(UIScrollViewKeyboardDismissMode keyboardDismissMode))pKeyboardDismissMode {
    return ^CSPropertyManager *(UIScrollViewKeyboardDismissMode keyboardDismissMode){
        ((UIScrollView *)self.innerView).keyboardDismissMode = keyboardDismissMode;
        return self;
    };
}

@end
