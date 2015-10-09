//
//  CUKeychain.m
//  Pods
//
//  Created by Vincil Bishop on 10/7/15.
//
//

#import "CUKeychain.h"
#import "FXKeychain.h"

#define kCU_AuthTokenKey @"kCU_AuthTokenKey"
#define kCU_DefaultUsernameKey @"kCU_DefaultUsernameKey"
#define kCU_DefaultPasswordKey @"kCU_DefaultPasswordKey"
#define kCU_CurrentUserIdKey @"kCU_CurrentUserIdKey"

@implementation CUKeychain

+ (void) setAuthToken:(NSString*)value
{
	if (value) {
		[[FXKeychain defaultKeychain] setObject:value forKey:kCU_AuthTokenKey];
	}  else {
		[[FXKeychain defaultKeychain] removeObjectForKey:kCU_AuthTokenKey];
	}
}

+ (NSString*) authToken
{
	return [[FXKeychain defaultKeychain] objectForKey:kCU_AuthTokenKey];
}

+ (void) setDefaultUsername:(NSString*)value
{
	if (value) {
		[[FXKeychain defaultKeychain] setObject:value forKey:kCU_DefaultUsernameKey];
	}  else {
		[[FXKeychain defaultKeychain] removeObjectForKey:kCU_DefaultUsernameKey];
	}
}

+ (NSString*) defaultUsername
{
	return [[FXKeychain defaultKeychain] objectForKey:kCU_DefaultUsernameKey];
}

+ (void) setDefaultPassword:(NSString*)value
{
	if (value) {
		[[FXKeychain defaultKeychain] setObject:value forKey:kCU_DefaultPasswordKey];
	} else {
		[[FXKeychain defaultKeychain] removeObjectForKey:kCU_DefaultPasswordKey];
	}
}

+ (NSString*) defaultPassword
{
	return [[FXKeychain defaultKeychain] objectForKey:kCU_DefaultPasswordKey];
}

+ (void) setCurrentUserId:(id)value
{
	if (value) {
		[[FXKeychain defaultKeychain] setObject:value forKey:kCU_CurrentUserIdKey];
	}  else {
		[[FXKeychain defaultKeychain] removeObjectForKey:kCU_CurrentUserIdKey];
	}
}

+ (id) currentUserId
{
	return [[FXKeychain defaultKeychain] objectForKey:kCU_CurrentUserIdKey];
}


+ (BOOL) hasDefaultCredentials
{
	return [self defaultUsername] && [self defaultPassword];
}

+ (void) clearDefaults
{
	[self setAuthToken:nil];
	[self setCurrentUserId:nil];
	[self setDefaultPassword:nil];
}


@end
