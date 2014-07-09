//
//  XYZAppDelegate.m
//  LayoutSubviewsExample
//
//  Created by Håvard Fossli on 08.07.14.
//  Copyright (c) 2014 Agens AS. All rights reserved.
//

#import "XYZAppDelegate.h"
#import "RootViewController.h"

@interface XYZAppDelegate ()

@end

@implementation XYZAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{

    printf("\n--------------------------\n");
    printf("Initial application launch\n");
    printf("Expects: All views/layers to layout subviews/sublayers\n");

    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];

    RootViewController *controller = [RootViewController new];
    self.window.rootViewController = controller;

    NSTimeInterval timing = 0.4;
    int index = 0;

    [self delayWithInterval:timing * ++index block:^{
        printf("\n----------------------------------------------------\n");
        printf("Changing 'frame' in rootViewController.view.redView:\n");
        controller.redView.frame = CGRectMake(20, 20, 200, 200);
        printf("\nExpects layout of subviews in:\n");
        printf(" - RedView\n");
        printf(" - RedLayer\n");
        printf("\n");
    }];

    [self delayWithInterval:timing * ++index block:^{
        printf("\n--------------------------------------------------------\n");
        printf("Changing 'transform' in rootViewController.view.redView:\n");
        controller.redView.transform = CGAffineTransformMakeRotation(0.3);
        printf("\nExpects NO update of layouts\n");
        printf("\n");
    }];

    [self delayWithInterval:timing * ++index block:^{
        printf("\n--------------------------------------------------------------\n");
        printf("Changing 'layer.transform' in rootViewController.view.redView:\n");
        controller.redView.layer.transform = CATransform3DMakeRotation(0.5, 0.0, 0.0, 1.0);
        printf("\nExpects NO update of layouts\n");
        printf("\n");
    }];

    [self delayWithInterval:timing * ++index block:^{
        printf("\n-----------------------------------------------------\n");
        printf("Changing 'center' in rootViewController.view.redView:\n");
        controller.redView.center = CGPointMake(200, 200);
        printf("\nExpects NO update of layouts\n");
        printf("\n");
    }];

    [self delayWithInterval:timing * ++index block:^{
        printf("\n-------------------------------------------------------------\n");
        printf("Changing 'layer.position' in rootViewController.view.redView:\n");
        controller.redView.layer.position = CGPointMake(205, 205);
        printf("\nExpects NO update of layouts\n");
        printf("\n");
    }];

    [self delayWithInterval:timing * ++index block:^{
        printf("\n----------------------------------------------------------------\n");
        printf("Changing 'layer.anchorPoint' in rootViewController.view.redView:\n");
        controller.redView.layer.anchorPoint = CGPointMake(0.6, 0.4);
        printf("\nExpects NO update of layouts\n");
        printf("\n");
    }];

    [self delayWithInterval:timing * ++index block:^{
        printf("\n-----------------------------------------------------\n");
        printf("Changing 'bounds' in rootViewController.view.redView:\n");
        controller.redView.bounds = CGRectMake(0, 0, 150, 150);
        printf("\nExpects layout of subviews in:\n");
        printf(" - RedView\n");
        printf(" - RedLayer\n");
        printf("\n");
    }];

    return YES;
}

- (void)delayWithInterval:(NSTimeInterval)interval block:(dispatch_block_t)block
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(interval * NSEC_PER_SEC)), dispatch_get_main_queue(), block);
}

@end
