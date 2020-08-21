//
//  ViewController.swift
//  Navigation
//
//  Created by Vitor Gomes on 20/08/20.
//  Copyright © 2020 Vitor Gomes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var produtoLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func clicouAddButton(_ sender: UIBarButtonItem) {
        
    self.performSegue(withIdentifier:"addViewController", sender: nil)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        
        let vc: AddViewController? = segue.destination as? AddViewController
        vc?.delegate = self
        
    }
    
    
}

extension ViewController: AddViewControllerProtocol{
    
    func sucessAddProduto(array: [Produto]) {
        
        
        
        var value:String = self.produtoLabel.text ?? " "
        
    
            
            value = "\(value), \(array.last?.name ?? " ") "
            
        
        self.produtoLabel.text = value
        print("sucessAddProduto")
        print(value)
    }
}
