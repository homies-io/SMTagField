//
//  SMTagField.h
//
//  Created by Shai Mishali on 6/16/13.
//  Copyright (c) 2013 Shai Mishali. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SMTag.h"
#import "SMTagFieldDelegate.h"

/**
 SMTagField is an implementation of UITextField that allows for easy input/display of tags
 */
@interface SMTagField : UITextField

/**
 The tags array, contains all of the tags. Can be set manually
 */
@property (nonatomic, strong) NSArray *tags;

/** Tag border color **/
@property (nonatomic, strong) UIColor   *tagBorderColor;

/** Tag background color **/
@property (nonatomic, strong) UIColor   *tagBackgroundColor;

/** Font used in tag **/
@property (nonatomic, strong) UIFont    *tagFont;

/** Text color of tag **/
@property (nonatomic, strong) UIColor   *tagTextColor;

/** Corner radius of tag **/
@property (nonatomic) CGFloat   tagCornerRadius;

/**
 The SMTagField Delegate. See documentation above
 */
@property (unsafe_unretained) id<SMTagFieldDelegate> tagDelegate;

@end