//
//  SMViewController.m
//  SMTagField
//
//  Created by Kennouf on 01/05/2016.
//  Copyright (c) 2016 Kennouf. All rights reserved.
//

#import "SMViewController.h"

@interface SMViewController ()<UITextFieldDelegate>

@end

@implementation SMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor   = [UIColor grayColor];
    
    log.editable                = NO;
    tagField.tagDelegate        = self;
    
    tagField.tags               = @[@"Tag1", @"Tag2", @"Tag3"];
}

#pragma mark - SMTagField delegate
-(void)tagField:(SMTagField *)_tagField tagAdded:(NSString *)tag{
    log.text                = [log.text stringByAppendingFormat:@"\nTag Added: %@", tag];
    [log scrollRangeToVisible: NSMakeRange(log.text.length - 1, 1)];
}

-(void)tagField:(SMTagField *)_tagField tagRemoved:(NSString *)tag{
    log.text                = [log.text stringByAppendingFormat:@"\nTag Removed: %@", tag];
    [log scrollRangeToVisible: NSMakeRange(log.text.length - 1, 1)];
}

-(BOOL)tagField:(SMTagField *)_tagField shouldAddTag:(NSString *)tag{
    // Limits to a maximum of 5 tags and doesn't allow to add a tag called "cat"
    if(_tagField.tags.count >= 5 ||
       [[tag lowercaseString] isEqualToString: @"cat"])
        return NO;
    
    return YES;
}

#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

@end
