//
//  PictureDetailViewController.m
//  SecurePim
//
//  Created by Shabir Jan on 14/04/2017.
//  Copyright © 2017 Shabir Jan. All rights reserved.
//

#import "PictureDetailViewController.h"
#import <UIImageView+AFNetworking.h>
@interface PictureDetailViewController ()

@end

@implementation PictureDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupView];
    // Do any additional setup after loading the view.
}

- (void)setupView{
    self.lblLikes.text = self.currentModel.likesCount.stringValue;
    self.lblComments.text = self.currentModel.commentsCount.stringValue;
    self.lblFavorites.text = self.currentModel.favoritesCount.stringValue;
    self.lblUserName.text = self.currentModel.userName;
    self.lblTags.text = self.currentModel.tags;
    [self.fullImageView setImageWithURL:[NSURL URLWithString:self.currentModel.highResImageURL] placeholderImage:[UIImage imageNamed:@"placeholder"]];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = true;
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    self.navigationController.navigationBarHidden = false;
}

- (IBAction)btnClosePressed:(id)sender {
    [self.navigationController popViewControllerAnimated:true];
}

@end
