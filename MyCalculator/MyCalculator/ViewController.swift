//
//  ViewController.swift
//  MyCalculator
//
//  Created by Vitor Gomes on 02/08/20.
//  Copyright © 2020 Vitor Gomes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let shelly = brawnData(vida: "Medio", dano: "Medio", mobilidade: "Medio", alcance: "Baixo")
    
    @IBOutlet var myTitle: UILabel!
    
    @IBOutlet weak var searchBrawn: UITextField!
    
    @IBOutlet weak var vidaLabel: UILabel!
    
    @IBOutlet weak var danoLabel: UILabel!
    
    @IBOutlet weak var mobilidadeLabel: UILabel!
    
    @IBOutlet weak var alcanceLabel: UILabel!
    
    var dataShelly:String = "Shelly"
    
    

    override func viewDidLoad() {
        
        
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

 
    @IBAction func searchButton(_ sender: Any) {
        
        if self.searchBrawn.text == "Shelly"{
            self.showShelly()
            }
        
        if self.searchBrawn.text == "Piper"{
        self.showPiper()
        }
    }
    
    
    
    func showShelly() {
        
        self.vidaLabel.text = shelly.vida
        self.danoLabel.text = shelly.dano
        self.mobilidadeLabel.text = shelly.mobilidade
        self.alcanceLabel.text = shelly.alcance
        
    }
    
    func showPiper() {
        
        self.vidaLabel.text = piper.vida
        self.danoLabel.text = piper.dano
        self.mobilidadeLabel.text = piper.mobilidade
        self.alcanceLabel.text = piper.alcance
        
        
    }
    
}

