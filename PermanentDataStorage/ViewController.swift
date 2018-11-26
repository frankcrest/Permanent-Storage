//
//  ViewController.swift
//  PermanentDataStorage
//
//  Created by Frank Chen on 2018-11-25.
//  Copyright © 2018 Frank Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let numberObject = UserDefaults.standard.object(forKey: "number")
        
        if let number = numberObject as? String {
            textField.text = number
        }
        
       

        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var textField: UITextField!
    
    @IBAction func saveNumber(_ sender: Any) {
        UserDefaults.standard.set(textField.text, forKey: "number")
        
        
    }
}

