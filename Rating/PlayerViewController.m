//
//  PlayerViewController.m
//  Rating
//
//  Created by bmtp-005 on 3/6/14.
//  Copyright (c) 2014 PTM ukm. All rights reserved.
//

#import "PlayerViewController.h"
#import "Player.h"
#import "PlayerCell.h"

@interface PlayerViewController ()

@end

@implementation PlayerViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.players count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"PlayerCell";
    PlayerCell *cell =(PlayerCell *) [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
//    if(cell == nil){
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
//    }
    
    Player *player = (self.players)[indexPath.row];
//    cell.textLabel.text = player.name;
//    cell.detailTextLabel.text = player.game;
//    UILabel *nameLabel = (UILabel *)[cell viewWithTag:100];
//    UILabel *gameLabel = (UILabel *)[cell viewWithTag:101];
//    UIImageView *ratingImageView =(UIImageView *)[cell viewWithTag:102];
//    
//    nameLabel.text = player.name;
//    gameLabel.text = player.game;
//    ratingImageView.image = [self imageForRating:player.rating];
    cell.nameLabel.text = player.name;
    cell.gameLabel.text = player.game;
    cell.ratingImageView.image = [self imageForRating:player.rating];
    return cell;
}

-(UIImage *)imageForRating:(int)rating
{
    switch (rating) {
        case 1:return [UIImage imageNamed:@"1StarSmall"];
        case 2:return [UIImage imageNamed:@"2StarsSmall"];
        case 3:return [UIImage imageNamed:@"3StarsSmall"];
        case 4:return [UIImage imageNamed:@"4StarsSmall"];
        case 5:return [UIImage imageNamed:@"5StarsSmall"];

    }
    return nil;
}

-(void)playerDetailsViewControllerDidCancel:(PlayerDetailViewController *)controller
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)playerDetailsViewControllerDidSave:(PlayerDetailViewController *)controller
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"AddPlayer"]){
        
        UINavigationController *navigationController = segue.destinationViewController;
        PlayerDetailViewController *playerDetailViewController = [navigationController viewControllers][0];
        playerDetailViewController.delegate = self;
    }
}

-(void)playerDetailsViewControllerDidSave:(PlayerDetailViewController *)controller didAddPlayer:(Player *)player
{
    [self.players addObject:player];
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:([self.players count] - 1) inSection:0];
    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(id)initWithCoder:(NSCoder *)aDecoder
{
    if((self = [super initWithCoder:aDecoder])){
        NSLog(@"init PlayerDetailViewController");
    }
    return self;
}

-(void)dealloc
{
    NSLog(@"delloc playerDetailViewController");
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
