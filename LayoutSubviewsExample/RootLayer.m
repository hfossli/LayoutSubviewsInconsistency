//
// Created by Agens AS for LayoutSubviewsExample on 08.07.14.
//

#import "RootLayer.h"

@interface RootLayer ()

@end

@implementation RootLayer

- (void)layoutSublayers
{
    [super layoutSublayers];

    printf("-[RootLayer layoutSublayers]\n");
}

@end
