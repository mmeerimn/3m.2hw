//
//  ViewController.swift
//  3m.1hw
//
//  Created by meerim on 15.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var EmailTF: UITextField!

    @IBOutlet weak var PasswordTF: UITextField!
    
    
    @IBOutlet weak var ForgotPasswordLabel: UILabel!
    
    @IBOutlet weak var SignUpButton: UILabel!
    
    @IBOutlet weak var CheckMarkIMG: UIImageView!
    
    @IBAction func CheckBoxButton(_ sender: Any) {
        if CheckMarkIMG.alpha == 1 {
            CheckMarkIMG.alpha = 0
        } else {
            CheckMarkIMG.alpha = 1
        }
    }
    
    @IBAction func SignInButton(_ sender: Any) {
        if  EmailTF.text == "" && PasswordTF.text == "" {
            EmailTF.placeholder = " Заполните, пожалуйста"
            self.EmailTF.layer.borderWidth = 2
            self.EmailTF.layer.borderColor = UIColor.red.cgColor
            PasswordTF.placeholder = " Заполните, пожалуйста"
            self.PasswordTF.layer.borderWidth = 2
            self.PasswordTF.layer.borderColor = UIColor.red.cgColor
       
        } else if EmailTF.text == "" {
            EmailTF.placeholder = " Заполните, пожалуйста"
            self.EmailTF.layer.borderWidth = 2
            self.EmailTF.layer.borderColor = UIColor.red.cgColor
       
        } else if PasswordTF.text == "" {
            PasswordTF.placeholder = " Заполните, пожалуйста"
            self.PasswordTF.layer.borderWidth = 2
            self.PasswordTF.layer.borderColor = UIColor.red.cgColor
       
        } else {
            openMain()
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        ForgotPasswordLabel.isUserInteractionEnabled = true
        ForgotPasswordLabel.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(forgotPassword)))
        SignUpButton.isUserInteractionEnabled = true
        SignUpButton.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(signUp)))
        
    }

    func openMain(){
        let mainVC = storyboard?.instantiateViewController(withIdentifier: "main_vc")
        navigationController?.pushViewController(mainVC!, animated: true)
    }
    
    @objc func forgotPassword(){
        let ForgotPwdVC = storyboard?.instantiateViewController(withIdentifier: "ForgotPwd_vc")
        navigationController?.pushViewController(ForgotPwdVC!, animated: true)
    }
    
    @objc func signUp(){
        let signUpVC = storyboard?.instantiateViewController(withIdentifier: "signUp_vc")
        navigationController?.pushViewController(signUpVC!, animated: true)
    }

}

