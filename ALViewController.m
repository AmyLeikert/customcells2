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

NSString* const cellReuseIdentifier = @"myCell";

@implementation ALViewController


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;

}

// Customize the number of rows in the table view.

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 5;
}

// Customize the appearance of table view cells.

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    
    
    ALCustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myCell"];\
    if (!cell) {
        [tableView registerNib:[UINib nibWithNibName:@"ALCustomCell" bundle:nil] forCellReuseIdentifier:@"myCell"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"myCell"];
    }
    
    if (indexPath.section == 0 && indexPath.row == 0) {
        
        
        [cell.cellImage setImage:[UIImage imageNamed:@"oval-button_21328847.jpg"]];
    }

    
    /////
    
//    static NSString *CellIdentifier = @"Cell";
//
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
//
//    if (cell == nil) {
//
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];

// }

    // Set up the cell...

//    cell.textLabel.font = [UIFont fontWithName:@"Helvetica" size:15];
//
//    cell.textLabel.text = [NSString  stringWithFormat:@"Cell Row #%d", [indexPath row]];

    return cell;

}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    // open a alert with an OK and cancel button

    NSString *alertString = [NSString stringWithFormat:@"Clicked on row #%d", [indexPath row]];

    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:alertString message:@"" delegate:self cancelButtonTitle:@"Done" otherButtonTitles:nil];

    [alert show];


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
    UIImage *blah = [UIImage imageNamed:@"underwaterprincess.png"];
    [self.bottomImage setImage:blah];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
