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
        printf("\n-------------------------------------------------\n");
        printf("Changing frame of rootViewController.view.redView\n");
        printf("Expects: Layout of subviews in\n");
        printf(" - RedView\n");
        printf(" - RedLayer\n");
        printf("\n");
        controller.redView.frame = CGRectMake(20, 20, 200, 200);
    }];

    [self delayWithInterval:timing * ++index block:^{
        printf("\n-----------------------------------------------------------\n");
        printf("Changing transform of rootViewController.view.redView\n");
        printf("Expects: No update of layouts\n");
        printf("\n");
        controller.redView.transform = CGAffineTransformMakeRotation(0.3);
    }];

    [self delayWithInterval:timing * ++index block:^{
        printf("\n-----------------------------------------------------------\n");
        printf("Changing layer.transform of rootViewController.view.redView\n");
        printf("Expects: No update of layouts\n");
        printf("\n");
        controller.redView.layer.transform = CATransform3DMakeRotation(0.5, 0.0, 0.0, 1.0);
    }];

    [self delayWithInterval:timing * ++index block:^{
        printf("\n--------------------------------------------------\n");
        printf("Changing center of rootViewController.view.redView\n");
        printf("Expects: No update of layouts\n");
        printf("\n");
        controller.redView.center = CGPointMake(200, 200);
    }];

    [self delayWithInterval:timing * ++index block:^{
        printf("\n----------------------------------------------------------\n");
        printf("Changing layer.position of rootViewController.view.redView\n");
        printf("Expects: No update of layouts\n");
        printf("\n");
        controller.redView.layer.position = CGPointMake(205, 205);
    }];

    [self delayWithInterval:timing * ++index block:^{
        printf("\n-------------------------------------------------------------\n");
        printf("Changing layer.anchorPoint of rootViewController.view.redView\n");
        printf("Expects: No update of layouts\n");
        printf("\n");
        controller.redView.layer.anchorPoint = CGPointMake(0.6, 0.4);
    }];

    [self delayWithInterval:timing * ++index block:^{
        printf("\n--------------------------------------------------\n");
        printf("Changing bounds of rootViewController.view.redView\n");
        printf("Expects: Layout of subviews in\n");
        printf(" - RedView\n");
        printf(" - RedLayer\n");
        printf("\n");
        controller.redView.bounds = CGRectMake(0, 0, 150, 150);
    }];

    return YES;
}

- (void)delayWithInterval:(NSTimeInterval)interval block:(dispatch_block_t)block
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(interval * NSEC_PER_SEC)), dispatch_get_main_queue(), block);
}

@end
