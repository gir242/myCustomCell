//
//  RootViewController.m
//  myCustomCell
//
//  Created by Imran Rasool Gill ShorKot on 10/8/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "RootViewController.h"
#import "cell.h"

@implementation RootViewController


#pragma mark -
#pragma mark View lifecycle

/*
- (void)viewDidLoad {
    [super viewDidLoad];

    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}
*/

/*
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}
*/
/*
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}
*/
/*
- (void)viewWillDisappear:(BOOL)animated {
	[super viewWillDisappear:animated];
}
*/
/*
- (void)viewDidDisappear:(BOOL)animated {
	[super viewDidDisappear:animated];
}
*/

/*
 // Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	// Return YES for supported orientations.
	return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
 */


#pragma mark -
#pragma mark Table view data source

// Customize the number of sections in the table view.
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    cell *celll = (cell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (celll == nil) {
		NSArray *top=[[NSBundle mainBundle] loadNibNamed:@"cell" owner:nil options:nil];
		for (id currentObject in top) 
		{
			if([currentObject isKindOfClass:[cell class]] )
			{
				celll=(cell *)currentObject;
				break;
			}
		}
	}
	
    
	// Configure the cell.
	switch (indexPath.row) {
		case 0:
			celll.lbl1.text=@"Imran";
			celll.lbl2.image=[UIImage imageNamed:@"vegetable_curry.jpg"];
			celll.lbl3.text=@"Shorkot";
			celll.lbl4.text=@"Lahore";
			break;
		case 1:
			celll.lbl1.text=@"Imran1";
			celll.lbl2.image=[UIImage imageNamed:@"vegetable_curry.jpg"];
			celll.lbl3.text=@"Shorkot1";
			celll.lbl4.text=@"Lahore1";
			break;
		case 2:
			celll.lbl1.text=@"Imran2";
			celll.lbl2.image=[UIImage imageNamed:@"vegetable_curry.jpg"];
			celll.lbl3.text=@"Shorkot2";
			celll.lbl4.text=@"Lahore2";
			break;
		case 3:
			celll.lbl1.text=@"Imran3";
			celll.lbl2.image=[UIImage imageNamed:@"vegetable_curry.jpg"];
			celll.lbl3.text=@"Shorkot3";
			celll.lbl4.text=@"Lahore3";
			break;
		case 4:
			celll.lbl1.text=@"Imran4";
			celll.lbl2.image=[UIImage imageNamed:@"vegetable_curry.jpg"];
			celll.lbl3.text=@"Shorkot4";
			celll.lbl4.text=@"Lahore4";
			break;
		
		default:
			break;
	}
    return celll;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
	
	return 90;
	
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source.
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }   
}
*/


/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/


/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark -
#pragma mark Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
	/*
	 <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
	 [self.navigationController pushViewController:detailViewController animated:YES];
	 [detailViewController release];
	 */
}


#pragma mark -
#pragma mark Memory management

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Relinquish ownership any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    // Relinquish ownership of anything that can be recreated in viewDidLoad or on demand.
    // For example: self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end

