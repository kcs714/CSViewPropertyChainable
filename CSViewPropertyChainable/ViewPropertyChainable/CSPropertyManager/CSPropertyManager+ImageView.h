//
//  CSPropertyManager+ImageView.h
//  ViewCreation
//
//  Created by  kcs on 2017/10/27.
//  Copyright © 2017年  kcs. All rights reserved.
//

#import "CSPropertyManager.h"

@interface CSPropertyManager (ImageView)

/*
 image
 */
- (CSPropertyManager *(^)(UIImage *image))pImage;

@end
