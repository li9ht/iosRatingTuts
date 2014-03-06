//
//  PlayerCell.h
//  Rating
//
//  Created by bmtp-005 on 3/6/14.
//  Copyright (c) 2014 PTM ukm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayerCell : UITableViewCell

@property (nonatomic,weak)IBOutlet UILabel *nameLabel;
@property (nonatomic,weak)IBOutlet UILabel *gameLabel;
@property (nonatomic,weak)IBOutlet UIImageView *ratingImageView;

@end
