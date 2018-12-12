//
//  CSPropertyManager+Button.h
//  ViewCreation
//
//  Created by  kcs on 2017/10/26.
//  Copyright © 2017年  kcs. All rights reserved.
//

#import "CSPropertyManager.h"

@interface CSPropertyManager (Button)

/*
 UIControlStateNormal 状态下的 title
 */
- (CSPropertyManager *(^)(NSString *title))pNormalTitle;

/*
 UIControlStateNormal 状态下的 titleColor
 */
- (CSPropertyManager *(^)(UIColor *color))pNormalTitleColor;

/*
 UIControlStateHighlighted 状态下的 title
 */
- (CSPropertyManager *(^)(NSString *title))pHighlightTitle;

/*
 UIControlStateHighlighted 状态下的 titleColor
 */
- (CSPropertyManager *(^)(UIColor *color))pHighlightTitleColor;

/*
 UIControlStateSelected 状态下的 title
 */
- (CSPropertyManager *(^)(NSString *title))pSelectTitle;

/*
 UIControlStateSelected 状态下的 titleColor
 */
- (CSPropertyManager *(^)(UIColor *color))pSelectTitleColor;

/*
 UIControlStateDisabled 状态下的 title
 */
- (CSPropertyManager *(^)(NSString *title))pDisabledTitle;

/*
 UIControlStateDisabled 状态下的 titleColor
 */
- (CSPropertyManager *(^)(UIColor *color))pDisabledTitleColor;

@end
