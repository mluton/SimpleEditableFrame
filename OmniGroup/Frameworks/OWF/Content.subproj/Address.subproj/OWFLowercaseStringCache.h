// Copyright 1998-2005, 2010, 2012 Omni Development, Inc.  All rights reserved.
//
// This software may only be used and reproduced according to the
// terms in the file OmniSourceLicense.html, which should be
// distributed with this project and can also be found at
// <http://www.omnigroup.com/developer/sourcecode/sourcelicense/>.
//
// $Id$

#import <OmniFoundation/OFObject.h>

#import <CoreFoundation/CFSet.h>
#import <OmniBase/assertions.h>

@class NSLock;

typedef struct _OWFLowercaseStringCache {
    // This pointer should never be touched outside of the inlines below since it may change at any time (although the old value will be valid for a while).
    __strong CFMutableSetRef set;
    
    NSLock *lock;
} OWFLowercaseStringCache;


extern void OWFLowercaseStringCacheInit(OWFLowercaseStringCache *cache);
extern void OWFLowercaseStringCacheClear(OWFLowercaseStringCache *cache);
extern NSString *_OWFLowercaseStringCacheAdd(OWFLowercaseStringCache *_cache, NSString *_string);

// THIS LOOKUP IS THREAD SAFE, at least within reasonable limits.  If a new string is added, the internal dictionary is replaced atomically and the old dictionary is scheduled to be released some time in the future which is incredibly long compared to how long a lookup should take.  If two threads attempt to add strings at the same time, they will lock against each other, but lookups need never lock.
static inline NSString *OWFLowercaseStringCacheGet(OWFLowercaseStringCache *cache, NSString *string)
{
    NSString *lower;
    CFMutableSetRef set;
    
    // Null string probably isn't valid
    OBPRECONDITION(string);
    
    // But we shouldn't crash either.
    if (!string)
        return string;
        
    // Get the set -- it should be valid for 60 seconds from now
    set = cache->set;
    
    // Check the set
    if ((lower = (NSString *)CFSetGetValue(set, string)))
        return lower;
        
    return _OWFLowercaseStringCacheAdd(cache, string);
}


