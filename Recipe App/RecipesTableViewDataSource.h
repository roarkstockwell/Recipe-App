//
//  RecipesTableViewDataSource.h
//  Recipe App
//
//  Created by Marcus Brown on 7/8/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;

@interface RecipesTableViewDataSource : NSObject<UITableViewDataSource>

-(void)registerTableView:(UITableView *)tableView;

@end
