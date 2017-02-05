//
//  ViewController.swift
//  FirstApp
//
//  Created by Андрей Трошкин on 05.02.17.
//  Copyright © 2017 Андрей Трошкин. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var massege: UILabel!

    @IBOutlet weak var textField: UITextField!
    

    @IBAction func ckickmeTaped(_ sender: Any) {
       massege.text = textField.text!
        textField.text = "111"  
    }

    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

