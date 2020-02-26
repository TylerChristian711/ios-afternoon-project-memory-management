//
//  TACContactController.h
//  TACContacts
//
//  Created by Lambda_School_Loaner_218 on 2/26/20.
//  Copyright © 2020 Lambda_School_Loaner_218. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "TACContact.h"

@interface TACContactController : NSObject

@property (nonatomic, readonly) NSArray *contacts;

- (void)addContact:(TACContact *)contact;
-(void)updateContact:(TACContact *)contact
            withName:(NSString *)name
               email:(NSString *)emial
               phone:(NSString *)phone;

-(void)removeContact:(TACContact *)contact;

@end
