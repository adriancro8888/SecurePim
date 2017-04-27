//
//  PictureTableViewCell.m
//  SecurePim
//
//  Created by Shabir Jan on 13/04/2017.
//  Copyright © 2017 Shabir Jan. All rights reserved.
//

#import "PictureTableViewCell.h"
#import <UIImageView+AFNetworking.h>
@implementation PictureTableViewCell

- (void)configureWithModel:(PictureModel *)model {
    self.userName.text = [NSString stringWithFormat:@"User : %@",model.userName];
    self.pictureTags.text = [NSString stringWithFormat:@"Tags : %@",model.tags];
    
    NSURL *url = [NSURL URLWithString:model.thumbnailURL];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [self.thumbnail setImageWithURLRequest:request
                          placeholderImage:nil
                                   success:^(NSURLRequest *request, NSHTTPURLResponse *response, UIImage *image) {
                                       
                                       self.imageView.image = image;
                                       [self setNeedsLayout];
                                       
                                   } failure:nil];
}

- (void)prepareForReuse {
    self.thumbnail.image = nil;
}
@end
