//
//  QRCodeViewController.swift
//  PassDataProject
//
//  Created by MacBook on 22.01.2022.
//

import UIKit

class QRCodeViewController: UIViewController {
    
    
    @IBOutlet weak var qrCodeImage: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func qrCodeButtonPressed(_ sender: UIButton) {
    }
    
    
    @IBAction func cancelBarButtonPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
        
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
