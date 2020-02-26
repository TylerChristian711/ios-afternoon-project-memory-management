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
        _contacts = [_internalContacts copy];
        
        [self.internalContacts addObject:[TACContact contactWithName:@"Tyler" email:@"tylerc71197@gmail.com" phone:@"5612713134"]];
        [self.internalContacts addObject:[TACContact contactWithName:@"Troy" email:@"Troyc71197@gmail.com" phone:@"5612715140"]];
        [self.internalContacts addObject:[TACContact contactWithName:@"Mark" email:@"Markc71197@gmail.com" phone:@"5612753240"]];
    }
    return self;
}


- (void)addContact:(TACContact *)contact {
    [self.internalContacts addObject:contact];
    [contact release];
}

-(void)updateContact:(TACContact *)contact {
    NSUInteger index = [self.internalContacts indexOfObject:contact];
    self.internalContacts[index] = contact;
    [contact release];
}

-(void)removeContact:(TACContact *)contact {
    NSUInteger index = [self.internalContacts indexOfObject:contact];
    [self.internalContacts removeObjectAtIndex:index];
    [contact release];
}

-(void) dealloc {
    [_contacts release];
    _contacts = nil;
    
    [_internalContacts release];
    _internalContacts = nil;
    
    [super dealloc];
}

@end
