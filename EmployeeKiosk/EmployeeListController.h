//
//  EmployeeListController.h
//  EmployeeKiosk
//
//  Created by Vinay Raj Dunty on 01/12/14.
//  Copyright (c) 2014 MyTectra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EmployeeListController : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property NSArray *employeeList;
@property NSInteger selectedIndex;

@end
