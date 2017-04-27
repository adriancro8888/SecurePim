//
//  PictureTableViewCell.h
//  SecurePim
//
//  Created by Shabir Jan on 13/04/2017.
//  Copyright © 2017 Shabir Jan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PictureModel.h"
@interface PictureTableViewCell : UITableViewCell
@property (nonatomic, weak) IBOutlet UILabel *userName;
@property (nonatomic, weak) IBOutlet UILabel *pictureTags;
@property (nonatomic, weak) IBOutlet UIImageView *thumbnail;

- (void)configureWithModel:(PictureModel *)model;
@end
