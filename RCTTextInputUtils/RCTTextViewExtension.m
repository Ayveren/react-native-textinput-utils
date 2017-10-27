//
//  RCTTextViewExtension.m
//  RCTTextInputUtils
//
//  Created by Kanzaki Mirai on 11/10/15.
//  Copyright © 2015 DickyT. All rights reserved.
//

#import "RCTTextViewExtension.h"
#import "RCTUITextView.h"

@implementation RCTTextView (RCTTextViewExtension)

- (RCTUITextView *)getTextView;

{
    // actually returns a UITextView, I wrote this way just want to surpress warnings
    return [self valueForKey:@"_textView"];
}

@end
