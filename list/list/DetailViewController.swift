//
//  DetailViewController.swift
//  list
//
//  Created by Vitor Gomes on 18/08/20.
//  Copyright © 2020 Vitor Gomes. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var produtoLabel: UILabel!
    @IBOutlet weak var produto2Label: UILabel!
    
    
    var value: String = ""
    var nameValue: String = ""
    
    override func viewDidLoad() {
        
        self.produto2Label.text = nameValue
        self.produtoLabel.text = value
        print("viewdidload")
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidApper")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
           print("DetailViewController-viewDidDisappear")
       }
       
  override func viewWillDisappear(_ animated: Bool) {
     print("DetailViewController-viewWillDisappear")
 }
    
    @IBOutlet weak var fecharOutlet: UIButton!
    
    
    @IBAction func fecharButton(_ sender: Any) {
        
        
        self.dismiss(animated: true, completion: nil)
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
