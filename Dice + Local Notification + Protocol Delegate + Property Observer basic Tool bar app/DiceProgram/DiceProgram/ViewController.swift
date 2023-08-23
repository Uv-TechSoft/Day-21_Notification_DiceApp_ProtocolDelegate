//
//  ViewController.swift
//  DiceProgram
//
//  Created by Yogesh Patel on 02/12/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageOne: UIImageView!
    @IBOutlet weak var diceImageTwo: UIImageView!
    @IBOutlet weak var diceLabel: UILabel!
    
    //var diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
//    var diceArray = [UIImage(named: "dice1"), UIImage(named: "dice2"), UIImage(named: "dice3"), UIImage(named: "dice4"), UIImage(named: "dice5"), UIImage(named: "dice6")]
    
    //#imageLiteral(resourceName: "image")
    //var diceArray = [#imageLiteral(resourceName: "dice1"), #imageLiteral(resourceName: "dice2"), #imageLiteral(resourceName: "dice3"), #imageLiteral(resourceName: "dice4"), #imageLiteral(resourceName: "dice5"), #imageLiteral(resourceName: "dice6")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func rollButtonTapped(_ sender: UIButton) {
        let value1 = Int.random(in: 1...6)
        print("value1", value1)
        let value2 = Int.random(in: 1...6)
        print("value2", value2)

        diceLabel.text = "The sum of dice is \(value1 + value2)"
        
        diceImageOne.image = UIImage(named: "dice\(value1)")
        diceImageTwo.image = UIImage(named: "dice\(value2)")
        
       // diceImageOne.image = diceArray[value1]
       // diceImageTwo.image = diceArray[value2]
        //diceImageOne.image = UIImage(named: diceArray[value1])
        //diceImageTwo.image = UIImage(named: diceArray[value2])
    }
}

