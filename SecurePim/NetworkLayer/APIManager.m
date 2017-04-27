//
//  APIManager.m
//  SecurePim
//
//  Created by Shabir Jan on 13/04/2017.
//  Copyright © 2017 Shabir Jan. All rights reserved.
//

#import "APIManager.h"
static NSString * const PixabayAPIKey = @"5092100-a898bc982d36e930926dbb899";
@implementation APIManager
- (void)getPictures:(NSString *)query success:(void (^)(NSArray *images))success failure:(void (^)(NSError *))failure {
    
       [[SessionManager sharedManager] GET:[NSString stringWithFormat:@"?key=%@&q=%@&per_page=100",PixabayAPIKey,query] parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSDictionary *responseDictionary = (NSDictionary*)responseObject;
        NSError *error;
        PictureListResponseModel *list = [MTLJSONAdapter modelOfClass:PictureListResponseModel.class fromJSONDictionary:responseDictionary error:&error];
        success(list.pictures);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(error);
    }];
}

@end
