//
//  ViewController.swift
//  OrientacaoEObjeto
//
//  Created by Vitor Gomes on 27/07/20.
//  Copyright © 2020 Vitor Gomes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var troca = false
    var jake = ""
    var passaro:Passaro = Passaro(tamanho: "", raca: "", cor: "", qtdPatas: 0, genero: "", especie: "")
    var husky = Cachorro(tamanho: "", raca: "", cor: "", qtdPatas: 0, genero: "", especie: "")
    
   	
   
    
    func apresentarPassaro(){
        
        print("Oi sou uma \(passaro.raca), minhas cores sao \(passaro.cor), tenho \(passaro.qtdPatas) patas")
        
    }
    
    
    func apresentarCachorro() {
        
       var iAmJake = "Oi sou o Jake, sou um \(husky.raca)"
       print(iAmJake)
       jake = iAmJake
        

    }

    
    override func viewDidLoad() {
        
        self.myFriendLabel.layer.borderColor = UIColor.darkGray.cgColor
        self.myFriendLabel.layer.cornerRadius = 5
        self.myFriendLabel.layer.borderWidth = 5
        
        self.apresentarPassaro()
        print("===========")
        self.apresentarCachorro()
       
     
      
    
        
        
    super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    

    @IBOutlet weak var myFriendLabel: UILabel!
    
    @IBAction func friendButton(_ sender: Any) {
        
        if troca == false {
            	
            self.myFriendLabel.text = jake
            troca = true
            
        }else {
            
            self.myFriendLabel.text = "My Friend"
            troca = false
        }
         
    }
}

