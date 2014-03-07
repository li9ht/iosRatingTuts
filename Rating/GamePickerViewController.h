//
//  GamePickerViewController.h
//  Rating
//
//  Created by bmtp-005 on 3/7/14.
//  Copyright (c) 2014 PTM ukm. All rights reserved.
//

#import <UIKit/UIKit.h>


@class GamePickerViewController;
@protocol GamePickerViewControllerDelegate <NSObject>
-(void)gamePickerViewController:(GamePickerViewController *)controller didSelectGame:(NSString *)game;
@end

@interface GamePickerViewController : UITableViewController

@property(nonatomic,weak) id<GamePickerViewControllerDelegate> delegate;
@property(nonatomic,weak) NSString *game;

@end
