//
//  UICollectionViewCell+CUStoryboardHelper.h
//  Pods
//
//  Created by Vincil Bishop on 10/14/15.
//
//

#import <UIKit/UIKit.h>

@interface UICollectionViewCell (CUStoryboardHelper)

+ (NSString*) CU_identifier;
+ (instancetype) CU_loadFromNib;
+ (instancetype) CU_loadFromNibNamed:(NSString*)nibName;

@end
