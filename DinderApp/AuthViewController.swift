//
//  ViewController.swift
//  DinderApp
//
//  Created by Mañanas on 19/9/24.
//

import UIKit
import FirebaseAuth
import FirebaseAnalytics

class AuthViewController: UIViewController {

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

    @IBAction func logInButtonAction(_ sender: Any) {
        
    }
    @IBAction func signInButtonAction(_ sender: Any) {
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
                if result != nil, error == nil {
                    //self.navigationController?.pushViewController(HomeViewController(email: result!.user.email!, provider: .basic), animated: true)
                    
                    self.performSegue(withIdentifier: "goToHome", sender: self)
                }
                else{
                    let alertController = UIAlertController(title: "Error", message: "Se ha producido un error registrando al usuario. \(error?.localizedDescription ?? "")", preferredStyle: .alert)
                    alertController.addAction(UIAlertAction(title:"Aceptar", style: .default))
                    
                    self.present(alertController,animated: true, completion: nil)
                }
            }
        }
    }
    
}

