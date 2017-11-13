//
//  CallbackSelectionViewController.swift
//  example-protocol
//
//  Created by Victor Baleeiro on 13/11/17.
//  Copyright © 2017 Victor Baleeiro. All rights reserved.
//

import Foundation
import UIKit

class CallbackSelectionViewController: BaseViewController {
    
    //-------------------------------------------------------------------------------------------------------------
    // MARK: Properties
    //-------------------------------------------------------------------------------------------------------------
    //Views
    @IBOutlet weak var tbvSelection: UITableView!
    //Control, aux
    let listaVeiculos: Array = [Veiculo.init(marca: "Chevrolet", modelo: "Celta", placa: "AAA-3049"), Veiculo.init(marca: "Audi", modelo: "TT", placa: "ASD-4343"), Veiculo.init(marca: "Fiat", modelo: "147", placa: "AWE-3434")]
    
    
    //-------------------------------------------------------------------------------------------------------------
    // MARK: Lifecycle
    //-------------------------------------------------------------------------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        setupData()
    }
    
    
    //-------------------------------------------------------------------------------------------------------------
    // MARK: Setup
    //-------------------------------------------------------------------------------------------------------------
    func setupData() {
        tbvSelection.delegate = self
        tbvSelection.dataSource = self
    }
}


//-------------------------------------------------------------------------------------------------------------
// MARK: UITableViewDelegate
//-------------------------------------------------------------------------------------------------------------
extension CallbackSelectionViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //Obtem veículo conforme indice
        let veiculo: Veiculo = listaVeiculos[indexPath.row]
        //Informa seleção para a tela anterior
        self.veiculoSelecionadoCallback!(veiculo)
        //Volta para a tela anterior
        self.navigationController?.popViewController(animated: true)
    }
}


//-------------------------------------------------------------------------------------------------------------
// MARK: UITableViewDataSource
//-------------------------------------------------------------------------------------------------------------
extension CallbackSelectionViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaVeiculos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "SelectionCell")!
        
        //Obtem veículo conforme indice
        let veiculo: Veiculo = listaVeiculos[indexPath.row]
        cell.textLabel?.text = veiculo.dadosFormatados()
        
        return cell
    }
}
