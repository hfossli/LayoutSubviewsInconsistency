//
// Created by Agens AS for LayoutSubviewsExample on 08.07.14.
//

#import "RedLayer.h"

@interface RedLayer ()

@end

@implementation RedLayer

- (void)layoutSublayers
{
    [super layoutSublayers];

    printf("-[RedLayer layoutSublayers]\n");
}

@end
