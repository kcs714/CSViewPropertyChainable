//
//  CSPropertyManager+ImageView.m
//  ViewCreation
//
//  Created by  kcs on 2017/10/27.
//  Copyright © 2017年  kcs. All rights reserved.
//

#import "CSPropertyManager+ImageView.h"

@implementation CSPropertyManager (ImageView)
    
- (CSPropertyManager *(^)(UIImage *image))pImage {
    return ^CSPropertyManager *(UIImage *image){
        ((UIImageView *)self.innerView).image = image;
        return self;
    };
}
    
@end
