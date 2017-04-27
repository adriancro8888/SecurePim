//
//  ViewController.h
//  SecurePim
//
//  Created by Shabir Jan on 13/04/2017.
//  Copyright © 2017 Shabir Jan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PictureViewModel.h"
#import "APIManager.h"
#import <SVProgressHUD.h>
#import "PictureTableViewCell.h"
#import "PictureModel.h"

@interface ViewController : UIViewController<PictureViewModelProtocol,UITableViewDelegate,UITableViewDataSource,UISearchBarDelegate>
@property (nonatomic, strong) PictureViewModel *viewModel;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;
@end

