//
//  DetailController.h
//  EmployeeKiosk
//
//  Created by Vinay Raj Dunty on 01/12/14.
//  Copyright (c) 2014 MyTectra. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Employee.h"

@interface DetailController : UIViewController

@property Employee *emp;
@property (weak, nonatomic) IBOutlet UITextField *empName;
@property (weak, nonatomic) IBOutlet UITextField *txtEmpDept;
@property (weak, nonatomic) IBOutlet UITextField *txtEmpId;
@property (weak, nonatomic) IBOutlet UITextField *txtEmpSalary;
@property (weak, nonatomic) IBOutlet UITextView *txtEmpDetails;

@end
