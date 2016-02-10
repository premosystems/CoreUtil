//
//  UIView+CUHelpers.m
//  Pods
//
//  Created by Vincil Bishop on 2/9/16.
//
//

#import "UIView+CUHelpers.h"

@implementation UIView (CUHelpers)

- (void) CU_removeAllSubviews
{
    [self.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj removeFromSuperview];
    }];
}

@end
