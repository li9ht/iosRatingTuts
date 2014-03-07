//
//  PlayerDetailViewController.h
//  Rating
//
//  Created by bmtp-005 on 3/7/14.
//  Copyright (c) 2014 PTM ukm. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Player.h"

@class PlayerDetailViewController;

@protocol PlayerDetailViewControllerDelegate <NSObject>

-(void)playerDetailsViewControllerDidCancel:(PlayerDetailViewController *)controller;
-(void)playerDetailsViewControllerDidSave:(PlayerDetailViewController *)controller didAddPlayer:(Player *)player;

@end

@interface PlayerDetailViewController : UITableViewController

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;

@property (nonatomic,weak)id <PlayerDetailViewControllerDelegate> delegate;

-(IBAction)cancel:(id)sender;
-(IBAction)done:(id)sender;

@end


