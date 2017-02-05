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
    
    @IBAction func ShowTaped(_ sender: Any) {
   performSegue(withIdentifier: "Showsecond", sender: nil)
    }

    @IBAction func ckickmeTaped(_ sender: Any) {
       massege.text = "Got message: \(textField.text!)"
       textField.resignFirstResponder()
 
    }

    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController:
UITextFieldDelegate{
    func textFieldDidEndEditing(_ textField: UITextField){
        massege.text = "End editing"
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
     massege.text = "Begin editing"
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) ->Bool{
        massege.text = "Will change '\(string)'"
        return string != "b"
        
    }
}
