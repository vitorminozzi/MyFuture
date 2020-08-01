//
//  ViewController.swift
//  CalculadoraIMC
//
//  Created by Vitor Gomes on 31/07/20.
//  Copyright © 2020 Vitor Gomes. All rights reserved.
//

import UIKit

class CalculadoraVC: UIViewController {
    
    
   
    @IBOutlet weak var resultadoLabel: UILabel!
    
    @IBOutlet weak var calcView: CalculadoraView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func cliclouCalcularButton(_ sender: UIButton) {
        
 
        self.resultadoLabel.text = self.calcView.calcularIMC()
    
}

}
