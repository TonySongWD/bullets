//
//  ViewController.m
//  bullets
//
//  Created by appledev098 on 15/10/26.
//  Copyright © 2015年 PwC. All rights reserved.
//

#import "ViewController.h"
#import "TTTAttributedLabel.h"



@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:@"• have or have had problems with your pancreas, kidneys, or liver.\n\n• have severe problems with your stomach, such as slowed emptying of your stomach (gastroparesis) or problems with digesting food.\n\n• have any other medical conditions.\n\n• are pregnant or plan to become pregnant, or if you become pregnant while taking Trulicity. It is not known if Trulicity will harm your unborn baby.\n\n• are breastfeeding or plan to breastfeed. It is not known if Trulicity passes into your breast milk. You should not use Trulicity while breastfeeding without first talking to your healthcare provider.\n\n• are taking other medicines including prescription and over-the-counter medicines, vitamins, and herbal supplements. Trulicity may affect the way some medicines work and some medicines may affect the way Trulicity works.\n\n• are taking other medicines to treat diabetes, including insulin or sulfonylureas.\n\n"];
    
    NSMutableParagraphStyle *paragrahStyle = [[NSMutableParagraphStyle alloc] init];
    [paragrahStyle setParagraphSpacing:4];
    [paragrahStyle setParagraphSpacingBefore:3];
    [paragrahStyle setFirstLineHeadIndent:0.0f];  // First line is the one with bullet point
    [paragrahStyle setHeadIndent:10.5f];
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragrahStyle
                             range:NSMakeRange(0, attributedString.length)];
    
    self.contentLabel.attributedText = attributedString;
    
    self.label.attributedText = attributedString;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
