//
//  ViewController.h
//  ObjSideMenu
//
//  Created by Angelos Staboulis on 14/11/23.
//

#import <UIKit/UIKit.h>
#import "Foundation/Foundation.h"
@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIButton *mnuSideMenu;
@property NSMutableArray *array;
@property int isOpen;
- (IBAction)mnuSideMenu:(id)sender;


@end

