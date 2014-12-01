//
//  EmployeeHelper.m
//  EmployeeKiosk
//
//  Created by Vinay Raj Dunty on 01/12/14.
//  Copyright (c) 2014 MyTectra. All rights reserved.
//

#import "EmployeeHelper.h"
#import "AppDelegate.h"

@implementation EmployeeHelper

+(NSMutableArray*)sharedEmployees
{
   return ((AppDelegate*)[UIApplication sharedApplication].delegate).employees;
}

@end
