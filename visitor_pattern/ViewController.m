//
//  ViewController.m
//  visitor_pattern
//
//  Created by Dmitriy Arkhipov on 26.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import "ViewController.h"
#import "HtmlVisitor.h"
#import "XmlVisitor.h"
#import "Bank.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Bank *structure = [[Bank alloc] init];
    
    Person *person = [[Person alloc] initWithName:@"Иван Пупкин" accID:@"82184931"];
    Company *comp = [[Company alloc] initWithName:@"Apple" registrationID:@"ewuir32d141324" id:@"3424131445"];
    
    [structure addAccount:person];
    [structure addAccount:comp];
    
    XmlVisitor *xmlVisitor = [[XmlVisitor alloc] init];
    HtmlVisitor *htmlVisitor = [[HtmlVisitor alloc] init];
    
    NSLog(@"================ xmlVisitor ==================");
    
    [structure acceptWithVisitor:xmlVisitor];
    
    NSLog(@"================ htmlVisitor =================");
    
    [structure acceptWithVisitor:htmlVisitor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
