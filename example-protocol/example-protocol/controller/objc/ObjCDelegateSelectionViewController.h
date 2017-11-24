//
//  ObjCDelegateSelectionViewController.h
//  example-protocol
//
//  Created by Victor Baleeiro on 23/11/17.
//  Copyright © 2017 Victor Baleeiro. All rights reserved.
//

#import "ObjCBaseViewController.h"


@protocol ObjCDelegateSelectionViewControllerDelegate <NSObject>

//-------------------------------------------------------------------------------------------------------------
#pragma mark - Métodos
//-------------------------------------------------------------------------------------------------------------
- (void)selecionouVeiculo:(Veiculo *_Nullable)veiculo;
@end

@interface ObjCDelegateSelectionViewController : ObjCBaseViewController

//-------------------------------------------------------------------------------------------------------------
#pragma mark - Properties
//-------------------------------------------------------------------------------------------------------------
@property (strong, nonatomic) id<ObjCDelegateSelectionViewControllerDelegate> _Nonnull selectionDelegate;
@end
