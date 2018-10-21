//
//  ViewController.swift
//  AdaptiveApp
//
//  Created by Flavio Lazzarini on 21.10.18.
//  Copyright © 2018 Flavio Lazzarini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblProgrammer: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.lblProgrammer.text = NSLocalizedString("programer", comment: "Label: Title")
    }


}

