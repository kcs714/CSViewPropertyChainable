//
//  ViewController.m
//  CSViewPropertyChainable
//
//  Created by  kcs on 2017/11/17.
//  Copyright © 2017年 KCS. All rights reserved.
//

#import "ViewController.h"
#import "CSCreation.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //创建 view
    UIView *view = [UIView create:^(CSPropertyManager *pMag) {
        pMag.pSuperView(self.view).pFrame(60,30,255,150)
        .pBgColor([UIColor colorWithRed:0.8 green:0.3 blue:0.6 alpha:0.5]);
    }];
    
    //创建 button，并添加点击事件
    [[UIButton create:^(CSPropertyManager *pMag) {
        pMag.pSuperView(self.view).pFrame(60,210,255,60).pNormalTitle(@"Button").pTag(6666)
        .pBgColor([UIColor colorWithRed:0.2 green:0.6 blue:0.6 alpha:0.5])
        .pBorderColor([UIColor redColor]).pBorderWidth(2);
    }] addTouchUpInsideEventBlock:^(UIButton *btn) {
        NSLog(@"执行按钮点击事件---tag = %ld", btn.tag);
    }];
    
    //创建 view，并添加手势
    UIImageView *imgView = [[UIImageView create:^(CSPropertyManager *pMag) {
        pMag.pSuperView(self.view).pFrame(60,300,255,200)
        .pBgColor([UIColor colorWithRed:0.3 green:0.6 blue:0.9 alpha:0.5]);
    }] addTapGesture:^(CSGestureManager *pMag) {
        pMag.pNumberOfTaps(2);
    } callBlock:^(UITapGestureRecognizer *gesture) {
        NSLog(@"图片框tap手势事件 numberOfTaps = %ld", gesture.numberOfTapsRequired);
    }];
    
    //创建多个 view，它们具有共同的属性
    void(^comPropBlock)(CSPropertyManager *pMag) = ^(CSPropertyManager *pMag) {
        pMag.pBgColor([UIColor colorWithRed:0.6 green:0.3 blue:0.1 alpha:0.5]);
    };
    [UILabel create:^(CSPropertyManager *pMag) {
        comPropBlock(pMag);
        pMag.pSuperView(view).pFrame(0,10,255,40).pLabText(@"这是一个空view").pLabAlignment(NSTextAlignmentCenter);
    }];
    [UILabel create:^(CSPropertyManager *pMag) {
        comPropBlock(pMag);
        pMag.pSuperView(imgView).pFrame(0,10,255,40).pLabText(@"这是一个图片框");
    }];
    
}

@end
