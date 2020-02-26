//
//  TACContact.h
//  TACContacts
//
//  Created by Lambda_School_Loaner_218 on 2/26/20.
//  Copyright © 2020 Lambda_School_Loaner_218. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface TACContact : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *email;
@property (nonatomic, copy) NSString *phone;

+ (instancetype) contactWithName:(NSString *)name
                           email:(NSString *)email
                           phone:(NSString *)phone;

- (instancetype) initWithName:(NSString *)name
                       email:(NSString *)email
                       phone:(NSString *)phone;

@end
