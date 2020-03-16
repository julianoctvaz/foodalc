//
//  Receita.swift
//  Foodalc
//
//  Created by Juliano Vaz on 10/03/20.
//  Copyright © 2020 Juliano Vaz. All rights reserved.
//

import Foundation

///Comentarios sobre documentacao de receita
class Receita {
    var ingredientes: [Ingrediente]
    var nome: String = ""
    var modoDePreparo: String = ""
    
    init(ingredientes: Array<Ingrediente>, nome: String, modoDePreparo: String) {
        self.ingredientes = ingredientes
        self.nome = nome
        self.modoDePreparo = modoDePreparo
        
    }
    
    //getters and setters
}
