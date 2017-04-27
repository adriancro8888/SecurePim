//
//  PixabayHTTPClient.h
//  SecurePim
//
//  Created by Shabir Jan on 13/04/2017.
//  Copyright © 2017 Shabir Jan. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>

@interface SessionManager : AFHTTPSessionManager
+ (SessionManager *)sharedManager;
- (instancetype)initWithBaseURL:(NSURL *)url;
@end
