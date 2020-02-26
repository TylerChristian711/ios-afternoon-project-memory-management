//
//  TACContactsTableViewController.m
//  TACContacts
//
//  Created by Lambda_School_Loaner_218 on 2/26/20.
//  Copyright © 2020 Lambda_School_Loaner_218. All rights reserved.
//

#import "TACContactsTableViewController.h"
#import "TACContactController.h"
#import "TACContact.h"
#import "TACContactDetialViewController.h"

@interface TACContactsTableViewController ()

@property (nonatomic,retain) TACContactController *contactsController;

@end

@implementation TACContactsTableViewController

static NSString *const showAddSegue = @"ShowAddContactSegue";
static NSString *const showDetialSegue = @"ShowDetialContactSegue";
static NSString *const contactCell = @"ContactCell";



- (void)viewDidLoad {
    [super viewDidLoad];
    _contactsController = [[TACContactController alloc] init];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self configureNavigationBar];
    [self.tableView reloadData];
}

-(void)configureNavigationBar {
    self.title = @"Contacts";
    self.navigationController.navigationBar.prefersLargeTitles = YES;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.contactsController.contacts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:contactCell forIndexPath:indexPath];
    TACContact *contact = self.contactsController.contacts[indexPath.row];
    cell.textLabel.text = contact.name;
    cell.detailTextLabel.text = contact.phone;
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        TACContact *contact = self.contactsController.contacts[indexPath.row];
        [self.contactsController removeContact:contact];
        [self.tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
        if ([segue.identifier isEqualToString:showAddSegue]) {
            TACContactDetialViewController *detialVC = segue.destinationViewController;
            detialVC.contactsController = self.contactsController;
    } else if ([segue.identifier isEqualToString:showDetialSegue]) {
        TACContactDetialViewController *detialVC = segue.destinationViewController;
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        TACContact *contact = self.contactsController.contacts[indexPath.row];
        detialVC.contactsController = self.contactsController;
        detialVC.contact = contact;
    } else {
        return;
    }
}



- (void) dealloc {
        [_contactsController release];
        [super dealloc];
}
@end
