//
//  ViewController.m
//  SecurePim
//
//  Created by Shabir Jan on 13/04/2017.
//  Copyright © 2017 Shabir Jan. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+AFNetworking.h"
#import "PictureDetailViewController.h"
@interface ViewController ()

@end

@implementation ViewController
@synthesize viewModel;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.estimatedRowHeight = 240;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    [self bindViewModel];
    [self fetchPictures:@"apples"];
}

- (void)bindViewModel {
    APIManager *apiManager = [[APIManager alloc]init];
    viewModel = [[PictureViewModel alloc]initWithApiManager:apiManager];
    viewModel.delegate = self;
}

- (void)fetchPictures:(NSString*)query {
    [viewModel loadImages:query];
}

#pragma mark - PictureViewModel Delegate Methods
- (void)pictureViewModelChanged:(PictureViewModel *)viewModelProtocol {
    [self.tableView reloadData];
}

- (void)pictureViewModelChangedFailed:(PictureViewModel *)viewModelProtocol error:(NSString *)errorMsg {
    [SVProgressHUD showErrorWithStatus:errorMsg];
}

#pragma mark - UITableView DataSource / Delegates
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return  viewModel.picturesArray.count;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"pictureCell";
    PictureTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    [cell configureWithModel:[viewModel.picturesArray objectAtIndex:indexPath.row]];
    return  cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:true];
    PictureModel *currentObj = [viewModel.picturesArray objectAtIndex:indexPath.row];
    
    PictureDetailViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"detailVC"];
    vc.currentModel = currentObj;
    
    [self.navigationController pushViewController:vc animated:true];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return UITableViewAutomaticDimension;
}

#pragma mark - UISearchBar Delegate
- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    [viewModel loadImages:searchBar.text];
}

@end
