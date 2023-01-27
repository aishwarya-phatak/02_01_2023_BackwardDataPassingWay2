//
//  ViewController.swift
//  02_01_2023_BackwardDataPassingWay2
//
//  Created by Vishal Jagtap on 27/01/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var rollNumberLabel: UILabel!
    //var secondViewController : SecondViewController = SecondViewController()
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func btnMoveToSVC(_ sender: Any) {
        
        var secondViewController = (self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController)!
        
        secondViewController.dataFromSecondViewController = {
            (firstName, lastName, rollNumber) in
            
            print(firstName)
            print(lastName)
            print(rollNumber)
            self.firstNameLabel.text = firstName
            self.lastNameLabel.text = lastName
            self.rollNumberLabel.text = rollNumber
        }
        
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
}
