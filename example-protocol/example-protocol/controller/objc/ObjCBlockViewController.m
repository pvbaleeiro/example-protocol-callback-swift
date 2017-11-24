//
//  ObjCBlockViewController.m
//  example-protocol
//
//  Created by Victor Baleeiro on 23/11/17.
//  Copyright © 2017 Victor Baleeiro. All rights reserved.
//

#import "ObjCBlockViewController.h"
#import "ObjCBlockSelectionViewController.h"


@interface ObjCBlockViewController ()

//-------------------------------------------------------------------------------------------------------------
#pragma mark - Properties
//-------------------------------------------------------------------------------------------------------------
@property (weak, nonatomic) IBOutlet UILabel *lblVeiculo;
@end

@implementation ObjCBlockViewController


//-------------------------------------------------------------------------------------------------------------
#pragma mark - Lifecycle
//-------------------------------------------------------------------------------------------------------------
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


//-------------------------------------------------------------------------------------------------------------
#pragma mark - Action
//-------------------------------------------------------------------------------------------------------------
- (IBAction)escolherVeiculo {
    NSLog(@"Ir para a seleção de veículo...");
    [self performSegueWithIdentifier:SegueSelection sender:nil];
}


//-------------------------------------------------------------------------------------------------------------
#pragma mark - Segue
//-------------------------------------------------------------------------------------------------------------
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    ObjCBlockSelectionViewController *blockSelectionController = segue.destinationViewController;
    blockSelectionController.veiculoSelecionadoBlock = ^(Veiculo *veiculo) {
        
        //Atribui seleçãp ao texto
        [self.lblVeiculo setText:[veiculo dadosFormatados]];
    };
}
@end
