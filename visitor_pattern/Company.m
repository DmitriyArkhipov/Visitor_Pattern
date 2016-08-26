//
//  Company.m
//  visitor_pattern
//
//  Created by Dmitriy Arkhipov on 26.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import "Company.h"

@implementation Company

- (instancetype) initWithName:(NSString *)name registrationID:(NSString *)regID id:(NSString *)p_id {
    
    self = [super init];
    if (self) {
        _name = name;
        _regID = regID;
        _ID = p_id;
    }
    return self;
}

- (void) acceptWithVisitor:(id<IVisitor>)visitor {

    [visitor visitCompanyAcc:self];

}

@end
