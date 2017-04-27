//
//  PictureViewModel.h
//  SecurePim
//
//  Created by Shabir Jan on 13/04/2017.
//  Copyright © 2017 Shabir Jan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "APIManager.h"
@class PictureViewModel;

@protocol PictureViewModelProtocol <NSObject>

@optional
- (void)pictureViewModelChanged:(PictureViewModel *)viewModelProtocol;
- (void)pictureViewModelChangedFailed:(PictureViewModel *)viewModelProtocol error:(NSString *)errorMsg;
@end


@interface PictureViewModel : NSObject
@property (nonatomic,strong) id<PictureViewModelProtocol> delegate;
@property (nonatomic,strong) NSArray  *picturesArray;
@property (nonatomic, readonly) APIManager *apiManager;

- (instancetype)initWithApiManager:(APIManager*)apiManager;
- (void)loadImages:(NSString *)query;
@end
