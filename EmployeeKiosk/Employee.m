//
//  Employee.m
//  EmployeeKiosk
//
//  Created by Vinay Raj Dunty on 01/12/14.
//  Copyright (c) 2014 MyTectra. All rights reserved.
//

#import "Employee.h"

@implementation Employee

-(NSString*)descritption
{
    return [NSString stringWithFormat:@"Name : %@, Dept : %@, Id : %@, Salary : %@, Details : %@", self.empName, self.empDept, self.empId, self.empSalary, self.empDetails];
}

@end
