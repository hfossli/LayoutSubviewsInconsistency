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
    printf("-[RedView layoutSubviews]\n");
    [super layoutSubviews];
}

- (void)setBounds:(CGRect)bounds
{
    BOOL changes = !CGRectEqualToRect(bounds, self.bounds);
    printf("-[RedView setBounds:] (%s)\n", changes ? "CHANGED" : "NO CHANGES");
    [super setBounds:bounds];
}

- (void)setFrame:(CGRect)frame
{
    BOOL changes = !CGRectEqualToRect(frame, self.frame);
    printf("-[RedView setFrame:] (%s)\n", changes ? "CHANGED" : "NO CHANGES");
    [super setFrame:frame];
}

- (void)setCenter:(CGPoint)center
{
    BOOL changes = !CGPointEqualToPoint(center, self.center);
    printf("-[RedView setCenter:] (%s)\n", changes ? "CHANGED" : "NO CHANGES");
    [super setCenter:center];
}

- (void)setTransform:(CGAffineTransform)transform
{
    BOOL changes = !CGAffineTransformEqualToTransform(transform, self.transform);
    printf("-[RedView setTransform:] (%s)\n", changes ? "CHANGED" : "NO CHANGES");
    [super setTransform:transform];
}

@end
