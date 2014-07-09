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
    printf("-[RootView layoutSubviews]\n");
    [super layoutSubviews];
}

- (void)setBounds:(CGRect)bounds
{
    BOOL changes = CGRectEqualToRect(bounds, self.bounds);
    printf("-[RootView setBounds:] (%s)\n", changes ? "CHANGED" : "NO CHANGES");
    [super setBounds:bounds];
}

- (void)setFrame:(CGRect)frame
{
    BOOL changes = CGRectEqualToRect(frame, self.frame);
    printf("-[RootView setFrame:] (%s)\n", changes ? "CHANGED" : "NO CHANGES");
    [super setFrame:frame];
}

- (void)setCenter:(CGPoint)center
{
    BOOL changes = CGPointEqualToPoint(center, self.center);
    printf("-[RootView setCenter:] (%s)\n", changes ? "CHANGED" : "NO CHANGES");
    [super setCenter:center];
}

- (void)setTransform:(CGAffineTransform)transform
{
    BOOL changes = CGAffineTransformEqualToTransform(transform, self.transform);
    printf("-[RootView setTransform:] (%s)\n", changes ? "CHANGED" : "NO CHANGES");
    [super setTransform:transform];
}

@end
