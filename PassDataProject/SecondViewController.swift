//
//  SecondViewController.swift
//  PassDataProject
//
//  Created by MacBook on 16.01.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    var labelText: String?
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var goBackButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let text = labelText else { return }
        label.text = "Hello, \(text)!"
        goBackButton.layer.cornerRadius = 25.0
    }
    
    @IBAction func goBackButtonPressed(_ sender: UIButton) {
    }
    
    

}
