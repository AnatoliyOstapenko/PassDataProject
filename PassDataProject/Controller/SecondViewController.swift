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
    @IBOutlet weak var qrCodeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let text = labelText else { return }
        label.text = "Hello, \(text)!"
        goBackButton.layer.cornerRadius = 25.0
        qrCodeButton.layer.cornerRadius = 25.0
    }
    
    @IBAction func goBackButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func qrCodeButtonPressed(_ sender: UIButton) {
        goToQRCodeVC()
        
        
        
    }
    
    func goToQRCodeVC() {

        // Initialize a storyboard which you want to jump to
        let storyboard = UIStoryboard(name: "QRCode", bundle: nil)
        
        // Suitable for navigation controller only
        let vc = storyboard.instantiateViewController(withIdentifier: "QRCode")
        
        vc.modalPresentationStyle = .fullScreen // open full screen
        present(vc, animated: true, completion: nil)
    }

}
