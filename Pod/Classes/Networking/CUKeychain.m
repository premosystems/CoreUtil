//
//  CUKeychain.m
//  Pods
//
//  Created by Vincil Bishop on 10/7/15.
//
//

#import "CUKeychain.h"
#import "FXKeychain.h"

#define kCU_BearerTokenKey @"kCU_BearerTokenKey"
#define kCU_AuthTokenKey @"kCU_AuthTokenKey"
#define kCU_DefaultUsernameKey @"kCU_DefaultUsernameKey"
#define kCU_DefaultPasswordKey @"kCU_DefaultPasswordKey"
#define kCU_CurrentUserIdKey @"kCU_CurrentUserIdKey"
#define kCU_APNSTokenKey @"kCU_APNSTokenKey"

@implementation CUKeychain

+ (void) setBearerToken:(NSDictionary*)value
{
	if (value) {
		[[FXKeychain defaultKeychain] setObject:value forKey:kCU_BearerTokenKey];
	}  else {
		[[FXKeychain defaultKeychain] removeObjectForKey:kCU_BearerTokenKey];
	}
}

+ (NSDictionary*) bearerToken
{
	return [[FXKeychain defaultKeychain] objectForKey:kCU_BearerTokenKey];
}

+ (BOOL) isBearerTokenValid
{
	if ([self bearerToken]) {
		
		NSNumber *timestampNumber = [self bearerToken][@"expiry"];
		NSDate *expireDate = [NSDate dateWithTimeIntervalSince1970:timestampNumber.doubleValue];
		
		if ([expireDate timeIntervalSinceNow] > 0) {
			return YES;
		} else {
			return NO;
		}
		
	} else {
		return NO;
	}
}

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
		[[NSUserDefaults standardUserDefaults] setObject:value forKey:kCU_DefaultUsernameKey];
	}  else {
		[[NSUserDefaults standardUserDefaults] removeObjectForKey:kCU_DefaultUsernameKey];
	}
}

+ (NSString*) defaultUsername
{
	return [[NSUserDefaults standardUserDefaults] objectForKey:kCU_DefaultUsernameKey];
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
		[[NSUserDefaults standardUserDefaults] setObject:value forKey:kCU_CurrentUserIdKey];
	}  else {
		[[NSUserDefaults standardUserDefaults] removeObjectForKey:kCU_CurrentUserIdKey];
	}
}

+ (id) currentUserId
{
	id value = [[NSUserDefaults standardUserDefaults] objectForKey:kCU_CurrentUserIdKey];
	return value;
}

+ (void) setAPNSToken:(NSString*)value
{
	if (value) {
		[[NSUserDefaults standardUserDefaults] setObject:value forKey:kCU_APNSTokenKey];
	}  else {
		[[NSUserDefaults standardUserDefaults] removeObjectForKey:kCU_APNSTokenKey];
	}
}

+ (NSString*) APNSToken
{
	id value = [[NSUserDefaults standardUserDefaults] objectForKey:kCU_APNSTokenKey];
	return value;
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
