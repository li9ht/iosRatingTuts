//
//  PlayerViewController.h
//  Rating
//
//  Created by bmtp-005 on 3/6/14.
//  Copyright (c) 2014 PTM ukm. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlayerDetailViewController.h"


@interface PlayerViewController : UITableViewController <PlayerDetailViewControllerDelegate>

@property (nonatomic, strong) NSMutableArray *players;

@end
