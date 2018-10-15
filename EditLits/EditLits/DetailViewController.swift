//
//  DetailViewController.swift
//  EditLits
//
//  Created by Flavio Lazzarini on 14.10.18.
//  Copyright © 2018 Flavio Lazzarini. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var personData: PersonData?

    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var postCodeLabel: UILabel!
    
    func configureView() {
        // Update the user interface for the detail item.
        firstNameLabel.text = personData!.firstName
        lastNameLabel.text = personData!.lastName
        postCodeLabel.text = String(personData!.plz)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "editDetail" {
            //let controller = segue.destination as! EditViewController
            //controller.person = self.personData
        }
    }

}

