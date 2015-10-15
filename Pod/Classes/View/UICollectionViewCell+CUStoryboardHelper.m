//
//  UICollectionViewCell+CUStoryboardHelper.m
//  Pods
//
//  Created by Vincil Bishop on 10/14/15.
//
//

#import "UICollectionViewCell+CUStoryboardHelper.h"

@implementation UICollectionViewCell (CUStoryboardHelper)

+ (NSString*) CU_identifier
{
	return NSStringFromClass(self);
}

+ (instancetype) CU_loadFromNib
{
	return [self CU_loadFromNibNamed:[self CU_identifier]];
}

+ (instancetype) CU_loadFromNibNamed:(NSString*)nibName
{
	// Load the top-level objects from the custom cell XIB.
	NSArray *topLevelObjects = [[NSBundle mainBundle] loadNibNamed:nibName owner:self options:nil];
	// Grab a pointer to the first object (presumably the custom cell, as that's all the XIB should contain).
	return [topLevelObjects objectAtIndex:0];
}

@end
