//
//  ViewController.swift
//  iqapp
//
//  Created by Karma Panchal on 10/04/20.
//  Copyright © 2020 Karma Panchal. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var playerOne: UITextField!
    
    
    @IBOutlet weak var playerTwo: UITextField!
    
    
    @IBAction func letsPlay(_ sender: Any) {
        UserDefaults.standard.set(playerOne.text, forKey: "playeronename")
        UserDefaults.standard.set(playerTwo.text, forKey: "playertwoname")
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        let nameObject = UserDefaults.standard.object(forKey: "playeronename")
        
        if let playeronename = nameObject as? String {
            playerOne.text = playeronename
        }
        
        let nameObject2 = UserDefaults.standard.object(forKey: "playertwoname")
   
        if let playertwoname = nameObject2 as? String {
            playerTwo.text = playertwoname
        }
        
        
        
        
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}

