//
//  ForgotPasswordViewController.swift
//  3m.1hw
//
//  Created by Meerim Mamatkadyrova on 21/5/23.
//

import UIKit

class ForgotPasswordViewController: UIViewController {


    @IBOutlet weak var UsernameTF: UITextField!
    
    @IBOutlet weak var IDTF: UITextField!
    
    @IBOutlet weak var PhoneNumTF: UITextField!
    
    @IBAction func GetOTPButton(_ sender: Any) {
    }
    
    @IBAction func SubmitButton(_ sender: Any) {
        
        var TFArray: [UITextField] = [UsernameTF, IDTF, PhoneNumTF]
        
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
           
        if DidSignUpEnd == 3 {
                NewPwdVC()
            }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func NewPwdVC() {
        let NewPwdVc = storyboard?.instantiateViewController(withIdentifier: "NewPwd_vc") as! NewPasswordViewController
        NewPwdVc.username = UsernameTF.text
        navigationController?.pushViewController(NewPwdVc, animated: true)
    }
}
