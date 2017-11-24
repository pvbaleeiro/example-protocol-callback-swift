//
//  BaseViewController.swift
//  example-protocol
//
//  Created by Victor Baleeiro on 13/11/17.
//  Copyright © 2017 Victor Baleeiro. All rights reserved.
//

import Foundation
import UIKit

class BaseViewController: UIViewController {
    
    //-------------------------------------------------------------------------------------------------------------
    // MARK: Properties
    //-------------------------------------------------------------------------------------------------------------
    var veiculoSelecionadoBlock: ((_ veiculo: Veiculo) -> Void)? = nil

}
