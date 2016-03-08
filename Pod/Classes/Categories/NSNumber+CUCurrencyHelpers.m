//
//  NSNumber+CUCurrencyHelpers.m
//  Pods
//
//  Created by Vincil Bishop on 3/8/16.
//
//

#import "NSNumber+CUCurrencyHelpers.h"

@implementation NSNumber (CUCurrencyHelpers)

- (NSString*) CU_currencyForDisplay
{
    return [NSString stringWithFormat:@"$%.2f",self.floatValue];
}

@end
