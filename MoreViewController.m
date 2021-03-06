//
//  MoreViewController.m
//  HighSchoolEnglish
//
//  Created by Ibokan on 13-1-5.
//  Copyright (c) 2013年 Ibokan. All rights reserved.
//

#import "MoreViewController.h"

@interface MoreViewController ()

@end

@implementation MoreViewController

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
     self.navigationItem.title=@"更多";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
    switch (indexPath.row)
    {
        case 0:
            cell.imageView.image=[UIImage imageNamed:@"icon_word.png"];
            cell.textLabel.text=@"生词本";
            break;
        case 1:
            cell.imageView.image=[UIImage imageNamed:@"icon_member.png"];
            cell.textLabel.text=@"会员管理";
            break;
        case 2:
            cell.imageView.image=[UIImage imageNamed:@"icon_favorite.png"];
            cell.textLabel.text=@"信息同步";
            break;
        case 3:
            cell.imageView.image=[UIImage imageNamed:@"icon_sync.png"];
            cell.textLabel.text=@"应用推荐";
            break;
            
        default:
            break;
    }
    
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
   
     DetailViewController *detailViewController = [[DetailViewController alloc] init];
          [self.navigationController pushViewController:detailViewController animated:YES];
     [detailViewController release];
}

@end
