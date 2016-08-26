//
//  Person.h
//  visitor_pattern
//
//  Created by Dmitriy Arkhipov on 26.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IAccount.h"

@interface Person : NSObject <IAccount>

@property (strong, nonatomic) NSString *FIO;
@property (strong, nonatomic) NSString *accID;

- (instancetype) initWithName:(NSString *)FIO accID:(NSString *)a_id;

- (void) acceptWithVisitor:(id<IVisitor>)visitor;

@end
