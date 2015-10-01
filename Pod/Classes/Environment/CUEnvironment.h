//
//  CUEnvironment.h
//  Pods
//
//  Created by Vincil Bishop on 7/21/15.
//
//

#ifndef Pods_CUEnvironment_h
#define Pods_CUEnvironment_h
#endif

#import "NSBundle+CUVersionAdditions.h"

// BEGIN CONFIG CONVENIENCE DEFINES
#if  defined(DEBUG)

#define kCU_DEBUG YES

#else

#define kCU_DEBUG NO

#endif

#if  defined(STAGE)

#define kCU_STAGE YES

#else

#define kCU_STAGE NO

#endif


#if  defined(PRODUCTION)

#define kCU_PRODUCTION YES

#else

#define kCU_PRODUCTION NO

#endif