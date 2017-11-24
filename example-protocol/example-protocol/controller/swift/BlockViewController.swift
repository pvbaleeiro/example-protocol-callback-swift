//
//  BlockViewController.swift
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
enum BlockSegues: String {
    case selection = "segue_selection"
}


class BlockViewController: BaseViewController {
    
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
    // MARK: Action
    //-------------------------------------------------------------------------------------------------------------
    @IBAction func escolherVeiculo() {
        NSLog("Ir para a seleção de veículo...")
        performSegue(withIdentifier: BlockSegues.selection.rawValue, sender: nil)
    }
    
    
    //-------------------------------------------------------------------------------------------------------------
    // MARK: Segue
    //-------------------------------------------------------------------------------------------------------------
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let blockSelectionController: BlockSelectionViewController = segue.destination as! BlockSelectionViewController
        blockSelectionController.veiculoSelecionadoBlock = {(_ veiculo: Veiculo) -> Void in
            
            //Atribui seleção ao texto
            self.lblVeiculo.text = veiculo.dadosFormatados()
        }
    }
}
