//
// Created by Agens AS for LayoutSubviewsExample on 08.07.14.
//

#import "RootView.h"
#import "RootLayer.h"

@interface RootView ()

@end

@implementation RootView

+ (Class)layerClass
{
    return [RootLayer class];
}

- (void)layoutSubviews
{
    [super layoutSubviews];

    printf("-[RootLayer layoutSubviews]\n");
}

@end
