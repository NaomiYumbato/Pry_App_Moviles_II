//
//  LoginViewController.swift
//  LoginApp
//
//  Created by DISEÑO on 15/04/25.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func loginTapped(_ sender: UIButton) {
        let username = usernameField.text ?? ""
        let password = passwordField.text ?? ""
        
        // Validar campos vacíos
        if username.isEmpty || password.isEmpty {
            showAlert("Por favor completa todos los campos.")
            return
        }
        
        // Obtener los datos guardados del registro
        let savedUsername = UserDefaults.standard.string(forKey: "username")
        let savedPassword = UserDefaults.standard.string(forKey: "password")
        
        // Comparar con los datos ingresados
        if username == savedUsername && password == savedPassword {
            // Ir a HomeViewController
            let homeVC = storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
            self.present(homeVC, animated: true, completion: nil)
        } else {
            showAlert("Usuario o contraseña incorrectos.")
        }
    }
    
    func showAlert(_ message: String) {
        let alert = UIAlertController(title: "Atención", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(alert, animated: true)
    }
    

 
    
}
