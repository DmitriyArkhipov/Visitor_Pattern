//
//  IAccount.h
//  visitor_pattern
//
//  Created by Dmitriy Arkhipov on 26.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IVisitor.h"

@protocol IAccount <NSObject>

- (void) acceptWithVisitor:(id)visitor;

@end
