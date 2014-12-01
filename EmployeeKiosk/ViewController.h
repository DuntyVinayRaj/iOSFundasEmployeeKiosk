//
//  ViewController.h
//  EmployeeKiosk
//
//  Created by Vinay Raj Dunty on 01/12/14.
//  Copyright (c) 2014 MyTectra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextViewDelegate, UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *txtName;
@property (weak, nonatomic) IBOutlet UITextField *txtDept;
@property (weak, nonatomic) IBOutlet UITextField *txtEmpId;
@property (weak, nonatomic) IBOutlet UITextField *txtEmpSalary;
@property (weak, nonatomic) IBOutlet UITextView *txtDetails;

@property NSArray *txtCollection;

@end


