//
//  ViewController.m
//  ObjSideMenu
//
//  Created by Angelos Staboulis on 14/11/23.
//

#import "ViewController.h"
#import <UIKit/UIKit.h>
@interface ViewController ()

@end

@implementation ViewController
-(void) initialView{
    [_tableView registerClass:[UITableViewCell self] forCellReuseIdentifier:@"cell"];
    [_tableView setDelegate:self];
    [_tableView setDataSource:self];
    [_tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    [_tableView setBackgroundColor:[UIColor grayColor]];
    [_tableView setBackgroundView:nil];
    int y = [_mnuSideMenu frame].size.height+32;
    [_tableView setFrame:CGRectMake(10, y, 170, 400)];
    _array = [[NSMutableArray alloc] init];
    [_array addObject:@"Add New Record"];
    [_array addObject:@"Delete Record"];
    [_array addObject:@"Get Birthday List"];
    [_array addObject:@"Today NameDay"];
    [_array addObject:@"List Records"];
    [_array addObject:@"Send Email"];
    [_array addObject:@"Map of Shops"];
    [_array addObject:@"Get Ticket"];
    [_array addObject:@"Today Discounts"];
    [_array addObject:@"Logout"];
    _isOpen = 1;
    self->_tableView.alpha = 0.0;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initialView];
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [_array count];
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *format = [NSString stringWithFormat:@"selected text=%@",[_array objectAtIndex:[indexPath row]]];
    NSLog(@"%@",format);
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    [cell setBackgroundColor:[UIColor grayColor]];
    if ([indexPath row] < [_array count]){
        [[cell textLabel] setText:[NSString stringWithFormat:@"%@",[_array objectAtIndex:[indexPath row]]]];
    }
    return cell;
}
- (IBAction)mnuSideMenu:(id)sender {
    long openMenu = _isOpen;
    if (openMenu == 0){
        [UIView animateWithDuration:1.0 animations:^{
            self->_tableView.alpha = 0.0;
            self->_isOpen = 1;
        }];
    }else{
        [UIView animateWithDuration:1.0 animations:^{
            self->_tableView.alpha = 1.0;
            self->_isOpen = 0;
        }];
       
    }
   
}

@end
