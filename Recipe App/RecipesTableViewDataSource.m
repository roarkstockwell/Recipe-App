//
//  RecipesTableViewDataSource.m
//  Recipe App
//
//  Created by Marcus Brown on 7/8/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "RecipesTableViewDataSource.h"
#import "RARecipes.h"

static NSString *cellID = @"cellID";

@implementation RecipesTableViewDataSource

- (void)registerTableView:(UITableView *)tableView {
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellID];
    
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID forIndexPath:indexPath];
    cell.textLabel.text = [RARecipes titleAtIndex:indexPath.row];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [RARecipes count];

}



@end
