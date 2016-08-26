//
//  XmlVisitor.m
//  visitor_pattern
//
//  Created by Dmitriy Arkhipov on 26.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import "XmlVisitor.h"

@implementation XmlVisitor

- (void) visitPersonAcc:(Person *)acc {
    
    NSMutableString *result = [[NSMutableString alloc] initWithString:@"<Person><Name>"];
    
    [result appendString:acc.FIO];
    
    [result appendString:@"<Number>Number"];
    
    [result appendString:acc.accID];
    
    [result appendString:@"</Number><Person>"];
    
    NSLog(@"XmlVisitor: %@", result);

}

- (void) visitCompanyAcc:(Company *)acc {

    NSMutableString *result = [[NSMutableString alloc] initWithString:@"<Company><Name>"];
    
    [result appendString:acc.name];
    
    [result appendString:@"</Name>"];
    
    [result appendString:@"<RegNumber>"];
    
    [result appendString:acc.regID];
    
    [result appendString:@"</RegNumber>"];
    
    [result appendString:@"<Number>"];
    
    [result appendString:acc.ID];
    
    [result appendString:@"</Number><Company>"];
    
    NSLog(@"XmlVisitor: %@", result);

}

@end
