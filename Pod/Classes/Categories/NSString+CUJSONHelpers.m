//
//  NSString+CUJSONHelpers.m
//  Pods
//
//  Created by Vincil Bishop on 3/23/16.
//
//

#import "NSString+CUJSONHelpers.h"

@implementation NSString (CUJSONHelpers)

- (id) CU_JSONObject
{
    NSData *objectData = [self dataUsingEncoding:NSUTF8StringEncoding];
    id json = [NSJSONSerialization JSONObjectWithData:objectData
                                                         options:NSJSONReadingMutableContainers
                                                           error:nil];
    
    return json;
}


- (NSDictionary*) CU_JSONDictionary
{
    return (NSDictionary*)[self CU_JSONObject];
}


- (NSArray*) CU_JSONArray
{
    return (NSArray*)[self CU_JSONObject];
}

@end
