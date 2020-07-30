//
//  ViewController.swift
//  OrientacaoEObjeto
//
//  Created by Vitor Gomes on 27/07/20.
//  Copyright © 2020 Vitor Gomes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var passaro:Passaro = Passaro(tamanho: "", raca: "", cor: "", qtdPatas: 0, genero: "", especie: "")
    
    
    func apresentarPassaro(){
        
        print("Oi sou uma \(passaro.raca), minhas cores sao \(passaro.cor), tenho \(passaro.qtdPatas) patas")
        
    }
    
    
    

    override func viewDidLoad() {
        
        self.apresentarPassaro()
        
        
    super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

