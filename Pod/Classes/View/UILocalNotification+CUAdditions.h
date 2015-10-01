//
//  UILocalNotification+CUAdditions.h
//  Pods
//
//  Created by Vincil Bishop on 8/20/15.
//
//

#import <UIKit/UIKit.h>

@interface UILocalNotification (CUAdditions)

+ (UILocalNotification*)CU_scheduleNotificationWithMessage:(NSString*)message ;

@end
