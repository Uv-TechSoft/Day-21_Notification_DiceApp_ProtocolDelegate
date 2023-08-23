//
//  SecondViewController.swift
//  ProtocolDelegate
//
//  Created by Yogesh Patel on 03/12/21.
//

import UIKit

struct ContactModel{
    var fistname: String
    var lastname: String
}

protocol ContactSource: AnyObject{
    //var firstname: String { get set }
    var dict: [String: String] {get set}
   
   // func contactDetails(dict: [String: String])
  //  func contactDetails(contact: ContactModel)
}

//Dictionary and Model as variable pass karna hai - jeshe mene firstname string kiya hai.

class SecondViewController: UIViewController {

    @IBOutlet weak var lastnameField: UITextField!
    @IBOutlet weak var firstnameField: UITextField!
    
    weak var delegate: ContactSource?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = true
    
    }

    @IBAction func saveButtonTapped(_ sender: UIBarButtonItem) {
        guard let fname = firstnameField.text else { return }
        guard let lname = lastnameField.text else { return }
        
       // let contact = ContactModel(fistname: fname, lastname: lname)
     //   delegate?.contactDetails(dict: ["firstname":fname, "lastname":lname])
          
        let dict = ["firstname": fname, "lastname": lname]
        delegate?.dict = dict
//        delegate?.contactDetails(dict: dict)
      //  delegate?.firstname = fname
        self.navigationController?.popViewController(animated: true)
    }
}
