//
//  HtmlVisitor.m
//  visitor_pattern
//
//  Created by Dmitriy Arkhipov on 26.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import "HtmlVisitor.h"

@implementation HtmlVisitor

- (void) visitPersonAcc:(Person *)acc {

    NSMutableString *result = [[NSMutableString alloc] initWithString:@"<table><tr><td>Свойство<td><td>Значение</td></tr>"];
    
    [result appendString:@"<tr><td>FIO<td><td>"];
    
    [result appendString:acc.FIO];
    
    [result appendString:@"<tr><td>Number<td><td>"];
    
    [result appendString:acc.accID];
    
    [result appendString:@"</td></tr></table>"];
    
    NSLog(@"HtmlVisitor: %@", result);

}

- (void) visitCompanyAcc:(Company *)acc {
    
    NSMutableString *result = [[NSMutableString alloc] initWithString:@"<table><tr><td>Свойство<td><td>Значение</td></tr>"];
    
    [result appendString:@"<tr><td>Name<td><td>"];
    
    [result appendString:acc.name];
    
    [result appendString:@"</td></tr>"];
    
    [result appendString:@"<tr><td>RegNumber<td><td>"];
    
    [result appendString:acc.regID];
    
    [result appendString:@"</td></tr>"];
    
    [result appendString:@"<tr><td>Number<td><td>"];
    
    [result appendString:acc.ID];
    
    [result appendString:@"</td></tr>"];

    NSLog(@"HtmlVisitor: %@", result);

}

@end
