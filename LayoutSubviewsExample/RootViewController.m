//
// Created by Agens AS for LayoutSubviewsExample on 08.07.14.
//

#import "RootViewController.h"
#import "RootView.h"
#import "RedView.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)loadView
{
    self.view = [[RootView alloc] init];

    self.redView = [[RedView alloc] initWithFrame:CGRectMake(200, 200, 100, 100)];
    self.redView.backgroundColor = [UIColor redColor];

    [self.view addSubview:self.redView];
}

- (void)viewDidLayoutSubviews
{
    printf("-[RootViewController viewDidLayoutSubviews]\n");
    [super viewDidLayoutSubviews];
}

@end