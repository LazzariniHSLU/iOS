//
//  ViewController.swift
//  ModalDemo
//
//  Created by Flavio Lazzarini on 08.10.18.
//  Copyright © 2018 Flavio Lazzarini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let secondViewController = SecondViewController()
    var appearanceCounter = 0
    
    @IBOutlet weak var counterLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        appearanceCounter += 1
        counterLabel.text = String(appearanceCounter)
    }
    
    
    @IBAction func showSecondView(_ sender: Any) {
        secondViewController.modalTransitionStyle = UIModalTransitionStyle.coverVertical
        self.present(secondViewController, animated: true, completion: nil)
    }
    
    @IBAction func unwindToVC(segue:UIStoryboardSegue) { }
}

