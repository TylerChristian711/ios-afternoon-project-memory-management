//
//  TACContact.m
//  TACContacts
//
//  Created by Lambda_School_Loaner_218 on 2/26/20.
//  Copyright © 2020 Lambda_School_Loaner_218. All rights reserved.
//

#import "TACContact.h"

@implementation TACContact

-(instancetype) initWithName:(NSString *)name email:(NSString *)email phone:(NSString *)phone {
    self = [super init];
    if (self) {
        _name = [name copy];
        _email = [email copy];
        _phone = [phone copy];
    }
    return self;
}

+(instancetype) contactWithName:(NSString *)name email:(NSString *)email phone:(NSString *)phone {
    return [[[TACContact alloc] initWithName:name email:email phone:phone] autorelease];
}
-(void) dealloc {
    [_name release];
    _name = nil;
    [_email release];
    _email = nil;
    [_phone release];
    _phone = nil;
    [super dealloc];
}
@end
