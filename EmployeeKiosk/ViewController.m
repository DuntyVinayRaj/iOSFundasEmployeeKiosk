//
//  ViewController.m
//  EmployeeKiosk
//
//  Created by Vinay Raj Dunty on 01/12/14.
//  Copyright (c) 2014 MyTectra. All rights reserved.
//

#import "ViewController.h"
#import "UITextField+Employee.h"
#import "Employee.h"
#import "EmployeeHelper.h"
#import "UITextView+Employee.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidAppear:(BOOL)animated
{
    // Create text field collection so that it is easy to loop through all the text fields than to individually compare the values of every text field while resetting or validating to save
    
    self.txtCollection = @[self.txtName, self.txtEmpId, self.txtEmpSalary, self.txtDetails, self.txtDept];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveClicked:(id)sender {
    
    if( [self checkIfAllFieldsAreFilled] )
    {
        Employee *emp = [[Employee alloc]init];
        emp.empName = self.txtName.text;
        emp.empDept = self.txtDept.text;
        emp.empId = self.txtEmpId.text;
        emp.empDetails = self.txtDetails.text;
        emp.empSalary = self.txtEmpSalary.text;
        
        NSMutableArray *sharedEmp = [EmployeeHelper sharedEmployees];
        [sharedEmp addObject:emp];
        
        // Now clear all the fields
        [self ResetClicked:self];
        
        //Bring the focus to the name text field
        [self.txtName becomeFirstResponder];
    }
    else
    {
        [[[UIAlertView alloc]initWithTitle:@"Error" message:@"Please fill all fields before saving" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil] show];
    }
    
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

// Delegate to return from text view when return is clicked

// When return is clicked on a text view \n which is a new line charecter is sent

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    
    if([text isEqualToString:@"\n"]) {
        [textView resignFirstResponder];
        return NO;
    }
    
    return YES;
}


- (IBAction)SeeAllClicked:(id)sender {
    
    [self performSegueWithIdentifier:@"listemployees" sender:self];
}

- (IBAction)ResetClicked:(id)sender {
    
    // Clear the text in all the text fields in the collection
    for(UITextField *tf in self.txtCollection)
    {
        tf.text = nil;
    }
    
}

-(BOOL)checkIfAllFieldsAreFilled
{
    BOOL isValid = YES;
    
    // If any of the text fields in the collection does not have data then say no.
    for(UITextField *tf in self.txtCollection)
    {
        if( ![tf isValid] )
        {
            isValid = NO;
        }
    }
    
    if( isValid )
        return YES;
    
    return NO;
}


@end
