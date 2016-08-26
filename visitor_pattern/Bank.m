//
//  Bank.m
//  visitor_pattern
//
//  Created by Dmitriy Arkhipov on 26.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import "Bank.h"

@implementation Bank

- (instancetype) init {

    self = [super init];
    if (self) {
        _accounts = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void) addAccount:(id<IAccount>)acc {

    [_accounts addObject:acc];
}

- (void) removeAccount:(id<IAccount>)acc {

    [_accounts removeObject:acc];

}

- (void) acceptWithVisitor:(id<IVisitor>)visitor {

    for (id<IAccount> acc in _accounts) {
        
        [acc acceptWithVisitor:visitor];
    }

}

@end
