//
//  UIView+CSAddBlock.h
//  LoginDemo
//
//  Created by  kcs on 2017/10/30.
//  Copyright © 2017年  kcs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CSGestureManager.h"

@interface UIView (CSAddBlock)

/**
 UIButton 添加 Event 事件
 @param eventBlock 事件回调
 @return UIButton 对象
 */
- (UIButton *)addTouchUpInsideEventBlock:(void(^)(UIButton *btn))eventBlock;

/**
 添加 tap 手势
 @param setBlock 手势属性设置器，函数式&链式设置相关属性
 @param callBlock 手势回调
 @return 视图对象
 */
- (id)addTapGesture:(void(^)(CSGestureManager *pMag))setBlock callBlock:(void(^)(UITapGestureRecognizer *gesture))callBlock;

/**
 添加 pan 手势
 @param callBlock 手势回调
 @return 视图对象
 */
- (id)addPanGesture:(void(^)(UIPanGestureRecognizer *gesture))callBlock;

/**
 添加 swipe 手势
 @param setBlock 手势属性设置器，函数式&链式设置相关属性
 @param callBlock 手势回调
 @return 视图对象
 */
- (id)addSwipeGesture:(void(^)(CSGestureManager *pMag))setBlock callBlock:(void(^)(UISwipeGestureRecognizer *gesture))callBlock;

/**
 添加 longPress 手势
 @param setBlock 手势属性设置器，函数式&链式设置相关属性
 @param callBlock 手势回调
 @return 视图对象
 */
- (id)addLongPressGesture:(void(^)(CSGestureManager *pMag))setBlock callBlock:(void(^)(UILongPressGestureRecognizer *gesture))callBlock;

/**
 添加 pinch 手势
 @param setBlock 手势属性设置器，函数式&链式设置相关属性
 @param callBlock 手势回调
 @return 视图对象
 */
- (id)addPinchGesture:(void(^)(CSGestureManager *pMag))setBlock callBlock:(void(^)(UIPinchGestureRecognizer *gesture))callBlock;

/**
 添加 rotation 手势
 @param setBlock 手势属性设置器，函数式&链式设置相关属性
 @param callBlock 手势回调
 @return 视图对象
 */
- (id)addRotationGesture:(void(^)(CSGestureManager *pMag))setBlock callBlock:(void(^)(UIRotationGestureRecognizer *gesture))callBlock;

/**
 添加 screenEdgePan 手势
 @param setBlock 手势属性设置器，函数式&链式设置相关属性
 @param callBlock 手势回调
 @return 视图对象
 */
- (id)addScreenEdgePanGesture:(void(^)(CSGestureManager *pMag))setBlock callBlock:(void(^)(UIScreenEdgePanGestureRecognizer *gesture))callBlock;

@end
