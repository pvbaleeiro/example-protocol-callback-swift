//
//  ObjCDelegateViewController.m
//  example-protocol
//
//  Created by Victor Baleeiro on 23/11/17.
//  Copyright © 2017 Victor Baleeiro. All rights reserved.
//

#import "ObjCDelegateViewController.h"
#import "ObjCDelegateSelectionViewController.h"


@interface ObjCDelegateViewController ()<ObjCDelegateSelectionViewControllerDelegate>

//-------------------------------------------------------------------------------------------------------------
#pragma mark - Properties
//-------------------------------------------------------------------------------------------------------------
@property (weak, nonatomic) IBOutlet UILabel *lblVeiculo;
@end

@implementation ObjCDelegateViewController


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
    
    ObjCDelegateSelectionViewController *delegateSelectionController = segue.destinationViewController;
    delegateSelectionController.selectionDelegate = self;
}


//-------------------------------------------------------------------------------------------------------------
#pragma mark - Delegate próxima tela
//-------------------------------------------------------------------------------------------------------------
- (void)selecionouVeiculo:(Veiculo *)veiculo {
    //Atribui seleção ao texto
    [self.lblVeiculo setText:[veiculo dadosFormatados]];
}
@end
