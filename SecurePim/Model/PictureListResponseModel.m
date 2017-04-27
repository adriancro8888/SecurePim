//
//  PictureListResponseModel.m
//  SecurePim
//
//  Created by Shabir Jan on 13/04/2017.
//  Copyright © 2017 Shabir Jan. All rights reserved.
//

#import "PictureListResponseModel.h"
@class PictureModel;
@implementation PictureListResponseModel

#pragma mark - Mantle JSONKeyPathsByPropertyKey

+ (NSDictionary*)JSONKeyPathsByPropertyKey {
    return @{
             @"pictures" : @"hits"
             };
}
#pragma mark - JSON Transformer
+ (NSValueTransformer*)picturesJSONTransformer {
    return [MTLJSONAdapter arrayTransformerWithModelClass:PictureModel.class];
}
@end
