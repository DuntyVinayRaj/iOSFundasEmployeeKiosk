//
//  DetailController.m
//  EmployeeKiosk
//
//  Created by Vinay Raj Dunty on 01/12/14.
//  Copyright (c) 2014 MyTectra. All rights reserved.
//

#import "DetailController.h"

@interface DetailController ()

@end

@implementation DetailController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setUp];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setUp
{
    self.txtEmpDept.text = self.emp.empDept;
    self.txtEmpDetails.text = self.emp.empDetails;
    self.txtEmpId.text = self.emp.empId;
    self.empName.text = self.emp.empName;
    self.txtEmpSalary.text = self.emp.empSalary;
}


- (IBAction)backClicked:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
