//
//  ALViewController.h
//  CustomCells2
//
//  Created by DetroitLabsUser on 5/18/14.
//  Copyright (c) 2014 DetroitLabsUser. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ALCustomCell.h"

@interface ALViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) IBOutlet UITableView* recentSearchesTable;
@property (nonatomic, strong) IBOutlet UIImageView *bottomImage;



@end
