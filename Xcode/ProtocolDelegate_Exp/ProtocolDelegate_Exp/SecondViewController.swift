//
//  SecondViewController.swift
//  ProtocolDelegate_Exp
//
//  Created by Imam MohammadUvesh on 04/12/21.
//

import UIKit

protocol Data
{
    func textData(text: String)
}

class SecondViewController: UIViewController,thirdData {
    
    
    
   //MARK: Outlets
    @IBOutlet weak var textOne: UITextField!
    
    @IBOutlet weak var newText: UILabel!
    
    //MARK: Variables
    var delegate: Data?
    var thirdText: String = ""
        //   newText.text = thirdText
    override func viewDidLoad()
    {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(#function)
        newText.text  = thirdText
    }

    @IBAction func dataSaveTapped(_ sender: UIButton)
    {
        guard let data = textOne.text else {return}
        delegate?.textData(text: data)
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func nextTapped(_ sender: UIButton)
    {
        if let thirdVC = self.storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as? ThirdViewController
        {
            //MARK: Delegate Compulsory
            thirdVC.delegate = self
            self.navigationController?.pushViewController(thirdVC, animated: true)
        }
    }
    
   // delegate?.thirdText = newText
    
}
