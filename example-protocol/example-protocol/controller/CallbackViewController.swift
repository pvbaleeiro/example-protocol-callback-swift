//
//  CallbackViewController.swift
//  example-protocol
//
//  Created by Victor Baleeiro on 13/11/17.
//  Copyright © 2017 Victor Baleeiro. All rights reserved.
//

import Foundation
import UIKit


//-------------------------------------------------------------------------------------------------------------
// MARK: Constantes/Enums
//-------------------------------------------------------------------------------------------------------------
enum CallbackSegues: String {
    case selection = "segue_selection"
}


class CallbackViewController: BaseViewController {
    
    //-------------------------------------------------------------------------------------------------------------
    // MARK: Properties
    //-------------------------------------------------------------------------------------------------------------
    @IBOutlet weak var lblVeiculo: UILabel!
    
    
    //-------------------------------------------------------------------------------------------------------------
    // MARK: Lifecycle
    //-------------------------------------------------------------------------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    //-------------------------------------------------------------------------------------------------------------
    // MARK: Segue
    //-------------------------------------------------------------------------------------------------------------
    @IBAction func escolherVeiculo() {
        NSLog("Ir para a seleção de veículo...")
        performSegue(withIdentifier: CallbackSegues.selection.rawValue, sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let callbackSelectionController: CallbackSelectionViewController = segue.destination as! CallbackSelectionViewController
        callbackSelectionController.veiculoSelecionadoCallback = {(_ veiculo: Veiculo) -> Void in
            
            //Atribui seleção ao texto
            self.lblVeiculo.text = veiculo.dadosFormatados()
        }
    }
}
