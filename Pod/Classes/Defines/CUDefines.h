//
//  CUDefines.h
//  Pods
//
//  Created by Vincil Bishop on 7/21/15.
//
//

#ifndef Pods_CUDefines_h
#define Pods_CUDefines_h

typedef void (^CUBlock)(id result);
typedef void (^CUCompletionBlock)(id sender, id result);
typedef void (^CUErrorBlock)(id sender, BOOL success, NSError *error, id result);

#endif
