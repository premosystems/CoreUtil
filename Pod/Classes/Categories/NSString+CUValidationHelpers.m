//
//  NSString+CUValidationHelpers.m
//  Pods
//
//  Created by Vincil Bishop on 3/18/16.
//
//

#import "NSString+CUValidationHelpers.h"

@implementation NSString (CUValidationHelpers)

- (BOOL) CU_isAllDigits
{
    NSCharacterSet* nonNumbers = [[NSCharacterSet decimalDigitCharacterSet] invertedSet];
    NSRange r = [self rangeOfCharacterFromSet: nonNumbers];
    return r.location == NSNotFound;
}

@end
