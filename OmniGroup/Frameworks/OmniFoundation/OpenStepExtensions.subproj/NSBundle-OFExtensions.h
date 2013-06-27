// Copyright 2005-2006, 2008, 2010, 2012 Omni Development, Inc. All rights reserved.
//
// This software may only be used and reproduced according to the
// terms in the file OmniSourceLicense.html, which should be
// distributed with this project and can also be found at
// <http://www.omnigroup.com/developer/sourcecode/sourcelicense/>.
//
// $Id$

#import <Foundation/NSBundle.h>

#import <OmniBase/assertions.h>
#import <OmniFoundation/NSString-OFExtensions.h>

#import <OmniBase/OBUtilities.h> // OMNI_BUNDLE has moved to OmniBase.

@interface NSBundle (OFExtensions)

- (NSDictionary *)codeSigningInfoDictionary:(NSError **)error;
    // Various pieces of information extraced from the code signature for this bundle.
    // See Security/SecCode.h for the dictionary keys

- (NSDictionary *)codeSigningEntitlements:(NSError **)error;
    // The code sign entitlements for this process

@end
