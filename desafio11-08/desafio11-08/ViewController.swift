//
//  ViewController.swift
//  desafio11-08
//
//  Created by Vitor Gomes on 11/08/20.
//  Copyright © 2020 Vitor Gomes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passTextField: UITextField!
    
    @IBOutlet weak var signButton: UIButton!
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var backView: UIView!

    
    var cadastro: [String] = ["email","senha"]

    var usuario: Usuario = Usuario(email: nil, password: nil)
    
    func enableButton(value: Bool) {
        
        if value {
            
            self.signButton.backgroundColor = UIColor(red: 35/255, green: 112/255, blue: 239/255, alpha: 1.0)
            self.loginButton.backgroundColor = UIColor(red: 35/255, green: 112/255, blue: 239/255, alpha: 1.0)
            
        }else{
        
   self.signButton.backgroundColor = UIColor(red: 35/255, green: 112/255, blue: 239/255, alpha: 0.4)
  self.loginButton.backgroundColor = UIColor(red: 35/255, green: 112/255, blue: 239/255, alpha: 0.4)
    }
    }
    
    
    func clearFields (){
        
        self.emailTextField.text = nil
        self.passTextField.text = nil
        
    }
    
    
    
    func checkIsValidFields() -> Bool {
        
        if !(self.emailTextField.text?.isEmpty ?? true) &&
            !(self.passTextField.text?.isEmpty ?? true){
            self.enableButton(value: true)
        return true
        
    }
        self.enableButton(value: false)
    return false
    }
    
    
    override func viewDidLoad() {
        
        
    
        self.enableButton(value: false)
        self.emailTextField.delegate = self
        self.passTextField.delegate = self
        print(cadastro)
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func signUpButton(_ sender: Any) {
        
        self.emailTextField.resignFirstResponder()
        self.passTextField.resignFirstResponder()
        
        
    }
    
    @IBAction func loginButton(_ sender: Any) {
        
        if self.emailTextField.text == usuario.email && self.passTextField.text == usuario.password {
            self.backView.backgroundColor = UIColor.green
        }else {
                
                self.backView.backgroundColor = UIColor.red
            }
        }
        
        
        
    }



extension ViewController : UITextFieldDelegate {
    
  
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        
        if textField == self.emailTextField {
            
            self.usuario.email = textField.text
        }else{
            
            self.usuario.password = textField.text
            
            print(usuario.email)
            print(usuario.password)
            
            self.clearFields()
            
        }
}
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        
        if textField == self.emailTextField{
            self.passTextField.becomeFirstResponder()
        }else{
            self.passTextField.resignFirstResponder()
            self.enableButton(value: true)
        }
        
        return true
    }
    }
    
    
    


