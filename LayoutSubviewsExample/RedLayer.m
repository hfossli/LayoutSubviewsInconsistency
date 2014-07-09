//
// Created by Agens AS for LayoutSubviewsExample on 08.07.14.
//

#import "RedLayer.h"

@interface RedLayer ()

@end

@implementation RedLayer

- (void)layoutSublayers
{
    printf("-[RedLayer layoutSublayers]\n");
    [super layoutSublayers];
}

- (void)setBounds:(CGRect)bounds
{
    BOOL changes = !CGRectEqualToRect(bounds, self.bounds);
    printf("-[RedLayer setBounds:] (%s)\n", changes ? "CHANGED" : "NO CHANGES");
    [super setBounds:bounds];
}

- (void)setFrame:(CGRect)frame
{
    BOOL changes = !CGRectEqualToRect(frame, self.frame);
    printf("-[RedLayer setFrame:] (%s)\n", changes ? "CHANGED" : "NO CHANGES");
    [super setFrame:frame];
}

- (void)setPosition:(CGPoint)position
{
    BOOL changes = !CGPointEqualToPoint(position, self.position);
    printf("-[RedLayer setPosition:] (%s)\n", changes ? "CHANGED" : "NO CHANGES");
    [super setPosition:position];
}

- (void)setTransform:(CATransform3D)transform
{
    BOOL changes = !CATransform3DEqualToTransform(transform, self.transform);
    printf("-[RedLayer setTransform:] (%s)\n", changes ? "CHANGED" : "NO CHANGES");
    [super setTransform:transform];
}

- (void)setAnchorPoint:(CGPoint)anchorPoint
{
    BOOL changes = !CGPointEqualToPoint(anchorPoint, self.anchorPoint);
    printf("-[RedLayer setAnchorPoint:] (%s)\n", changes ? "CHANGED" : "NO CHANGES");
    [super setAnchorPoint:anchorPoint];
}

@end
