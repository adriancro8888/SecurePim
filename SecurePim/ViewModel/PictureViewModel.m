//
//  PictureViewModel.m
//  SecurePim
//
//  Created by Shabir Jan on 13/04/2017.
//  Copyright © 2017 Shabir Jan. All rights reserved.
//

#import "PictureViewModel.h"
#import <SVProgressHUD.h>
@implementation PictureViewModel

- (instancetype)initWithApiManager:(APIManager *)apiManager {
    self = [super init];
    if (!self){
        return nil;
    }
    _apiManager = apiManager;
    return self;
}
- (void)loadImages:(NSString *)query {
    [SVProgressHUD show];
    [_apiManager getPictures:query success:^(NSArray *images) {
        [SVProgressHUD dismiss];
        self.picturesArray = images;
        [self.delegate pictureViewModelChanged:self];
    } failure:^(NSError *error) {
        [SVProgressHUD dismiss];
        [self.delegate pictureViewModelChangedFailed:self error:[error localizedDescription]];
    }];
}

@end
