//
//  Player.h
//  Rating
//
//  Created by bmtp-005 on 3/6/14.
//  Copyright (c) 2014 PTM ukm. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property(nonatomic,copy)NSString *name;
@property(nonatomic,copy)NSString *game;
@property(nonatomic,assign)int rating;

@end
