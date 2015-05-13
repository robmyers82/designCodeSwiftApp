//
//  LoginViewController.swift
//  DNApp
//
//  Created by UIT Coach on 2015-05-13.
//  Copyright (c) 2015 Meng To. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var dialogView: DesignableView!
    
    @IBAction func loginButtonDidTouch(sender: AnyObject) {
        dialogView.animation = "shake"
        dialogView.animate()
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
