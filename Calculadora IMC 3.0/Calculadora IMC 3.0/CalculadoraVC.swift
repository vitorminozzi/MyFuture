//
//  ViewController.swift
//  Calculadora IMC 3.0
//
//  Created by Vitor Gomes on 05/08/20.
//  Copyright © 2020 Vitor Gomes. All rights reserved.
//

import UIKit

class CalculadoraVC: BaseViewController {


    @IBOutlet weak var resultadoLabel: UILabel!
    @IBOutlet weak var calcView: CalculadoraView!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var calcButton: UIButton!
    
    @IBOutlet weak var containerLabel: UILabel!
    
    
    override func viewDidLoad() {
        
        
        self.setupView()
        
        super.viewDidLoad()

    }

    @IBAction func calcularImcButton(_ sender: Any) {
        
        
        self.calcView.calcularIMC()
    }
    
    override func setupView() {
        
        
        self.calcView.setupView(color: .gray)
        self.calcView.delegate = self
        self.view.backgroundColor = .green
        self.containerView.backgroundColor = .green
        self.calcButton.backgroundColor = .red
        self.calcButton.setTitleColor(.white, for: .normal)
        self.containerLabel.text = "RESULTADO"
      
        
    }
}


extension CalculadoraVC: CalculadoraViewProtocol {
    func sucessCalcImc(value: String) {
        
        self.resultadoLabel.text = value
        
    }
    
    
    func failedCalcImc(msg: String) {
        self.resultadoLabel .text = msg
    }
    
}



