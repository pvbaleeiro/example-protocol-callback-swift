//
//  ObjCBaseViewController.h
//  example-protocol
//
//  Created by Victor Baleeiro on 23/11/17.
//  Copyright © 2017 Victor Baleeiro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "example_protocol-Swift.h"

//-------------------------------------------------------------------------------------------------------------
#pragma mark - Constantes
//-------------------------------------------------------------------------------------------------------------
extern NSString * _Nullable const SegueSelection;


@interface ObjCBaseViewController: UIViewController

//-------------------------------------------------------------------------------------------------------------
#pragma mark - Properties
//-------------------------------------------------------------------------------------------------------------
@property (nonatomic, copy) void (^ _Nullable veiculoSelecionadoBlock)(Veiculo * _Nullable veiculo);
@end
