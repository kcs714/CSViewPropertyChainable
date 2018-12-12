//
//  CSPropertyManager+Window.h
//  Schooldays
//
//  Created by  kcs on 2017/11/16.
//  Copyright © 2017年  kcs. All rights reserved.
//

#import "CSPropertyManager.h"

@interface CSPropertyManager (Window)

/*
 window.screen = screen
 */
- (CSPropertyManager*(^)(UIScreen *screen))pScreen;

/*
 window.windowLevel = windowLevel
 */
- (CSPropertyManager*(^)(UIWindowLevel windowLevel))pWindowLevel;

/*
 window.rootViewController = rootViewController
 */
- (CSPropertyManager*(^)(UIViewController *rootViewController))pRootViewController;

@end
