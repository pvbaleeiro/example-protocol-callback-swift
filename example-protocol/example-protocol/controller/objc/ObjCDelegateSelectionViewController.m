//
//  ObjCDelegateSelectionViewController.m
//  example-protocol
//
//  Created by Victor Baleeiro on 23/11/17.
//  Copyright © 2017 Victor Baleeiro. All rights reserved.
//

#import "ObjCDelegateSelectionViewController.h"

@interface ObjCDelegateSelectionViewController ()<UITableViewDelegate, UITableViewDataSource>

//-------------------------------------------------------------------------------------------------------------
#pragma mark - Properties
//-------------------------------------------------------------------------------------------------------------
//Views
@property (weak, nonatomic) IBOutlet UITableView *tbvSelection;
//Control, aux
@property (strong, nonatomic) NSArray *listaVeiculos;
@end

@implementation ObjCDelegateSelectionViewController

@synthesize selectionDelegate = _selectionDelegate;
//-------------------------------------------------------------------------------------------------------------
#pragma mark - Lifecycle
//-------------------------------------------------------------------------------------------------------------
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //Setup
    [self setupData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//-------------------------------------------------------------------------------------------------------------
#pragma mark - Setup
//-------------------------------------------------------------------------------------------------------------
- (void)setupData {
    
    //Carrega veículos
    self.listaVeiculos = @[ [[Veiculo alloc] initWithMarca:@"Chevrolet" modelo:@"Celta" placa:@"AAA-3049"], [[Veiculo alloc] initWithMarca:@"Audi" modelo:@"TT" placa:@"ASD-4343"], [[Veiculo alloc] initWithMarca:@"Fiat" modelo:@"147" placa:@"AWE-3434"]];
    
    self.tbvSelection.delegate = self;
    self.tbvSelection.dataSource = self;
}


//-------------------------------------------------------------------------------------------------------------
#pragma mark - UITableViewDelegate
//-------------------------------------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //Obtem veículo conforme indice
    Veiculo *veiculo = [self.listaVeiculos objectAtIndex:indexPath.row];
    //Informa seleção para a tela anterior
    [self.selectionDelegate selecionouVeiculo:veiculo];
    //Volta para a tela anterior
    [self.navigationController popViewControllerAnimated:true];
}


//-------------------------------------------------------------------------------------------------------------
#pragma mark - UITableViewDataSource
//-------------------------------------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.listaVeiculos count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SelectionCell" forIndexPath:indexPath];
    
    //Obtem veículo conforme indice
    Veiculo *veiculo = [self.listaVeiculos objectAtIndex:indexPath.row];
    [cell.textLabel setText:[veiculo dadosFormatados]];
    
    return cell;
}


//-------------------------------------------------------------------------------------------------------------
#pragma mark - Selection Delegate
//-------------------------------------------------------------------------------------------------------------
- (id)selectionDelegate {
    return _selectionDelegate;
}
@end
