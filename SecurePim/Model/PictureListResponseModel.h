//
//  PictureListResponseModel.h
//  SecurePim
//
//  Created by Shabir Jan on 13/04/2017.
//  Copyright © 2017 Shabir Jan. All rights reserved.
//

#import <Mantle/Mantle.h>
#import "PictureModel.h"
@interface PictureListResponseModel : MTLModel<MTLJSONSerializing>

@property (nonatomic,copy) NSArray *pictures;


@end
