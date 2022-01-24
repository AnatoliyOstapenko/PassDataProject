//
//  QRCodeViewController.swift
//  PassDataProject
//
//  Created by MacBook on 22.01.2022.
//

import UIKit

class QRCodeViewController: UIViewController {

    var qrImage: UIImage?
    
    @IBOutlet weak var qrCodeImageView: UIImageView!
    @IBOutlet weak var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        backButton.layer.cornerRadius = 25.0
        qrCodeImageView.image = qrImage
    }
    
    func goToWKWeb() {
        let storyboard = UIStoryboard(name: "WKWeb", bundle: nil)
        guard let vc = storyboard.instantiateViewController(withIdentifier: "WKWeb") as? WKWebViewController else { return }
        show(vc, sender: nil)
    }
    
    @IBAction func qrCodeButtonPressed(_ sender: UIButton) {
        
        print("QR Code button pressed")
        
        let alert = UIAlertController(title: "QR Code", message: "Would you like to jump into web?", preferredStyle: .alert)
//        let ok = UIAlertAction(title: "OK", style: .default) { (action) in
//            self.goToWKWeb()
//        }
        let cancel = UIAlertAction(title: "CANCEL", style: .cancel, handler: nil)
//        alert.addAction(ok)
        alert.addAction(cancel)
        present(self, animated: true, completion: nil)
        
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        
        let alert = UIAlertController(title: "QR Code", message: "Would you like to jump into web?", preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default) { (action) in
            self.dismiss(animated: true, completion: nil)
        }
        let cancel = UIAlertAction(title: "CANCEL", style: .cancel, handler: nil)
        alert.addAction(ok)
        alert.addAction(cancel)
        present(self, animated: true, completion: nil)
        
        
    }


}
