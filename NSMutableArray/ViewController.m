//
//  ViewController.m
//  NSMutableArray
//
//  Created by trung bao on 02/11/2015.
//  Copyright © 2015 baotrung. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nhapText;
@property (weak, nonatomic) IBOutlet UILabel *hienThi;
@property (weak, nonatomic) IBOutlet UILabel *textChoTruoc;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonTim:(id)sender {
    NSString *doanvan= self.textChoTruoc.text;
    NSArray * chiadoanvan=[doanvan componentsSeparatedByString:@" "];
    NSString * tunhap =self.nhapText.text;
    BOOL sosanh =[chiadoanvan containsObject:[NSString stringWithFormat:@"%@",tunhap]];
    if (sosanh==1) {int n=0;
        for (int i=0;i<[chiadoanvan count];i++) {
          BOOL timtu=[chiadoanvan[i] isEqualToString:[NSString stringWithFormat:@"%@",tunhap]];
            if (timtu==1) {
                n++;
            }
        } self.hienThi.text=[NSString stringWithFormat:@"%d Lần",n];
    } else {
        self.hienThi.text=@"Từ bạn tìm không có trong đoạn text trên!";
    }
}

@end
