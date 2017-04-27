//
//  SecurePimTests.m
//  SecurePimTests
//
//  Created by Shabir Jan on 13/04/2017.
//  Copyright © 2017 Shabir Jan. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "PictureModel.h"
#import "PictureTableViewCell.h"
#import "PictureDetailViewController.h"
@interface SecurePimTests : XCTestCase
@property (nonatomic, strong)PictureDetailViewController *vc;
@end

@implementation SecurePimTests

- (void)setUp {
    [super setUp];
    UIStoryboard *main = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    self.vc = [main instantiateViewControllerWithIdentifier:@"detailVC"];
    UIView *view =  self.vc.view;
    NSLog(@"view %@",view);
    self.vc.currentModel = [self createModel];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (PictureModel *)createModel {
    NSDictionary *JSON = @{
                           @"user": @"apple",
                           @"previewURL": @"previewURL",
                           @"tags": @"apple,apples,green",
                           @"favorites": [NSNumber numberWithLong:63],
                           @"likes": [NSNumber numberWithLong:21],
                           @"comments":[NSNumber numberWithLong:99],
                           @"webformatURL": @"webformatURL"
                           };
    
    NSError *error = nil;
    PictureModel *model = [MTLJSONAdapter modelOfClass:[PictureModel class] fromJSONDictionary:JSON error:&error];
    return model;
}

- (void)testPictureModel {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    XCTAssertNotNil([self createModel]);
}

- (void)testModelValues {
    PictureModel *currentModel = [self createModel];
    XCTAssertEqual(currentModel.userName, @"apple");
    XCTAssertEqual(currentModel.tags, @"apple,apples,green");
    XCTAssertEqual(currentModel.favoritesCount, [NSNumber numberWithLong:63]);
    XCTAssertEqual(currentModel.likesCount, [NSNumber numberWithLong:21]);
    XCTAssertEqual(currentModel.commentsCount, [NSNumber numberWithLong:99]);
}

- (void)testDetailVCViewModel{
    
    XCTAssertEqual(self.vc.currentModel.userName, @"apple");
}


@end
