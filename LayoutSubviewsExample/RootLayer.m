//
// Created by Agens AS for LayoutSubviewsExample on 08.07.14.
//

#import "RootLayer.h"

@interface RootLayer ()

@end

@implementation RootLayer

- (void)layoutSublayers
{
    printf("-[RootLayer layoutSublayers]\n");
    [super layoutSublayers];
}

- (void)setBounds:(CGRect)bounds
{
    BOOL changes = CGRectEqualToRect(bounds, self.bounds);
    printf("-[RootLayer setBounds:] (%s)\n", changes ? "CHANGED" : "NO CHANGES");
    [super setBounds:bounds];
}

- (void)setFrame:(CGRect)frame
{
    BOOL changes = CGRectEqualToRect(frame, self.frame);
    printf("-[RootLayer setFrame:] (%s)\n", changes ? "CHANGED" : "NO CHANGES");
    [super setFrame:frame];
}

- (void)setPosition:(CGPoint)position
{
    BOOL changes = CGPointEqualToPoint(position, self.position);
    printf("-[RootLayer setPosition:] (%s)\n", changes ? "CHANGED" : "NO CHANGES");
    [super setPosition:position];
}

- (void)setTransform:(CATransform3D)transform
{
    BOOL changes = CATransform3DEqualToTransform(transform, self.transform);
    printf("-[RootLayer setTransform:] (%s)\n", changes ? "CHANGED" : "NO CHANGES");
    [super setTransform:transform];
}

- (void)setAnchorPoint:(CGPoint)anchorPoint
{
    BOOL changes = CGPointEqualToPoint(anchorPoint, self.anchorPoint);
    printf("-[RootLayer setAnchorPoint:] (%s)\n", changes ? "CHANGED" : "NO CHANGES");
    [super setAnchorPoint:anchorPoint];
}

@end
