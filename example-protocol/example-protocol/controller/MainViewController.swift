//
//  MainViewController.swift
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
enum MainSegues: String {
    case callback = "segue_callback"
    case delegate = "segue_delegate"
}


class MainViewController: BaseViewController {
    
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
    @IBAction func exemploCallback() {
        NSLog("Ir para exemplo de callback...")
        performSegue(withIdentifier: MainSegues.callback.rawValue, sender: nil)
    }
    
    @IBAction func exemploDelegate() {
        NSLog("Ir para exemplo de delegate...")
        performSegue(withIdentifier: MainSegues.delegate.rawValue, sender: nil)
    }
}
