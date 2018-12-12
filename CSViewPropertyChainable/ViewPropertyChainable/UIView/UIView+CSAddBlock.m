//
//  UIView+CSAddBlock.m
//  LoginDemo
//
//  Created by  kcs on 2017/10/30.
//  Copyright © 2017年  kcs. All rights reserved.
//

#import "UIView+CSAddBlock.h"
#import <objc/runtime.h>

static NSString *eventBlockID = @"eventBlockID";

static NSString *tapGestureBlockID = @"tapGestureBlockID";
static NSString *panGestureBlockID = @"panGestureBlockID";
static NSString *swipeGestureBlockID = @"swipeGestureBlockID";
static NSString *longPressGestureBlockID = @"longPressGestureBlockID";
static NSString *pinchGestureBlockID = @"pinchGestureBlockID";
static NSString *rotationGestureBlockID = @"rotationGestureBlockID";
static NSString *screenEdgePanGestureBlockID = @"screenEdgePanGestureBlockID";

typedef NS_ENUM(NSInteger, CSGestureType) {
    CSGestureTypeTap,
    CSGestureTypePan,
    CSGestureTypeSwipe,
    CSGestureTypeLongPress,
    CSGestureTypePinch,
    CSGestureTypeRotation,
    CSGestureTypeScreenEdgePan
};

@implementation UIView (CSAddBlock)

- (UIButton *)addTouchUpInsideEventBlock:(void(^)(UIButton *btn))eventBlock {
    if (![self isKindOfClass:[UIButton class]]) {
        return nil;
    }
    UIButton *button = (UIButton *)self;
    [self setAssociatedBlock:eventBlock blockID:eventBlockID];
    [button addTarget:self action:@selector(performEventBlcok:) forControlEvents:UIControlEventTouchUpInside];
    return button;
}

- (id)addTapGesture:(void(^)(CSGestureManager *pMag))setBlock callBlock:(void(^)(UITapGestureRecognizer *gesture))callBlock {
    [self addGestureWithType:CSGestureTypeTap setBlock:setBlock callBlock:callBlock];
    return self;
}

- (id)addPanGesture:(void(^)(UIPanGestureRecognizer *gesture))callBlock {
    [self addGestureWithType:CSGestureTypePan setBlock:nil callBlock:callBlock];
    return self;
}

- (id)addSwipeGesture:(void(^)(CSGestureManager *pMag))setBlock callBlock:(void(^)(UISwipeGestureRecognizer *gesture))callBlock {
    [self addGestureWithType:CSGestureTypeSwipe setBlock:setBlock callBlock:callBlock];
    return self;
}

- (id)addLongPressGesture:(void(^)(CSGestureManager *pMag))setBlock callBlock:(void(^)(UILongPressGestureRecognizer *gesture))callBlock {
    [self addGestureWithType:CSGestureTypeLongPress setBlock:setBlock callBlock:callBlock];
    return self;
}

- (id)addPinchGesture:(void(^)(CSGestureManager *pMag))setBlock callBlock:(void(^)(UIPinchGestureRecognizer *gesture))callBlock {
    [self addGestureWithType:CSGestureTypePinch setBlock:setBlock callBlock:callBlock];
    return self;
}

- (id)addRotationGesture:(void(^)(CSGestureManager *pMag))setBlock callBlock:(void(^)(UIRotationGestureRecognizer *gesture))callBlock {
    [self addGestureWithType:CSGestureTypeRotation setBlock:setBlock callBlock:callBlock];
    return self;
}

- (id)addScreenEdgePanGesture:(void(^)(CSGestureManager *pMag))setBlock callBlock:(void(^)(UIScreenEdgePanGestureRecognizer *gesture))callBlock {
    [self addGestureWithType:CSGestureTypeScreenEdgePan setBlock:setBlock callBlock:callBlock];
    return self;
}

- (void)addGestureWithType:(CSGestureType)type setBlock:(void(^)(CSGestureManager *pMag))setBlock callBlock:(void(^)(id gesture))callBlock {
    UIGestureRecognizer *gesture = [self addGestureWithType:type callBlock:callBlock];
    CSGestureManager *mag = [CSGestureManager new];
    mag.innerGesture = gesture;
    if (setBlock) {
        setBlock(mag);
    }
}

- (UIGestureRecognizer *)addGestureWithType:(CSGestureType)type callBlock:(void(^)(id gesture))callBlock {
    UIGestureRecognizer *gesture = nil;
    if (CSGestureTypeTap == type) {
        gesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(gestureEvent:)];
        [self setAssociatedBlock:callBlock blockID:tapGestureBlockID];
    } else if (CSGestureTypePan == type) {
        gesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(gestureEvent:)];
        [self setAssociatedBlock:callBlock blockID:panGestureBlockID];
    } else if (CSGestureTypeSwipe == type) {
        gesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(gestureEvent:)];
        [self setAssociatedBlock:callBlock blockID:swipeGestureBlockID];
    } else if (CSGestureTypeLongPress == type) {
        gesture = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(gestureEvent:)];
        [self setAssociatedBlock:callBlock blockID:longPressGestureBlockID];
    } else if (CSGestureTypePinch == type) {
        gesture = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(gestureEvent:)];
        [self setAssociatedBlock:callBlock blockID:pinchGestureBlockID];
    } else if (CSGestureTypeRotation == type) {
        gesture = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(gestureEvent:)];
        [self setAssociatedBlock:callBlock blockID:rotationGestureBlockID];
    } else if (CSGestureTypeScreenEdgePan == type) {
        gesture = [[UIScreenEdgePanGestureRecognizer alloc] initWithTarget:self action:@selector(gestureEvent:)];
        [self setAssociatedBlock:callBlock blockID:screenEdgePanGestureBlockID];
    }
    if (gesture) {
        [self addGestureRecognizer:gesture];
        self.userInteractionEnabled = YES;
    }
    return gesture;
}

- (void)gestureEvent:(UIGestureRecognizer *)gesture {
    void(^callBlock)(UIGestureRecognizer *gesture) = nil;
    if ([gesture isKindOfClass:[UITapGestureRecognizer class]]) {
         callBlock = [self getAssociatedBlockWithBlockID:tapGestureBlockID];
    } else if ([gesture isKindOfClass:[UIPanGestureRecognizer class]]) {
        callBlock = [self getAssociatedBlockWithBlockID:panGestureBlockID];
    } else if ([gesture isKindOfClass:[UISwipeGestureRecognizer class]]) {
        callBlock = [self getAssociatedBlockWithBlockID:swipeGestureBlockID];
    } else if ([gesture isKindOfClass:[UILongPressGestureRecognizer class]]) {
        callBlock = [self getAssociatedBlockWithBlockID:longPressGestureBlockID];
    } else if ([gesture isKindOfClass:[UIPinchGestureRecognizer class]]) {
        callBlock = [self getAssociatedBlockWithBlockID:pinchGestureBlockID];
    } else if ([gesture isKindOfClass:[UIRotationGestureRecognizer class]]) {
        callBlock = [self getAssociatedBlockWithBlockID:rotationGestureBlockID];
    } else if ([gesture isKindOfClass:[UIScreenEdgePanGestureRecognizer class]]) {
        callBlock = [self getAssociatedBlockWithBlockID:screenEdgePanGestureBlockID];
    }
    if (callBlock) {
        callBlock(gesture);
    }
}

- (void)performEventBlcok:(UIButton *)sender {
    void(^eventBlock)(UIButton *btn) = [self getAssociatedBlockWithBlockID:eventBlockID];
    __weak UIButton *weakButton = (UIButton *)self;
    eventBlock(weakButton);
}

//添加关联的对象
- (void)setAssociatedBlock:(id)block blockID:(NSString *)blockID {
    objc_setAssociatedObject(self, CFBridgingRetain(blockID), block, OBJC_ASSOCIATION_COPY);
}

//获取关联的对象
- (id)getAssociatedBlockWithBlockID:(NSString *)blockID {
    return objc_getAssociatedObject(self, CFBridgingRetain(blockID));
}

//设置关联的对象为 nil
- (void)setAssociatedBlockNilWithBlockID:(NSString *)blockID {
    id block = [self getAssociatedBlockWithBlockID:blockID];
    block = nil;
}

- (void)dealloc {
    [self setAssociatedBlockNilWithBlockID:eventBlockID];
    [self setAssociatedBlockNilWithBlockID:tapGestureBlockID];
    [self setAssociatedBlockNilWithBlockID:panGestureBlockID];
    [self setAssociatedBlockNilWithBlockID:swipeGestureBlockID];
    [self setAssociatedBlockNilWithBlockID:longPressGestureBlockID];
    [self setAssociatedBlockNilWithBlockID:pinchGestureBlockID];
    [self setAssociatedBlockNilWithBlockID:rotationGestureBlockID];
    [self setAssociatedBlockNilWithBlockID:screenEdgePanGestureBlockID];
    objc_removeAssociatedObjects(self); //移除关联的对象
}

@end
