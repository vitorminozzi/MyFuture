//
//  Animals.swift
//  OrientacaoEObjeto
//
//  Created by Vitor Gomes on 27/07/20.
//  Copyright © 2020 Vitor Gomes. All rights reserved.
//

import Foundation

class Animal {
    
    var tamanho: String
    var raca: String
    var cor: String
    var qtdPatas: Int
    var genero: String
    var especie: String
    
    init(tamanho: String, raca: String, cor: String, qtdPatas: Int, genero: String, especie: String  ){
        
        self.tamanho = tamanho
        self.raca = raca
        self.cor = cor
        self.qtdPatas = qtdPatas
        self.genero = genero
        self.especie = especie
        
    }
}



