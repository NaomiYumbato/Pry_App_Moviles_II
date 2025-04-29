//
//  UserEditViewController.swift
//  Austen&Alcott
//
//  Created by Naomi Yumbato on 20/04/25.
//

import UIKit

class UserEditViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func didTapReturn(_ sender: UIButton) {
        print("A punto de volver atras")
        self.dismiss(animated: true, completion: nil)
    }

}
