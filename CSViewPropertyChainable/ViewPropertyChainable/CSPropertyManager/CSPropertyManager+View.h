//
//  CSPropertyManager+View.h
//  Schooldays
//
//  Created by  kcs on 2017/11/16.
//  Copyright © 2017年  kcs. All rights reserved.
//

#import "CSPropertyManager.h"

@interface CSPropertyManager (View)

// 父view
- (CSPropertyManager *(^)(UIView *superView))pSuperView;

@end
