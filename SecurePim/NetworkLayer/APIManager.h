//
//  APIManager.h
//  SecurePim
//
//  Created by Shabir Jan on 13/04/2017.
//  Copyright © 2017 Shabir Jan. All rights reserved.
//


#import "SessionManager.h"
#import "PictureListResponseModel.h"
@interface APIManager : NSObject
- (void)getPictures:(NSString *)query success:(void(^)(NSArray *images))success failure:(void(^)(NSError *error))failure;

@end
