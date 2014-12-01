//
//  EmployeeListController.m
//  EmployeeKiosk
//
//  Created by Vinay Raj Dunty on 01/12/14.
//  Copyright (c) 2014 MyTectra. All rights reserved.
//

#import "EmployeeListController.h"
#import "Employee.h"
#import "EmployeeHelper.h"
#import "DetailController.h"

@interface EmployeeListController ()

@end

@implementation EmployeeListController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // Fetch the list of employees from shared location which is AppDelegate
    
    self.employeeList = [EmployeeHelper sharedEmployees];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.employeeList.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"empcell"];
    
    // Get the employee object at the index
    
    Employee *emp = self.employeeList[indexPath.row];
    
    cell.textLabel.text = emp.empName;
    cell.detailTextLabel.text = emp.empId;
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Store the selected index to pass the employee object at proper index to the next screen
    self.selectedIndex = indexPath.row;
    [self performSegueWithIdentifier:@"detail" sender:self];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    DetailController *details = segue.destinationViewController;
    details.emp = self.employeeList[self.selectedIndex];
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
