//
//  CSPropertyManager+Window.m
//  Schooldays
//
//  Created by  kcs on 2017/11/16.
//  Copyright © 2017年  kcs. All rights reserved.
//

#import "CSPropertyManager+Window.h"

@implementation CSPropertyManager (Window)

- (CSPropertyManager*(^)(UIScreen *screen))pScreen {
    return ^CSPropertyManager *(UIScreen *screen){
        ((UIWindow *)self.innerView).screen = screen;
        return self;
    };
}

- (CSPropertyManager*(^)(UIWindowLevel windowLevel))pWindowLevel {
    return ^CSPropertyManager *(UIWindowLevel windowLevel){
        ((UIWindow *)self.innerView).windowLevel = windowLevel;
        return self;
    };
}

- (CSPropertyManager*(^)(UIViewController *rootViewController))pRootViewController {
    return ^CSPropertyManager *(UIViewController *rootViewController){
        ((UIWindow *)self.innerView).rootViewController = rootViewController;
        return self;
    };
}

@end
