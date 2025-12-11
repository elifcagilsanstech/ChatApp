//
//  LoginViewController.swift
//  ChatApp
//
//  Created by Elif Çağıl on 11.12.2025.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var textFieldEmail: UITextField!
    
    @IBOutlet weak var textFieldPassword: UITextField!
    
    @IBOutlet weak var buttonSigIn: UIButton!
    
    @IBOutlet weak var buttonSignUp: UIButton!
    
    @IBOutlet weak var emailView : UIView!
    @IBOutlet weak var passwordView : UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        self.navigationItem.setHidesBackButton(true, animated: false)


    }
    
    func setupUI(){
        buttonSigIn.layer.borderColor = UIColor.white.cgColor
        buttonSigIn.layer.borderWidth = 1
        buttonSigIn.clipsToBounds = true
        buttonSigIn.layer.cornerRadius = 8
        buttonSignUp.layer.borderColor = UIColor.white.cgColor
        buttonSignUp.layer.borderWidth = 1
        buttonSignUp.clipsToBounds = true
        buttonSignUp.layer.cornerRadius = 8
        emailView.layer.cornerRadius = 8
        passwordView.layer.cornerRadius = 8
        
    }
    @IBAction func buttonSigInTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "ChatListView", bundle: nil)
        if let vc = storyboard.instantiateViewController(withIdentifier:"ChatListViewController") as? ChatListViewController {
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
    }

    
    @IBAction func buttonSignUpTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Register", bundle: nil)
        if let vc = storyboard.instantiateViewController(withIdentifier: "RegisterViewController") as? RegisterViewController {
            self.navigationController?.pushViewController(vc, animated: true)

            
        }
 
    }
    
    
    
}
