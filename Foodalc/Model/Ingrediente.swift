//
//  Ingrediente.swift
//  Foodalc
//
//  Created by Juliano Vaz on 10/03/20.
//  Copyright © 2020 Juliano Vaz. All rights reserved.
//

import Foundation

class Ingrediente {
    var nome: String = ""
    var qtd: Int = 0
    var unidade: Float = 0.0
    var unidadeDeMedida: String = ""
    
    init(nome: String, qtd: Int, unidade: Float, unidadeDeMedida: String) {
        self.nome = nome
        self.qtd = qtd
        self.unidade = unidade
        self.unidadeDeMedida = unidadeDeMedida
    }
    
    //getters and setters
}
