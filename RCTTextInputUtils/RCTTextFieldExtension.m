//
//  RCTTextFieldExtension.m
//  RCTKeyboardToolbar
//
//  Created by Kanzaki Mirai on 11/10/15.
//  Copyright © 2015 DickyT. All rights reserved.
//

#import "RCTTextFieldExtension.h"
#import "RCTUITextField.h"

@implementation RCTTextField (RCTTextFieldExtension)

- (void)setSelectedRange:(NSRange)range
{
    RCTUITextField *textField;
    
    UITextPosition* beginning = textField.beginningOfDocument;
    UITextPosition* start = [textField positionFromPosition:beginning offset:range.location];
    UITextPosition* end = [textField positionFromPosition:beginning offset:range.location + range.length];
    
    UITextRange* selectionRange = [textField textRangeFromPosition:start toPosition:end];
    [textField setSelectedTextRange:selectionRange];
    }

@end
