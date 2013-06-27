// Copyright 1997-2005, 2007-2008, 2010-2012 Omni Development, Inc. All rights reserved.
//
// This software may only be used and reproduced according to the
// terms in the file OmniSourceLicense.html, which should be
// distributed with this project and can also be found at
// <http://www.omnigroup.com/developer/sourcecode/sourcelicense/>.
//
// $Id$

#import <AppKit/NSSplitView.h>

@interface NSSplitView (OAExtensions)
- (CGFloat)positionOfDividerAtIndex:(NSInteger)dividerIndex;

// positionOfDividerAtIndex: is better API.  But not deprecating this since it supports old file formats (OmniPlan-1.x)
- (CGFloat)fraction;

- (void)animateSubviewResize:(NSView *)resizingSubview startValue:(CGFloat)startValue endValue:(CGFloat)endValue;

@end