//
//  NSDecimalNumber+CUCurrencyHelpers.m
//  Pods
//
//  Created by Vincil Bishop on 3/8/16.
//
//

#import "NSDecimalNumber+CUCurrencyHelpers.h"

@implementation NSDecimalNumber (CUCurrencyHelpers)

- (NSString*) CU_currencyForDisplay
{
    return [NSString stringWithFormat:@"$%.2f",self.floatValue];
}

@end
