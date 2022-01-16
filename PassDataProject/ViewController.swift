//
//  ViewController.swift
//  PassDataProject
//
//  Created by MacBook on 15.01.2022.
//

import UIKit

class ViewController: UIViewController {    
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.layer.cornerRadius = 25.0 // add corner radius for login button

    }

    @IBAction func loginButtonPressed(_ sender: UIButton) {
        
        
    }
    
}

