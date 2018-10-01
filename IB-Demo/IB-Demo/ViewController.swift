//
//  ViewController.swift
//  IB-Demo
//
//  Created by Flavio Lazzarini on 01.10.18.
//  Copyright © 2018 Flavio Lazzarini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var spinButton: UIButton!
    var biggerThan90 = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        sliderLabel.text = String(format: "%.2f",sender.value)
        
        if sender.value > 90 && biggerThan90 == false{
            biggerThan90 = true
            let alertController = UIAlertController( title: "Info",
                                                     message: "You reached 90",
                                                     preferredStyle: .alert)
            let defaultAction = UIAlertAction(
                title: "OK", style: .cancel,
                handler: nil)
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
        }
        else if sender.value < 90{
            biggerThan90 = false
        }
        
    }
    
    @IBAction func spinButtonPressed(_ sender: UIButton) {
        if spinner.isAnimating{
            spinner.stopAnimating()
            spinButton.setTitle("start spinning", for: .normal)
        }
        else{
            spinner.startAnimating()
            spinButton.setTitle("stop spinning", for: .normal)
        }
    }
    
    @IBAction func colorButtonValueChanged(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            self.view.backgroundColor = UIColor.white
        case 1:
            self.view.backgroundColor = UIColor.gray
        default:
            break
        }
    }
    @IBAction func infoButtonPressed(_ sender: Any) {
        let alertController = UIAlertController( title: "Info",
                                                 message: "You pressed the i-Button",
                                                 preferredStyle: .alert)
        let defaultAction = UIAlertAction(
            title: "OK", style: .cancel,
            handler: nil)
        
        let cancel = UIAlertAction(
            title: "...really?", style: .default,
            handler: nil)
        alertController.addAction(defaultAction)
        alertController.addAction(cancel)
        self.present(alertController, animated: true, completion: nil)
    }
}

