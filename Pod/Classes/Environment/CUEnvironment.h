//
//  CUEnvironment.h
//  Pods
//
//  Created by Vincil Bishop on 7/21/15.
//
//

#ifndef Pods_CUEnvironment_h
#define Pods_CUEnvironment_h

#import "NSBundle+CUVersionAdditions.h"

// BEGIN CONFIG CONVENIENCE DEFINES

// DEBUG
#if  defined(DEBUG)

#define kCU_DEBUG YES

#else

#define kCU_DEBUG NO

#endif

// TEST
#if  defined(TEST)

#define kCU_TEST YES

#else

#define kCU_TEST NO

#endif

// QA
#if  defined(QA)

#define kCU_QA YES

#else

#define kCU_QA NO

#endif

// STAGE
#if  defined(STAGE)

#define kCU_STAGE YES

#else

#define kCU_STAGE NO

#endif

// UAT
#if  defined(UAT)

#define kCU_UAT YES

#else

#define kCU_UAT NO

#endif

// PRODUCTION
#if  defined(PRODUCTION)

#define kCU_PRODUCTION YES

#else

#define kCU_PRODUCTION NO

#endif
#endif



