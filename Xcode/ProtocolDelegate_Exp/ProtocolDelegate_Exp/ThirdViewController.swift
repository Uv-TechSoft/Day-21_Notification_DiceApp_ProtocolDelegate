//
//  ThirdViewController.swift
//  ProtocolDelegate_Exp
//
//  Created by Imam MohammadUvesh on 04/12/21.
//

import UIKit
protocol thirdData: AnyObject
{
    var thirdText: String {get set}
}

class ThirdViewController: UIViewController {

    @IBOutlet weak var thirdTextData: UITextField!
    
    //MARK: Variables
    var delegate: thirdData?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate?.thirdText = thirdTextData.text!
    
        navigationController?.isNavigationBarHidden = true
    }
    
    
    @IBAction func backTapped(_ sender: UIBarButtonItem)
    {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func addTapped(_ sender: UIBarButtonItem)
    {
        guard let dataThree = thirdTextData.text else { return }
        delegate?.thirdText = dataThree
        navigationController?.popViewController(animated: true)
        
        
    }
}
