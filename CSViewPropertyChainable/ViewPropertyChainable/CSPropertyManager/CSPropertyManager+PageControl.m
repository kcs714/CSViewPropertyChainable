//
//  CSPropertyManager+PageControl.m
//  Schooldays
//
//  Created by  kcs on 2017/11/16.
//  Copyright © 2017年  kcs. All rights reserved.
//

#import "CSPropertyManager+PageControl.h"

@implementation CSPropertyManager (PageControl)

- (CSPropertyManager*(^)(NSInteger numberOfPages))pNumberOfPages {
    return ^CSPropertyManager *(NSInteger numberOfPages){
        ((UIPageControl *)self.innerView).numberOfPages = numberOfPages;
        return self;
    };
}

- (CSPropertyManager*(^)(NSInteger currentPage))pCurrentPage {
    return ^CSPropertyManager *(NSInteger currentPage){
        ((UIPageControl *)self.innerView).currentPage = currentPage;
        return self;
    };
}

- (CSPropertyManager*(^)(BOOL hidesForSinglePage))pHidesForSinglePage {
    return ^CSPropertyManager *(BOOL hidesForSinglePage){
        ((UIPageControl *)self.innerView).hidesForSinglePage = hidesForSinglePage;
        return self;
    };
}

- (CSPropertyManager*(^)(BOOL defersCurrentPageDisplay))pDefersCurrentPageDisplay {
    return ^CSPropertyManager *(BOOL defersCurrentPageDisplay){
        ((UIPageControl *)self.innerView).defersCurrentPageDisplay = defersCurrentPageDisplay;
        return self;
    };
}

- (CSPropertyManager*(^)(UIColor *pageIndicatorTintColor))pPageIndicatorTintColor {
    return ^CSPropertyManager *(UIColor *pageIndicatorTintColor){
        ((UIPageControl *)self.innerView).pageIndicatorTintColor = pageIndicatorTintColor;
        return self;
    };
}

- (CSPropertyManager*(^)(UIColor *currentPageIndicatorTintColor))pCurrentPageIndicatorTintColor {
    return ^CSPropertyManager *(UIColor *currentPageIndicatorTintColor){
        ((UIPageControl *)self.innerView).currentPageIndicatorTintColor = currentPageIndicatorTintColor;
        return self;
    };
}

@end
