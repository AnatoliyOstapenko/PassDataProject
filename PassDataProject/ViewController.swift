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
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginTextField.delegate = self
        passwordTextField.delegate = self
        loginButton.layer.cornerRadius = 25.0 // add corner radius for login button

    }
    // Data transfer method VC -> second VC
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? SecondViewController else { return }
        destination.labelText = loginTextField.text
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    @IBAction func loginButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "goToSecondVC", sender: nil)
    }
    // Create manualy IBAction to use unwind segue
    @IBAction func unwindSegueToMainScreen(segue: UIStoryboardSegue) {
        
    }
    
}
// MARK:- TextField Delegate Method
extension ViewController: UITextFieldDelegate {
    
    // It happens when user pressed return button in textField
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        loginTextField.endEditing(true)
        passwordTextField.endEditing(true)
        return true
    }
}

