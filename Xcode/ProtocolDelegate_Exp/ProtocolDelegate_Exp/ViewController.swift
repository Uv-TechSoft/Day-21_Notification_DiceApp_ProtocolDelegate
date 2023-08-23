//
//  ViewController.swift
//  ProtocolDelegate_Exp
//
//  Created by Imam MohammadUvesh on 04/12/21.
//

import UIKit

class ViewController: UIViewController,Data {
    
    //MARK: outlets
    @IBOutlet weak var displayprotocolText: UILabel!
    
    //MARK: variabels
    //var dataText: String = ""
        override func viewDidLoad() {
        super.viewDidLoad()

    }
    
        

    @IBAction func enterDataTapped(_ sender: UIButton)
    {
        if let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        {
            secondVC.delegate = self
            self.navigationController?.pushViewController(secondVC, animated: true)
        }
    }
    func textData(text: String) {
        displayprotocolText.text = text
    }
    
}

