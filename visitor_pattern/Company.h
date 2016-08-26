//
//  Company.h
//  visitor_pattern
//
//  Created by Dmitriy Arkhipov on 26.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IAccount.h"

@interface Company : NSObject <IAccount>

@property (strong, nonatomic) NSString *name;
/**
 гос регистрационный номер
 */
@property (strong, nonatomic) NSString *regID;
/**
 номер счета
 */
@property (strong, nonatomic) NSString *ID;

- (instancetype) initWithName:(NSString *)name registrationID:(NSString *)regID id:(NSString *)p_id;

- (void) acceptWithVisitor:(id<IVisitor>)visitor;

@end
