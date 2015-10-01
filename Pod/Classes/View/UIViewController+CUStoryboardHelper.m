//
//  UIViewController+StoryboardHelper.m
//  CarStory-Consumer
//
//  Created by Vincil Bishop on 7/29/15.
//
//

#import "UIViewController+CUStoryboardHelper.h"


@implementation UIViewController (StoryboardHelper)

+ (instancetype) CU_instantiateFromStoryboard
{
    return [[UIStoryboard mainStoryboard] instantiateViewControllerWithIdentifier:NSStringFromClass(self)];
}

@end
