//
//  CSPropertyManager+Control.h
//  ViewCreation
//
//  Created by  kcs on 2017/10/27.
//  Copyright © 2017年  kcs. All rights reserved.
//

#import "CSPropertyManager.h"

@interface CSPropertyManager (Control)

/*
 enabled
 */
- (CSPropertyManager *(^)(BOOL enabled))pEnabled;

/*
 selected
 */
- (CSPropertyManager *(^)(BOOL enabled))pSelected;

/*
 highlighted
 */
- (CSPropertyManager *(^)(BOOL enabled))pHighlighted;

@end
