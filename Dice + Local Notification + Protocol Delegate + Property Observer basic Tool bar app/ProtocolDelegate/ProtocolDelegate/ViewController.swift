//
//  ViewController.swift
//  ProtocolDelegate
//
//  Created by Yogesh Patel on 03/12/21.
//

import UIKit

class ViewController: UIViewController, ContactSource {
    var dict: [String : String] = ["":""]
    

    @IBOutlet weak var lastnameLabel: UILabel!
    @IBOutlet weak var firstnameLabel: UILabel!
    //var firstname: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(#function)
        firstnameLabel.text = dict["firstname"]
        lastnameLabel.text = dict["lastname"]
    }

    @IBAction func nextButtonTapped(_ sender: UIButton) {
        if let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController{
            secondViewController.delegate = self
            self.navigationController?.pushViewController(secondViewController, animated: true)
        }
    }
    
//    func contactDetails(dict: [String : String]) {
//        firstnameLabel.text = dict["firstname"]
//        lastnameLabel.text = dict["lastname"]
//    }
//
//    func contactDetails(contact: ContactModel) {
//        firstnameLabel.text = contact.fistname
//        lastnameLabel.text = contact.lastname
//    }
//
}

