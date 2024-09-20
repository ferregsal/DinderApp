//
//  HomeViewController.swift
//  DinderApp
//
//  Created by Mañanas on 20/9/24.
//

import UIKit

enum ProviderType: String{
    case basic
    case google
}

class HomeViewController: UIViewController {

    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var providerLabel: UILabel!
    @IBOutlet weak var closeSessionButton: UIButton!
    
    private let email:String
    private let provider: ProviderType
    
    init (email: String, provider: ProviderType){
        self.email = email
        self.provider = provider
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Inicio"
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func closeSessionButtonAction(_ sender: Any) {
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
