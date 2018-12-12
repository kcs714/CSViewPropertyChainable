//
//  CSPropertyManager+TextField.h
//  ViewCreation
//
//  Created by  kcs on 2017/10/26.
//  Copyright © 2017年  kcs. All rights reserved.
//

#import "CSPropertyManager.h"

@interface CSPropertyManager (TextField)

/*
 text
 */
- (CSPropertyManager *(^)(NSString *text))pTFText;

/*
 placeholder
 */
- (CSPropertyManager *(^)(NSString *text))pTFPlaceholder;

/*
 textColor
 */
- (CSPropertyManager *(^)(UIColor *color))pTFTextColor;

/*
 font
 */
- (CSPropertyManager *(^)(UIFont *font))pTFFont;

/*
 textAlignment
 */
- (CSPropertyManager *(^)(NSTextAlignment alignment))pTFAlignment;

/*
 delegate
 */
- (CSPropertyManager *(^)(id<UITextFieldDelegate> delegate))pTFDelegate;

@end
