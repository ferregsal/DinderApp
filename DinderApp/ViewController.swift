//
//  ViewController.swift
//  DinderApp
//
//  Created by Mañanas on 19/9/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var logInButton: UIButton!
    
    @IBOutlet weak var signInButton: UIButton!
    
    override func viewDidLoad() {
        mainView!.layer.cornerRadius = 12
        mainView!.layer.masksToBounds = true
        title = "Inicio de Sesión"
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

