//
//  CSPropertyManager+ScrollView.h
//  Schooldays
//
//  Created by  kcs on 2017/11/16.
//  Copyright © 2017年  kcs. All rights reserved.
//

#import "CSPropertyManager.h"

@interface CSPropertyManager (ScrollView)

/*
 UIScrollView.contentOffset = contentOffset
 */
- (CSPropertyManager *(^)(CGPoint contentOffset))pContentOffset;

/*
 UIScrollView.contentSize = contentSize
 */
- (CSPropertyManager *(^)(CGSize contentSize))pContentSize;

/*
 UIScrollView.contentInset = contentInset
 */
- (CSPropertyManager *(^)(UIEdgeInsets contentInset))pContentInset;

//- (CSPropertyManager *(^)(UIScrollViewContentInsetAdjustmentBehavior contentInsetAdjustmentBehavior))pContentInsetAdjustmentBehavior;

/*
 UIScrollView.delegate = delegate
 */
- (CSPropertyManager *(^)(id<UIScrollViewDelegate> delegate))pScrollDelegate;

/*
 UIScrollView.directionalLockEnabled = directionalLockEnabled
 */
- (CSPropertyManager *(^)(BOOL directionalLockEnabled))pDirectionalLockEnabled;

/*
 UIScrollView.bounces = bounces
 */
- (CSPropertyManager *(^)(BOOL bounces))pBounces;

/*
 UIScrollView.alwaysBounceVertical = alwaysBounceVertical
 */
- (CSPropertyManager *(^)(BOOL alwaysBounceVertical))pAlwaysBounceVertical;

/*
 UIScrollView.alwaysBounceHorizontal = alwaysBounceHorizontal
 */
- (CSPropertyManager *(^)(BOOL alwaysBounceHorizontal))pAlwaysBounceHorizontal;

/*
 UIScrollView.scrollEnabled = scrollEnabled
 */
- (CSPropertyManager *(^)(BOOL scrollEnabled))pScrollEnabled;

/*
 UIScrollView.showsHorizontalScrollIndicator = showsHorizontalScrollIndicator
 */
- (CSPropertyManager *(^)(BOOL showsHorizontalScrollIndicator))pShowsHorizontalScrollIndicator;

/*
 UIScrollView.showsVerticalScrollIndicator = showsVerticalScrollIndicator
 */
- (CSPropertyManager *(^)(BOOL showsVerticalScrollIndicator))pShowsVerticalScrollIndicator;

/*
 UIScrollView.scrollIndicatorInsets = scrollIndicatorInsets
 */
- (CSPropertyManager *(^)(UIEdgeInsets scrollIndicatorInsets))pScrollIndicatorInsets;

/*
 UIScrollView.indicatorStyle = indicatorStyle
 */
- (CSPropertyManager *(^)(UIScrollViewIndicatorStyle indicatorStyle))pIndicatorStyle;

/*
 UIScrollView.decelerationRate = decelerationRate
 */
- (CSPropertyManager *(^)(CGFloat decelerationRate))pDecelerationRate;

/*
 UIScrollView.delaysContentTouches = delaysContentTouches
 */
- (CSPropertyManager *(^)(BOOL delaysContentTouches))pDelaysContentTouches;

/*
 UIScrollView.canCancelContentTouches = canCancelContentTouches
 */
- (CSPropertyManager *(^)(BOOL canCancelContentTouches))pCanCancelContentTouches;

/*
 UIScrollView.minimumZoomScale = minimumZoomScale
 */
- (CSPropertyManager *(^)(CGFloat minimumZoomScale))pMinimumZoomScale;

/*
 UIScrollView.maximumZoomScale = maximumZoomScale
 */
- (CSPropertyManager *(^)(CGFloat maximumZoomScale))pMaximumZoomScale;

/*
 UIScrollView.zoomScale = zoomScale
 */
- (CSPropertyManager *(^)(CGFloat zoomScale))pZoomScale;

/*
 UIScrollView.bouncesZoom = bouncesZoom
 */
- (CSPropertyManager *(^)(BOOL bouncesZoom))pBouncesZoom;

/*
 UIScrollView.keyboardDismissMode = keyboardDismissMode
 */
- (CSPropertyManager *(^)(UIScrollViewKeyboardDismissMode keyboardDismissMode))pKeyboardDismissMode;

//- (CSPropertyManager *(^)(UIRefreshControl *refreshControl))pRefreshControl;

@end
