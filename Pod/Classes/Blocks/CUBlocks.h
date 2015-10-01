//
//  CUBlocks.h
//  Pods
//
//  Created by Vincil Bishop on 7/21/15.
//
//

#ifndef Pods_CUBlocks_h
#define Pods_CUBlocks_h


#endif

typedef void (^CUCompletionBlock)(id sender, BOOL success, NSError *error, id result);

typedef void (^CUStateChangeBlock)(id sender, id oldState, id newState);