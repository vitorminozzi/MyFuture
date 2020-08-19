//
//  ViewController.swift
//  list
//
//  Created by Vitor Gomes on 18/08/20.
//  Copyright © 2020 Vitor Gomes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let segueIndentifier: String = "produtoDetail"
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
           print("ViewController-viewWillAppear")
       }
       
       override func viewDidAppear(_ animated: Bool) {
           print("View Controller-viewDidApper")
       }
       
       override func viewDidDisappear(_ animated: Bool) {
        print("ViewController-viewDidDisappear")
          }
          
     override func viewWillDisappear(_ animated: Bool) {
        print("ViewController-viewWillDisappear")
    }
    
    
    @IBAction func clicouCadastrar(_
        sender: Any) {
        
        
        self.performSegue(withIdentifier: self.segueIndentifier, sender: self.produtoTextField.text)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let produto:String? = sender as? String
        let produto2:String? = self.nameTextField.text as? String
        
        var vc:DetailViewController? = segue.destination as? DetailViewController
        
        vc?.value = produto ?? ""
        vc?.nameValue = produto2 ?? " "
     
        
        
        
    }
    
    
    @IBOutlet weak var nameTextField: UITextField!
    
    
    @IBOutlet weak var produtoTextField: UITextField!
    @IBOutlet weak var cadastrarButton: UIButton!
    
}

