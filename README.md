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
+ layer.anchorPointZ
+ layer.position
+ layer.positionZ
+ alpha


I find it very confusing that transform is triggering layout and that position and anchorPoint does not.  

**Can you please explain why I am seeing this behavior? I can not find anything about this in the docs nor the header files. The problem is significant when using UIDynamics or similar.**


------


Full log
```

--------------------------
Initial application launch
Expects: All views/layers to layout subviews/sublayers
-[RootLayer setBounds:] (NO CHANGES)
-[RootView setFrame:] (NO CHANGES)
-[RootLayer setFrame:] (NO CHANGES)
-[RootLayer setPosition:] (NO CHANGES)
-[RootLayer setBounds:] (NO CHANGES)
-[RedLayer setBounds:] (CHANGED)
-[RedView setFrame:] (CHANGED)
-[RedLayer setFrame:] (CHANGED)
-[RedLayer setPosition:] (CHANGED)
-[RedLayer setBounds:] (NO CHANGES)
-[RootView setFrame:] (CHANGED)
-[RootLayer setFrame:] (CHANGED)
-[RootLayer setPosition:] (CHANGED)
-[RootLayer setBounds:] (CHANGED)
-[RootView setTransform:] (NO CHANGES)
-[RootLayer setTransform:] (NO CHANGES)
-[RootView setCenter:] (NO CHANGES)
-[RootLayer setPosition:] (NO CHANGES)
-[RootView setBounds:] (NO CHANGES)
-[RootLayer setBounds:] (NO CHANGES)
-[RootLayer layoutSublayers]
-[RootView layoutSubviews]
-[RootViewController viewDidLayoutSubviews]
-[RedLayer layoutSublayers]
-[RedView layoutSubviews]
-[RootView setTransform:] (NO CHANGES)
-[RootLayer setTransform:] (NO CHANGES)
-[RootView setCenter:] (NO CHANGES)
-[RootLayer setPosition:] (NO CHANGES)
-[RootView setBounds:] (NO CHANGES)
-[RootLayer setBounds:] (NO CHANGES)

----------------------------------------------------
Changing 'frame' in rootViewController.view.redView:
-[RedView setFrame:] (CHANGED)
-[RedLayer setFrame:] (CHANGED)
-[RedLayer setPosition:] (CHANGED)
-[RedLayer setBounds:] (CHANGED)

Expects layout of subviews in:
 - RedView
 - RedLayer

-[RootLayer layoutSublayers]
-[RootView layoutSubviews]
-[RootViewController viewDidLayoutSubviews]
-[RedLayer layoutSublayers]
-[RedView layoutSubviews]

--------------------------------------------------------
Changing 'transform' in rootViewController.view.redView:
-[RedView setTransform:] (CHANGED)
-[RedLayer setTransform:] (CHANGED)

Expects NO update of layouts

-[RootLayer layoutSublayers]
-[RootView layoutSubviews]
-[RootViewController viewDidLayoutSubviews]

--------------------------------------------------------------
Changing 'layer.transform' in rootViewController.view.redView:
-[RedLayer setTransform:] (CHANGED)

Expects NO update of layouts

-[RootLayer layoutSublayers]
-[RootView layoutSubviews]
-[RootViewController viewDidLayoutSubviews]

-----------------------------------------------------
Changing 'center' in rootViewController.view.redView:
-[RedView setCenter:] (CHANGED)
-[RedLayer setPosition:] (CHANGED)

Expects NO update of layouts


-------------------------------------------------------------
Changing 'layer.position' in rootViewController.view.redView:
-[RedLayer setPosition:] (CHANGED)

Expects NO update of layouts


----------------------------------------------------------------
Changing 'layer.anchorPoint' in rootViewController.view.redView:
-[RedLayer setAnchorPoint:] (CHANGED)

Expects NO update of layouts


----------------------------------------------------------------
Changing 'layer.anchorPointZ' in rootViewController.view.redView:

Expects NO update of layouts


----------------------------------------------------------------
Changing 'layer.position' in rootViewController.view.redView:
-[RedLayer setPosition:] (CHANGED)

Expects NO update of layouts


----------------------------------------------------------------
Changing 'layer.zPosition' in rootViewController.view.redView:

Expects NO update of layouts


-----------------------------------------------------
Changing 'bounds' in rootViewController.view.redView:
-[RedView setBounds:] (CHANGED)
-[RedLayer setBounds:] (CHANGED)

Expects layout of subviews in:
 - RedView
 - RedLayer

-[RootLayer layoutSublayers]
-[RootView layoutSubviews]
-[RootViewController viewDidLayoutSubviews]
-[RedLayer layoutSublayers]
-[RedView layoutSubviews]
```