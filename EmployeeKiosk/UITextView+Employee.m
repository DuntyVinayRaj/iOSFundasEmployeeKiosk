//
//  UITextView+Employee.m
//  EmployeeKiosk
//
//  Created by Vinay Raj Dunty on 01/12/14.
//  Copyright (c) 2014 MyTectra. All rights reserved.
//

#import "UITextView+Employee.h"

@implementation UITextView (Employee)

-(BOOL)isValid
{
    if( self.text != nil && self.text.length > 0 )
    {
        return YES;
    }
    return NO;
}

@end
