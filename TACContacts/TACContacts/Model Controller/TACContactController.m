//
//  TACContactController.m
//  TACContacts
//
//  Created by Lambda_School_Loaner_218 on 2/26/20.
//  Copyright © 2020 Lambda_School_Loaner_218. All rights reserved.
//

#import "TACContactController.h"
#import "TACContact.h"

@interface TACContactController ()

@property (nonatomic, retain) NSMutableArray *internalContacts;

@end

@implementation TACContactController

-(instancetype) init {
    self = [super init];
    if (self) {
        _internalContacts = [[NSMutableArray alloc] init];
        
        [self.internalContacts addObject:[TACContact contactWithName:@"Tyler" email:@"tylerc71197@gmail.com" phone:@"5612713134"]];
        [self.internalContacts addObject:[TACContact contactWithName:@"Troy" email:@"Troyc61695@gmail.com" phone:@"5612715140"]];
        [self.internalContacts addObject:[TACContact contactWithName:@"Mark" email:@"Markc81060@gmail.com" phone:@"5612753240"]];
    }
    return self;
}

- (NSArray *)contacts {
    return [[_internalContacts copy] autorelease];
}


- (void)addContact:(TACContact *)contact {
    [self.internalContacts addObject:contact];
}

-(void)updateContact:(TACContact *)contact
            withName:(NSString *)name
               email:(NSString *)emial
               phone:(NSString *)phone {
    contact.name = name;
    contact.email = emial;
    contact.phone = phone;
    
}

-(void)removeContact:(TACContact *)contact {
    [self.internalContacts removeObject:contact];
    
}

-(void) dealloc {
    [_internalContacts release];
    _internalContacts = nil;
    
    [super dealloc];
}

@end
