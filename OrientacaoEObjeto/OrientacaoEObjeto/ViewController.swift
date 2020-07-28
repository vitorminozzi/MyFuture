//
//  ViewController.swift
//  OrientacaoEObjeto
//
//  Created by Vitor Gomes on 27/07/20.
//  Copyright © 2020 Vitor Gomes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   

    override func viewDidLoad() {
        
        var animal: Animal = Animal(tamanho: "Grande", raca: "Husky", cor: "Branco", qtdPatas: 4, genero: "Macho", especie: "Canino")
        
        var animal2: Animal2 = Animal2(tamanho: "Pequeno", raca: "Basset", cor: "Marrom", qtdPatas: 4, genero: "Macho", especie: "Canino")
        
        
        
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

