//
//  CSPropertyManager+Label.m
//  ViewCreation
//
//  Created by  kcs on 2017/10/26.
//  Copyright © 2017年  kcs. All rights reserved.
//

#import "CSPropertyManager+Label.h"

@implementation CSPropertyManager (Label)

- (CSPropertyManager *(^)(NSString *text))pLabText {
    return ^CSPropertyManager *(NSString *text){
        ((UILabel *)self.innerView).text = text;
        return self;
    };
}

- (CSPropertyManager *(^)(UIColor *color))pLabTextColor {
    return ^CSPropertyManager *(UIColor *color){
        ((UILabel *)self.innerView).textColor = color;
        return self;
    };
}

- (CSPropertyManager *(^)(UIFont *font))pLabFont {
    return ^CSPropertyManager *(UIFont *font){
        ((UILabel *)self.innerView).font = font;
        return self;
    };
}

- (CSPropertyManager *(^)(NSTextAlignment alignment))pLabAlignment {
    return ^CSPropertyManager *(NSTextAlignment alignment){
        ((UILabel *)self.innerView).textAlignment = alignment;
        return self;
    };
}

@end
