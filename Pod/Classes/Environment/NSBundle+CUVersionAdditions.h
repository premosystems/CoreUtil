//
//  NSBundle+CUVersionAdditions.h
//  Pods
//
//  Created by Vincil Bishop on 8/14/15.
//
//

#import <Foundation/Foundation.h>

#define kCU_PREVIOUS_APP_VERSION_KEY @"kCU_PREVIOUS_APP_VERSION_KEY"
#define kCU_CURRENT_APP_VERSION_KEY @"kCU_CURRENT_APP_VERSION_KEY"

/**
 *  Helper categories to report the app's bundle version. 
 *  
 *  @discussion This category assumes a four part canonical version number with the first three parts being read from the info.plist CFBundleShortVersionString key (marketing version, e.g. 1.2.3) and the fourth part being read from the info.plist CFBundleVersion key (technical / build version e.g. 4567). The versions combined make up an app store compliant version e.g. 1.2.3.4567. All versions must be incrementally higher reading from left to right in order to be accepted by the app store. e.g. 1.2.3.4567 can't be submitted after 1.2.3.5000, don't screw it up.
 */
@interface NSBundle (CUVersionAdditions)

/**
 *  The major version of the app.
 *
 *  @return A number representing the major version of the app.
 *
 *  @discussion The major version is the "1" in 1.2.3.4567.
 */
- (NSNumber*) CU_majorVersion;

/**
 *  The minor version of the app.
 *
 *  @return A number representing the minor version of the app.
 *
 *  @discussion The minor version is the "2" in 1.2.3.4567.
 */
- (NSNumber*) CU_minorVersion;

/**
 *  The patch version of the app.
 *
 *  @return A number representing the patch version of the app.
 *
 *  @discussion The patch version is the "3" in 1.2.3.4567.
 */
- (NSNumber*) CU_patchVersion;

/**
 *  The build version of the app.
 *
 *  @return A number representing the build version of the app.
 *
 *  @discussion The build version is the "4567" in 1.2.3.4567.
 */
- (NSNumber*) CU_buildVersion;

/**
 *  An array of version parts with the major version starting at index 0.
 *
 *  @return An array of strings representing the four part canonical version.
 */
- (NSArray*) CU_versionParts;

/**
 *  The four part canonical version string.
 *
 *  @return A string representing the four part canonical version.
 *
 *  @discussion The CFBundleShortVersionString + CFBundleVersion info.plist keys.
 */
- (NSString*) CU_fourPartVersionString;

/**
 *  The three part version string.
 *
 *  @return A string representing the three part version.
 *
 *  @discussion The CFBundleShortVersionString info.plist key.
 */
- (NSString*) CU_threePartVersionString;

/**
 *  An alias for CU_threePartVersionString.=
 */
- (NSString*) CU_marketingVersionString;

/**
 *  The build version string.
 *
 *  @return A string representing the build version.
 *
 *  @discussion The CFBundleVersion info.plist key.
 */
- (NSString*) CU_buildVersionString;

/**
 *  Gets the previous app version installed.
 *
 *  @return Returns the version string of the previous recorded app version, or nil.
 */
- (NSString*) CU_previousAppVersion;

/**
 *  Sets the previously installed app version.
 *
 *  @param appVersion A four part version string.
 */
- (void) CU_setPreviousAppVersion:(NSString*)appVersion;

/**
 *  Rotates the previously recorded current version to the previous app version if CU_foutPartVersionString is greater than CU_currentAppVersion.
 */
- (void) CU_rotateAppVersionIfNew;

/**
 *  Returns a Boolean indicating if a previous install was not recorded.
 *
 *  @return YES if this is a fresh install, NO if it is not.
 */
- (BOOL) CU_isFreshInstall;

/**
 *  Returns a Boolean indicating if the current app version is a new version.
 *
 *  @return YES if the current version is a new version NO if it is not.
 */
- (BOOL) CU_isCurrentVersionNewVersion;

/**
 *  Sets the current app version to CU_foutPartVersionString.
 */
- (void) CU_setCurrentAppVersion;

/**
 *  The currently recorded app version. If one is not set, then the CUfourPartVersionString will be set and that value returned;
 *
 *  @return A four part version string.
 */
- (NSString*) CU_currentAppVersion;

/**
 *  Sets the previously recorded current version to the previous app version.
 */
- (void) CU_setCurrentAppVersionToPreviousAppVersion;


@end
