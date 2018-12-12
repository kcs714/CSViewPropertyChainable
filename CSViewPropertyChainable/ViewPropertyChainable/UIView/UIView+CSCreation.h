//
//  UIView+CSCreation.h
//  ViewCreation
//
//  Created by  kcs on 2017/10/26.
//  Copyright © 2017年  kcs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CSPropertyManager.h"

@interface UIView (CSCreation)

/**
 创建 view 及其子类
 @param block 属性设置器，函数式&链式设置视图相关属性
 @return 对象
 */
+ (instancetype)create:(void(^)(CSPropertyManager *pMag))block;

/**
 创建 tableview，UITableViewStylePlain
 @param block 属性设置器，函数式&链式设置视图相关属性
 @return 对象
 */
+ (instancetype)createPlainStyleTable:(void(^)(CSPropertyManager *pMag))block;

/**
 创建 tableview，UITableViewStyleGrouped
 @param block 属性设置器，函数式&链式设置视图相关属性
 @return 对象
 */
+ (instancetype)createGroupedStyleTable:(void(^)(CSPropertyManager *pMag))block;

@end
