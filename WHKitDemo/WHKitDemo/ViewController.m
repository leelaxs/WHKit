//
//  ViewController.m
//  WHKitDemo
//
//  Created by wu, hao on 2020/8/21.
//  Copyright © 2020 wuhao. All rights reserved.
//

#import "ViewController.h"
#import "WHKit.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // 本月的第一天距离现在多久
    NSLog(@"%@",[[NSDate begindayOfMonth:[NSDate new]] timeInfo]);
    [UIApplication.sharedApplication.delegate respondsToSelector:@selector(setWindow:)];
    NSLog(@"%@====%@",@(kTopHeight),@([UIApplication.sharedApplication.delegate respondsToSelector:@selector(setWindow:)]));
    UIInterfaceOrientation orientation = wh_currentWindow().windowScene.interfaceOrientation;
    if (orientation == UIInterfaceOrientationPortrait) {
        NSLog(@"Portrait==%@",[NSValue valueWithUIEdgeInsets:wh_currentWindow().safeAreaInsets]);
    }else if(orientation == UIInterfaceOrientationPortraitUpsideDown){
        NSLog(@"UpsideDown==%@",[NSValue valueWithUIEdgeInsets:wh_currentWindow().safeAreaInsets]);
    }else if(orientation == UIInterfaceOrientationLandscapeLeft){
        NSLog(@"LandscapeLeft==%@",[NSValue valueWithUIEdgeInsets:wh_currentWindow().safeAreaInsets]);
    }else if(orientation == UIInterfaceOrientationLandscapeRight){
        NSLog(@"LandscapeRight==%@",[NSValue valueWithUIEdgeInsets:wh_currentWindow().safeAreaInsets]);
    }
    
    // 定时器
//    __block NSInteger test = 1;
//    NSTimer *timer = [NSTimer wh_scheduledTimerWithTimeInterval:1 repeats:YES callback:^(NSTimer *timer) {
//        NSLog(@"%ld",(test += 1));
//    }];
//    
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [timer pauseTimer]; // 暂停
//        [timer resumeTimerAfterTimeInterval:5]; // 5秒后重新开启
//    });
}


- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id <UIViewControllerTransitionCoordinator>)coordinator
{
    [coordinator animateAlongsideTransition:^(id<UIViewControllerTransitionCoordinatorContext> context){
//        NSLog(@"转屏前调入");
    } completion:^(id<UIViewControllerTransitionCoordinatorContext> context){
        UIInterfaceOrientation orientation = wh_currentWindow().windowScene.interfaceOrientation;
        if (orientation == UIInterfaceOrientationPortrait) {
            NSLog(@"Portrait==%@",[NSValue valueWithUIEdgeInsets:wh_currentWindow().safeAreaInsets]);
        }else if(orientation == UIInterfaceOrientationPortraitUpsideDown){
            NSLog(@"UpsideDown==%@",[NSValue valueWithUIEdgeInsets:wh_currentWindow().safeAreaInsets]);
        }else if(orientation == UIInterfaceOrientationLandscapeLeft){
            NSLog(@"LandscapeLeft==%@",[NSValue valueWithUIEdgeInsets:wh_currentWindow().safeAreaInsets]);
        }else if(orientation == UIInterfaceOrientationLandscapeRight){
            NSLog(@"LandscapeRight==%@",[NSValue valueWithUIEdgeInsets:wh_currentWindow().safeAreaInsets]);
        }
    }];
    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    
    
}

@end
