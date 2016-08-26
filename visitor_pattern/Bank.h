//
//  Bank.h
//  visitor_pattern
//
//  Created by Dmitriy Arkhipov on 26.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IAccount.h"
#import "IVisitor.h"

@interface Bank : NSObject

@property (strong, nonatomic) NSMutableArray *accounts;

- (void) addAccount:(id<IAccount>)acc;
- (void) removeAccount:(id<IAccount>)acc;
- (void) acceptWithVisitor:(id<IVisitor>)visitor;

@end
