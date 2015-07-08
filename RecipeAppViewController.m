//
//  RecipeAppViewController.m
//  Recipe App
//
//  Created by Marcus Brown on 7/8/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "RecipeAppViewController.h"
#import "RecipesTableViewDataSource.h"

@interface RecipeAppViewController ()
@property (strong, nonatomic) RecipesTableViewDataSource *dataSource;

@end

@implementation RecipeAppViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    [self.view addSubview:self.tableView];
    
    
    self.dataSource = [RecipesTableViewDataSource new];
    [self.dataSource registerTableView:self.tableView];
    self.tableView.dataSource = self.dataSource;
    [self.view addSubview:self.tableView];
    
     
    
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
