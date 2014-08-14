//
//  ALViewController.m
//  CustomCells2
//
//  Created by DetroitLabsUser on 5/18/14.
//  Copyright (c) 2014 DetroitLabsUser. All rights reserved.
//

#import "ALViewController.h"

@interface ALViewController ()

@end

// NSString* const cellReuseIdentifier = @"myCell";

@implementation ALViewController


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    ALCustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myCell"];
  
    if (!cell) {
        [tableView registerNib:[UINib nibWithNibName:@"ALCustomCell" bundle:nil] forCellReuseIdentifier:@"myCell"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"myCell"];
    }
    
    if (indexPath.section == 0 && indexPath.row == 0) {
        
        cell.cellLabel.text = @"Pictures";
        [cell.cellImage setImage:[UIImage imageNamed:@"corgiIcon.gif"]];
        }
    if (indexPath.section == 0 && indexPath.row == 1) {
        cell.cellLabel.text = @"Videos";
        [cell.cellImage setImage:[UIImage imageNamed:@"corgiIcon.gif"]];
    }
    if (indexPath.section == 1 && indexPath.row == 0) {
        cell.cellLabel.text = @"Pictures";
        [cell.cellImage setImage:[UIImage imageNamed:@"happyCatIcon.gif"]];
    }
    if (indexPath.section == 1 && indexPath.row == 1) {
        cell.cellLabel.text = @"Videos";
        [cell.cellImage setImage:[UIImage imageNamed:@"happyCatIcon.gif"]];
    }
        UIImage *cellImage = [UIImage imageNamed:@"orangeBar.png"];
    UIImage *selecCellImage = [UIImage imageNamed:@"selectedOrangeBar.png"];
        UIImageView *cellView = [[UIImageView alloc] initWithImage:cellImage];
    
        cell.backgroundView = cellView;
    
    UIImageView *selecCellView = [[UIImageView alloc] initWithImage:selecCellImage];
    cell.selectedBackgroundView = selecCellView;
    
 [cell setBackgroundColor:[UIColor clearColor]];
    return cell;

}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

   // NSString *alertString = [NSString stringWithFormat:@"Clicked on row #%d", [indexPath row]];

   // UIAlertView *alert = [[UIAlertView alloc] initWithTitle:alertString message:@"" delegate:self cancelButtonTitle:@"Done" otherButtonTitles:nil];

  //  [alert show];


}


- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    
    UILabel *myLabel = [[UILabel alloc] init];
    myLabel.frame = CGRectMake(20, 3, 320, 20);
    myLabel.text = [self tableView:tableView titleForHeaderInSection:section];
    
    [myLabel setFont:[UIFont fontWithName:@"Marker Felt" size:20]];
    [myLabel setTextColor:[UIColor whiteColor]];
    
    
    UIView *headerView = [[UIView alloc] init];
    [headerView addSubview:myLabel];
    
    return headerView;
}




- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    if (section == 0)
        return @"Corgis";
    if (section == 1)
        return @"Scottish Folds";
    return @"undefined";
}



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIImage *blah = [UIImage imageNamed:@"Eleanora.jpg"];
    [self.bottomImage setImage:blah];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
