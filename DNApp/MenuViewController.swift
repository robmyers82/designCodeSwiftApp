//
//  MenuViewController.swift
//  DNApp
//
//  Created by UIT Coach on 2015-05-20.
//  Copyright (c) 2015 Meng To. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var viewDialog: DesignableView!
    
    @IBAction func closeButtonDidTouch(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
        viewDialog.animation = "fall"
        viewDialog.animate()
    }
}
