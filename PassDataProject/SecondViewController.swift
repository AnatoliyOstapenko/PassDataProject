//
//  SecondViewController.swift
//  PassDataProject
//
//  Created by MacBook on 16.01.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var goBackButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        goBackButton.layer.cornerRadius = 25.0
    }
    
    @IBAction func goBackButtonPressed(_ sender: UIButton) {
    }
    
    

}
