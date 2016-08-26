//
//  IVisitor.h
//  visitor_pattern
//
//  Created by Dmitriy Arkhipov on 26.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IAccount.h"

@protocol IVisitor <NSObject>

- (void) visitPersonAcc:(id)acc;
- (void) visitCompanyAcc:(id)acc;

@end
