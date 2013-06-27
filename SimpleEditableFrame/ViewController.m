//
//  ViewController.m
//  SimpleEditableFrame
//
//  Created by Michael Luton on 6/19/13.
//  Copyright (c) 2013 Sandmoose Software. All rights reserved.
//

#import "ViewController.h"
#import <OmniUI/OUIEditableFrame.h>

#define FONT_NAME @"HelveticaNeue-Light"
#define FONT_WEIGHT 36.0
#define TEST_STRING @"AVAVA"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Create attributed string for use in the OUIEditableFrame
    CTFontRef fontFace = CTFontCreateWithName((__bridge CFStringRef)(FONT_NAME), FONT_WEIGHT, NULL);
    NSMutableDictionary *attributes = [[NSMutableDictionary alloc] init];
    [attributes setObject:(__bridge id)fontFace forKey:(NSString*)kCTFontAttributeName];
    [attributes setObject:[UIColor blackColor] forKey:(NSString*)kCTForegroundColorAttributeName];
    NSAttributedString *attrStr = [[NSAttributedString alloc] initWithString:TEST_STRING];
    
    // Create the OUIEditableFrame and add it to the view
    OUIEditableFrame *omniEditableFrame = [[OUIEditableFrame alloc] initWithFrame:CGRectMake(60, 100, 648, 200)];
    omniEditableFrame.defaultCTFont = fontFace;
    omniEditableFrame.backgroundColor = [UIColor lightGrayColor];
    omniEditableFrame.textColor = [UIColor blackColor];
    omniEditableFrame.attributedText = attrStr;
    [self.view addSubview:omniEditableFrame];
    
    // For comparison create a regular UITextField and add it to the view
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(60, 340, 648, 200)];
    textField.backgroundColor = [UIColor lightGrayColor];
    textField.font = [UIFont fontWithName:FONT_NAME size:FONT_WEIGHT];
    textField.text = TEST_STRING;
    [self.view addSubview:textField];
}

@end
