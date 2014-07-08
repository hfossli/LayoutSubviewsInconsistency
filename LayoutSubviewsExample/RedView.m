//
// Created by Agens AS for LayoutSubviewsExample on 08.07.14.
//

#import "RedView.h"
#import "RedLayer.h"

@interface RedView ()

@end

@implementation RedView

+ (Class)layerClass
{
    return [RedLayer class];
}

- (void)layoutSubviews
{
    [super layoutSubviews];

    printf("-[RedView layoutSubviews]\n");
}

@end
