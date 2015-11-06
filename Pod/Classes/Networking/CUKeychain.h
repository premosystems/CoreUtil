//
//  CUKeychain.h
//  Pods
//
//  Created by Vincil Bishop on 10/7/15.
//
//

#import <Foundation/Foundation.h>

@interface CUKeychain : NSObject

+ (void) setBearerToken:(NSDictionary*)value;
+ (NSDictionary*) bearerToken;
+ (void) setAuthToken:(NSString*)value;
+ (NSString*) authToken;
+ (void) setDefaultUsername:(NSString*)value;
+ (NSString*) defaultUsername;
+ (void) setDefaultPassword:(NSString*)value;
+ (NSString*) defaultPassword;
+ (void) setCurrentUserId:(id)value;
+ (id) currentUserId;

+ (BOOL) hasDefaultCredentials;
+ (void) clearDefaults;


@end
