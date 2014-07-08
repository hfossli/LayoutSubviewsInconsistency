# LayoutSubviewsInconsistency

Logs to console inconsistencies of UIView regarding layoutSubviews.

## Notes

When changing some of the properties for UIView it triggers layoutSubviews in superview. I can not find any statements about this in the docs. 

These properties triggers layout in superview and self
+ frame
+ bounds

These properties triggers layout in superview only
+ transform
+ layer.transform

These properties triggers layout in self only
+ none

These properties does not trigger any layout
+ center
+ layer.anchorPoint
+ layer.position
+ alpha


I find it very confusing that transform is triggering layout and that position and anchorPoint does not.  

Can you please explain why I am seeing this behavior. I can not find anything about this in the docs nor the header files. The problem is significant when using UIDynamics or similar.