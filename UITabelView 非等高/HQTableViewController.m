//
//  HQTableViewController.m
//  UITabelView 非等高
//
//  Created by Macbook on 2017/5/1.
//  Copyright © 2017年 Macbook. All rights reserved.
//

#import "HQTableViewController.h"
#import "HQStatus.h"
#import "HQStatusCell.h"

@interface HQTableViewController ()

@property (nonatomic, strong) NSArray *statuses;

@end



@implementation HQTableViewController

- (NSArray *)statuses {
    if (_statuses == nil) {
        //加载plist中的字典数组
        NSString *path = [[ NSBundle mainBundle] pathForResource:@"statuses.plist" ofType:nil];
        NSArray *dictArray = [NSArray arrayWithContentsOfFile:path];
        
        NSMutableArray *statusArray = [NSMutableArray array];
        for (NSDictionary *dict in dictArray) {
            HQStatus *status = [HQStatus statusWithDict:dict];
            [statusArray addObject:status];
        }
        _statuses = statusArray;
    }
    return _statuses;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.statuses.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    HQStatusCell *cell = [HQStatusCell cellWithTableView:tableView];
    cell.status = self.statuses[indexPath.row];
    return cell;
}


@end
