//
//  ViewController.swift
//  DinderApp
//
//  Created by Mañanas on 19/9/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainView: UIView?
    
    override func viewDidLoad() {
        mainView?.layer.cornerRadius = 12
        mainView!.layer.masksToBounds = true
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

