//
//  Person.m
//  visitor_pattern
//
//  Created by Dmitriy Arkhipov on 26.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype) initWithName:(NSString *)FIO accID:(NSString *)a_id {
    
    self = [super init];
    if (self) {
        _FIO = FIO;
        _accID = a_id;
    }
    return self;

}

- (void) acceptWithVisitor:(id<IVisitor>)visitor {

    [visitor visitPersonAcc:self];

}

@end
