//
//  NSBundle+CUVersionAdditions.m
//  Pods
//
//  Created by Vincil Bishop on 8/14/15.
//
//

#import "NSBundle+CUVersionAdditions.h"
#import "NSString+ZENVersions.h"

@implementation NSBundle (CUVersionAdditions)

- (NSNumber*) CU_majorVersion
{
    NSNumber *number = nil;
    
    if ([self CU_versionParts].count > 0) {
        number = [NSNumber numberWithUnsignedInteger:[[[self CU_versionParts] objectAtIndex:0] unsignedIntegerValue]];
    }
    
    return number;
}

- (NSNumber*) CU_minorVersion
{
    NSNumber *number = nil;
    
    if ([self CU_versionParts].count > 1) {
        number = [NSNumber numberWithUnsignedInteger:[[[self CU_versionParts] objectAtIndex:1] unsignedIntegerValue]];
    }
    
    return number;
}

- (NSNumber*) CU_patchVersion
{
    NSNumber *number = nil;
    
    if ([self CU_versionParts].count > 2) {
        number = [NSNumber numberWithUnsignedInteger:[[[self CU_versionParts] objectAtIndex:2] unsignedIntegerValue]];
    }
    
    return number;
}

- (NSNumber*) CU_buildVersion
{
    NSNumber *number = nil;
    
    if ([self CU_versionParts].count > 3) {
        number = [NSNumber numberWithUnsignedInteger:[[[self CU_versionParts] objectAtIndex:3] unsignedIntegerValue]];
    }
    
    return number;
}

- (NSArray*) CU_versionParts
{
    NSArray *versionParts = [[self CU_fourPartVersionString] componentsSeparatedByString:@"."];
    return versionParts;
}

- (NSString*) CU_fourPartVersionString
{
    return [NSString stringWithFormat:@"%@.%@",[self CU_marketingVersionString],[self CU_buildVersionString]];
}

- (NSString*) CU_threePartVersionString
{
    return [self CU_buildVersionString];
}


- (NSString*) CU_marketingVersionString
{
    NSString *versionString = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
    return versionString;
    
}

- (NSString*) CU_buildVersionString
{
    NSString *buildString = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"];
    return buildString;
}

- (NSString*) CU_previousAppVersion
{
    [[NSUserDefaults standardUserDefaults] synchronize];
    return [[NSUserDefaults standardUserDefaults] stringForKey:kCU_PREVIOUS_APP_VERSION_KEY];
}

- (void) CU_setPreviousAppVersion:(NSString*)appVersion
{
    [[NSUserDefaults standardUserDefaults] setValue:appVersion forKey:kCU_PREVIOUS_APP_VERSION_KEY];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (void) CU_setCurrentAppVersion
{
    [[NSUserDefaults standardUserDefaults] setValue:[[NSBundle mainBundle] CU_fourPartVersionString] forKey:kCU_CURRENT_APP_VERSION_KEY];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (NSString*) CU_currentAppVersion
{
    [[NSUserDefaults standardUserDefaults] synchronize];
    NSString *currentVersion =  [[NSUserDefaults standardUserDefaults] stringForKey:kCU_CURRENT_APP_VERSION_KEY];
    
    if (!currentVersion) {
        [self CU_setCurrentAppVersion];
        return [[NSBundle mainBundle] CU_fourPartVersionString];
    } else {
        return currentVersion;
    }
}


- (void) CU_rotateAppVersionIfNew
{
    if ([self CU_isCurrentVersionNewVersion]) {
        [self CU_setCurrentAppVersionToPreviousAppVersion];
    }
}

- (void) CU_setCurrentAppVersionToPreviousAppVersion
{
    [self CU_setPreviousAppVersion:[self CU_currentAppVersion]];
}


- (BOOL) CU_isFreshInstall
{
    return [self CU_previousAppVersion] == nil;
}

- (BOOL) CU_isCurrentVersionNewVersion
{
    NSString *currentVersion = [self CU_currentAppVersion];
    NSString *previousVersion = [self CU_previousAppVersion];
    
    if (previousVersion) {
        return [previousVersion zen_olderThan:currentVersion];
    } else {
        return YES;
    }
    
}


@end
