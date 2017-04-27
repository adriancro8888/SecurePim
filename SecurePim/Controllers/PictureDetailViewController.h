//
//  PictureDetailViewController.h
//  SecurePim
//
//  Created by Shabir Jan on 14/04/2017.
//  Copyright © 2017 Shabir Jan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PictureModel.h"
@interface PictureDetailViewController : UIViewController
@property (strong, nonatomic) PictureModel *currentModel;
@property (weak, nonatomic) IBOutlet UIImageView *fullImageView;
@property (weak, nonatomic) IBOutlet UILabel *lblUserName;
@property (weak, nonatomic) IBOutlet UILabel *lblComments;
@property (weak, nonatomic) IBOutlet UILabel *lblFavorites;
@property (weak, nonatomic) IBOutlet UILabel *lblLikes;
@property (weak, nonatomic) IBOutlet UILabel *lblTags;
- (IBAction)btnClosePressed:(id)sender;

@end
