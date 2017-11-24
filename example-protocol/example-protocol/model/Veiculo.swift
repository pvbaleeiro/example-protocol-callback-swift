//
//  Veiculo.swift
//  example-protocol
//
//  Created by Victor Baleeiro on 13/11/17.
//  Copyright © 2017 Victor Baleeiro. All rights reserved.
//

import Foundation

class Veiculo: NSObject {
    
    //-------------------------------------------------------------------------------------------------------------
    // MARK: Properties
    //-------------------------------------------------------------------------------------------------------------
    var marca: String = ""
    var modelo: String = ""
    var placa: String = ""
    
    
    @objc public init(marca: String, modelo: String, placa: String) {
        self.marca = marca
        self.modelo = modelo
        self.placa = placa
    }
    
    @objc public func dadosFormatados() -> String {
        return String(self.placa + " | " + self.marca + " | " + self.modelo)
    }
}
