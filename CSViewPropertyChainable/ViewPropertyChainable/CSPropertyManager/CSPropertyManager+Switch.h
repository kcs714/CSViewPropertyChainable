//
//  CSPropertyManager+Switch.h
//  Schooldays
//
//  Created by  kcs on 2017/11/16.
//  Copyright © 2017年  kcs. All rights reserved.
//

#import "CSPropertyManager.h"

@interface CSPropertyManager (Switch)

/*
 onTintColor
 */
- (CSPropertyManager *(^)(UIColor *onTintColor))pOnTintColor;

/*
 tintColor
 */
- (CSPropertyManager *(^)(UIColor *tintColor))pTintColor;

/*
 thumbTintColor
 */
- (CSPropertyManager *(^)(UIColor *thumbTintColor))pSwitchThumbTintColor;

/*
 onImage
 */
- (CSPropertyManager *(^)(UIImage *onImage))pOnImage;

/*
 offImage
 */
- (CSPropertyManager *(^)(UIImage *offImage))pOffImage;

/*
 on
 */
- (CSPropertyManager *(^)(BOOL on))pOn;

@end
