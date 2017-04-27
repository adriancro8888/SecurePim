//
//  PixabayHTTPClient.m
//  SecurePim
//
//  Created by Shabir Jan on 13/04/2017.
//  Copyright © 2017 Shabir Jan. All rights reserved.
//

#import "SessionManager.h"


static NSString * const PixabayURL = @"https://pixabay.com/api/";

@implementation SessionManager


- (instancetype)initWithBaseURL:(NSURL *)url {
    self = [super initWithBaseURL:url];
    
    if (self) {
        self.responseSerializer = [AFJSONResponseSerializer serializer];
       
    }
    
    return self;
}

+ (SessionManager *)sharedManager {
    static SessionManager *_sessionManager = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sessionManager = [[self alloc]initWithBaseURL:[NSURL URLWithString:PixabayURL]];
    });
    return  _sessionManager;
}


@end
