//
//  XmlVisitor.h
//  visitor_pattern
//
//  Created by Dmitriy Arkhipov on 26.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IVisitor.h"
#import "Person.h"
#import "Company.h"

@interface XmlVisitor : NSObject <IVisitor>

- (void) visitPersonAcc:(Person *)acc;
- (void) visitCompanyAcc:(Company *)acc;

@end
