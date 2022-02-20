//
//  ViewController.swift
//  Dicee-iOS13
//
//

import UIKit

class ViewController: UIViewController {
    // MARK: Properties
    // MARK: Outlets
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var diceButton: UIButton!
    // MARK: Initialization
    // MARK: Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    // MARK: Actions
    @IBAction func rollButtonPressed(_ sender: Any) {
        let randomInt1 = Int.random(in: 0..<6)
        let randomInt2 = Int.random(in: 0..<6)
        let imageSort = ["DiceOne","DiceTwo","DiceThree","DiceFour","DiceFive","DiceSix"] [randomInt1]
        let imageSort2 = ["DiceOne","DiceTwo","DiceThree","DiceFour","DiceFive","DiceSix"] [randomInt2]
        diceImageView1.image = UIImage(named: imageSort)
        diceImageView2.image = UIImage(named: imageSort2)
    }
    // MARK: Methods
    func setup(){
        setupImages()
        setupButon()
    }
    func setupImages(){
        diceImageView1.image = UIImage(named: "DiceOne")
        diceImageView2.image = UIImage(named: "DiceOne")
    }
    func setupButon(){
        diceButton.layer.cornerRadius = 20
    }
}

