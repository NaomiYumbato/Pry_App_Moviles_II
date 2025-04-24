//
//  HomeViewController.swift
//  LoginApp
//
//  Created by DISEÑO on 15/04/25.
//

import UIKit

class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
     
            
        }
        

    @IBAction func loginTapped(_ sender: UIButton) {
        let loginVC = storyboard?.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
                self.present(loginVC, animated: true, completion: nil)
    }
    
        
    @IBAction func registerTapped(_ sender: UIButton) {
        let registerVC = storyboard?.instantiateViewController(withIdentifier: "RegisterViewController") as! RegisterViewController
                self.present(registerVC, animated: true, completion: nil)
            
    }
    
        
    
    
}
