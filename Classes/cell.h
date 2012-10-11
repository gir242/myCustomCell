//
//  cell.h
//  myCustomCell
//
//  Created by Imran Rasool on 10/8/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface cell : UITableViewCell {
	IBOutlet UILabel *lbl1;
	IBOutlet UIImageView *lbl2;
	IBOutlet UILabel *lbl3;
	IBOutlet UILabel *lbl4;
}

@property(nonatomic, retain) IBOutlet UILabel *lbl1;
@property(nonatomic, retain) IBOutlet UIImageView *lbl2;
@property(nonatomic, retain) IBOutlet UILabel *lbl3;
@property(nonatomic, retain) IBOutlet UILabel *lbl4;
@end
