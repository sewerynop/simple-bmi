//
//  ViewController.swift
//  Proste BMI
//
//  Created by Seweryn Kotowski on 15.09.2017.
//  Copyright © 2017 Seweryn Kotowski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelScore: UILabel!
    @IBOutlet weak var textFieldHeight: UITextField!
    @IBOutlet weak var textFieldWeight: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        textFieldHeight.keyboardType = UIKeyboardType.numberPad
        textFieldWeight.keyboardType = UIKeyboardType.numberPad
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func btnCount(_ sender: Any) {
        
        let title = "BŁĄD!"
        let message = "Uzupełnij prawidłowo wszystkie pola"
        let textOK = "OK"
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        let okButton = UIAlertAction(title: textOK, style: UIAlertActionStyle.cancel, handler: nil)
        alert.addAction(okButton)
        
        let height = Double(textFieldHeight.text!)
        let weight = Double(textFieldWeight.text!)
        
        if height != nil && weight != nil {
            let hundret = height! / 100
            let scoree = weight! / (hundret * hundret)
            labelScore.text = String(format: "%.2f", scoree)
            }else{
            present(alert, animated: true, completion: nil)
            }
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        
    }
    
    //    performSegue(withIdentifier: "segueV", sender: scoree)
    
    //    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //        if segue.identifier == "segueV" {
    //            if let destination = segue.destination as? SecondViewController {
    //                destination.passData = sender as? String
    //            }
    //        }
    //   
    //    }



}

