//
//  NewPasswordViewController.swift
//  3m.1hw
//
//  Created by Meerim Mamatkadyrova on 21/5/23.
//

import UIKit

class NewPasswordViewController: UIViewController {
    
    var username: String?

    @IBOutlet weak var UsernameTF: UITextField!

    
    @IBOutlet weak var NewPasswordTF: UITextField!
    
    @IBOutlet weak var ConfirmPasswordTF: UITextField!
    
    @IBAction func SubmitButton(_ sender: Any) {
        
        let TFArray: [UITextField] = [UsernameTF, NewPasswordTF, ConfirmPasswordTF]
        
        var DidSignUpEnd = 0
            for i in TFArray {
                if i.text != "" {
                    if NewPasswordTF.text != ConfirmPasswordTF.text{
                        showAllert(message: "Пароли не совпадают!")
                    } else {
                        DidSignUpEnd += 1
                    }
               
                } else if i.text == "" {
                    i.placeholder = " Заполните, пожалуйста"
                    i.layer.borderWidth = 2
                    i.layer.borderColor = UIColor.red.cgColor
                    DidSignUpEnd = 0
                }
            }
           
        if DidSignUpEnd == 3 {
                openMain()
            }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UsernameTF.text = username ?? "empty"
    }
    
    func openMain() {
        let mainVc = storyboard?.instantiateViewController(withIdentifier: "main_vc")
        navigationController?.pushViewController(mainVc!, animated: true)
    }
    
    private func showAllert(message: String){
        let aletrController = UIAlertController(title: "Вход", message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .cancel) { action in
                self.NewPasswordTF.text = ""
                self.ConfirmPasswordTF.text = ""
            
        }
        
        aletrController.addAction(okAction)
        
        present(aletrController, animated: true)
    }
}
