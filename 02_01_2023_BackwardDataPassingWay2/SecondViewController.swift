//
//  SecondViewController.swift
//  02_01_2023_BackwardDataPassingWay2
//
//  Created by Vishal Jagtap on 27/01/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var rollNumberTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    
    var firstName : String = ""
    var lastName : String = ""
    var rollNumber : String = ""
    
    var dataFromSecondViewController : ((String,String, String)->Void)?
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        //extractData()
    }
    
    /*func extractData(){
     firstName = self.firstNameTextField.text!
     lastName = self.lastNameTextField.text!
     rollNumber = self.rollNumberTextField.text!
    }*/
    
    @IBAction func btnNavigateToFirstViewController(_ sender: Any) {
        guard let dataOnSVC = dataFromSecondViewController else {
            return  }
        firstName = self.firstNameTextField.text!
        lastName = self.lastNameTextField.text!
        rollNumber = self.rollNumberTextField.text!
        
        //extractData()
        print(firstName)
        dataOnSVC(firstName,lastName,rollNumber)
        
        navigationController?.popViewController(animated: true)
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
