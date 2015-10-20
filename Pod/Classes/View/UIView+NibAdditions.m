//
//  UIView+NibAdditions.m
//  Pods
//
//  Created by Vincil Bishop on 10/16/15.
//
//

#import "UIView+NibAdditions.h"

@implementation UIView (NibAdditions)

+ (instancetype) CU_viewWithNibNamed:(NSString*)nibName bundle:(NSBundle*)bundle
{
	return [[[UINib nibWithNibName:nibName bundle:bundle] instantiateWithOwner:nil options:nil] firstObject];
}

+ (instancetype) CU_viewWithNib
{
	return [[[UINib nibWithNibName:NSStringFromClass(self) bundle:nil] instantiateWithOwner:nil options:nil] firstObject];
}

@end
