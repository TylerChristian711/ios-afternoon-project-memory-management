//
//  TACContactDetialViewController.h
//  TACContacts
//
//  Created by Lambda_School_Loaner_218 on 2/26/20.
//  Copyright © 2020 Lambda_School_Loaner_218. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TACContact.h"
#import "TACContactController.h"



@interface TACContactDetialViewController : UIViewController

@property (nonatomic, retain) TACContact *contact;
@property (nonatomic,retain) TACContactController *contactsController;

@end


