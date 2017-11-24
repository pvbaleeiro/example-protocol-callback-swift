//
//  DelegateViewController.swift
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
enum DelegateSegues: String {
    case selection = "segue_selection"
}


class DelegateViewController: BaseViewController {
    
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
        performSegue(withIdentifier: DelegateSegues.selection.rawValue, sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let delegateSelectionController: DelegateSelectionViewController = segue.destination as! DelegateSelectionViewController
        delegateSelectionController.selectionDelegate = self
    }
}


//-------------------------------------------------------------------------------------------------------------
// MARK: Delegate próxima tela
//-------------------------------------------------------------------------------------------------------------
extension DelegateViewController: DelegateSelectionViewControllerDelegate {
    
    func selecionouVeiculo(veiculo: Veiculo) {
        //Atribui seleção ao texto
        self.lblVeiculo.text = veiculo.dadosFormatados()
    }
}

