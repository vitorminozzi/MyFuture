//
//  CalculadoraView.swift
//  CalculadoraIMC
//
//  Created by Vitor Gomes on 31/07/20.
//  Copyright © 2020 Vitor Gomes. All rights reserved.
//

import UIKit

class CalculadoraView: UIView {
    
    @IBOutlet weak var pesoTextField: UITextField!
    @IBOutlet weak var alturaTextField: UITextField!

    func setupView() {
        
        self.pesoTextField.placeholder = "Peso"
        self.alturaTextField.placeholder = "Altura"
    }

    func calcularIMC() -> String {
        
        let height: Float = Float(self.alturaTextField.text ?? "") ?? 0
        let weight: Float = Float(self.pesoTextField.text ?? "") ?? 0
        
        let height2 = height * height
        
         let imc = weight/height2
         
        
        
        if imc < 16 {
        
             return "Abaixo do peso"
         } else if imc >= 19 && imc < 25 {
             return "Peso normal"
         } else if imc >= 25 && imc < 30 {
             return "Sobrepeso"
         } else if imc >= 30 && imc < 40 {
             return "Obesidade Grau 1"
         } else if imc > 40 {
             return "Obesidade Grau 2"
         }
         
         return "Não conseguimos calcular"
         
        
    }
    
    
}
