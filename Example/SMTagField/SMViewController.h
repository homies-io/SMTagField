//
//  SMViewController.h
//  SMTagField
//
//  Created by Kennouf on 01/05/2016.
//  Copyright (c) 2016 Kennouf. All rights reserved.
//

@import UIKit;
#import "SMTagField.h"

@interface SMViewController : UIViewController <SMTagFieldDelegate>{
    IBOutlet    SMTagField  *tagField;
    IBOutlet    UITextView  *log;
}

@end
