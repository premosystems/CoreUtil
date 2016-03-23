//
//  NSString+CUJSONHelpers.h
//  Pods
//
//  Created by Vincil Bishop on 3/23/16.
//
//

#import <Foundation/Foundation.h>

@interface NSString (CUJSONHelpers)

- (id) CU_JSONObject;

- (NSDictionary*) CU_JSONDictionary;

- (NSArray*) CU_JSONArray;

@end
