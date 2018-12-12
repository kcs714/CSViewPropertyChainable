//
//  CSPropertyManager+Label.h
//  ViewCreation
//
//  Created by  kcs on 2017/10/26.
//  Copyright © 2017年  kcs. All rights reserved.
//

#import "CSPropertyManager.h"

@interface CSPropertyManager (Label)

/*
 text
 */
- (CSPropertyManager *(^)(NSString *text))pLabText;

/*
 textColor
 */
- (CSPropertyManager *(^)(UIColor *color))pLabTextColor;

/*
 font
 */
- (CSPropertyManager *(^)(UIFont *font))pLabFont;

/*
 textAlignment
 */
- (CSPropertyManager *(^)(NSTextAlignment alignment))pLabAlignment;

@end
