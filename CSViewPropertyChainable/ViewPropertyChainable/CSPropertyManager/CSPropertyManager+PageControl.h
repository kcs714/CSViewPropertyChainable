//
//  CSPropertyManager+PageControl.h
//  Schooldays
//
//  Created by  kcs on 2017/11/16.
//  Copyright © 2017年  kcs. All rights reserved.
//

#import "CSPropertyManager.h"

@interface CSPropertyManager (PageControl)

/*
 pageControl.numberOfPages = numberOfPages
 */
- (CSPropertyManager*(^)(NSInteger numberOfPages))pNumberOfPages;

/*
 pageControl.currentPage = currentPage
 */
- (CSPropertyManager*(^)(NSInteger currentPage))pCurrentPage;

/*
 pageControl.hidesForSinglePage = hidesForSinglePage
 */
- (CSPropertyManager*(^)(BOOL hidesForSinglePage))pHidesForSinglePage;

/*
 pageControl.defersCurrentPageDisplay = defersCurrentPageDisplay
 */
- (CSPropertyManager*(^)(BOOL defersCurrentPageDisplay))pDefersCurrentPageDisplay;

/*
 pageControl.pageIndicatorTintColor = pageIndicatorTintColor
 */
- (CSPropertyManager*(^)(UIColor *pageIndicatorTintColor))pPageIndicatorTintColor;

/*
 pageControl.currentPageIndicatorTintColor = currentPageIndicatorTintColor
 */
- (CSPropertyManager*(^)(UIColor *currentPageIndicatorTintColor))pCurrentPageIndicatorTintColor;

@end
