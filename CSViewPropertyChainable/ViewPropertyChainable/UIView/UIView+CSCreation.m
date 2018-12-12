//
//  UIView+CSCreation.m
//  ViewCreation
//
//  Created by  kcs on 2017/10/26.
//  Copyright © 2017年  kcs. All rights reserved.
//

#import "UIView+CSCreation.h"

typedef NS_ENUM(NSInteger, CSViewType) {
    CSViewTypeNormal,
    CSViewTypePlainTable,
    CSViewTypeGroupedTable,
};

@implementation UIView (CSCreation)

+ (instancetype)create:(void(^)(CSPropertyManager *pMag))block {
    return [self createView:CSViewTypeNormal magBlock:block];
}

+ (instancetype)createPlainStyleTable:(void(^)(CSPropertyManager *pMag))block {
    return [self createView:CSViewTypePlainTable magBlock:block];
}

+ (instancetype)createGroupedStyleTable:(void(^)(CSPropertyManager *pMag))block {
    return [self createView:CSViewTypeGroupedTable magBlock:block];
}

+ (instancetype)createView:(CSViewType)type magBlock:(void(^)(CSPropertyManager *pMag))block {
    UIView *view = nil;
    if (CSViewTypeNormal == type) {
        view = [self new];
    } else if (CSViewTypePlainTable == type) {
        view = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
    } else if (CSViewTypeGroupedTable == type) {
        view = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
    }
    CSPropertyManager *mag = [CSPropertyManager new];
    mag.innerView = view;
    block(mag);
    return view;
}

@end
