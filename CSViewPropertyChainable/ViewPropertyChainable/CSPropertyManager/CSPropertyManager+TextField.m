//
//  CSPropertyManager+TextField.m
//  ViewCreation
//
//  Created by  kcs on 2017/10/26.
//  Copyright © 2017年  kcs. All rights reserved.
//

#import "CSPropertyManager+TextField.h"

@implementation CSPropertyManager (TextField)

- (CSPropertyManager *(^)(NSString *text))pTFText {
    return ^CSPropertyManager *(NSString *text){
        ((UITextField *)self.innerView).text = text;
        return self;
    };
}

- (CSPropertyManager *(^)(NSString *text))pTFPlaceholder {
    return ^CSPropertyManager *(NSString *text){
        ((UITextField *)self.innerView).placeholder = text;
        return self;
    };
}

- (CSPropertyManager *(^)(UIColor *color))pTFTextColor {
    return ^CSPropertyManager *(UIColor *color){
        ((UITextField *)self.innerView).textColor = color;
        return self;
    };
}

- (CSPropertyManager *(^)(UIFont *font))pTFFont {
    return ^CSPropertyManager *(UIFont *font){
        ((UITextField *)self.innerView).font = font;
        return self;
    };
}

- (CSPropertyManager *(^)(NSTextAlignment alignment))pTFAlignment {
    return ^CSPropertyManager *(NSTextAlignment alignment){
        ((UITextField *)self.innerView).textAlignment = alignment;
        return self;
    };
}

- (CSPropertyManager *(^)(id<UITextFieldDelegate> delegate))pTFDelegate {
    return ^CSPropertyManager *(id<UITextFieldDelegate> delegate){
        ((UITextField *)self.innerView).delegate = delegate;
        return self;
    };
}

@end
