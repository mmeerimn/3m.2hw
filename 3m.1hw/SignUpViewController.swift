//
//  SignUpViewController.swift
//  3m.1hw
//
//  Created by Meerim Mamatkadyrova on 21/5/23.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var FullNameTF: UITextField!
    
    @IBOutlet weak var MobileNumberTF: UITextField!
    
    @IBOutlet weak var EmailTF: UITextField!
    
    @IBOutlet weak var UserNameTF: UITextField!
    
    @IBOutlet weak var PasswordTF: UITextField!
    
    @IBOutlet weak var ConfirmingPasswordTF: UITextField!
    
    @IBAction func SignUpButton(_ sender: Any) {
        
        var TFArray: [UITextField] = [FullNameTF, MobileNumberTF, EmailTF, UserNameTF, PasswordTF, ConfirmingPasswordTF]
        
        var DidSignUpEnd = 0
            for i in TFArray {
                if i.text != "" {
                    DidSignUpEnd += 1
                } else if i.text == ""{
                    i.placeholder = " Заполните, пожалуйста"
                    i.layer.borderWidth = 2
                    i.layer.borderColor = UIColor.red.cgColor
                    DidSignUpEnd = 0
                }
            }
            if DidSignUpEnd == 6{
                openMain()
            }
    }
 
    
    @IBOutlet weak var SignInLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SignInLabel.isUserInteractionEnabled = true
        SignInLabel.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(signIn)))
        
    }
    
    func openMain(){
        let mainVc = storyboard?.instantiateViewController(withIdentifier: "main_vc")
        navigationController?.pushViewController(mainVc!, animated: true)
    }
    
    @objc func signIn(){
        let signInVC = storyboard?.instantiateViewController(withIdentifier: "signIn_vc")
        navigationController?.pushViewController(signInVC!, animated: true)
    }
    
}
