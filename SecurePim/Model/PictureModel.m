//
//  PictureModel.m
//  SecurePim
//
//  Created by Shabir Jan on 13/04/2017.
//  Copyright © 2017 Shabir Jan. All rights reserved.
//

#import "PictureModel.h"

@implementation PictureModel
#pragma mark - Mantle JSONKeyPathsByPropertyKey
+ (NSDictionary *)JSONKeyPathsByPropertyKey { 
    return @{
             
             @"userName" : @"user",
             @"thumbnailURL" : @"previewURL",
             @"tags" : @"tags",
             @"favoritesCount" : @"favorites",
             @"likesCount" : @"likes",
             @"commentsCount" : @"comments",
             @"highResImageURL" : @"webformatURL"
             };
}
@end
