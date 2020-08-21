//
//  AddViewController.swift
//  Navigation
//
//  Created by Vitor Gomes on 20/08/20.
//  Copyright © 2020 Vitor Gomes. All rights reserved.
//

import UIKit


protocol AddViewControllerProtocol: class {
       
       func sucessAddProduto(array: [Produto])
       
   }

class AddViewController: UIViewController {
    
    
   
    
    weak var delegate:AddViewControllerProtocol?

    var produto:Produto = Produto(name: nil, price: nil)
    var arrayProdutos: [Produto] = []
    
    
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var priceTextField: UITextField!
    @IBOutlet weak var cadastrarButton: UIButton!
    
    
    
    func fillArray() {
        
       produto.name = self.nameTextField.text
       produto.price =  Float(self.priceTextField.text ?? "") ?? 0
        
    }
    
    
    @IBAction func addProdutosButton(_ sender: Any) {
        
        self.fillArray()
        self.arrayProdutos.append(Produto(name: self.nameTextField.text ?? "", price: Float(self.priceTextField.text ?? "") ?? 0))
        
        print(arrayProdutos)
        self.clearFields()
        
        self.delegate?.sucessAddProduto(array: self.arrayProdutos)
    }
    
    
    func enableButton(value: Bool) {
        
        if value {
            
            self.cadastrarButton.backgroundColor = UIColor(red: 35/255, green: 112/255, blue: 239/255, alpha: 1.0)

        }else {
            self.cadastrarButton.backgroundColor = UIColor(red: 35/255, green: 112/255, blue: 239/255, alpha: 0.4)
            
        }
        self.cadastrarButton.isEnabled = value
    }
  
    func clearFields() {
        
        self.nameTextField.text = nil
        self.priceTextField.text = nil
    }


    
    override func viewDidLoad() {
        
        self.enableButton(value: false)
        self.nameTextField.delegate = self
        self.priceTextField.delegate = self
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension AddViewController: UITextFieldDelegate{

    func textFieldDidEndEditing(_ textField: UITextField) {
        
        if self.nameTextField.text != nil && self.priceTextField.text != nil{
            
            self.enableButton(value: true)
        }else{
            
            self.enableButton(value: false)
        }
    }
    
}

