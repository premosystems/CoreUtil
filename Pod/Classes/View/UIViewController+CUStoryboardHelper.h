//
//  UIViewController+StoryboardHelper.h
//  CarStory-Consumer
//
//  Created by Vincil Bishop on 7/29/15.
//
//

#import <UIKit/UIKit.h>
#import <KPAStoryboardConvenience/UIStoryboard+KPAConvenience.h>

@interface UIViewController (StoryboardHelper)

/**
 *  Instantiates a new instance of the view controller type from the storyboard.
 *
 *  @return A new instance of the view controller.
 *
 *  @discussion This helper method depends on the view controller's storyboard identifier being set to the class name, and the mainStoryboard helper being previously set.
 */
+ (instancetype) CU_instantiateFromStoryboard;

@end
