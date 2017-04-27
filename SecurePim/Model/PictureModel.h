//
//  PictureModel.h
//  SecurePim
//
//  Created by Shabir Jan on 13/04/2017.
//  Copyright © 2017 Shabir Jan. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface PictureModel : MTLModel<MTLJSONSerializing>
//
@property (nonatomic,copy) NSString *thumbnailURL;
@property (nonatomic,copy) NSString *userName;
@property (nonatomic,copy) NSString *tags;
@property (nonatomic,copy) NSNumber *favoritesCount;
@property (nonatomic,copy) NSNumber *likesCount;
@property (nonatomic,copy) NSNumber *commentsCount;
@property (nonatomic,copy) NSString *highResImageURL;

@end
