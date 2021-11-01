//
//  ViewController.swift
//  SESAC_WEEK6
//
//  Created by Lia AN on 2021/11/01.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = NSLocalizedString("welcome_text", comment: "")
        
    }


}

