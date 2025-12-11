//
//  RegisterViewController.swift
//  ChatApp
//
//  Created by Elif Çağıl on 11.12.2025.
//

import UIKit

class RegisterViewController: UIViewController {

    
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var surnameTextField: UITextField!
    @IBOutlet weak var nameView: UIView!
    @IBOutlet weak var surnameView: UIView!
    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var phoneNumberView: UIView!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var signInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        self.navigationItem.setHidesBackButton(true, animated: false)

    }
    
    
    
    
    func setupUI(){
        nameView.layer.cornerRadius = 8
        surnameView.layer.cornerRadius = 8
        emailView.layer.cornerRadius = 8
        phoneNumberView.layer.cornerRadius = 8
        passwordView.layer.cornerRadius = 8
        registerButton.layer.cornerRadius = 8
        registerButton.layer.masksToBounds = true
        registerButton.layer.borderWidth = 1
        registerButton.layer.borderColor = UIColor.white.cgColor
        signInButton.layer.cornerRadius = 8
        signInButton.layer.masksToBounds = true
        signInButton.layer.borderWidth = 1
        signInButton.layer.borderColor = UIColor.white.cgColor
    }

   @IBAction func registerButtonTapped(_ sender: Any) {
        
        
    }
    
    
    @IBAction func signInButtonTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Login", bundle: nil)
        if let vc = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as? LoginViewController {
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
        
    }
}
